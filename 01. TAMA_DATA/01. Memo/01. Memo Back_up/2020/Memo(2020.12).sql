

����������������������������������������������������������
+----------------------------------------------// Memo(2020.12) //----------------------------------------------+
����������������������������������������������������������


������������������� 2020.12.01(ȭ) �۾� ������������������� 	 
---> 07:30 ~ 18:00 ==>

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ���� �㺸 ����(PL0003) ���� 
- 09. �����û ����(TL0120) ȭ�� ����
==============================================================================================================

- ����Ʈ��(PLO001) �ſ� ���� �׽�Ʈ
==============================================================================================================

- (����Ʈ��) �����ѵ���ȸ(TASK_TL0160_00001, 2191) ����_�١� ȣ�� ����  
1. ���� MFTXERR_00783
[/TL0160_01_m.xml] [service_callback()] ==> [TEST_70_2] [�ݹ�] �� [���� �ڵ�]_METXERR_00783 ���� �޼��� kcb interface ���� �߻� !
2. ����: ������ �׽�Ʈ ������ �׽�Ʈ�� ���� ����Ÿ ������ ����� �ϴµ� �̿��� ���� �ް��� ����Ÿ�� ���� �� ���༭ ���� ������  
������ ��(17�� 15�� �ٽ� �׽�Ʈ�ϴ� ������) 
3. ��ġ: �̿��� ���� �ް��� ���� �� ����(������ ���嵵 �ް�)
==============================================================================================================

- (����Ʈ��) ����ݸ���ȸ (TASK_TL0180_00001, 2192) ����_�١� ȣ�� ����
1. ����: _MFTXERR_01038 
[/TL0180 01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [SON.stringify(rtnJSON)}{"ERR_CODE""E 
"ERR_MSG" : "6306 (PREPARE)?", "OUT_DATA":"", "CryptoYN":""
"RTN_CODE" : "_MFTXERR_01038", "RTN_MSG": "6306 ?[PREPARE", "OUT_DATA_TYPE": ""}
==============================================================================================================

- ���� ��û ���� ��ȸ(TASK_TL0030_00001, 3040) ����_�١� ȣ�� ����
1. ����: _MFTXERR_00463 
[/TL0030_01_m.xml] [service_callback()] ==> [TEST_70]] [�ݹ�] �� [JSON.stringify(rtnJSON)} {
"ERR_CODE": "E","ERR_MSG": "4121 ���˻� �����Դϴ�.", "OUT_DATA": "", "CryptoYN": ""
"RTN_CODE": "_MFTXERR_00463","RTN_MSG": "44121 ���˻� �����Դϴ�.", "OUT_DATA_TYPE": ""}
2. ����: �ڼҿ� ���� ����ȣ�� ������ ����
3. ��ġ: �ڼҿ� ������ ������ ���� ����ȣ�� �α��� �϶�� �� 
==============================================================================================================

- ���� �ѵ���ȸ (TASK_TL0080_00001, 3010) ����_�١� ȣ�� ����(������ ���� ����ȣ�� �α���) 
1. ����: _METER_00959 
[/TL0030_01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON)} {
"ERR_CODE": "","ERR_MSG": "���ﺸ������[�ֹι�ȣ ���� ����]", "OUT_DATA": "", "CryptoYN": ""  
"RTN_CODE": "_METER_00959","RTN_MSG": "���ﺸ������[�ֹι�ȣ ���� ����].", "OUT_DATA_TYPE": ""}
==============================================================================================================

- ���� ���� ȸ�� (10:20, ������) 
1. xTouch Close  ==> �Ϸ�[����] 
scwin btnXtouchClose_onclick = function(e) {
	$p.parent().xTouchLibUi.xTouchClose($p.parent().scwin.nowTaskInfo);
};
==============================================================================================================

2. focus �� ��ũ��Ʈ ���� ==> �Ϸ�[����] 
if(s_Salary.length == 10) { 
	com.alert("���� ������ �ݾ��� ���� �� �ִ� �ִ� �ڸ� �� �Դϴ�.", function()) {  
		ibx_InPtAt.focus();
		com.scrollCenter(ibx_InPtAt);		// focus �� ��ũ�� ����  
	)};
	return;
}

3. fixed �߰�(Input Box�� ������)  ==> �Ϸ�[����] 
<body ev:onoageload="scwin.onpageload" ev:anpageunload="scwin.onpageunload"> 
 <xf: group id="" style="" tagname="" tabIndex="" class="contents_wrap fixed"> 
 
<xf:group class="btn_area bottom fixed" id="" style="">
	<w2:anchor class="btn btn_lg gray" clickEventElement="" disabled="" id="btn_cancel" outerDiv="false" style="" ev:onclick="scwin.btn_cancel_onclick">
		<xf:label><![CDATA[���]]</xf:label>
	</w2:anchor> 
<w2:anchor class="btn btn_lg black" clickEventElement="" disabled="false" id="btn_confirm" outerDiv="false" style="" ev:onclick="scwin.btn_confirm_onclick">
  <xf:label><![CDATA[Ȯ��]]</xf:label>
	</w2:anchor>  
</d group>
 
4. ���ܰ� üũ  ==> �Ϸ�[����]  
// getXTouchSessionCheck  ==> XTouch ���� üũ(/TASK_TU0030_00001.java]  @@@
@Override 
public Map start() throws Exception { 
	log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_01] [���� �ѵ� ��ȸ](TASK_TL0080_00001) ó��  START] ���� [TelelD]"+ this.TelelD() );
 
	Map nextInData = new HashMap();

	if("MFSV_9003".equals(this.getTelelD()) {	 // ������ ���� �ŷ� ����(01. ������ ȣ�� �� ȣ��) 
		log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_51] [������ ���� �ŷ� ����(01. ������ ȣ�� �� ȣ��)]"+ this.TelelD() );
  
		String CHK_SCRAPING = this.getSessionData(Config.XTOUCH_SESSION_CHK_SCRAPING); 	// ��ũ���� �Ϸ� ���� ���� 
		log.debug("[/TASK_TL0080_00001.java] [start()] ==> [TEST_52] [��ũ���� �Ϸ� ����]"+ CHK_SCRAPING );
  
		if("T".equals(CHK_SCRAPING)) { 	// ��ũ���� ���ܰ� üũ�� ���� ���ϸ� ���� 
			throw new ResultException("��ũ������ �̿Ϸ� �Ǿ����ϴ�."); 
		}
		nextInData.put("tXSvld", this.txSvID);
	}
};
==============================================================================================================
 
������������������� 2020.12.02(��) �۾� �������������������
---> 07:30 ~ 21:00 ==> ��ũ���� ���뼱 �ո�(13��, ������ ����), �ְ�����(22����) �ۼ�(14��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ��(PLO001) [�ſ� ����] �׽�Ʈ
==============================================================================================================

- 10-1 ���� �ڵ��߱�/��ȸ(��ũ����) ȭ�� ����  
scwin.btn_confirm_onclick = function() {
	gcm.log("[/TL0070_01 s1.xml] (btn_confirm_onclick()] ==> [TEST_01] [���� ���� ��ư Ŭ�� �̺�Ʈ]");
	
	// ��ũ���� ���� ���� �� ��ũ���� ���� ���� �˾� ȣ�� 
	var inputData = {  
		SCRAP_ID: scwin.SCRAP_ID, 	// ��ũ�� ID
		nowTaskInfo: $p.parent().scwin.nowTaskInfo
	} 
	gcm.log("/TL0070_01_s1.xml) [btn_confirm_onclick()] ==> [TEST_02] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );
 
	com.popupList.POP_LO03_01(inputData, 		// 00-1. ��ũ���� �˾� ȭ�� ȣ�� ==> ��ũ���� ó�� ����
		function(rtnValue) {
			gcm.log("/TL0070_01_sl.xml] [btn_confirm_onclick()] ==> [TEST_51] [�˾� �ݱ�] ��� [�����]"+ JSON.stringify(rtnValue) 
			+"[rtnValue.RTNCD]"+ rtnValue.RTNCD);
	  
			if(rtnValue.RTNCD == "OK") (	 // ���� ó�� ���� �̸�
				gcm.log("/TL0070_01_sl.xml] [btn_confirm_onclick()] ==> [TEST_52] [��ũ���� ���� DB ��ȸ ���� ȣ��] ===> TEST @@@ ");
				
				// scwin.fn_scrapping();	// ��ũ���� ��� TEST  ���� ===> TEST @@@ ===> 
				
				scwin.fn_callService("NOTASK_COMMW_0008", scwin.serviceSCDB_callback);		
				// ��ũ���� ���� DB ��ȸ ���� ȣ��[R] ===> TEST @@@ ===> 
			}  
		}
	};
};

scwin.fn_callService = function(svID, callbackFn) { 
	gcm.log("/TL0070_01_s1.xml] [fn_callService()] ==> [TEST_01] [ ���� ȣ��] [svID]"+ svID );

	scwin.SCRAP_ID = "28B851773AFD49CBBBA4E5A0F02AFCAA";	// ��ũ�� ID ===> TEST @@@ ===>
	commStartDt = "201911";	// 3  ��ȸ ���� ��� ===> TEST @@@ ===> 
	commEdnDt = "202010";	// 4. ��ȸ ���� ��� ===> TEST @@@ ===>  
 
	inputData = { 	// IN-META-INFO ���[����] (���񽺵�ϰ��� ȭ�鿡��) @@@
		"SCRAP ID": scwin.SCRAP_ID 	// ��ũ�� ID
		// , "SCRAP_KEY": ""					// 2 ��ũ������ KEY 
		, "COMM_START_DATE": commStartDt 		// 3. ��ȸ ���� ���
		, "COMM END DATE": commEdnDt 			// 4. ��ȸ ���� ��� 
	}
	
	com exeService {
		{ 
			"ServiceID" 	: svID,
			"URL"			: "_XTOUCH_INTERFACE_",
			"CryptoYN" 	: "N",
			"mode"   		: "",
			"NOW_TASK_INFO" $p.parent() scwin.nowTasklnfo 
		},		// Sub Info(1. ServiceID ���� ID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���� ����) ���
		inputData,	 // ������ INPUT ������ ���
		callbackFn	 // ��� �ݹ� �Լ� ���
	};
};

// ���� ȣ�� ��� �ݹ� 
scwin.serviceSCDB_callback = function(rtnJSON) {
	gcm.log("/TL0070_01_s1.xml] [serviceSCDB_callback()] ==> [TEST_01] [�ݹ�] [��ũ���� ���� DB ��ȸ(NOTASK_COMMW_0008, MWEB_SCRAPDB)]" );
 
	if(rtnJSON.ERR_CODE == "S") { 	// ��ũ���� ���� ���� �� ��ũ���� ���� ���� �˾� ȣ��
		gcm.log("/TL0070_01_s1.xml] [serviceSCDB_callback()] ==> [TEST_51] [JSON.stringify(rtnJSON.OUT_DATA)]"+ JSON.stringify(rtnJSON.OUT_DATA) );
		
		var v_incomeavg = "";	// 01. ��� ���κ���� ===> TEST @@@ ===> ����
		var v_gal_aqt_dt = "";	// 02. �Ի��� �ڰݵ�� Ȯ�μ� �����) ===> TEST @@@ ===> ���� 
		
		if(rtnJSON.OUT_DATA != null) 	// ��ũ���� ����� �����ϸ�
		{
			v_incomeavg = rtnJSON.OUT_DATA.HEPAY_AVG_AMT;			// 01. ��� ���κ���� ����
			v_gal_aqt_dt = rtnJSON.OUT_DATA.COMM_START_DATE;		// 02. �Ի���(�ڰ������) ����
		]
		
		var inData = {
			"annual_income" : ""+ scwin.fnNHISAnnuallncome(v_incomeavg). 	// 01. �����ҵ�ݾ�
			, "gal_aqt_dt" : v_gal_aqt_dt 		// 02. �Ի��� (�ڰݵ�� Ȯ�μ� �����)
		};

		$p.parent().scwin.nextTask(inData, {}, "CHK": "NEXT"});		// ���� Task �Լ� ȣ�� ==> 08. �����ѵ� ��ȸ ���(����) (TL0080, 01) ȭ�� ȣ��
	}
};
=============================================================================================================

- (����Ʈ��) ����ݸ���ȸ(TASK_TL0180_00001, 2192) ����_�١� ȣ�� ����  
1. ����: _MFTXERR_01038 
[/TL0180_01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "6306 ����Ʈ������ �ڵ���ü ���� �˻� (PREPARE) ������ �߻��Ͽ�", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_MFTXERR_01038"
"RTN_MSG": "6106 ����Ʈ������ �ڵ���ü ���� �˻� (PREPARE������ �߻��Ͽ�", "OUT_DATA_TYPE": ""} 
2. ����: �������� ���� �ý��� ����(���� �����ؾ� �Ѵٰ� ��) 
3. ��ġ: �ڼҿ� ������ ICT�� �����ؼ� ó��
=============================================================================================================

- ���� �ѵ� ��ȸ(/TASK_TL0080_00001, 3010) ����_�١� ȣ�� ���� 
1. ����: _MFTXERR_00959
[/TL008O_01_m.xml] [service_callback() ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "���ﺸ������ (��ä���� �ֹι�ȣ �Ǵ� ���� ������ ��� ����", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_MFTXERR_00959"
"RTN_MSG": ""���ﺸ������ (��ä���� �ֹι�ȣ �Ǵ� ���� ������ ��� ����"", "OUT_DATA TYPE": ""} 
2. ����: �ڼҿ� �ֹι�ȣ�� 11111�� ���ͼ� ���� ���� �߻�
3. ��ġ: /TL0080_00001.java ���Ͽ��� �ڼҿ� ���� �ֹι�ȣ ���� ����

@Override 
public Map start() throws Exception { 
	log.debug(""[/TASK_TL0080_00001.java] [star()] ==> [TEST_01] [���� �ѵ� ��ȸ(TASK_TL0080_00001) (����_�١�) ó�� START] ���� [TeleID]"+ TeleID );
	
	String sSsn = "";
	String USER_INFO = this.getSessionData(Contig.XTOUCH_SESSION_LOAN_USER_NO);		// ���� ���ǿ��� �ֹι�ȣ ��������
	
	if(USER_INFO != null) {
		String USE_INFO_2 = USER_INFO.$plif("@"); 	// �ֹι�ȣ �� ��������   
		sSsn = USE_INFO_2[0].substring(0, 13);		// �ֹι�ȣ
	}
	
	if("�ڼҿ�".equals(this.userIno.USER_NAME)) {	// ������ �ڼҿ� �̸� ===> TEST @@@ ===>
	  sSsn = "1504212951811";		// �ڼҸ� �ֹι�ȣ ����
	}	 
	log.debug(""[/TASK_TL0080_00001.java] [star()] ==> [TEST_51] [�̿��� �̸�]"+ this.useInfo.USER_NAME +"[�ֹι�ȣ]"+ sSsn );
	
	nextInData.put("cifno", sSsn); 	// �ֹι�ȣ �߰�[2020.10.16, by ���¸�]
 }
==============================================================================================================

- �����û��ȸ/����(PLO009} [�ſ� ����] ���μ������� �ɻ�Ϸ� ó��  
1. ��û ������Ȳ[�ſ� ����] (TL0210) ȭ�鿡�� ����Ȯ�� �� ==> �ɻ�Ϸ�(�ڼҿ� ���忡�� ó�� ��û�� ��) 
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0210_01_m.xml] [service_callback() ==> [TEST_01] [02. (����Ʈ��) �����û������ȸ(TASK_TL0030_00002, 2194) ����_�١� ȣ�� �ݹ�]" );
	
	if(rtnJSON.ERR_CODE == "S") {	 
		gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST 21] [�������]"+ rtnJSON.OUT_DATA.stat_cd +"[����Ȯ��]"+ rtnJSON.OUT_DATA.doc_cd );

		scwin.loanSincgData = rtnJSON.OUT_DATA;		// �����û���� ���� DATA
		scwin.stat_nmData = {});  // ��û���� ���� DATA	  
		var v_stat_nm= "";  	 // ������¸�
		gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST_22] [rtnJSON.OUT_DATA]"+ rtnJSON.OUT_DATA );
		
		if(rtnJSON.OUT_DATA == null || com.isNull(rtnJSON.OUT_DATA.stat_cd)) 		// ��û���� ������ 
		{
			com alert("�����û�� ��ǰ�� �������� �ʽ��ϴ�."); 
			scwin.loanInfoYnfo = "N";		/// �����û ��ǰ ������ 
			xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 02-2. �����û ��� ��/���ΰ��� ȭ�� Display
			return;
		} 
	  
		if(rtnJSON OUTL_DATA.start_cd == "2") 	// �������(stat_cd)�� ������� �̸� ==> �������(star_cd) (1: ����� ����, 2: �������, 3: ���⿹�����)
		{
			if(rtn JSON. OUT_DATA.dacu_cd == "0") 	// ����Ȯ���� ==> ����Ȯ��(docu_cd) (0: �������, 1: ����Ȯ��, 2: ���ƴ�)
			{
				v_stat_nm = "����Ȯ�� ��";	// ���� ���� ó�� ��û(������ ��ȭ�ؼ� '�ɻ�Ϸ�'�� ���� ��û: ���� �ݼ��Ϳ��� �ϴ� ������� ��)
			}
			else
			{
				v_stat_nm = "�ɻ�Ϸ�";
			}
			scwin.stat_nmData = {"stat_nm": v_stat_nm};		// ��û���� ���� DATA 
			gcm.log("[/TL0210_01_m.xml] [service_callback()] ==> [TEST_51] [INPUT ����Ÿ(rnJSON.OUT_DATA]"+ JSON.stringify(rtnJSON.OUT_DATA) );
			
			xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB1", $p); 	// 11-1 �����û ���[�ſ����] (TL0200, 01) ȭ�� Display
	}
	else if(rtnJSON.OUT_DATA.stat_cd == "7")		// �������(sat_cd)�� '���� ����' �̸�
	{
		v_stat_nm = "���ΰ���";
		scwin.stat_nmData = {"stat_nm": v_stat nm};
		xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 02-2 �����û ���, ��.���� ���� ȭ�� Display
	}
	else
	{
		v_stat_nm = "�������";
		scwin.stat_nmData = ("stat_nm": v_stat nm);
		xTouchLibUi.uiChange(swin.nowTaskInfo, "SUB2", $p); 	// 11-1 �����û ���[�ſ����] (TL0200, 01) ȭ�� Display
	}
};		
==============================================================================================================

- ���ݺ� ����(PL0003) ���ڼ��� ����
1. ���ݴ㺸 ���� ���ڼ��� ���� ��û(�̱�ö �̻翡�� ��û)
 1) ���ڼ��� ǥ�� ����
  ��. �����ʼ� + �Աݰ���(rcpAcN), ����(clnNm), ���ⱸ��(lnCcd), ��������(lnPrf), �������ڳ�������(nxtlrGpmD)
 2) ������ ��ȯ(/TE0090_01_s1.xml) ���� â��
==============================================================================================================
 
- ���ڼ��� ǥ�� ����
0. �����ʼ� + �Աݰ��¹�ȣ(rcpAcN), ����(clnNm), ���ⱸ��(lnCcd), ��������(lnPrf), �������ڳ�������(nxtlrGpmD)
==============================================================================================================
 
������������������� 2020.12.03(��) �۾� �������������������
---> 07:30 ~ 21:00 ==> ���дɷ� ��(8��, �¿��� �Ƶ� ���迡 ����), ������Ǽ� ����(13��, �ڰ��� �븮���� ����)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ��(PLO001) [�ſ� ����] �׽�Ʈ
==============================================================================================================
 
- ���ݴ㺸 ����(PLO003) ���ڼ��� ����
scwin btn_savillnPt_oncick = function(e) {
	gcm.log("[/TL12001_01_s1.xml] [btn_savillnPt_oncick()] [TEST_O1] [���ݴ㺸 �����û ��ư Ŭ�� �̺�Ʈ] [���Ⱑ�� �ѵ��ݾ�]"+ 
		ibx_unBeLm.getValue() +"[���� ������ �ݾ�]"+ ibx_lnPtAt.getValue() +"[�㺸���� ��й�ȣ]"+ ibx_llAcPin.getValue() );
	
	inputData = {		 // IN META_INFO ���(����) (���񽺵�ϰ��� ȭ�鿡��)  
		"llSavAcN" ; com.trim(sbx_llSavAc.getvalue()), 	// 1. �㺸���ݰ��� ��ȣ
		"llAcPin": gcm.nshc.getDatat(ibx_llAcPin), 		// 2. �㺸���º�к�ȣ(Ű���� ���� ó��) 
		"lnPtAt": com.trim(ibx_lnPtAt.getvalue()),			// 3. �����û�ݾ�
		"rcpAcN": com.trim(sbx_rcpAcN.getvalue(),		// 4. �Աݰ��¹� 
		"cvgSffN": ""														// 5. ����������ȣ
	};
	$p.parent().scwin.callSvc_llSavAcInfo(inputData);	 	// ���ݴ㺸 ���� ����(�θ� ȭ��)
};

scwin.callSvc_llSavAcInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_01] [���ݴ㺸 ���� ����(�θ� ȭ��)]" );
 
	scwin.llSavAcData = inputData;	// �޾ƿ� �㺸���ݰ��� Data
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_41] [INPUT ����Ÿ(scwin.llSavAcData)]"+ JSON.stringify(scwin.llSavAcData) );
 
	scwin.fn_callService("TASK_TL0120_00001", scwin.service2170_callback);		// 04.���ڳ����� ��ȸ(���ݴ㺸���� ����ŷ�) ���� ȣ��(����)
};

// ���� ȣ�� ��� �ݹ�
scwin.service2170_callback = function(rtnJSON) {
	gcm.log("[/TL0120_01_m.xml] [service2170_callback()] ==> ITEST_01] [04.���ڳ����� ��ȸ(���ݴ㺸���� ����ŷ�) (TASK_TL0120_00001, 2170) ���� ȣ��"] );
  
	if(rtnJSON.ERR_CODE == "S") {  
		scwin.llSavPreTrdRstData = rtnJSON.OUT_DATA;		// �㺸���ݴ��� ����ŷ� ��� Data
		gcm.log("[/TL0120_01_m.xml] [service2170_callback()] ==> ITEST_61] [JSON.stringify(scwin.llSavPreTrdRstData)]"+ 
			JSON.stringify(scwin.llSavPreTrdRstData) );
  
		xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB2", $p); 	// 09-2 �����û ����(TL0120, 01) Ȯ�� ȭ�� Display
	}
};
--------------------------------------------------------------------------------------------------------------------

scwin.btn_confirm_onclick = function() {  
	gcm.log("[/TL0120_01_s2.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ]");
	
	inputData = {	// IN META_INFO ���(����) (���񽺵�ϰ��� ȭ�鿡��)  
		"llSavAcN" ; com.trim(sbx_llSavAc.getvalue()), 	// 1. �㺸���ݰ��� ��ȣ
		"llAcPin": "", 														// 2. �㺸���º�к�ȣ(Ű���� ���� ó��) 
		"lnPtAt": com trim(ibx_lnPtAt.getvalue()),			// 3. �����û�ݾ�
		"rcpAcN": com trim(sbx_rcpAcN.getvalue()),		// 4. �Աݰ��¹� 
		"cvgSffN":""														// 5. ����������ȣ
	};
	gcm.log("[/TL0120_01_s2.xml] [btn_confirm_onclick()] ==> [TEST_51] [INPUT ����Ÿ(inputData)]"+ JSON.stringify(inputData) );
	
	$p.parent().scwin.callSvc_llSavAcMainInfo(inputData);	 	// ���ݴ㺸 ���� ����(���ŷ�) (�θ� ȭ��) 
};

scwin.callSvc_llSavAcMainInfo = tunction(inputData) {  
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_01] [���ݴ㺸 ���� ����(���ŷ�) (�θ� ȭ��)]");

	scwin.llSavAcMainData = inputData; 	// �޾ƿ� ���ݴ㺸 ����(���ŷ�) Data 
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_42] [���ݴ㺸���� ����ŷ�_Data]"+JSON.stringify(scwin.llSavAcMainData) );
	
	scwin.fn_callService("TASK_TL0120_0003", scwin.fn_calback_certSign);	// 52 ���ڼ��� ���� ����(���ڼ��� �˾�) [R]
	// scwin.fn_callService("TASK_COMME 2171", scwin.service2171_calback);	// ���ݴ㺸 ����(���ŷ�) ���� ȣ��(����) (���ڼ��� �����ϰ� �׽�Ʈ)
};

// ���ڼ��� ���� ���� callback
scwin.fn_callback_certSign = tunction(rtnJSON) {
	gcm.log("[/TL0120_01_m.xml] [fn_callback_certSign()] ==> [TEST_01] [52. ���ڼ��� ���� ����(TASK_TL0120_00003, MWEB_01_BYPASS) ����_ȣ��]" );
 
	if(rtnJSON.ERR_CODE == "S") { 
		gcm.log("[/TL0120_01_m.xml] [fn_callback_certSign()] ==> [TEST_61] [�ݹ�] [JSON.stringily(rtnJSON.OUT_DATA])"+ JSON.stringily(rtnJSON.OUT_DATA) );
  
		var SIGN_TK = rtnjSON.OUT_DATA_SIGN_TK; 	// ������� ���� �Ϸ� �� TK ������ ���  	
 
		scwin.getSignData(SIGN_TK);	// ���ڼ��� DATA�� ����
	}
};

scwin getSignData = function(SIGN_TK) { 
	gcm.log("[/TL0120_01_m.xml] [getSignData()] ==> [TEST_01] [���ڼ��� ����(���񽺿��� ���� ���� ����) �ݹ�] [SIGN_TK]"+ SIGN_TK )
  
	var signType = "99";	// ���ڼ��� Ÿ��(99: ��Ÿ) 	

	com.signData(SIGN_TK, scwin.nowTaskInfo, signType, function(rtnJSON)  {	  // ���ڼ��� ���� ��� ȣ�� ==> PC���� ���� �߻� @@@ ===>
		gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_21]"+  nJSON ERR_CODET rtnJSON. ERR_CODE )
  
		if(rtn_JSON.ERR CODE == "S") {
			gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_31] [�ݹ�] [JSON.stringify(rtnJSON.OUT_DATA]"+ JSON.stringify(rtnJSON.OUT_DATA) );

			scwin.cert_sign_info = rtnJSON.OUT_DATA:	// ���ڼ���
			gcm.log("'/TL0120_01_m.xml] [getSignData()] ==> [TEST_321) [�ݹ�] [scwin.cert_sign_info]"+ JSON.stringify(scwin.cert_sign_info) );
			
			scwin.fn_callservce("TASK.TL0120_00002", scwin.service2171_calback);	// 04. ���ڳ����� ��ȸ(���ݴ㺸 ����(���ŷ�)) ���� ȣ��(����)
		}
	});
};

scwin.fn_callService = function(svID, calbackFn) {
	gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_01] [����_ȣ��] [svID]"+ svID);
 
	var inputData = {}; 	

	if(svID == "TASK_TL0120_00001")		// 51. ���ݴ㺸���� ����ŷ� ���� ȣ���̸�
	{
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_51] [51. ���ڳ����� ��ȸ(���ݴ㺸 ���� ���� �ŷ�(TASK_TL0120_00001, 2170) ����_ȣ��]" );
	
		inputData = scwin.llSavAcData; 	// �޾ƿ� �㺸���ݰ��� Data
	}
	else if(svID == "TASK_TL0120_00003")	// 52. ���ڼ��� ���� ����R] ���� ȣ�� �̸�
	{ 
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_52] [52. ���ڼ��� ���� ����[R] (TASK_TL0120_00003) ����_ȣ��]" );
		
		var nxtlrGpmD = com.trim(scwin.llSaPreTraRstDat.nxtlrGpmD);
		var nxtlrGpmDt =nxtlrGpmD.substring(0.4) +"-"+ nxtlrGpmD.substring(4, 6) +"-"+ nxtlrGpmD.substring(6, 8);		// 05. �������ڳ�������

		// ���ڼ��� ���� ��  
		var inputData = {
			"repAcN" : com.transAcn("1", com.trim(scwin.llSavPreTrdRstData.repAcN)), 	// 01. �Աݰ��¹�ȣ   
.			"clnNm" : com trim(scwin.llSavPreTrdRstData.clnNm), 		// 02.����  
			"InCcd" : com.trim(scwin llSavPreTrdRstData.InCcd), 			// 03. ���ⱸ���ڵ�  
			"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf) +"%",		 // 04. ��������  
			"nxtlrGpmD" : nxtlrGpmDt														// 05. �������ڳ�������  
		}
	}		
	ese if(svD == "TASK_TL0120_00002") 	// 53. ���ݴ㺸���� ���ŷ� ���� ȣ�� �̸�
	{
		gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_53] [53. �����û ���� �� ��� ����(���ݴ㺸���� ���ŷ�) {TASK_TL0120_00002, 2171) ����ȣ��]");
 
		inputData = scwin.llSavAcMainData;		// �޾ƿ� ���ݴ㺸 ����(���ŷ�) Data
		
		inputData = {		// IN META_INFO ���(����) (���񽺵�ϰ��� ȭ�鿡��)  
			"CERT_SIGN_INFO": scwin.cert_sign_info 			// 00. ���ڼ���
			,"llSacAcN": com trim(inputData.llSacAcN)			// 01. �㺸���� ���¹�ȣ
			, llAcPin": com trim(scwin.llSavAcData.llAcPin)	// 02. �㺸���º�к�ȣ(Ű���� ���� ó��) 
			,"lnPtAt": com trim(inputData.InPtAt),					// 03. �����û�ݾ�
			, "rcpAcN": com trim(inputData.rcpAcN),				// 04. �Աݰ��¹�ȣ
			, "cvgSffN":""															// 05 ����������ȣ
			, "dcdcNStuApF": ""		// 06 ����/������࿩��
			, "emArt": ""					// 07. �̸����ּ�
		}; 
	}		  
	gcm.log("[/TL_0120_01_m_xml] [fn_callService()] ==> [TEST_41] [INPUT ����Ÿ(inputData)]"+ JSON.stringify(inputData) );
 
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���	
			inputData,		// ������ INPUT ����Ÿ ���	
			callbackFn		// ��� �ݹ� �Լ� ���
		};
	);
};
--------------------------------------------------------------------------------------------------------------------
 
@verride
public Map end throws Exception {
	log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_01] [���ڼ���(TASK_TL0120_00003)] [����_�����] [TelelD]"+ this.getTelelD() ); 

	Map returnMap = new HashMap();	// ��°�
 
	if("MWEB_01_BYPASS".equals(this.getTelelD()) {
	{
		String curTm = DtUtil.petCurTm();
 
		String SIGN_DATA =			// ���ڼ��� ����
			"�ŷ��� : ���ݴ㺸 ����"   			+"\n" +
			"���� : "+ this.USE_INFO.USER_NAME 		+"\n" +
			"����ȣ "+ this.userInfo.USER_NEW_CODE 	+"\n" +
			"�ŷ����� :  "+ DtUtil.getCurrentDate("yyyy.MM.dd") 	+"\n" +
			"�ŷ��ð� : "+ curTm substring(0, 2) +":"+ curTm.substring(2, 4) +":"+ curTm.substring(4)  +"\n" +
			"�Աݰ��¹�ȣ : "+ (String) this.signAddInfo.get("rcpAcN") 	+"\n" +	 		// 01. �Աݰ��¹�ȣ
			"���� : "+ (String) this.signAddInfo.get("clnNm") 		+"\n" +	 				// 02. ����
			"�������� : "+ (String) this.signAddInfo.get("\nPrt")	 	+"\n" +					// 04. ��������
			"�������ڳ������� : "+ (String) this.signAddInfo.get("nxtlrGpmD")  +"\n";	// 05. �������ڳ�������  
		log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_51] [�����_���] [SIGN_DATA]"+ SIGN_DATA );

		String SIGN_TK = this.getSignTk(SIGN_DATA);

		returnMap.put("SIGN_TK", SIGN_TK);

		this.setNextTelelD("END");
	}
	
	return returnMap;
}
	
@verride
public Map end() throws Exception { 
	Map rtnMap = new HashMap();

	switch (this.getTeleID()) { 
		case "MWEB_01_BYPASS":
			String CERT_SIGN_INFO = (String)this.firstMap.get("CERT_SIGN_INFO"); 
			log.debug("##################### - MWEB BY PASS CHECK VERIFYSIGNDATA ---- ################");
			log.debug("[/TASK_TL0120_00002.java] [end()] ==> [TEST_21) [CERT_SIGN_INFO]"+ this.veritySignData(CERT_SIGN_INFO) );
	
			if(this.verifySignData[CERT_SIGN_INFO)) {
				this.setNextTelelD("MFSV_2171"); 
			} else (
				throw new ResultException("������Ÿ ���� ����");
			}
			break;

	case "MFSV_2171":
		Map OUT_DATA = this.getOutData();
		this.setNextTeleID("END");
		log.debug("/TASK_TL0120_00002.java] [end()] ==> [TEST_91] [���ݴ㺸���� ���ŷ� �����_���] [OUT_DATA]"+ OUT_DATA );
		break;

		default:
		throw new ResultException("NEXT TASK ID ������ ����"); 
	}
  
	return rtnMap;
} 
==============================================================================================================

- �����û ���� �� ��� ����(���ݴ㺸���� ���ŷ�(TASK_TL0120_00002, 2171)) ���� ����
1. ����:
"URLDecoder": Ilegal hex characters in escape (%) pattern - For input string: &quot:  
&quoter
  
2. ����: ���������� '%'�־ ���� ���� 
scwin.fn_callService = function(svID, calbackFn) {
	gcm.log("'[/TL0120_01_m.xml] (fn_callService)==> [TEST 52] [52. ���ڼ��� ���� ����[R] (TASK_TL0120_00003) ����_ȣ��] [svID]"+ svID );
	
	// ���ڼ��� ����� ��
	var inputData = { 	  
		"repAcN" : com.transAcn("1", com.trim(scwin.llSavPreTrdRstData.repAcN)), 	// 01. �Աݰ��¹�ȣ   
.			"clnNm" : com trim(scwin.llSavPreTrdRstData.clnNm), 		// 02.����  
		"InCcd" : com.trim(scwin llSavPreTrdRstData.InCcd), 			// 03. ���ⱸ���ڵ�  
		"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf) +"%",		 // 04. ��������  
	//	"InPrf" : com.trim(scwin.llSavPreTrdRstData.inPrf),				 // 04. ��������  ===> TEST @@@ ===>
		"nxtlrGpmD" : nxtlrGpmDt														// 05. �������ڳ�������  
	}
 
	com.exeService (
			{
				"ServiceID": svID,,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���	
			inputData,		// ������ INPUT ����Ÿ ���	
			callbackFn		// ��� �ݹ� �Լ� ���
		};
	);
 
3. ��ġ: �̰��� ������ �����ܿ��� ���� ������
==============================================================================================================

- �������� ���������� ���  
1. �׽�Ʈ ������ ��� ==> �α��νÿ� �޴��ȣ ��ȿ�� ���� �߻�
==============================================================================================================

- ���ݴ㺸 ����(PLO03) ���� 9003�� ���� ȣ�� ����
1. ������ ������ ����� PC �� 9003�� ���� 4�� ȣ���� �������� ���
 1) �ڰǿ� �븮�� ��ǰ���Ծȳ�(/T20001_01_PL0003_01.xml) ���Ͽ��� �ݸ���ȸ �� ���� ���� ���� ȣ�� 
  ��.9000�� ����: ������ ������ �� �ݵ�� ȣ���ؾ� �ϴ� ����(�����迬��ŷ�����)
==============================================================================================================

������������������� 2020.12.04(��) �۾� �������������������
---> 07:30 ~ 22:20 ==> ���� ���ǿ� �Կ� 2�ֳ�, �����(����) 11�ÿ� ���� �ٴ� û���Ѵٰ� �ٹ� �� �ϰ� �� 

- �������� ����� ��ŷ(jWEB) ������Ʈ[��] 
- �� 19�� �̻� Ȯ�� ����(TASK_COMMF_9223) ����_�١� ȣ�� ����
1. ����: "String index out of range 13"  
[/TL0020_01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON stringify(rtnJSON)]["ERR_CODE": "E"
"ERR_MSG": "String index out of range 13", "OUT_DATA": "", "CyptoYN":"", "RTN_CODE": "-9999",
"RTN_MSG":"�����߻�", "OUT_DATA_TYPE": "}
2. ����: ���������� �α���(TZ0010)���� �ֹι�ȣ�� �� �޾� �ͼ� ���� ����
--------------------------------------------------------------------------------------------------------------------

- �� 19�� �̻� Ȯ�� ����(TASK_COMMF_9223) ����_�� ȣ�� ����
1. ����: MFTXERR_OPMS923040
[/TL0020_01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON stringify(rtnJSON)]["ERR_CODE": "E" 
"ERR_MSG": "�����޼��� �̵��,����η� �����ϼ���.", "OUT_DATA": "", "CyptoYN":"", "RTN_CODE": "MFTXERR_OPMS923040",
"RTN_MSG": "�����޼��� �̵��,����η� �����ϼ���." 
2. ����: �߸��� �ֹι�ȣ�� �־ ���� ����(9504210000000 �Է�)
3. ��ġ:
@Override
public Map start() throws Exception {
	log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_01] [�� 19�� �̻� Ȯ�� ����(TASK_COMMF_9223) ����_�١� ó�� START] [TelelD]"+ TelelD );
	
	if("MFSV_9223".equas(this.street) {		// �� ��Ÿ ���� ��ȸ(������ Ȯ��) 
		String sSsn = "";
		String USE_INFO.= this.getSessionData(Config.XTOUCH_SESSION_LOAN_USER_NO);	// ���� ���ǿ��� �ֹι�ȣ ��������
		log.debug("[/TASKCOMMF_9223.java] [start()] ==> [TEST_02] [���� ���ǿ��� �ֹι�ȣ]"+ USER_INFO);
  
		if(USE_INFO != null &&!"".equas(USERINFO) [	 // ���� ���ǿ��� �ֹι�ȣ�� �����ϸ�
			String USERINFO_2 = USE_INFO.$plit("@"); 	// �ֹι�ȣ�� �������� 
			sSsn = USERINFO_2.substring(0, 13);	// �ֹι�ȣ 
 
			nextInData.put("ssn", sSsn);		// �ֹι�ȣ �缳�� 
		}
		else
		{ 
			nextInData.put("ssn", useInfo.getUSER_NO());		// �ֺ� �缳�� �߰�(���������� �α��� ��) ���
			log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_41] [�ֹι�ȣ]"+ useInfo.getUSER_NO() );
		} 
		log.debug(/TASK_COMM_9223.java] [start()] ==> [TEST_91) [������ INPUT ����Ÿ_���] [nextInData]"+ nextInData );
	}
	
	return nextInData;
}
==============================================================================================================

- ���� Ȯ��(Gold Win ���θ� PC����)
1. ���ְ� ����(���� �븮 ����)
 1) ��κ�[����] ��ǰ���Ծȳ�(/TZ0001_01_P10001_01.xml) ����
==============================================================================================================

- 04. ���ڼ��� ������� �� Ȯ��(�ſ� ����) (TL0230) ȭ�� ���� 
scwin.onoageload = function() {  
	gcm.log("/TL0230_01_m.xml] [onoageload()] ==> [TEST_01] [04. ���ڼ��� ������� �� Ȯ��(�ſ� ����) (TL00220, 01) ȭ�� �ε�....@@@]" );
	
	scwin.fn_callService("TASK_TL0230_00001", scwin.service2195_calback);		// (����Ʈ��) (TASK_TL0230_00001, 2195) ���� ȣ�� 
	scwin.loanSincglnfo = xTouchLibUi.getTaskData("TL0210", $p);		// �ſ� ���� ���� Ȯ�� TASK
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);		// 04-1. ������� ȭ�� ����[R]
}

/** .ES fnSetFillData 1. ����ŷ�������(�����) **/ 
scwin.fn_SetFilData3300007 = tunction() {   
	gcm.log("/TL0230_01_m.xml] [fn_SetFilData3300007()] ==> [TEST_01] [1. ����ŷ�������(�����) SetFilData ó��]" );
	
	var v��û�ݾ��ѱ� = "";  
	var v��û�ݾ׼��� = "";    
	var loanSincglnfo_��û�ݾ� = com trim(scwin.loanSincglnfo.sincg_amt);   // 04. ��û�ݾ�

	if(!com.isNull(loanSincglnfo_��û�ݾ�)I { 
		v��û�ݾ��ѱ� = scwin.tranAmtTokor(Number(lloanSincginfo_��û�ݾ�));
	}

	if(com isNull(loanSincolnto_��û�ݾ�) {
		v��û�ݾ׼��� = com.tranComma(Number(lloanSincginfo_��û�ݾ�));
	}
};
==============================================================================================================

������������������� 2020.12.05(��) �۾� ������������������� 
---> 07:30 ~ 21:30 ==>  

- �ָ�[��]
07:40 ���
08:11 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:40 ���ͳ� ����
12:00 �߽�
12:20 �翺(����) ���
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:40 ���ͳ� ����
18:11 ����
22:20 �翺(����) �Ͱ�
23:00 ���� ==> ü��: 74.1kg
23:45 �ν��� �� ��ü(276U, 19U ����)
23:30 ��ħ
==============================================================================================================
 
- �����е�2 ���׷��̵� �ȵ�
1. �����е�2(KCC-CMM-APA-A1416)���� ���׷��̵尡 ���� ����: iOS 9.3.5�� �ߴܵ� ==> ���� ����: iOS 9.3.5
2. ��ġ: OS 6.1.3�� OS 6.1.3�� iOS 8.4.1 �ٿ�׷��̵� �ؾ� ��
=============================================================================================================
  
- �ξ� ������! iOS13/iPad OS ������Ʈ ��� [ħ��ġ�� ������ ���]
https://youtu.be/e31izLEsAWA
1. http://www.3u.com/ ���� �� �ٿ�ε�
2. 3uTools ����
3. ��� �޴� �� Flash & JB ����
4. �ϴ� "Retain User's Data While Flashing" üũ�ڽ� üũ
5. 13beta üũ
6. �ϴ� Flash Ŭ��
7. �ڵ� �ٿ� & ��ġ  
==============================================================================================================
 
- Apple ID(ipad: �����е�2) ��й�ȣ �缳��
1. �����е� ���� ==> tamario@naver.com / tama3390A

- �����е� ��й�ȣ �н� �� ��ȣ �缳���ϴ� ���
==> http://hwsecter.tistory.com/1034
============================================================================================================== 

������������������� 2020.12.06(��) �۾� ������������������� 
---> 08:00 ~ 21:30 ==>  

- �ָ�2[��]
07:40 ���
08:11 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:40 ���ͳ� ����
12:00 �߽�
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:40 ���ͳ� ���� ==> Memo(2020.11, 16 ~ 30) Ÿ����
14:20 �翺(����) ����� ������ ���
18:11 ����
18:40 �ǳ� ������ Ÿ��
19:40 ����
20:20 �翺(����) �Ͱ� 
23:00 ��ħ
==============================================================================================================
 
- �索ȯ��, �Ǹ� �������� �̷��� �ض�![�索 ��������, ������]
https://youtu.be/9CfzlgxEakQ
==============================================================================================================

������������������� 2020.12.07(��) �۾� ������������������� 
---> 07:30 ~ 21:30 ==> jWEB ���� �׽�Ʈ 2����), �ڷγ� 19 ��ȸ�� �Ÿ��α� 2.5 �ܰ� (9��)
								, �߽�(11:50, GS25 ������(QR �ڵ� ����, ��� ����), ��� �����ؼ� �������� ����)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ��PLO001) (�ſ����) �׽�Ʈ
1. ���������� ���� �Է� �ȵ�
<input id = "ib_name" ev:onfocus="" adustMalength="false" style="" inirvalue ="" class="wqp_ipt name"
	allowChar="��-? a-z A-Z" maxBytelLength="40�� mandatory="true"> 
</xf input> ==> ���� ó�� @@@ 
<input id="idx_name" adustMaxLength="fase" style =""inirvalue ="" class="wqp_ipt name"
	allowChar= "-@ ��-�� ��-? a-z A-Z" maxBytelLength="40�� mandatory="true" ev:onfocus="scwin.ibx_name_onfocus"> 
</xf input>> 
==============================================================================================================
 
- �ݾ� ,�����Ͽ� �Է� 
1. 09-1. �����û ����(TL0120, 01) �Է� ȭ�鿡�� ���� ������ �ݾ�(ibx_InPtAt)�� ���� ������� ���� 
<xf: input id="ibx_sincgAmt" ev:onfocus="" neatTabID="" adiustMaxLength="fase" style=""
	class="wa_ipt" initvalue=" di$piayformat="" datalype="number" maxlength="11" allowChar="0-9" placeholder="100���� ~ 1,000����" type="tel" 
	ev:onblur="scwin.ibx_sincpAmt_onblur" ev:onkeyup="scwin.ibx_sincpAmt_onkeyup"> 	<!--// ��û�ݾ�(����) //-->  
</xf input>
==============================================================================================================
 
// ��û�ݾ� �ݾ� bur ó�� �̺�Ʈ
scwin.ibx_sincgAmt_onblur = ftunction(e) ( 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_01] [��û�ݾ� �ݾ� blur ó�� �̺�Ʈ]");

	var sSalary_03 = ""; 
	var sSalary = ibx_sincgAmt.getValue().replaceAll(',', "");	// ��û�ݾ�

	if(sSalary.length > 0 && Number(sSalary) ==  0) { 
		ibx_sincgAmt.setValue("");	// ��û�ݾ� 
		return;
	}

	if(Number(sSalary) > 100000) { 		// 10���� �ʰ� �̸� 
		sSalary_03 = sSalary.substring(0, sSalary.length - 4) +"0000";	// ���� ������ �ݾ�  ==> 10���� ������ ���� �Է� ó��	  
		ibx_sincgAmt.setValue(sSalary_03);	// ��û�ݾ�
	}
	// gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_41] [��û�ݾ�]"+ sSalary +"[��û�ݾ�_����]"+ sSalary.length );
	
	if(sSalary == "") {  
		ibx_sincgAmt.setValue("");	// ��û�ݾ� 
		return;
	}
	 
	if(sSalary.length > 3) {  	// 3�ڸ� �̻� �̸� 
		ibx_sincgAmt.setValue(scwin.setComma(sSalary));		// �ݾ� �޸� ����
	} 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onblur()] ==> [TEST_91] [��û�ݾ�]"+ ibx_sincgAmt.getValue() );
}; 

// ��û�ݾ� �ݾ� �Է� �̺�Ʈ
scwin.ibx_sincgAmt_onkeyup = function(e) { 
	gcm.log("[/TL0190_01_s1.xm] [ibx_sincgAmt_onkeyup()] ==> [TEST_01] [��û�ݾ� �ݾ� �Է� �̺�Ʈ]");

	scwin.checkMoney();	 // ��û�ݾ� üũ
};

// ��û�ݾ� üũ
swin.checkMoney = function() {
 	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_01] [��û�ݾ� üũ] [��û ���� �ݾ�(�����ѵ�)]+" swin.sincgPosibAmt 
		+"[��û�ݾ�]+" ibx_sincgAmt.getValue() +"[��û�ݾ�_����]"+ ibx_sincgAmt.getValue().length );
	
	var sSalary = ibx_sincgAmt.getValue();		// ��û�ݾ�
	
	if(sSalary.length > 0 &&Number(sSalary) == 0) {
		ibx_sincgAmt.setValue("");	// ��û�ݾ� 
		return;
	}
	
	var sSalary_02 = sSalary.replaceAll(',', "");		// �ݾ� �޸� ����
	var sSalary_04 = sSalary.replaceAll(',', "");
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_02] [��û�ݾ�]+" sSalary_02 +"[��û�ݾ�_����]"+ sSalary_02.length );
	
	if(Number(sSalary.replaceAll(',', "")) > 100000) {     // 10���� �ʰ��̸� 
		sSalary_04 = sSalary_02.substring(0, sSalary_02.length - 4) +"0000";	// ���� ������ �ݾ� ==> 10���� ������ ���� �Է� ó��
		ibx_sincgAmt.setValue(sSalary_04);		// ��û�ݾ�
	}
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_53] [��û�ݾ�]+" sSalary_02 +"[��û�ݾ�_����]"+ sSalary_02.length );
	
	if(sSalary_04.length > 3) { 	// 3�ڸ� �̻��̸�
		ibx_sincgAmt.setValue(scwin.setComma(sSalary_04));		// �ݾ� �޸� ����
	}
	gcm.log("[/TL0190_01_s1.xm] [checkMoney()] ==> [TEST_91] [ibx_sincgAmt]"+ ibx_sincgAmt.getValue() ); 
};

scwin.setComma = function(val, txt) {
	gcm.log("[/TL0190_01_s1.xm] [setComma()] ==> [TEST_01] [�ݾ� �޸� ����] [val]+" val +"[val.length]"+ val.length );
	
	var rtnValue = ""; 
	var regexp = /(-?[0-9]+)([0-9]{3})/;
	var num = String(val).replace(/\[^\d]/g, "");
	num = num.replaceAll(',', "");		// �ݾ� �޸� ����
	var cvtNum = Number(num);
	num = String(cvtNum);
	
	whie(regexp.test(num)) { 
		num = num.replace(regexp, "$1$2");		// �ݾ� �޸� ���� ó�� 
	}
	
	rtnValue = num;
	if(txt != nul) rtnValue = num +""+ txt; 
	gcm.log("[/TL0190_01_s1.xm] [setComma()] ==> [TEST_91] [rtnValue]"+ rtnValue );
	
	return rtnValue;
};
=============================================================================================================
 
- (����Ʈ��) �����û(TASK_TL0190_00001, 2193) ����_�ڡ�_ȣ��  ==> �ڼҿ� ���� �������� �α���
1. ����:
[/TL0190_01_s1.xm] [(service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON)] {"ERR_CODE":"E"
, "ERR_MSG":"4304 ����ϴ��� ���û���� �־� �߰���û�� �Ұ��մϴ�.", "OUT_DATAT":"", "CryptoYN":"","RTN_CODE":"_METXERR_0P52"
, "RTN_MSG":"4304 ����ϴ��� ���û���� �־� �߰���û�� �Ұ��մϴ�.", "OUT_DATA_TYPE":""}
2. ����: �� ��û�� ����
3. ��ġ: ������ ��û��
=============================================================================================================
 
- (����Ʈ��) �����û(TASK_TL0190_00001, 2193) ����_�ڡ�_ȣ�� ==> ������ ���� �������� �α���
1. ����:
[/TL0190_01_s1.xm] [(service_callback()] ==> [TEST_51] [�����������] [����� �����ڵ�] �� [JSON.stringify(t_loanRegist)] {"since_no":"0712000382"
,"stat_cd":"0", "loan_max":"0","loan_amt":"0","gmri_kind":"����ä6����","gmri_jeokyg":"0","bi_sayucd":"D999","sincg_amt":"1000000","loan_gigan":"",
"ibx_deci_mth":"", "sanghw_mth":"0"}	
2. ����:  
3. ��ġ: ������ ��û��
=============================================================================================================

- ��ũ���� ���� ȸ��(16:00, ȸ�ǽ�, (��)codef �����) ==> (��)��[�ڵ忡��] 
1. (��)codeF ���� ����ڿ� ����
 1) �츮 �������� ID �����Ͽ� codef ������ ���� ==> 0.5�� �̳��� ����
 2) codeF �������� �츮 ������ ����Ÿ �ϰ��� ����
 3) �츮 �������� codeF ������ �Ǻ��� ��ũ���� ��û ����Ÿ �����ؼ� ���� ==> 2�� �̳��� ����
=============================================================================================================

- ���� ó��(Gold Win ���θ� PC����) ==> �Ϸ�[����]   
1. ���ְ� ����(���� �븮 ����) 
 1) ��κ�[����) ��ǰ���Ծȳ�(/T20001_01_PL0001_01.xml) ����
=============================================================================================================

������������������� 2020.12.08(ȭ) �۾� ������������������� 
---> 07:30 ~ 21:00 ==> jWEB �ҽ� ����¡(10��, 1��), �߽�(11:40, ���� 2�� (���� 59: ������, ��������)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ��(PLO001) [�ſ� ����] �׽�Ʈ 
==============================================================================================================

- alert �˾� ȭ�� ���� ����
var opt = {"width": "350", "height": "210"); 
gcm.log("[/TL0001_01_m.xml] [onoageloado()] ==> [TEST_41] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 

com.confirm("���� ������ �̹� ���� ��û ���� ��ǰ�� �־� �ѵ���ȸ/������� �Ұ��մϴ�. <br/> ��ǰ�� ����� ����Ʈ�� <br/>
��û���� ���� ��û������ Ȯ���Ͻðڽ��ϱ�?", scwin.fn_confirm_calback, opt);
return;
==============================================================================================================

- 09. �����û ����(TL0120, 01) ȭ�� ���� 
1. ���ڼ��� ���� ����
scwin.onpageload = function() {  
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. �����û ����(TL0120) ȭ�� �ε�...@@@]" );
  
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task �ʱ�ȭ �� ���� TASK ���� ����
	
	scwin svID = "TASK_COMME_2173";
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. �㺸���ݰ��� ��ȸ(TASK_COMMF_2173) ���� ȣ��(R)
};

// ���ݴ㺸 ����(���ŷ�) (�θ� ȭ��)
scw.callSvc_llSavAcMainInto = function(inputData) (
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInto() ==> [TEST_01]" );
	
	scwin.llSavAcMainData = inputData ;	// �޾ƿ� ���ݴ㺸 ����(���ŷ�) Data
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInto() ==> [TEST_42] (�޾ƿ� ���ݴ㺸 ����(���ŷ�) Data]"+ JSON.stringify(scwin.llSavAcMainData) );
	
	scwin.fn_callService("TASK_TL0120_00003", scwin fn_callback.certSign);		// 52. ���ڼ��� ���� ���� ���ڼ��� ���) [R)  
	// scwin.fn_callService("TASK_COMMF_2171".x scwin.service2171_callback);	 // ���ݺ� ����(���ŷ�) ���� ȣ��(����): (���ڼ��� �����ϰ� �׽�Ʈ)
};

// ���� ȣ�� 
scwin.fn_callService = function(svID, callbackFn) { 
 
	if(svID == "TASK_TL0120_00002") 	// 53. ���ݴ㺸���� ���ŷ� ���� ȣ�� �̸�
	{ 
		gcm.log("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [53. �㺸�㺸���� ���ŷ�(TASK_TL0120_00002, 2171) ����_�ڡ�_ȣ��] [svID]"+ svID );
		
		var inputData = {  	// IN_META INF0 ���[����] (���񽺵�ϰ��� ȭ�鿡��) @@@ 
			"CERT_SIGN_INFO": scwin.cert_sign_info,		// 00. ���ڼ���
			"llSavAcN": com.trim(scwin.llSaveAcMainData.llSavAcN),	// 01. �㺸���ݰ��¹�ȣ
			"llAcPin": com.trim(scwin.llSaveAcMainData.llAcPin),		// 02. �㺸���º�й�ȣ(Ű���� ���� ó��)
			"lnPtAt": com.trim(scwin.llSaveAcMainData.lnPtAt),			// 03. �����û�ݾ�
			"rcpAcN": com.trim(scwin.llSaveAcMainData.rcpAcN),		// 04. �Աݰ��¹�ȣ
			"cvgSffN": "",				// 05. ����������ȣ
			"dcdcNStuApF":  "",	// 06. ����/������ɿ���
			"emAr": "",					// 07. �̸��� �ּ�
		}
	}
};
==============================================================================================================

- �������� ���������� ���� 
1. �α��νÿ� �޴�����ȣ ��ȿ�� ���� �߻�(����: SBank(��)���� ȸ�� �����ؼ� �ڵ�����ȣ �Է� �� ��) 
 1) ��ġ: : ���������� ��� ���� ����(�̰��� ����) ==> ���������� �簡��(��������[������], ���µ��)
==============================================================================================================

- �������� ���ȼ� �ɻ� ��� ����
1. ���� �Ǽ� 959��: ��� �ɸ�
==============================================================================================================

������������������� 2020.12.09(��) �۾� �������������������
---> 07:30 ~ 21:30 ==> �ְ�����(23����)�� �ۼ�(14��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ��(PL0001) �ſ� ���� �׽�Ʈ
- 04 ���ڼ��� ������� �� Ȯ��[�ſ����] (TL0230, 01) ȭ�� ����
scwin onpageload = function() { 
	gcm.log("[/TL0230.xml] [onpageload()] ==> [TEST_01] [04. ���ڼ��� ������� �� Ȯ��[�ſ����] (TL0230) ȭ�� �ε�...@@@]" ); 
  
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task �ʱ�ȭ �� ���� TASK ���� ����
 
	scwin.loanSincglnfo = xTouchLibUi.getTaskData("TL0220", $p);		// 01. �����û ���� Ȯ�� TASK
	
	// 01. �����û ���� Ȯ�� dma ���� 
	dma_0210.set("sinco_no", scwin.loanSincalnto sincg_no);	// 1. ��û��ȣ 
	dma_0210.set("ib_acctno", scwin.loanSincolnto.ib_acetno);	 // 2. ��û��ȣ 	
	dma_0210 set("inji_mth", scwin.loanSincglnto.inji_mth); 		// 3. ���������� ���
	gcm.log("[/TL0230.xml] [onpageload()] ==> [TEST_13] [04. ���ڼ��� ������� �� Ȯ��[�ſ����] (TL0230) ȭ��]
		[�����û ���� Ȯ�� TASK] "+ JSON.stringify(scwin.loanSincglnfo) );
		
	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p);	// 04-1. ������� ȭ�� ����[R]
};

// ���� ȣ�� ����
swin fn_callService = function(svID, callbackFn) { 
	gcm.log("[/TL0230_01_m.xml] [fn_callService()] ==> [TEST_01] [02. (����Ʈ��) �������(TASK_TL0230_0001, 2195) ����_�ڡ�_ȣ��] [svID]"+ svID );
	
	var inputData = {  	// IN_META INF0 ���[����] (���񽺵�ϰ��� ȭ�鿡��) @@@ 
		"since_no": dma_0210 get("since no");		// 1. ������ȣ
		"ib_acctno": dma_0210.get("ib_acctno"), 	// 2. �Աݰ��¹�ȣ
		 "inji_mth": dma_0210 get("inji_mth");		// 3. ���������� ���
	}
	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���	
			inputData,		// ������ INPUT ����Ÿ ���	
			callbackFn		// ��� �ݹ� �Լ� ���
		};
	);
};  
==============================================================================================================

<w2:dataCollection baseNode="map">  
	<--// 01. �����û ���� Ȯ�� dma //-->  
	<w2:dataMap baseNode="map" id="dma_0210">   
		<w2:keyInfo> 
			<w2:key id="ib_acctno" name="��û��ȣ" dataType="text"></w2:key>
			<w2:key id="ib_acctno" name="�Աݰ��¹�ȣ" dataType="text"></w2:key>
			<w2:key id="inji_mth" name="���������� ���" dataType="text"></w2:key>
		 </w2:keyInfo>
	</w2:dataMap>  
 </ww2:dataCollection> 
==============================================================================================================

- �����û ����(TL012001) ȭ�� ���� 
scwin onpageload = function() {
	gcm.log("[/TL0120_01_m.xml] [onpageload()] ==> [TEST_01] [09. �����û ����(TL0120) ȭ�� �ε�...@@@]" ); 		 
	
	xTouchLibUi.init(scwin.nowTaskInfo, $p);	 // xTouch Task �ʱ�ȭ �� ���� TASK ���� ���� 
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback);		// 01. �㺸���ݰ��� ��ȸ(TASK_COMMF_2173) ���� ȣ��[R]
 };
 
// ���ݴ㺸 ���� ����(�θ� ȭ��)
scwin.callSvc_llSavAcInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_01]" );
 
	scwin.IISavAcData = inputData; 	// �޾ƿ� �������ݰ��� Data(���� ����) 
	dma_2171.setJSON(inputData); 	// 02. ���ݴ㺸���� ���ŷ� dma ����Ÿ ���� ����
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcInfo()] ==> [TEST_41] [INPUT����Ÿ]"+ SON.stringify(scwin.IISavAcData) );
	
	scwin.fn_callService("TASK_TL0120_0001", scwin.service2170_callback);		// 04. ���ڳ����� ��ȸ(���ݴ㺸���� ���� �ŷ�) ���� ȣ��[����] 
 };
 
// ���ݴ㺸 ����(�� �ŷ�) (�θ� ȭ��)
scwin.callSvc_llSavAcMainInfo = function(inputData) {
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_01]" );
	
	scwin.llSavAcMainData = inputData;	 // �޾ƿ� ���ݴ㺸 ���� Data(���ŷ�)  
	gcm.log("[/TL0120_01_m.xml] [callSvc_llSavAcMainInfo()] ==> [TEST_41] [�޾ƿ� ���ݴ㺸 ����(�� �ŷ�) Data)]"+ SON.stringify(scwin.llSavAcMainData) );
	 
	scwin.fn_callService("fn_callService("TASK_TL0120_00003", scwin.service_callback);		// 52. ���ڼ��� ���� ����(���ڼ��� �˾�) [R]
	// scwin.fn_callService("fn_callService("TASK_COMMF_2171", scwin.service2171_callback);	// ���ݴ㺸���� ���� �ŷ�) ���� ȣ��[����] (���ڼ��� �����ϰ� �׽�Ʈ)	
 };
 
// ���� ȣ�� ����
swin fn_callService = function(svID, callbackFn) { 
	gcm.log("[/TL0230_01_m.xml] [fn_callService()] ==> [TEST_01] [02. (����Ʈ��) �������(TASK_TL0230_0001, 2195) ����_�ڡ�_ȣ��] [svID]"+ svID );
	
	var inputData = {  	// IN_META INF0 ���[����] (���񽺵�ϰ��� ȭ�鿡��) @@@ 
			"CERT_SIGN_INFO": scwin.cert_sign_info,		// 00. ���ڼ���
			"llSavAcN": dma_2171.get("llSavAcN"),		// 01. �㺸���ݰ��¹�ȣ
			"llAcPin": dma_2171.get("llAcPin"),			// 02. �㺸���º�й�ȣ(Ű���� ���� ó��)
			"lnPtAt": dma_2171.get(".lnPtAt"),				// 03. �����û�ݾ�
			"rcpAcN": dma_2171.get("rcpAcN"),			// 04. �Աݰ��¹�ȣ
			"cvgSffN": "",				// 05. ����������ȣ
			"dcdcNStuApF":  "",	// 06. ����/������ɿ���
			"emAr": "",					// 07. �̸��� �ּ�
		}
	}	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo
			},						/ Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���	
			inputData,		// ������ INPUT ����Ÿ ���	
			callbackFn		// ��� �ݹ� �Լ� ���
		};
	);
};
==============================================================================================================

<w2:dataCollection baseNode="map">  
	<--// 02. ���ݴ㺸���� ���ŷ� dma(�޾ƿ� �㺸���ݰ��� Data(���� ����)) //--> 
	<w2:dataMap baseNode="map" id="dma_2171">   
		<w2:keyInfo> 
			<w2:key id="llSavAcN" name="�㺸���ݰ��¹�ȣ" dataType="text"></w2:key>
			<w2:key id="llAcPin" name="�㺸���º�й�ȣ" dataType="text"></w2:key>
			<w2:key id="lnPtAt" name="�����û�ݾ�" dataType="text"></w2:key>
			<w2:key id="rcpAcN" name="�Աݰ��¹�ȣ" dataType="text"></w2:key>
			<w2:key id="cvgSffN" name="����������ȣ" dataType="text"></w2:key>
		 </w2:keyInfo>
	</w2:dataMap>  
 </ww2:dataCollection> 
==============================================================================================================

- /TASK_TL0120_00002 java ���Ͽ���
1. ���ڼ����� MFSV_2171���� INPUT ����Ÿ(nextInData)�� �ٽ� �Է� ����� nul ������ �� ��
public class TASK_TL0120_00002 extends CommoninterfaceServiceAbstract ( 
	@Override
	public Map start() throws Exception {
		log.debug("[/TASK_TL0120_00002.java(start()] ==> [TEST_01] [��û ���� �� ��� ����(���ݴ㺸���� ���ŷ�) ó��(TASK_TL0120_00002) 
			(����_�ڡ�) ó�� START)] ���� [getTelelD]"+ this.getTelelD) );
	  
		Map nextInData = null; 		// start ���񽺷� ������ ��
	  
		Map IN_DATA = this.getInputData();		// �Է� �� ��ȸ
	  
		this tempinData = this.getInputData();		// ���� ȭ�鿡�� �Ѿ�� �� ����
	  
		switch(this.getTeleID) ( 
			case "MWEB_01_8YPASS":
				this.firstMap = IN DATA;
				nextInData = new HashMap();
				break; 
				
			case "MFSV 2171":
				nextInData = this.templnData;				
				nextInData = new HashMap();
				nextInData.put("CERT SIGN_INFO", this.firstMap.get("CERT_SIGN_INFO"));	// 00. ���ڼ���
				nextInData.put("savAcN", this.firstMap.get("SavAcN"));	// 01. �㺸���ݰ��¹�ȣ 
				nextInData.put("AcPin", this.firstMap.get("AcPin"));		// 02 �㺸���º�й�ȣ(Ű���� ���� ó��) 
				nextInData.put("InPtAt", this.firstMap.get("InPtAt")); 	// 03. �����û�ݾ�  
				nextInData.put("rcpAcN", this.firstMao.get("'rcpAcN)");	// 04. �Աݰ��¹�ȣ
				nextInData.put("cvgSffN" this tirstMap.get("cvgSffN")); 	// 05. ����������ȣ 
				nextInData.put("dcdcNStuApF", this.firstMap..get("dcdcNStuApF")); // 06. ����/������ɿ���
				nextInData.put("emAr", this.firstMap..get("temAr"));		// 07. �̸����ּ� 
				break; 
 
			delault : throw new ResultException("NEXT TASK ID �� ���� ����");
		}
		log.debug("[/TASK_TL0120_00002.java(start()] ==> [TEST_91] [������ INPUT ����Ÿ] [nextInData]"+ nextInData );
		
		return nextInData; 
	}
}
==============================================================================================================

- �α��� �׽�Ʈ
if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_HP == "01030720898" || com.getCertiCheck().USER_HP == "01099014247")) {
// �ڵ��� ��ȣ�� ���¸�, �ڼҿ� �̸� 
	gcm.log("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [����]"+ com.getCertiCheck().USER_NAME +"[�ڵ��� ��ȣ]"+ com.getCertiCheck().USER_HP );
	alert("[/TL0120_01_m.xml] [fn_callService() ==> [TEST_53] [����]"+ com.getCertiCheck().USER_NAME +"[�ڵ��� ��ȣ]"+ com.getCertiCheck().USER_HP );
}
==============================================================================================================

- �㺸���ݰ��� ��ȸ(TASK_COMM2173) ����_�ڡ�_ȣ��] [svID] TASK_COMMF_2173 ���� ȣ�� ���� ==> ���¸� �������� �α���
1. ����: 
[/TL0120_01_m.xml] [service_callback()] ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": null, "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "-9999", "RTN_MSG": "�����߻�", "OUT_DATA TYPE": ""}  
1. ����2:  java�ܿ���  [/CommoninterfaceServiceController.java ���Ͽ���)
Caused by java lang NumberFormatException For input string "   "
	at java lang Number FormatException forinputString(NumberFormatException java 65)

	// �Ⱓ ���� ������ ���� ���� ȣ�� ���� 
	@Request Mapping(value = "/commoninterfaceService.do", method = RequestMethod.POST) 
	public @Re$ponseBody Map commoninterfaceService(@RequestBody Map inMap, HitpServletRequest request, HttpServietRe$ponse re$ponse)
  
	method = cis.getMethod("setMFSV_ID", String class);	 
	method.invoke(obj, teleIntoMap.get("TELE_ID"));
	
	method = cis.getMethod("startService");	// 02 startService*/MFSV SAMPLE java) �Լ� ȣ�� 
	==> 2. ���� ������ ���� // �����߻� ���� @
	Resutl MFSV_Reslut =  (Reslut)method.invoke(ojb);
}

2. ����: �޾ƿ� ������ �� ���� ������ ���ͼ� SNALU��ȣ(COM-SNA_LU)�� �η� ���õǾ ���� �߻�
- ���¸� �α� 000000	 ����
debug(" I luchkMap gE , 0166202012091530509143832020021730000000   X0019853  JT2101030720898 KAO046661438P20
INFO: (Sent[0166202012091530509143832020021730000000  		X0019853 		JT2101030720898 KA0046661438P202012090002043
==============================================================================================================

- �޾ƿ� ����Ÿ �м�(3�� �α��� ��� �м�) ��
1234567890123456789012345678901234567890123456789��123456789012345678901 2345678901234567890123456789��
1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
M6TX 36692020120917442391442450210217300000 		SYOUNG42					JJT2101030720898 SADO05901057P202012090002778
M6TX 88862020120918024091A42700210176000000		ECONKO00				JJT2101030720898 SA0005345277P202012090002838
M6TX 36692020120915305091438320210217300000 		X0019853				JT2101030720898 KA0046661438P202012090002043
--> ���¸� �α��� ����(JT2101030720898 ������ ��ĭ �տ��� �޾ƿ�) ����	
==============================================================================================================
 
- �������� ���������� ����2
1. ���������� ������ ���� �Ǿ��ٰ� �� ==> ���������� �簡�� ��������[������], ���µ��) ==> ���� �� 2�� �����
==============================================================================================================
 
- ������ ���� ȸ��(09:50, ȸ�ǽ�, ������)
1. ��Ŀ�� �̵� 
2. �������� ���ȼ� �ɻ� ���: ���� �Ǽ� 959��
3. ��ũ����(�ǰ�����): �̹��ֱ��� ���� �Ϸ�
 1) �ǰ�������� ����Ȯ�μ�(NHIS_SCRAP_01), �ڰݵ��Ȯ�μ�(NHIS_SCRAP_02)
==============================================================================================================

- ���� ���� ����
1. (����Hmall)[����Ŭ��/����Ű����]COOL���½��ǽ������������RI8$pA17, ����: 15,420��
 1) ����, �� Ƽ�� ��, ������ �ȵ�
http://www.enuri.com/detail.j$p?modelno=28140971
http://item.gmarket.co.kr/detailview/item.a$p?goodscode=1411733203
==============================================================================================================

������������������� 2020.12.10(��) �۾� �������������������
---> 07:30 ~ 21:30 ==> ���������� ����(9��, ����������)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��] 
- 0. ���������ŷ_�����׽�Ʈ 1._2��_�亯 ���� ó�� 
13-1. ����ݸ� Ȯ��[�ſ� ����] (TL0180) ȭ�� Ȯ��
1. ���� �븮�� ���� ��ȹ ���� �����ϰ� �̿��� ������ ���� �� ������ �뺸 �� ����
scwin.onpageload = function() {
	gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_01] [13-1. ����ݸ� Ȯ��[�ſ� ����] (TL0180, 01) ȭ�� �ε�...@@@]" ); 
	
	var exptGmriData = $p.parent().scwin.exptGmriData;	 // ���� �ݸ� ���� DATA 
	gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_02] [���� �ݸ� ���� DATA]"+ JSON.stringify(exptGmriData) );
	
	if(exptGmriData != null) {
		gcm.log("[/TL0180_01_m.xml] [onpageload()] ==> [TEST_11] [11. ���� ȣ�� ��� �޾ƿ��� ����� ==> ]" ); 
		scwin gmri_gijun = exptGmriData gmri_gijun;	// ���رݸ�
		scwin.gmeigasan_min = experiData.gmri_gasan_min; 		// ��������ݸ�
		scwin.gmri_gasan_max = exptGmriData.gmri_gasan_max:	// �ִ밡��ݸ�
		scwin.gmripm_yn1 = exptGmriData.gmripm_yn1;		// 2. ��뿩��1(�޿���ü �Ǵ� ���ݼ�����ü ��������) ���
		scwin.gmripm_yn1_rate = exptGmriData.gmripm_yn1_rate;		// 2. ��뿩��1 ����ݸ�(�޿���ü �Ǵ� ���ݼ�����ü ��������) 
		scwin.gmripm_yn2 = exptGmriData.gmripm_yn2;		// 3. ��뿩��2(����Ʈ������ �Ǵ� ������ �ڵ���ü) ���
		scwin.gmripm_yn2_rate = exptGmriData.gmripm_yn2_rate;		// 3. ��뿩��2 ����ݸ�(����Ʈ������ �Ǵ� ������ �ڵ���ü)  
		scwin.gmripm_yn3 = exptGmriData.gmripm_yn3;		// 4. ��뿩��3(�ֱ�3���� �ſ�ī�� ������ 50���� �̻�) ���
		scwin.gmripm_yn3_rate = exptGmriData.gmripm_yn3_rate;		// 4. ��뿩��3 ����ݸ�(�ֱ�3���� �ſ�ī�� ������ 50���� �̻�)
		scwin.gmripm_yn4 = exptGmriData.gmripm_yn4;		// 5. ��뿩��4(1���� �̻� ��ġ�Ŀ��� �Ǵ� �����Ŀ���) ���
		scwin.gmripm_yn4_rate = exptGmriData.gmripm_yn4_rate;		//  5. ��뿩��4 ����ݸ�(1���� �̻� ��ġ�Ŀ��� �Ǵ� �����Ŀ���) 
	}
};
==============================================================================================================

- 04. ���ڼ��� ������� �� Ȯ��[�ſ� ����] (TL0230) ȭ�� ����
1. ������� ��ǰ���� ������ �ȵǰ� ����
scwin fnSetFillData5300036 = function(tillData) { 
	gcm.log("[/TL0230_01_m.xml] [fnSetFillData5300036()] ==> [TEST_01] [2. ������� ��ǰ���� SetFilData ó��]" ); 
};
==============================================================================================================

-(����Ʈ��)�����ѵ���ȸ (TASK-TL0160 00001) ���� ���� 
1. ����: 
[/TL0160_01_m.xml] [service_callback()] ==> [TEST_01] [�ݹ�] �� [JSON.stringify(rtnJSON)]{"ERR CODE":"E",
"ERR_MSG": "4001 rclips ��ȸ����!!!", "OUT_DATA": "", "CryptoYN", "", "RTN_CODE", "_METXERR_00817"
, "RTN_MSG": "4001 rclips ��ȸ����!!!"", "OUT_DATA TYPE": ""}  
2. ����: �����迡�� ��ܰ�� ������ ����Ÿ�� �߸� �Ǿ� ���� ���� 
3 ��ġ: �����迡�� ����Ÿ�� ��������� �Ѵٰ� ��(�̿��� ���� �ް�: ó�� ����)
==============================================================================================================

- ���� ����� �ȵ�
1. wbst wbwn ��ɾ �ƴµ� "process is already running !!!"�� ��Ÿ��  ==> ������ �� ����(�ڼҿ� ���忡�� ó�� �����ؾ� ��) 
(weblogic@ijmbtsad1a ~]$ wbst
Startup Error "webbank1_1" process is already running !!!
==============================================================================================================

- Websquare eclipse���� ȭ�� Ȯ��, ��� ����Ű
1. ȭ�� Ȯ��: Ctrl ++, ȭ�� ���: Ctrl --
==============================================================================================================

- ���������� �߱�(21��, �ڵ������� �������� ��(JBank)���� �߱�)
1. �������� ����� ����: 50-01-326658, ������: ���¸�, PW: 03*9*0
==============================================================================================================

������������������� 2020.12.11(��) �۾� �������������������
---> 07:30 ~ 21:30 ==> �߽�(11:30, ���� ����[�ݰ� �Ĵ�], ������: �̱�ö �̻簡 ��), ������ ����(�ۺ� ����) ö��(15��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ��ũ���� ó�� ==> �׽�Ʈ ������ ���¸� ������������ ��ũ���� ó�� �Ϸ� ==> �Ϸ�[����] 
1. ��ũ���� DB ��ȸ(���� �̷� ���� ���� üũ)
 1) �� �� ���� �̸�: DB���� ��ũ���� ���� ������ ��(AS IS: �ֱ� 1������ �����Ⱓ���� ����) ==> ��� ���� ����
2. ��ũ���� ��ȸ �Ⱓ 1������ ���� �� ��ȸ
 1) 12���� �ƴϸ� ==> ��ȸ �Ⱓ �缳�� �� �ٽ� ��ȸ(AS IS) ==> ��� ���� ���� 
 2) ��ȸ �Ⱓ �ֱ� 6�������� �����϶�� ������ ������ ��û��
==============================================================================================================
 
- 10-1. ���� �ڵ��߱�/��ȸ (��ũ����) ȭ�� ���� 
scwin.onpageload = function() { 
	gcm.log("[/TL0170_01_s1.xml] [onpageload()] ==> [TEST_01] [10-1. ���� �ڵ��߱�/��ȸ (��ũ����) ȭ�� �ε�...@]" ); 
	
	var nowDt = com.date.getCurrentServerDate().substring(0, 4) + com.date.getCurrentServerDate().substring(4, 6) 
		com.date.getCurrentServerDate().substring(6, 8);	// ����
	var addedMMDate = com.date getAddedMMDate(nowDt, -6);	// ���� ��¥�κ��� �Է��� ������ ���� �Ǵ� �̷����ڸ� ���
	scwin.srchStartDt = addedMMDate.substring(0, 4) + addedMMDate.substring(4, 6);	// ��ȸ ���� ���(6���� ��)
 
	var addedDDDate = com.date getAddedMMDate(nowDt, -30);	// ���� ��¥�κ��� �Է��� ������ ���� �Ǵ� �̷����ڸ� ���
	scwin.srchEdnDt = addedDDDate.substring(0, 4) + addedDDDate.substring(4, 6);	// ��ȸ ���� ���(1�� ��)
	
	if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
	  || com.getCertiCheck().USER_HP == "01099014247) { 	// �ڵ��� ��ȣ�� ���¸�, �ڼҿ� �̸�  
		alert("[/TL0170_01_s1.xml] [onpageload()] ==> [TEST_31_21] [01. ��ũ��ID ���� ���� ȣ��[R]] -->
			[����]"+ com.getCertiCheck().USER_NAME +"[��ȸ ���� ���]"+ scwin.srchStartDt +"[��ȸ ���� ���]"+ scwin.srchEdnDt ); 
		
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);	// 01.��ũ�� ID ���� ���� ȣ��[R]  
		==> com. popupList. POP_SCRAP_01();	// 00-1. ��ũ���� �˾� ȭ�� ȣ��
	}
	else
	{  
		// scwin.fn_scracping();		// ��ũ���� ��� TEST ������ ===> TEST @@@ ===>
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);		// 01.��ũ�� ID ���� ���� ȣ��[R]  
		==> com. popupList. POP_SCRAP_01();	// 00-1. ��ũ���� �˾� ȭ�� ȣ�� 
	}
};

scwin.btn_confirm_onclick = function() {  
	gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [���� ���� ��ư Ŭ�� �̺�Ʈ]" ); 
	
	// ��ũ���� ���� ���� �� ��ũ���� ���� ���� �˾� ȣ�� 
	var inputData = {
		SCRAP_ID : scwin.SCRAP_ID,	// ��ũ������ID 
		nowTaskInfo :  $p.parent().scwin.nowTaskInfo
	}
	gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_02] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) ); 
	
	com.popupList.POP_SCRAP_01(inputData, 		// 00-1. ��ũ���� �˾� ȭ�� ȣ�� ==> ��ũ���� ó�� �����
		function(rtnValue) {	  
			gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_51] [�˾� �ݱ�] [�����] "+ JSON.stringify(rtnValue) ); 
		
			if(rtnvalue.RTNCD =="OK") {	 	// ���� ó�� ���� �̸�
				gcm.log("[/TL0170_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_52] [��ũ���� ���� DB ��ȸ ���� ȣ��] ==> TEST @@@ ==>] @@@ "  ); 
				
				// scwin.fn_scracping();		// ��ũ���� ��� TEST ������ ==> TEST @@@ ==>
				scwin.fn_callService("NOTASK_COMMW_0008", scwin.serviceSCDB_callback);		// ��ũ���� DB ��ȸ ���� ȣ��[R]  ==> TEST @@@ ==>
			}
		}
	};
};

// ���� ȣ��
scwin.fn_callService(svID, callbackFn) {  
	gcm.log("[/TL0070_01_s1.xml] [fn_callService() ==> [TEST_11] [��ũ���� ���� DB ��ȸ(NOTASK_COMMW_0008) ����_�ڡ�_ȣ��] [svID]"+ svID );
 
	var inputData = {		// IN_META_INFO ���[����] (���� ��� ���� ȭ�鿡��) @@@@
		"SCRAP_ID": scwin.SCRAP ID 					// 1. ��ũ�� ID
		, "COMM_START_DATE": scwin.srchStartDt 	// 2. ��ȸ ���� ���
		, "COMM_ENDT_DATE": scwin.srchEdnDt		// 3. ��ȸ ���� ���
		, "job_group": scwin.job_group 	 	/	/ 4. ����(1:������, 2:����, 3:�縳�б� ������, 4:����, 5:��Ÿ) 
	}	
	
	com.exeService (
		{
			"ServiceID": svID,
			"URL": "_XTOUCH_INTERFACE_",
			"CryptoYN": "N",
			"mode": "",
			"NOW_TASK_INFO": scwin.nowTaskInfo	
		},						// Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���
		inputData,		// ������ INPUT ����Ÿ ���	
		callbackFn		// ��� �ݹ� �Լ� ���
	}; 
}; 
 
// ���� ȣ�� ��� �ݹ�
scwin.service_callback = function(rtnJSON) {
	gcm.log("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_01] [�ݹ�] [��ũ���� ���� DB ��ȸ(NOTASK_COMMW_0008) 
	����_�ڡ�_ȣ��] [ERRO_CODE]+ rtnJSON.ERRO_CODE ); 

   if(rtnJSON.ERRO_CODE == "S") {	// ��ũ���� ���� ���� �� ��ũ���� ���ð��� �˾� ȣ�� 
		gcm.log("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_51] [JSON.stringify(rtnJSON.OUT_DATA)]"+ JSON.stringify(rtnJSON.OUT_DATA) ); 
		
		if(scwin.job_group != "" && scwin.job_group == "1") avgCnt = 6: else   avgCnt = 12;		// ������ ������ �̸�(avgCnt = 6)
		
		var v_gal_aqt_dt = "";	// 02. �Ի���(�ڰݵ�� Ȯ�μ� �����) ===> TEST @@@ ===> ����
		
		if(rtnJSON.OUT_DATA != null) {  	// ��ũ���� ����� �����ϸ�	
			v_incomeavg = rtnJSON.OUT_DATA.HEPAY_AVG_AMT;	  		// 01. ��� ���κ���� ����
			v_gal_aqt_dt = rtnJSON.OUT_DATA.COMM_START_DATE;		// 02. �Ի���(�ڰݵ�� Ȯ�μ� �����) ����	  
		}
 
		var incomeavg = parseInt(v_incomeavg);		// 01. ��� ���κ����
		
		var incomeavg = parseInt(v_incomeavg) / avgCnt;		// 01. ��� ���κ����
		
		if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
		  || com.getCertiCheck().USER_HP == "01099014247) { 	// �ڵ��� ��ȣ�� ���¸�, �ڼҿ� �̸�  
			alert("[/TL0170_01_s1.xml] [service_callback()] ==> [TEST_54] [01. ��ũ��ID ���� ���� ȣ�� �ݹ�[R]] -->
				[01. ��� ���κ����]"+ v_incomeavg +"[ 02. �ڰݵ�� Ȯ�μ� �����]"+ v_gal_aqt_dt +"[����]"+ scwin.job_group
				+"[��� ����]"+ avgCnt +"[��� ��� ���κ����]"+ incomeavg+"[01. �����ҵ�ݾ�"+ scwin.fnNHISAnnualncomel(v_incomeavg) );  
		}
		
		var inData = {	 
			"annual_income":  ""+ scwin.fnNHISAnnualncomel(v_incomeavg) 		// 01. �����ҵ�ݾ�
			, "gal_aqt_dt" : v_gal_aqt_dt;		// 02. �Ի���(�ڰݵ�� Ȯ�μ� �����)
		}
		
		scwin.nextTask(inData, {}, {"CHK":"NEXT"});	// ���� Task �Լ� ȣ�� ==> 08, �����ѵ� ��ȸ ���[����] (TL0080, 01) ȭ�� ȣ�� 
	}
};
============================================================================================================

- ��Ŀ�� �̵� ó�� 
1. ���� /TU002001_sl xml ���Ͽ���
scwin.onpageload = function) { 
	gcm.log("[/TL0190_01_s1.xml] [onpageload()] ==> [TEST_01] [14-1. ��û���� �Է� (�ſ� ����] (TL0190) ȭ�� �ε�...@]" ); 
	
	// ��Ŀ�� �̵� ó�� 
	var enterList = {
		[
			bx_sinceAmt,			// ������Ʈ(��û�ݾ�)
			0,							 	//	������Ʈ�� ���� 0�̸� blur 1�̻��̸� keyup 
			function(evt) {  		// �ݹ� �Լ�
				com.scrollCenter(ibx_loan_gigan)	// �ʼ� (����Ⱓ) 
				setTimeout(function() {ibx_loan_gigan, focus();},100) 	// �ʼ�(����Ⱓ)
			}
		]
	}
	com enterMove(enterList);
	
	gcm.log("[/TL0190_01_s1.xml] [onpageload()] ==> [TEST_91] [��������]"+ scwin.nowSystemDtDD ); 
};
============================================================================================================

������������������� 2020.12.12(��) �۾� �������������������
--->07:30 ~ 20:00 ==> �ָ� ���(07:30), ��ī�� �ȭ ��â(���� ��)�� ���۳�(���̼ҿ��� õ��¥�� ��â ����(�ȭ�� ��â �� 3�� ��ġ])

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ����Ʈ�� STEP1(PLO001) [�ſ� ����] ����
==============================================================================================================
 
- ��ũ���� ����
--��ũ���� ��û �� ���� ��ȸ @@@
SELECT M SCRAP_KEY, M.*
FROM MW_SCRAPING_REQ_DETAIL M 	/* ��ũ���� ��û �� TB */  
WHERE 1=1
	AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* ��ũ�� ID */
	AND M.SERVICE ID = 'NHIS SCRAP_01'		/* ����ID */
;
----------------------------------------------------------------------------------------------

-- �ǰ�������� ����Ȯ�μ� ���� ��ȸ 6@@@
SELECT A.RES_USER_IDENTITY_NO AS �ֹι���, A.RES_USER_NM AS ����
			(CASE WHEN A.RES_JOIN_USER_TYPE ='1' THEN E '����������' 
					WHEN A.RES_JOIN_USER_TYPE ='2' THEN E '���������' 
			ELSE '���尡����'
			END) AS �����ڱ��� 
			, B.RES_RE_HENO AMT AS '�ǰ������ �����ݾ�'
			, B.RES_RE_LTCNO_AMT AS '����纸 �����ݾ� 
			, B.RES PAY_MONTH AS �ο� 1 B.RES_RE HEPAY ANT AS '�ǰ������ ���αݾ�'   
			, B.RES_RE LTC PAY AMT AS "����纸��� ���αݾ� 
			, A.CRES_JOIN USER TYPE AS �����ڱ��� A.RES_COMPANY_NM AS '������(��ȣ)"
FROM scrap.TB_NHS CONFIRM A 	/* �ǰ�������� ����Ȯ�μ� TB */
		scrae.TB_NHIS.CONFIRM CONTENTA 	/* �ǰ�������� ����Ȯ�μ� �� TB */
WHERE 1=1
	AND A SN = B.SN
	AND A SN = '9939AACE4DC642648431812C666AEOCF'
	AND A COMM_START_DATE >= '201912' 	/*��ȸ ���� ��� */
	AND A COMM_END_DATE <= '202011'		/*��ȸ ���� ��� */
	AND B RES_RE_HEPAY_AMT > 0 		/* �ǰ������ ���αݾ��� �����ϴ� �� */
ORDER BY REG_DT DESC
;
----------------------------------------------------------------------------------------------

-- �ǰ�������� �ڰݵ��Ȯ�μ� ���� ��ȸ @@@ 
SELECT A.RES_USER_IDENTITY NOT AS �ֹι�ȣ. A.RES_USER_NM AS ����
		, A.COMM_START_DATE AS "�ڰ������", SUBSTR(A.COMM_START_DATE, O, 8) AS "�ڰ����_R ��"
		, A.COMM_END_DATE AS �ڰݻ����, A.REAL_ISSUE_DATE AS �߱����� 
		, A.RES_JOIN_USER_TYPE AS �����ڱ���, A.RES COMPANY_NM AS "������(��ȣ)"  
FROM scrap.NHIS RIGHT  A		/* �ǰ�������� �ڰݵ��Ȯ�� TB */
WHERE 1=1
	AND A SN = (SELECT MAX(M SCRAP KEY) 
						FROM MW SCRAPING REQ_DETAIL M 	/* �ǰ�������� ����Ȯ�μ� �� TB */
							AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* ��ũ�� ID */
							AND M.SERVICE ID = 'NHIS_SCRAP_02' 	/* ����ID(NHIS_SCRAP_02: �ǰ�������� �ڰݵ��Ȯ�μ�) */
					}	/* �Ϸ���ȣ(=��ũ������KEY) */ 
;
----------------------------------------------------------------------------------------------

/* ��ũ���� ���� DB ��ȸ  ==> [/WEB_SCRAPDB_0001_mapper.xml] (selectList()] [2020.11.25, by ���¸�] */ 
SELECT MAX(M.HEPAY_AMT) AS HEPAY_AMT 	/* �ǰ������ ���αݾ� */
			MAX(M. HEPAY_AMT) / DECODE(MAX(M. HEPAY_CNT), 0, NULL, MAX(M HEPAY_cNT)) AS HEPAY AVG AMT 
			 /* ��� ���κ���� */
			, MAX(M.COMM_START_DATE) AS COMM_START_DATE  /* �ڰ������ */ 
FROM 
	SELECT SUM(B.RES_RE_HEPAY_AMT B.RES_RE_LTCPAY_AMT) AS HEPAY_AMT   /* �ǰ������ ���αݾ�  �� */ 
				. O AS HEPAY_CNT 	/*  ���� Ƚ��*/ 
				"AS COMM_START_DATE . /* �ڰ������ */ 
FROM scrap.TB_NHIS CONFIRM A 		/* �ǰ�������� ����Ȯ�μ� TB */ 
scrap TB NHIS_CONFIRM_CONTENT B ay M 4 TB 
WHERE 1=1 AND A.SN = B.SN
AND A.SN =  (SELECT MAX(M SCRAP_KEY)
FROM MW_SCRAPING_REQ_DETAIL M AwaY A TB / 
	AND A SN = (SELECT MAX(M SCRAP KEY) 
					FROM MW SCRAPING REQ_DETAIL M 	/* �ǰ�������� ����Ȯ�μ� �� TB */  
						AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* ��ũ�� ID */
						AND M.SERVICE ID = 'NHIS_SCRAP_01' 	/* ����ID(NHIS_SCRAP_01: �ǰ�������� ����Ȯ�μ�) */
						}	/* �Ϸ���ȣ(=��ũ������KEY) */ 
	AND B.RES = RE HEPAY-AMT > 0 /* �ǰ������ ���αݾ��� �����ϴ� �� */ 
UNION ALL    ����� 
SELECT O AS HEPAY_AMT /* �ǰ������ ���αݾ� */    
COUNTI) AS HE PAY CNT AS COMM /* �ڰ������ */  
START DATE 
 FROM scrap.TB NHIS CONFIRM A 1. �ǰ�������� ����Ȯ�μ� TB 
	scrap.TB_NHIS_CONFIRM_CONTENT B 32a 041 444 TB  
 WHERE 1=1
   AND A SN = B.SN 
 AND A SN = (SELECT MAX(M SCRAP_KEY) 
FROM MW_SCRAPING_REQ_DETAIL M  
	AND A SN = (SELECT MAX(M SCRAP KEY) 
						FROM MW SCRAPING REQ_DETAIL M 	/* �ǰ�������� ����Ȯ�μ� �� TB */ 	 
							AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/* ��ũ�� ID */	  
							AND M.SERVICE ID = 'NHIS_SCRAP_01' 	/* ����ID(NHIS_SCRAP_01: �ǰ�������� ����Ȯ�μ�) */
							}	/* �Ϸ���ȣ(=��ũ������KEY) */ 
		AND B.RES = RE HEPAY-AMT > 0 	/* �ǰ������ ���αݾ��� �����ϴ� �� */  
UNION ALL 	�����
SELECT DISTINCT O AS HEPAY_AMT /* �ǰ����� ���αݿ� */
			, O AS HEPAY CNT /* ���� Ƚ�� */ 
			, A COMM_START_DATE AS COMM_START_DATE  
FROM scrap TB_NHIS_RIGHT A /^.�ǰ�������� �ڰݵ��Ȯ�μ�TB */
WHERE 1=1
	ND A SN = (SELECT MAX(M SCRAP KEY) 
					FROM MW SCRAPING REQ_DETAIL M 	/* �ǰ�������� ����Ȯ�μ� �� TB */  
						AND M.SCRAP_ID = '6A1907C9D9864D9BA16010246DE16A65'  	/*��ũ�� ID */
						AND M.SERVICE ID = 'NHIS_SCRAP_02' 	/* ����ID(NHIS_SCRAP_02: �ǰ�������� �ڰݵ��Ȯ�μ�) */
				}	/* �Ϸ���ȣ(=��ũ������KEY) */  
;
==============================================================================================================
 	
- �ָ�[��]
07:40 ���
08:11 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:40 ���ͳ� ����
12:00 �߽�
12:20 �翺(����) ���
12:30 �ǳ� ������ Ÿ��
13:30 ����
13:40 ���ͳ� ����
18:11 ����
22:20 �翺(����) �Ͱ�
23:00 ���� ==> ü��: 73.4kg
23:35 �ν��� �� ��ü(275U, 16U ����)
23:30 ��ħ
==============================================================================================================
 
������������������� 2020.12.13(��) �۾� ������������������� 
---> 08:00 ~ 21:30 ==> ù��(�������� ������ ����)

- �ָ�2[��]
07:40 ���
08:11 ����
08:30 �ǳ� ������ Ÿ��
09:30 ����
09:40 ���ͳ� ����
12:00 �߽�
12:30 �ǳ� ������ Ÿ��
13:30 ����
14:20 �翺 ������� ���
13:40 ���ͳ� ����
14:30 �����(������: ����) 
14:30 ��ī�� �̿��(�̹�, ����)
15:00 ���̼� �븲2ȣ�� ==> �÷� ���� �Ʒ�(2kg) ����, ���� ���� ����
15:20 ��� ��Ʈ(�뵿�� �Ĺ� ��) ==> ���� �峭�� ����
15:30 �Ͱ�
15:40 ���ͳ� ���� ==> Memo(2020.12, 01 ~ 13) Ÿ����
18:11 ����
18:40 �ǳ� ������ Ÿ�� ==> �Ʒ� � ����(1�ð� ���� ���� �� ���ʷ� �)
19:40 ����
20:00 �翺 �Ͱ�
23:00 ��ħ
==============================================================================================================

- ��� 12�� ����[2015.01.13(ȭ)]
1. �������丮/2015�Ż�ǰ/12�����, S-���̾�(����ȭ��Ʈ, +14��), �� ����: 771,500�� ==> http://auction.kr/iAgWy8j
http://itempage3.auction.co.kr/DetailView.a$px?ItemNo=A542846755&frm3=V2
�Ժ������/�񺸼����/180�� ��ø/��ü���Ϲ���(������), ��ǰ������: W3440*D640*H2100mm(���� ���� --> W4000*D600mm)
==> ����Ʈ�� 404ȣ ��� ũ��(����) ==> W4500*D1000mm)
==> S-���̾�(����ȭ��Ʈ) ���� ==> 541,500��(�⺻), 140,000(����ȭ��Ʈ), 90,000(�ù��), 771,500��(�� ����)
========================================================================================================= 
 
- Notepad++���� �ٹ�ȣ�� ǥ������ �ʵ��� ���� 
1. ����� ���� �޴����� ȯ�漳���� Ŭ���մϴ�.
2. ȯ�� ���� â���� ���������� �̵��մϴ�.
3. ������ �ϴܿ� ���� "�� ��ȣ ǥ��"��� �κ��� üũ�� �����ϰ� �ݱ� ��ư�� Ŭ���ϸ� �˴ϴ�.
==============================================================================================================

- �������� Memo ���� Ÿ�����Ͽ� �ű�� ���
1. �������� PC���� Memo(2020.12).txt ���Ͽ� �ؽ�Ʈ �۾�
 1) �� ��ȣ ǥ�� ����
 2) å���� �����ϰ�
2. MS ���ǽ� ����(����)�� ���� �Կ�(���� ==> Ȯ�� ==> Done ==> ����)
3. �ڵ������� ��������(����)�� ����: 12.01, �̹����� ÷���Ͽ� ���Ծ���� ������
4. ���� �ִ� PC���� �������Ϸ� �����Ͽ� ����: 12.01�� �̹���(12.01.zip)�� �����ޱ�
5. ���� �ִ� PC���� 01. ��������P_ĸó[��] ���� �Ʒ���(12.01)�� ����Ǯ��
C:\Users\Administrator\Desktop\01. �̹��� ����[��]\01. ��������P_ĸó[��]\12.01
6. ���� �ִ� PC���� ���佺������(���α׷�) ����
 1) ���� ==> �ϰ�����(Tab)�� 12.01 ������ ������ ��� �����߰�
 2) ũ������ ==> ���� ����(����); 900 ==> ��� ���� ����(��ȯ); Ŭ��
 3) �Ʒ� ������ output�� ���ϵ��� ������(�뷮, ũ�� ������)
 4) output ������ �ִ� ���ϵ��� ��� �̸� ����(2020_12_01 ���� 7_49 Office Lens.jpg -- >  12.01_01.jpg)
 5) output ������ �ִ� ���ϵ��� �����Ͽ� OneDrive - ����뵿�ʵ��б��� �ٿ��ֱ�
  ==> C:\Users\Administrator\OneDrive - ����뵿�ʵ��б�\90. �̹��� ����[��]\01. ��������P_ĸó[��]\12.01\
7. �ڵ������� ���� ���� ����(�ؽ�Ʈ: Ŭ�� ==> �̹���: Ŭ��)
 1) �������� ���� ==> OneDrive: Ŭ��[���� �ؿ� ��ġ] ==> ����: Ŭ��
 2) 90. �̹��� ����[��]\01. ��������P_ĸó[��]\12.01\12.01_04: Ŭ��
 3) �ؽ�Ʈ --> ��ü ����: Ŭ�� ==> �ؽ�Ʈ ����: Ŭ��
8. �ڵ������� ���̹� �޸�(����) ���� 
 1) �ٿ��ֱ�: Ŭ�� ==> �����
9. ���� �ִ� PC���� ���̹� �޸�(���α׷�) ���� 
 1) �޸� ����: ���� ==> Memo(2020.12).txt ���Ͽ� �ٿ��ֱ� 
=============================================================================================================

- �ǰ����� ���κδ�� ȯ�ޱ� ��û
1. �ǰ�������� Ȩ���������� ��û ==> https://www.nhis.or.kr/nhis/minwon/insertHwangubMain.do
ȯ�޹�ȣ: 2020105100298301342
ó����ȣ: 11729761
ó������: 2020.12.13
���κδ�� ȯ�ޱ�: 47,730��
==============================================================================================================

������������������� 2020.12.14(��) �۾� �������������������
---> 07:30 ~ 21:30 ==> ������ (���� 10��), WEB �ҽ� ����¡(������ ������ �Ͽ��Ͽ� ����ؼ� ó�� (2��) -> 3�� (12��)) 
								, �ڷγ� 19 ���(Ȯ���� �Ϸ� õ�� ��, �������ǿ��� ���� ��û �ٽ� �϶�� ���� ��: �ܿ� �ٽ� ��û��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ��ũ���� �Ϸ� ���� ���ܰ� ó�� 
1. �Ұ���(�̰��� ���� Ȯ��)L���� ����
public Map start() throws Exception { 
	log.debug(""[/TASK_TL0080_00001java] [star()] ==> [TEST_01] [���� �ѵ� ��ȸ(TASK_TL0080_00001) (����_�١�) ó�� START] ���� [TeleID]"+ TeleID );
 
	String CHK_SCRAPING = this.getSessionData(Config.XTOUCH_SESSION_CHK_SCRAPING); 		// ��ũ���� �Ϸ� ����
	CHK_SCRAPING = "T";		// ��ũ���� �Ϸ� ����  ==> TEST @@@ ==>
  
	if(!"T".equals(CHK_SCRAPING)) { 	// ��ũ���� ���ܰ� üũ�� ���� ���ϸ� 
		throw new ResultException("��ũ������ �̿Ϸ� �Ǿ����ϴ� .");
	}
}
==============================================================================================================

- jWEB � ���� ����
1. URL: https://mweb.e-jeiubank.com:5443
==============================================================================================================

- 09-1. �����û ����(TL0120, 01) �Է� ȭ�� ����
scwin.onpageload = function() {
	gcm.log("[/TL0120_01_s1.xml] [onpageload()] ==> [TEST_01] [[09-1. �����û ����(TL0120, 01) �Է� ȭ�� �ε�...@]" ); 
	
	var llSavAcList = $p.parent().scwin.llSavAcList;	// 01. �㺸���ݰ��� List(�㺸���ݰ��� ��ȸ(TASK_COMMF_2173) ����)
	
	dlt_llSavAcList.removeAll();
	dlt_llSavAcList.setJSON(dlt_llSavAcList); 		// 01. �㺸���ݰ��� List ���� ==> 01. �㺸���ݰ��� ��ȸ(TASK_COMME_2173) ����

	for(var i= 0: i < dlt_llSavAcList.getTotalRow(); i++)
	{
		var nlnBelm = parselnt(dlt_llSavAcList.getCellData(0, "nlnBelm"));		// ���Ⱑ�� �ѵ��ݾ�(����ȯ) 
		var nlnBelmkor = com.numberKor(parselnt(dlt_llSavAcList.getCellData(i, "InBeLm")).replace("����, " ����");	
		// ���Ⱑ�� �ѵ��ݾ�(�ݾ� �ѱ� ǥ�� ���� ó��)		
		if(nlnBelmKor == "��") nlnBelmkor = "0��";

		var acNFullNm = "["+ com.trim(dlt_llSavAcList.getCellData(i, "savSujNm")) +"] "
			+" "+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savAcN")) +"("+ nlnBelmKor +")";
		// ���ݰ��¹�ȣ(��¿�): [�����] ���ݰ��¹�ȣ [���Ⱑ�� �ѵ��ݾ�]

		dlt_llSavAcList.setCellData(i, "savAcNFormat", acNFullNm); 	// ���ݰ��¹�ȣ(��¿�): [�����] ���ݰ��¹�ȣ 		
		gcm.log("/TL0120_01_s1.xml] [onpageload()] ==> [TEST_51] [i_��°]"+ i +"[�㺸���ݰ���_��ȸ��(2173)]"+ dlt_llSavAcList.getTotalRow() +"] @
			==> [�����]"+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savSujNm") 
			==> [���ݰ��¹�ȣ]"+ com.transAcn("1", dlt_llSavAcList.getCellData(i, "savAcN")) +"[���Ⱑ�� �ѵ��ݾ�]"+ dlt_llSavAcList.getCellData(i, "nlnBelm") ); 
	} 	// end of for()

	ibx_inBelm.setValue(nlnBelm); 	// ���Ⱑ�� �ѵ��ݾ� ����
};

// �㺸���� ���� �޺� ���� �̺�Ʈ
scwin.sbx_llSavAc_onviewchange = function(info) { 
	gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_01] [�㺸���� ���� �޺� ���� �̺�Ʈ] [������ ���� ����]"+
		com.trim(info newValue) +"[dlt_llSavAcList.getTotalRow()]"+ dlt_llSavAcList.getTotalRow() );
	
	for(var i = 0; i < dlt_llSavAcList.getTotalRow(); i++)
	{
		// gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_40] [i_��°]"+ i +"[������ ���ݰ��¹�ȣ]"+
			com.trim(info.newValue) +"[���ݰ��¹�ȣ]"+ com.trim(dlt_llSavAcList.getCellData(i, "savAcN")) );

		if(com.trim(info.newValue) == com.trim(dlt_llSavAcList.getCellData(i, "savAcN")))
		// ������ ���ݰ��¹�ȣ�� �㺸���ݰ��� List���� ���ݰ��¹�ȣ�� ������
		{
			var nlnBelm = parselnt(dlt_llSavAcList.getCellData(i, "nlnBelm"); 	// ���Ⱑ�� �ѵ��ݾ�(����ȯ)
			ibx_inBeLm.setValue(nlnBelm), 	// ���Ⱑ�� �ѵ��ݾ� ���� 
			gcm.log("[/TL0120_01_s1.xml] [sbx_llSavAc_onviewchange()] ==> [TEST_41] @@@ [i_��°]"+ i +"[���ݰ��¹�ȣ]"+
			dlt_llSavAcList.getCellData(i, "savAcN") +"[���Ⱑ�� �ѵ��ݾ�]"+ dlt_llSavAcList.getCellData(i, "InBelm") );
		}
	} // end of for()
};
==============================================================================================================

������������������� 2020.12.15(ȭ) �۾� ������������������� 
---> 07:30 ~ 21:30 ==> 

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- � �ݿ� ���� ó�� 
- ���� �㺸 ����[�㺸 ����)(PL0003) ����
1. ���� �ŷ������� ���� ���� ��û  ==> �Ϸ�[����] 
 1) 22: ���࿩�Űŷ��⺻���(�����) ����
==============================================================================================================

- �ҵ� ���� �ʼ� ó��(CAR �帲 ����) ==> �Ϸ�[����]  
1-1. ����Ȯ�� [����] (TL0010) �Է� ȭ�� ����
==============================================================================================================

- 09-1. �����û ����(TL0120, 01) �Է� ȭ�� ���� ==> �Ϸ�[����
1. �㺸���� ���� �˾� ó�� �߰� (������ ȯ��(/TE0060_01_sl xml] ȭ�� ����)
scwin.sbx_llSavAc_onclick function {
	gcm.log("[/TL0120_01_m.xml] [sbx_llSavAc_onclick()] ==> [TEST_01] [�㺸���� ���� �˾� �̺�Ʈ]" ); 
 
	var inputData = { 		//	IN_META_INFO ���[����] (���񽺵�ϰ��� ȭ�鿡��) @@@ 
		"p_nowTaskInfo": $p.parent().scwin.nowTaskInfo 
	}
	gcm.log("[/TL0120_01_m.xml] [sbx_llSavAc_onclick()] ==> [TEST_41] [JSON.stringify(inputData)]+ JSON.stringify(inputData) );

	com.popupList_POP_LO07_01(inputData, scwin.fn_popupCallback(); 	// �㺸���ݰ��� �˾�
};

scwin.onpageload = function() {
	gcm.log("[/POP_LO07_01.xml] [onpageload()] ==> [TEST_01] [�㺸���ݰ��� ȭ�� �ε� .....@]" ); 
	
	scwin.fn_callService("TASK_COMMF_2173", scwin.service_callback()); 		// 01. �㺸���� ����(TASK_COMMF_2173) ���� ȣ��[R] 
};  
==============================================================================================================

������������������� 2020.12.16(��) �۾� �������������������
---> 07:30 ~ 20:30 ==> �ְ����� (24����), ���� �޺� ���콺 �嵥�� ��ü(11:30, AA), �̱�ö �̻� ������(10��, jWEB ���� ������ ȭ���Ϸ� ����)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ��û���� �Է�(/TTL0190_01_m.xml)���� BPR �԰� ó��  
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0190_01_m.xml] [service_callback()] ==> [TEST_01] [�ݹ�] [(����Ʈ��) �����û(TTL0190_0001, 2193) ����_�ڡ�_ȣ��] [rtnJSON]"+ rtnJSON ); 
	
	if(rtnJSON.ERR_CODE = "S") {
		scwin.loanReglistRst = rtnJSON.OUT_DATA;	// ���� ��û ���� ��� ���� DATA
		gcm.log("[/TL0190_01_m.xml] [service_callback()] ==> [TEST_33] [�ݹ�] [scwin.loanReglistRst]"+ JSON.stringifyfscwin.loanReglistRst) );

		scwin.fn_callService("TASK_TL0190_00002", scwin.service1902_callback);		// BPR �԰� ó�� ���� ȣ�� �߰�[2020.12.16, by ���¸�]
	}
};

scwin.fn_callService = function(svID, callbackFn) {
	gcm.log("[/TL0190_01_m.xml] [fn_callService()] ==> [TEST_01] [����_�ڡ�_ȣ��] [svID]"+ svID ); 
	
	var inputData = {};	
	gcm.log("[/TL0190_01_m.xml] [fn_callService()] ==> [TEST_31] [02. BPR �԰� ó��(TASK_TL0190_00002) ����_�ڡ�_ȣ��] [svID]"+ svID ); 

	scwin.handoRstList = xTouchLibUi.getTaskData("TL0001", $p);		 // 00. �ѵ���ȸ ��� TASK

	inputData = {
		"scrap_id": scwin.handoRstList.scrap_id		// 01. ��ũ�� ID 
		, "bor_id" - scwin.handoRstList.sincg_no 	// 02. BPR ID(���� ��û��ȣ)
	}
};

// ���� ȣ�� ��� �ݹ�
scwin.service1902_callback = function(rtnJSON) { 
	gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [02. BPR �԰� ó��(TTL0190_00002) ����_�ڡ�_ȣ�� �ݹ�] [rtnJSON]"+ rtnJSON ); 

	if (rin JSON ERR_CODE == "S") {
		if(com.getCertiCheck() != null && (com.getCertiCheck().USER_HP == "01030720898"
		  || com.getCertiCheck().USER_HP == "01099014247) { 	// �ڵ��� ��ȣ�� ���¸�, �ڼҿ� �̸�  
			alert("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [BPR �԰� ó��(TASK_TL0190_00002)] ����_�ڡ�_ȣ�� �ݹ�]
			[rtnJSON.ERR_CODE]"+ rtnJSON.ERR_CODE +"[��ũ�� ���� ����]"+ rtnJSON.scrap_suc_yn );  
		}
		
		var inputData = {
			"sincg_no": scwin.loanReglistRst.sincg_no				// 1. �����û��ȣ
			"stat_code": scwin.loanReglistRst.stat_code			// 2. ������������
			"docu_cd": scwin.loanReglistRst.docu_cd				// 3. ����Ȯ��
			"loan_max": scwin.loanReglistRst.loan_max				// 4. �����ִ밡�� ����(���αݾ�)
			"loan_arnt": scwin.loanReglistRst.loan_art				// 5. ������αݾ�  ---------->
			"gmri kind": scwin.loanReglistRst.gmri_kind			// 6. �ݸ� ����
			"gmri_jeokyg": scwin.loanReglistRst.gmri_jeokyg 		// 7. ���αݸ�
			"bl_sayucd": scwin.loanReglistRst.bl_sayucd 			// 8. ��������ڵ�
			"sincg_amt": scwin.loanReglistRst.sing_amt   			// 9. ��û�ݾ�
			"loan_gigan": scwin.loanReglistRst.loan_gigan			// 10 ����Ⱓ
			"gigan_deci_mth": scwin.loanReglistRst.decl_mthn	// 11. ������
			"sanghw_mth": scwin.loanReglistRst.sanghw_mth	// 12. ��ȯ���
		} 
		gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_33] [�ݹ�] [JSON.stringify(inputData)]"+ JSON.stringify(inputData) );

		scwin.nextTask(inputData, (). ("CHK NEXT"});	 	// ���� Task �Լ� ȣ��
		return;
	}
};
-----------------------------------------------------------------------------------------------------------

- TL0001(�ѵ���ȸ ��� ���� ����) TASK ����
1. "scrap_id": "��ũ�� ID" �߰� ==> // META_DATA
- TL0070(���� �ڵ��߱���ȸ) TASK ���� 
1. "scrap_id": "��ũ�� ID" �߰� ==> // META_DATA

- TASK_TL0160_00001 ����
1. "scrap_id": "��ũ�� ID" �߰� ==> // IN_META_INFO
- TASK_TL0160_00002 ����
1. "Scrap_id": "��ũ�� ID" �߰� ==> // OUT_META_INFO
- TASK_TL0160_00003 ����
1 "crap_id": "��ũ�� ID" �߰� ==> // OUT_META_INFO
-  TASK TL0190_00002(BPR �԰� ó��) ����
1. "scrap_id": "��ũ�� ID", "bpr_id": "BPR ID" �߰� ==> // OUT_META_INFO
==============================================================================================================

- BPR �԰� ó��(TASK_TL0190.00002) ����_�ڡ� ȣ�� ����
1. ����:
[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [�ݹ�] [BPR �԰� ó��(TTL0190_00002) ����_�ڡ�_ȣ�� �ݹ�] [rtnJSON.ERR_CODE]E\
[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_71] [�ݹ�] �� [JSON.stringifytren JSON)]{"ERR_CODE": "E"
"ERRMSG "���� ����� �������� �ʽ��ϴ� .."OUT_DATA":"",  "CryptorYN":"",  "RTN_CODE":"-9999"
"RTN MSG"���� ����� �������� �ʽ��ϴ�." : "OUT_DATA_TYPE":""}
2. ����: xTouch ������ ==> ���񽺵�ϰ��� ȭ�鿡�� TASK_TL0190_00002 ���� ���� ����
3. ��ġ: TASK_TL0190_00002 ���� ���� ó��
==============================================================================================================

- ���� ID: 628FA053E7574EB09EE7E5535385EDA6 xTouch ������ ȭ�� ==> �������� ȭ��
1. TL0070: ���� �ڵ��߱���ȸ ==> CONSED ���⼭�� ����
33DB348886294BD6A0DBE4D91A4EE9BB 	/* ��ũ�� ID */
E7D38A0789CC407AB3542488944610ED  	/* �Ϸù�ȣ(=��ũ������ KEY) */ ==> �ǰ�������� ����Ȯ�μ� (NHIS_SCRAP_01)
397E07AC6047AF2EACE7796C42585802 	/* �Ϸù�ȣ(=��ũ������ KEY) */ ==> �ǰ�������� �ڰݵ��Ȯ�μ� (NHIS_SCRAP_02)
==============================================================================================================

- �ǰ�������� �ڰݵ��Ȯ�μ� ��ȸ @@@
/* ��ũ���� ���� DB ��ȸ ===> [/MWEB_SCRAPDB_0001_mapper.xml] [selectList()] [2020.11.25, by ���¸�] */
SELECT DISTINCT O AS HEPAY_AMT 	/* �ǰ������ ���αݾ� */
			O AS HEPAY CNT 		/* ���� Ƚ�� */
			C.COMM_START_DATE AS COMM_START_DATE 	/* �ڰ� �����(02. �Ի���) gal_aqt_dt) */
FROM scrap.TB_NHIS_RIGHT_CONTENT C 	/* �ǰ�������� �ڰݵ��Ȯ�μ� �󼼸�� TB */
WHERE 1=1
	AND C.SN = (SELECT MAX(M.SCRAP_KEY)
						FROM MW_SCRAPING_REQ_DETAIL M 	/* ��ũ���� ��û �� TB */
						WHERE M.SCRAP_ID = '33DB348886294BD6AODBEAD91A4EE9BB' 		/* ��ũ�� ID */
							AND M.SERVICE_ID = 'NHIS_SCRAP_02' 		/* ���� ID(NHIS_SCRAP_01: �ǰ�������� �ڰݵ��Ȯ�μ�) */
							/* �Ϸù�ȣ(*��ũ������ KEY) */
	AND C.COMM_END_DATE IS NULL 	/* �ڰݻ������ ���� �� NHIS_SCRAP_02 */
;
==============================================================================================================

������������������� 2020.12.17(��) �۾� �������������������
---> 07:30 ~ 21:00 ==> �������� Ȯ���� �߻�(16:30, ��а� �ü� ���, ������ ������ �¶��� ����), ��������� ��ũ���� ���� ����(16��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ��û���� �Է�(/TL0190_01_m.xml) ȭ�鿡�� BPR �԰� ó��(���� ���� �ݿ�) ==> � ���� �ݿ�
1. ���� �������� .class ����, .xml ���� �ݿ� ==> ���� ����� ==> �׽�Ʈ
 1) ��������� ��ũ���� ������ �����
==============================================================================================================

- �����ڵ�, �����ڵ� ó��
1. �������� �������
scwin fn_getHandoRstList = function() {
	gcm.log("[/TL0001_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID
		+"[00, �ѵ���ȸ ��� ���� ����_S[��]_�ѵ���ȸ ��� ����]"+ JSON.stringify(scwin.handoRstList) );
 
	var commonData = {
		"CON_TYPE"			: scwin.CON_TYPE 		// ��������
		, "BNCD" 				: scwin.COM_BNCD 		// �����ڵ�
		, "SFFN" 				: scwin.SFFN				// ������ȣ
		, "JOIN_CODE"		: scwin.JOIN_CODE 		// ���޼���
		, "JOIN_USERID" 	: scwin.JOIN_USERID	// ���޼��� ����ڽĺ��ڵ�
		, "PROD_CODE" 	: scwin.PROD_CODE 	// ��ǰ�ڵ�(Ȩ����������)
		, "SUJ_CD 			: "32"							// �����ڵ�(32: ����) ===> �߰�
		, "PDKD_CD" 		: scwin.pdKdCd			// ��ǰ�����ڵ�(39: ����Ʈ��(������), 40: ����Ʈ��(���༱��)) ===> �߰�
	}
	gcm.log("[/TL0001_01_m.xml] [fn_getHandoRstList()] ==> [TEST_52] [JSON.stringify(commonData)]"+ JSON.stringify(commonData) );

	scwin.nextTask(inData, commonData, {"CHK": "NEXT"}); 		// ���� Task �Լ� ȣ��
};
---------------------------------------------------------------------------------------------------------------------

- Ȯ�� ��ư Ŭ�� �̺�Ʈ
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ]" ); 
	
	var v_handoRstList = $p.parent().xTouchLibUi getTaskData("TL0001", $p); 	// 00. �ѵ���ȸ ��� TASK AZH[2020.12.17, by ���¸�]
	
	var inputData = {
		"loan_kind" : v_loan_kind 		// 1, ��������[1: �����νſ����, 2: ������� , 3: ����Ʈ��(������), 4: ����Ʈ��(���༱����ü)]
		, "soduck_inputyn" : v_soduck_inputyn 						// 2. �����ҵ�ݾ� ���Է¿���
		", income_amt" : scwin.handoRstList.cust_soduck 		// 3. �����ҵ�ݾ�(��) ����
		", ibsa_date" : scwin.handoRstList.ibsa_date 		// 4. �Ի�����(�ڰݵ�� Ȯ�μ� �����) ���
		, "sincg_amt": ""+ sincgAmt  									// 5. ��û�ݾ�
		, "loan_gigan" : ibx_loan_gigan.getValue() 				// 6. ����Ⱓ
		, "decl_mth" : rdo_decl_mth.getValue()					// 7 ������(1:�Ǻ�����, 2 ����������� (���̳ʽ�����))
		, "sanghw_mth" : scwin.sanghw_mth					// 8. ��ȯ���(0: �����Ͻû�ȯ, 1: ���ݱյ���һ�ȯ, 2: �����ݱյ���һ�ȯ) 
		, "sanghw_cod": sbx_sanghw_cod.getValue()			// 9 ��ȯ�ڱ� �ڵ�		
		, "jageum_ete" : ibx_sanghw_etc.getValue()			// 10. ��ȯ�ڱ� �����Է�
		, "jageum_cod" : sbx_sanghw_cod.getValue()		// 11. �ڱݿ뵵 �ڵ�
		, "jageum_etc" : ibx_sanghw_etc.getValue()			// 12. �ڱݿ뵵 �����Է�		
		, "office_name" : scwin.handoRstList.office_name	// 13. �����	���
		, "openbr": v_handoRstList.COM_BNCD				// 14 ���������(�����ڵ�) ����[2020 12. 17, by ���¸�] �����
		, "jikno_gun": v_handoRstList.SFFN						// 15. ��������(�����ڵ�) ����[2020 12.17, by ���¸�]		
		, "ikup_gun": "0" 			// 28. ������[1: �������, 2: �������(���ѱ׷��), 3: �Ƿ���(��������), 4: ����������ü] ==> 0���� �ѱ� 
		, "ijanap_dd" : scwin.ijanap_dd		// 29. �������ڳ����� (01~30 Ư����, 88: ������[����], 99: ����, '' : ���� ����)
	}
	ggcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST__52) [INPUT ����Ÿ(inputData)]"+ JSON.stringify(inputData) );
	
	$p.parent().scwin.callP_loanSincgReg(inputData); 	// ���� ��û ���(�θ� ȭ��)	 
}; 
==============================================================================================================

- � �ݿ� ���� ó��
==============================================================================================================

- ���κδ���Ѿ� �ʰ��� ���޽�û�� �����
1. ����, ������ ���� �޾Ƽ� ���佺�������� �۾�
01. ���κδ���Ѿ� �ʰ��� ���޽�û��.jpg, 02. ���κδ���Ѿ� ����ȯ�ޱ� ��Ӵ�ǥ ��û ���Ǽ�.jpg
04. ������������(������).jpg
-------------------------------------------------------------------------------------------------------------------------

- ����, ������ ������ ����ϰ� �����ϱ�
https://youtu.be/NDTU-BWb9ic 
==============================================================================================================

������������������� 2020.12.18(��) �۾� �������������������
---> 07:30 ~ 21 00 ==> �Թ� ��(5��, ���� ��), ������ ����(������ǥ ���), �强�� ����, ���� ���� ö��(16��) 

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- � �ݿ� ���� ó��
==============================================================================================================
 
- �ֹε�Ϲ�ȣ ��ȿ�� üũ
scwin.btn_confirm_onclick= function(e) { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ]" ); 
	
	if(ibx_jumin1.getValue().length < 6) {
		com.alert("�ֹε�Ϲ�ȣ ���ڸ� 6�ڸ��� �Է��ϼ���.", function() {
			ibx jumin1.focus(); 
			com.scrollCenter(ibx_jumin1); 		// focus �� ��ũ�� ����
		});
		return;
	}
};
==============================================================================================================

- ���� �ݸ�(����, �ִ�) �߰�
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0150_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ]" ); 
	
	var inData - {
		"exptGmri": scwin.expt_gmri 					// 1. ����ݸ�
		, "exptGmri_N": ibx_expt_gmri.getValue() 	// 1 ����ݸ�_2  
		, "gmriprn_ynt":  scwin.gmripm_yn1;		// 2. ��뿩��1(�޿���ü �Ǵ� ���ݼ�����ü ��������)
		, "ramripm_yn2" : scwin.gmripm_yn2;		// 3. ��뿩��2(����Ʈ������ �Ǵ� ������ �ڵ���ü) 
		, "gmripm_yn3": scwin.gmripm_yn3;			//4. ��뿩��3(�ֱ�3���� �ſ�ī�� ������ 50���� �̻�)
		, "gmripm_yn4": scwin.gmripm_yn4;			// 5. ��뿩��4(1���� �̻� ��ġ�Ŀ��� �Ǵ� �����Ŀ��� ������)
		, "gmripm_yn5": scwin.gmripm_yn5;			// 6. ��뿩��5  
		, "gmripm_yn6": scwin.gmripm_yn6 			// 7. ��뿩��6
		, "gmripm_yn7": scwin.gmripm_yn7			// 8. ��뿩��7 ����ݸ�(TOP5 ��)
		, "gmripm_yn8": scwin.gmripm_yn8			// 9. ��뿩��8(�췮�� ����ݸ�)
		, "gmripm_yn9": scwin.expt_gmri_min 		// 12. ���� �ݸ�(����) �߰�[2020.12.18, by ���¸�]
		, "exptGmri" : scwin.expt_gmri_max			// 13. ���� �ݸ�(�ִ�) �߰�[2020.12.18, by ���¸�]
	};	
	gcm.log("[/TL0150_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_41)  [inData]"+ JSON.stringify(inData) );
	
	$p.parent().scwin.nextTask(inData, {}, {"CHK": "NEXT"}); 	// ���� Task �Լ� ȣ�� ==> 14. ��û���� �Է�[�ſ� ����] (TL0190, 01) ȭ�� ȣ�� 
};
==============================================================================================================
 
- ���� ��û�ݾ� üũ �߰� 
scwin.btn_confirm_onclick = function() { 
	gcm.log("[/TL0190_01_s1.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ] [1. ������]"+
		rdo_decl_mth.getValue() +"[0. ��û�ݾ�]"+ ibx_sincgAmt.getValue() +"[2. ��û ���� �ݾ�(�����ѵ�)]" + scwin sincgPosibArnt );
	
	var sincgAmt = scwin.check_sincgAmt(); 	// ���� ��û�ݾ� üũ �߰�[2020.12.18, by ���¸�]

	if(com.isNull(sincgAmt))
	{
		return;
	}
	
	if(com.isNull(sincgAmt)) 		// ���� ��û�ݾ� null üũ �߰�[2020.12.18. by ���¸�]
	{
		return.
	}
};

// ��ȯ��� radio �ڽ� ���� �̺�Ʈ
scwin.rdo_sanghw_mth_onviewchange = function(e) {
	gcm.log("[/TL0190_01_s1.xml] [rdo_sanghw_mth_onviewchange()] ==> [TEST_01] [��ȯ��� radio �ڽ� ���� �̺�Ʈ]
		[rdo_sanghw_mth]"+ rdo_sanghw_mth.getValue() );
	
	scwin.chg_sanghw_mth(); 	// ��ȯ��� ���� ó�� �߰�[2020.12.18, by ���¸�]
};

// ��ȯ��� ���� ó�� �߰� [2020.12.18, by ���¸�]
scwin.cho sanghw_mth function) { 
	gcm.log("[/TL0190_01_s1.xml] [sanghw_mth()] ==> [TEST_01] [��ȯ��� ���� ó��] @@@ [��ȯ���]"+ rdo_sanghw_mth.getValue()
		[��ȯ���_2]"+ rdo_sanghw_mth_2.getValue() );
 	
	if(rdo_decal_mth.getValue() == "1")	// �������� �Ǻ� ���� �̸�
	{
		rdo_sanghw_mth_2.setValue("0");		// �����Ͻû�ȯ(����Ⱓ: 12����) (02. �����������)

		if(rdo_sanghw_mth.getValuet) =="1") 	// �����Ͻû�ȯ(����Ⱓ: 12����) (01. �Ǻ� ����) �̸�
		{
			ibx_loan_gigan.setValue("12����");		// ����Ⱓ 
			ibx_loan_gigan.setDisabled(true); 	// ����Ⱓ Disabled ó�� 
			scwin.sanghw_mth = "0";		 // 8. ��ȯ���(0: �����Ͻû�ȯ, 1: ���ݱ�����һ��, 2: �����ݱյ���һ�ȯ)
		}
		else if(rdo_sanghw_mth.getValue() == "2")		// ���ݱյ���һ�ȯ(����Ⱓ : 12~60����) (01. �Ǻ� ����) �̸�
		{
			ibx_loan_gigan.setValue(""); 		// ����Ⱓ 
			ibx_loan_gigan setDisabled(false); 	// ����Ⱓ Disabled false ó�� 
			scwin.sanghw_mth = "1";		 // 8. ��ȯ���(0: �����Ͻû�ȯ, 1: ���ݱ�����һ��, 2: �����ݱյ���һ�ȯ)
		}
	} 
	else 	// �������� �������� ���� �̸�
	{
		if(rdo_sanghw_inth_2.getValuet) =="1") 	// �����Ͻû�ȯ(����Ⱓ: 12����) (02. ����������� �̸�
		{ 
			rdo_sanghw_mth.setValue("0");		// �����Ͻû�ȯ(����Ⱓ: 12����) (01. ���� ����)
			
			ibx_loan_gigan.setValue("12����");	// ����Ⱓ 
			ibx_loan_gigan.setDisabled(true); 	// ����Ⱓ Disabled ó�� 
			scwin.sanghw_mth = "1";		 // 8. ��ȯ���(0: �����Ͻû�ȯ, 1: ���ݱ�����һ��, 2: �����ݱյ���һ�ȯ)
		}
	}
};
==============================================================================================================

������������������� 2020.12.19(��) �۾� ������������������� 
--->07:30 ~ 20:00 ==> �ָ� ���(07:40), �ڸ� �̵�(07:40, ó�� �ڸ�(������ ����)�� �ű�), ���̼ҿ��� �޸� ���� �漮 ����(10��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- �������� ���� �α���(TEST) ���� �ȵ�(07:50)
1. PC �ű�� PC �Ѵϱ� �������� ���� �α���(TEST) �κ��� ������ �� ���ٰ� ����
 1) �ڼҿ� ���忡�� ��ȭ(14:20 �ڼҿ� ���� ����ؼ� ����) 
  ��. 12�� 18�� ��� ���� �� ��� ���� �������� ���� �����ϸ鼭 ������ ����: ��ȭ�� ������� �� 
 2) �������� ������ ����ؼ� ó����(16:40) ==> ��� �ý��� ���� ����
==============================================================================================================

- ���� ���νſ��������� ���(����Ʈ��� ����) (TASK_COMMF_2002) ���� ����  
scwin.onpageload = function() {
	gcm.log("[/TL0150_01_m.xml] [onpageload()] ==> [TEST_01] [07. ��� �� ���Ǽ�[�ſ� ����] (TL0150, 01) ȭ�� �ε�...@@@]" ); 

	xTouchLibUi.uiChange(scwin.nowTaskInfo, "SUB1", $p); 	// ���� ȭ�� ����
};

// �� ������������ ��� ���� ȣ��(�θ�â)
scwin.callP_yackkanAgree = function() { 
	gcm.log("[/TL0150_01_m.xml] [callP_yackkanAgree()] ==> [TEST_01]" ); 
	
	scwin.fn_callService("TASK_COMMF_9214}, scwin.service_callback); 	// �� ������������ ���(TASK_COMMF_9214)
};

sscwin.fn_callService = function(svID) { 
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_01] [����_�ڡ�_ȣ��] [svID]"+ svID ); 
	
	var inputData = {};
	var v_commonData = xTouchLibUi.getCommonData(); 	// commonData ��ȸ 
	var v_sujCd = v_commonData.SU_CD: 	// �����ڵ�
	var v_pdKdCd = v_commonData.PDKD_CD: 	// ��ǰ�����ڵ�(PDKD_CD) (39: ����Ʈ��(������), 40: ����Ʈ��(���� ����) ����
	// �ڼҿ� ���� Ȯ��) [2020.12.18, by ���¸�] 
	var v_pdkdcd2 = "37";	// ��ǰ�����ڵ� 2(37: ����Ʈ��(������), 38: ����Ʈ��(���� ������ü) ) �߰�[2020.12.20, by ���¸�]

	if(v_pdKdcd == "38") v_pdKdcd2 = "40": 		// ��ǰ�����ڵ�2(37: ����Ʈ��(������), 38: ����Ʈ��(�� ������ü)) �߰�[2020.12 20. by ���¸�]

	scwin.custInfo = xTouchLibUi.getTaskData(l TZ0010," $p);		// 00. �������� TASK
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_21] [�����ڵ�]"+ v_sujCd +"[��ǰ�����ڵ�}"+ v_pdKdCd ),

	if(vlD3 == "TASK_COMMF_9214") 		// 01. �� ������������ ��� �̸�
	{
		gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_01] [01. �� ������������ ���(TASK_COMMF_9214) ����
			_�ڡ�_ȣ�� �ݹ�] [rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );

		inputData = { 
			"sujcd" : v_sujCd,		// 1. �����ڵ�(32: ����)
			"pdKdCd" : v_pdKdCd2, 		// 2. ��ǰ�����ڵ�2(37: ����Ʈ��(������) 38: ����Ʈ��(���༱����ü) �߰� [2020.12.20, by ���¸�]
			"ntLngPsnlfGtrUeGeEssCd: "1",   	//3. �񿩽Ű������������̿뵿�� �ʼ��ڵ�
			"mktGeBjSItcd":"1",  				// 4. �����õ��Ǵ�����ڵ�
			"guaChiChaMsgSitCd":"1",  	// 5. �ȳ�ä�� ���� �޽��������ڵ�  
			"quaChIEmSitcd":"1",  			// 6. �ȳ�ä�� �̸��� ������  
			"guaChiZpSitCd":"1",  			// 7. �ȳ�ä�� ��ȭ �����ڵ� 
			"guaChiZpSitCd":"1", " 			// 8. �ȳ�ä�� ���� �����ڵ�
			"pdpeGeBjSitCd":"1"  				// 9. ��ǰ�� ���Ǵ�����ڵ�
	}
	else
	{
		ggcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_02] [02. ���Ű��νſ��������� ���(TASK_COMME 2002) 
		_�ڡ�_ȣ�� �ݹ�] [rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );
		
		var hdpN = scwin.custinto.hdpN;	 				// 12. NICE�������� �Է��� �޴�����ȣ
		var clnNm = scwin.custinfo.NICE_clnNm;	 	// 13. NICE�������� �Է��� ����
		var ssn = scwin.custinfo.NICE_bdy + scwin.custinfo.NICE_sex;		// 14. �ֹι�ȣ
		
		inputData = { 
			"sujcd" : v_sujCd,		// 1. �����ڵ�(32: ����)
			"pdKdCd" : v_pdKdCd2, 		// 2. ��ǰ�����ڵ�2(37: ����Ʈ��(������) 38: ����Ʈ��(���༱����ü) �߰� [2020.12.20, by ���¸�]
			"ntLngPsnlfGtrUeGeEssCd:"1",   //3. �񿩽Ű������������̿뵿�� �ʼ��ڵ�
			"mktGeBjSItcd":"1",  				// 4. �����õ��Ǵ�����ڵ�
			"guaChiChaMsgSitCd":"1",  	// 5. �ȳ�ä�� ���� �޽��������ڵ�  
			"quaChIEmSitcd":"1",  			// 6. �ȳ�ä�� �̸��� ������  
			"guaChiZpSitCd":"1",  			// 7. �ȳ�ä�� ��ȭ �����ڵ� 
			"guaChiZpSitCd":"1", " 			// 8. �ȳ�ä�� ���� �����ڵ�
			"pdpeGeBjSitCd":"1",   			// 9. ��ǰ�� ���Ǵ�����ڵ�
			"hdpN":hdpN,  						// 12. NICE�������� �Է��� �޴�����ȣ
			"clnNm":clnNm,  					// 13. NICE�������� �Է��� ����
			"ssn":ssn,  							// 14. �ֹι�ȣ
			"cubCIFRgF": scwin.custinfo.cubCIFRgF  		// 15. ���������
	}  
	gcm.log("[/TL0150_01_m.xml] [fn_callService()] ==> [TEST_51] [INPUT ����Ÿ(stringifylinputData)]"+ JSON.stringify(stringifylinputData) );
	
	com.exeService (
			{
				"ServiceID": svID,
				"URL": "_XTOUCH_INTERFACE_",
				"CryptoYN": "N",
				"mode": "",
				"NOW_TASK_INFO": scwin.nowTaskInfo	
			},						/ Sub Info(1. ServiceID, 2. URL: ȣ���� URL, 3. CryptoYN: ��ȣ ���뿩��) ���	
			inputData,		// ������ INPUT ����Ÿ ���	
			callbackFn		// ��� �ݹ� �Լ� ���
		};
	);
};

// ���� ȣ�� ��� �ݹ�
scwin.service_callback = function(rtnJSON) { 
	gcm.log("[/TL0150_01_m.xml] [service_callback()] ==> [TEST_01] [01. �� ������������ ���(TASK_COMME_9214) ���� �ѹ�]
	[rtn_JSON.ERR_CODE]"+ rtn_JSON.ERR_CODE );

	if(rtn_JSON.ERR_CODE == "S") {
	{
		gcm.log("[/TL0150_01_m.xml] [service_callback()] ==> [TEST_21] [JSON.stringify(rtnJSON)]"+JSON.stringify(rtnJSON) );

		scwin.fn_callService("TASK_COMMF_2002", scwin.service2002_callback(); 	// ���Ű��νſ��������� ���(TASK_COMMF_2002)
	}
};
==============================================================================================================

- ���� ���νſ��������� ���(TASK-COMMF_2002) ����_�� ȣ�� ����
1. ����:
[/TL0150_01_m.xml] [service_callback()] ==> [TEST_70] [JSON.stringify(rtnJSON)} {"ERR CODE" : "E 
"ERR_MSG" : "��α��� �ŷ���ū���� �ݼ��ͷ� �����ϼ���. \u0000", "OUT_DATA" : "", "CryptoYN":"", "RTN_COOE": "_METXERR_OPM5COMM 320",
2. ����:
3. ��ġ: : �ڼҿ� ������ ICT�� ��ȭ�ؼ� �ذ���
==============================================================================================================

������������������� 2020.12.20(��) �۾� ������������������� 
---> 07:30 ~ 21 10 ==> �ָ��ٹ�, � ���� ����, ������ ���(10��), ������ ���� ���� ����(����) ������ ���ؼ� �����ڵ��� ����� ó��

- �ָ�2[��]
- �������� ����� ��ŷ(jWEB) ������Ʈ[��] 
- ���Ű��νſ��������� ���(TASK_COMMF_2002) ����_�١� ȣ�� ����
1. ����:
[/TL0150_01_m.xml] (service2002_callback()] ==> [TEST_70] [�ݹ�] �� [JSON.stringify(rtnJSON) {"ERR_CODE": "E"
"ERR_MSG"": " ǰ�����ڵ� ���� �ݼ��ͷ� �����ϼ���. /00000", "OUT_DATA": "", "CryptoYN" : "", "RTN_CODE" : "_METXERR_OP M52002040"
"RTN_MSG" : "��ǰ�����ڵ� ���� �ݼ��ͷ� �����ϼ��� \u0000","OUT_DATA_TYPE": ""}
2. ����: ��ǰ�����ڵ�(37: ����Ʈ��(������), 38: ����Ʈ��(���༱����ü))���� 39, 40���� ���� �Ǿ��µ� �ݿ��� �ȵ�
3. ��ġ:
inputData = {
	"pdKdCd" : v_pdKdcd2, 	// 2. ��ǰ�����ڵ�(PDKD_CD) (39: ����Ʈ�� (������), 40: ����Ʈ��(���༱��) ����(�ڼҿ� ���� Ȯ��) [2020.12.18, by ���¸�]
}
==============================================================================================================

- ���� ���� ��� Ȯ��
scwin.onpageload = function() { [ 
	gcm.log("[/TL0070_01_s1.xml] [onpageload()] ==> [TEST_01] [10-1. ���� �ڵ��߱�/��ȸ(��ũ����) ȭ�� �ε�...@@@]" ); 
	
	var s_platformNm = scwin.serch_platform(); 		// ���� ���� ��� Ȯ�� �߰�[2020 12.20. by ���¸�]
 
	if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "���¸�" || com.getCertiCheck().USER_NAME == "�ڼҿ�")) {	
	// ������ ���¸�, �ڼҿ� �̸� 
	 	alert("[/TL0070_01_s1.xml] [fn_callService() ==> [TEST_31] [01. ��ũ�� ID ���� ���� ȣ��[R] [����]"+ com.getCertiCheck().USER_NAME 
			+"[ �÷���]"+ s_platformNm );
	}
	
	if(s_platformNm == "PC")	 // �÷����� PC �̸�
	{
		scwinfm_scrapping(); 	// ��ũ���� ��� TEST ���� 
	}
	else	 // �÷����� mobile �̸�
	{
		scwin.fn_callService("TASK_TL0070_00001", scwin.service_callback);		// 01. ��ũ�� ID ���� ���� ȣ��[R]
	}
};

// ���� ���� ��� Ȯ�� �߰�[2020 12.20. by ���¸�]
scwin.serch_platform = function(s_sincgPos_max) 
	gcm.log("[/TL0070_01_s1.xml] [serch_platform()] ==> [TEST_01] [���� ���� ��� Ȯ��]" ); 

	var rtnValue ="";
	var filter = "winl6|win32|win64|mac|macintel": 		// PC ���� filter
	
	if(navigator.platform) 	// �÷����� �����ϸ�
	{
		gcm.log("[/TL0070_01_s1.xml] [serch_platform()] ==> [TEST_21] [�÷���]"+ navigator.platform +"[���� �÷��� ��ȣ]"+
			filter.indexOf{navigator.platform.toLowerCase() );
		
		if(filter.indexOf(navigator.platform.toLowerCase()) < 0)  	// �÷����� ������
		{
			rtnValue = "mobile";
		}
		else
		{
			rtnValue = "PC";
		}
	}
	
	return rtnValue.
};
==============================================================================================================

- ���࿩�Űŷ� �⺻���(�����) �� �Ʒ��� ��ġ ����
scwin.onpageload function() { 
	gcm.log("[/TL0050_01_s1.xml] [onpageload()] ==> [TEST_01] [07-1 ��� �� ���Ǽ�[�ſ� ���� (TL0150) ȭ�� �ε�...@]" ); 
	
	// ��ü���� toggle ó��
	com setAgreeBox(grp_agreeBox, function(checkValue)
	{
		if(checkValue ) {	 // ��ü ���� üũ �̸�
			scwin.fn_openPopup(["22", "18", "19", "27", "64"], "Y"); 		// ��ü �˾�
		} 
		else
		{ 
			chk_agreeAll.setValue(false);
			chk_agree1.setValue(false); 	// 22: ���࿩�Űŷ��⺻���(�����) ==> �� �Ʒ��� ��ġ ����[2020.12.20, by ���¸�] 
			chk_agree2.setValue(false); 	// 18: ����(�ſ�) ������ȸ���Ǽ�
			chk_agree3.setValue(false);	// 19: (�����ʼ�) �������� ���� �̿� ���Ǽ�(���ű����ŷ�)
			chk_agree4.setValue(false); 	// 27: ����(�ſ�)���� ����. �̿� �� ���� ���� �� �Ǹ��ȳ���
			chk_agree5.setValue(false);	// 64: �ҵ� /���� �������� �ڵ�ȭ(��ũ����) ���� �̿� ��û��
			btn_confirm.setDisabled(true);	 // Ȯ�� ��ư  Disabled ó��
		}
	)};
};
==============================================================================================================
 
- �� 10kg �ֹ�
1. [�����̳׳���] ������ ����7kg 10kg����, �ɼ�: �����̳� ������ ����10kg(S~M)-�ξ��, ����: 12,900��
http://www.enuri.com/detail.j$p?modelno=56516595
https://buy.11st.co.kr/pay/newOrderResult.tmall?orderNo=20201220055463030
==============================================================================================================
 
������������������� 2020.12.21(��) �۾� ������������������� 
---> 07:30 ~ 18:00 ==> ���� 12�� 28��(��)�� ���� ����, �ǰ��ؼ� ����(������ �߰���, ������)�ϰ� û��õ ����(1�ð�) �� ���

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- �α��� �� �ֹε�Ϲ�ȣ ���ڸ� ��Ŀ�� ó�� ==> �Ϸ�[����] 
scwin onpageload = function() { 
	gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_01] [01-1. ����Ȯ�δ��� (TL0010, 01) �Է� ȭ�� �ε�...@]" ); 
	
	var key2callbackFn = function(compobject, key Data ) {
		gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_01] [����Ű �е� �ݹ�2] [keyData]"+ keyData );
 
		var certiChk = com.getCertiCheck();

		if(com.getCertiCheck().IS_LOGIN) {	 // �α����� ���
			ibxJumin1.setValue(certichk.USER_BIRTH_DAY); 	// ������� ���� 
			ibx_name.setValue(certiChk.USER_NAME);		//  �̸� ����
			ibx_jumin2.focus();	 // �ֹε�Ϲ�ȣ ���ڸ� ��Ŀ�� ó�� �߰�[2020.12.21, by ���¸�]

			ibx_name.setDisabled(true);
			ibxjumin1.setDisabled(true);
			// gcm.log("[/TL0010_01_s1.xml] [onpageload()] ==> [TEST_0511 [�α����� ���] @@@ [�α��� ����]"+
			// com.getCertiCheck) IS_LOGIN +"[����]"+ ibx_name.gerValue() +"[�ֹι�ȣ ���ڸ�]"+ ibx_jurnin2.getValue() );
		}
	}
	
	gcm.nshc.init(keyComObj, keyCallbackFn, key2CallbackFn); 	// Ű���� ���� ���� ==> ����Ű ���� �ݹ�2 �߰�[2020 12.21, by ���¸�]
};
==============================================================================================================

- 09-1 �����û ����TL0120, 01) �Է� ȭ�� ����  ==> �Ϸ�[����] 
1. �㺸���� ��й�ȣ ==> �㺸���ݰ��� ��й�ȣ
==============================================================================================================

- 2008.02 ���� ��� ����  ==> �Ϸ�[����] 
1. ����ä 6���� 2008.02 ����) ==> (����ä 6����)
==============================================================================================================

- �ǰ������ ���αݾ� ���� ����
SELECT SUM(B RES RE_HEPAY_AMT) AS HEPAY_AMT		/* �ǰ������ ���αݾ� �� */
			/* ==> ����纸��� ���αݾ�(RES_RE_LICPAY_AMT) ���� */
			, O AS HEPAY_CNT		/* ���� Ƚ�� */
			, "" AS COMM_START_DATE	 /* �ڰ������ */
FROM scrap.TB_NHIS_CONFIRM A	/* �ǰ�������� ����Ȯ�μ� TB */
	scrap.TB_NHIS_CONFIRM_CONTENT B 	/* �ǰ�������� ����Ȯ�μ� ���� TB */
;	
==============================================================================================================
 
-" TASK META ������ �Է��ϼ���" ����
1. ���� � �������� ��û���� �Է� (TL0190) ȭ�� �Ʒ� ���� �߻�(���� ���������� ���� ��ϵ�)
// ���� TASK ����
xTouchLibUi__.nextTask = function(nowTaskInfo, IN_DATA, commonDATA, inOutRefJson, errorcallbackFn) {

	if(__xTouchLibUi_isEnd()) {
		alert("�̹� ���� ������ �Ϸ�Ǿ����ϴ�.");
		return;
	}
	
	var tInfo = null: 
	var taskMetalnfo = null;
		
	if (nowTaskInfo.T_ID "START") {
		taskMetalnfo = __XTouchLibinfo.P_META_INFO:

		if(com.isNulL(taskMetaInfo)) {
			taskMetalnto) {
			taskMetalnfo = {};
		} else {
			try ( 
				taskMetalnfo = JSON.parse(taskMetalnfo);
			} catch(e) {
				alert("TASK META ������ �Է��ϼ���");
				return;
			}
		}
	}
};

2. ����: ������(ibx_decl_mth) Į������ �߸� �����ؼ� ���� ����
scwin.service1902_callback = function(rtnJSON) {
	gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_01] [�ݹ�] [01. BPR �԰� ó��(TASK_TL0190_00002) ����
		_�ڡ�_ȣ��] [rtnJSON.ERR_CODE]"+ rtnJSON.ERR_CODE );
 
	if(rtnJSON.ERR_CODE == "S") {
		var inputData = { 
			"sincg_no": scwin.loanReglistRst.sincg_no 		// 1. �����û��ȣ
			, "stat_code": scwin.loanReglistRst.stat_code 		// 2. �����������
			, "ibx_decl_mth" : scwin.loanReglistRst.ibx_decl_mth	 // 11. ������ ==> ibx_decl_mth����
			dec_mth�� ���� �Ǿ��µ� � xTouch ������ ȭ�� TASK ���� ȭ�� ==> TL0190������ �ݿ��� �ȵǾ ���� ���� ��� 
			, "sanghw_mth" : scwin.loanReglistRst.sanghw_mth	// 12. ��ȯ���  
		}
		gcm.log("[/TL0190_01_m.xml] [service1902_callback()] ==> [TEST_33] [�ݹ�] [JSON.stringify(inputData)}"+ JSON.stringify(inputData) );
	
		scwin.nextTask(inData, {}, "CHK": "NEXT"});		// ���� Task �Լ� ȣ�� 
		return;
	}
};

3. ��ġ: � xTouch ������ ȭ�� TASK ���� ȭ�鿡�� ������(decl_mth) Į���� ����
==============================================================================================================
 
- ���κδ���Ѿ� �ʰ��� ���޽�û�� �ѽ� �߼�
1. �ǰ�������� ���� �������� �ѽ�: 02-3275-8321(02-3275-8328: �ݼ��Ϳ��� �߸� ������ �ذ����� ������)
2. �߼� ��ȣ: 0504-177-0898(���¸� �ѽ�)
3. �ѽ� �߼� ��� ��ȸ
 1) �ǰ��������(http://www.nhis.or.kr) ==> �ο������ > ���ιο� > �ѽ��߼۰����ȸ
   --> https://www.nhis.or.kr/nhis/minwon/jpCda00101.do
==============================================================================================================

������������������� 2020.12.22(ȭ) �۾� ������������������� 
---> 07:30 ~ 20:30 ==>  

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ���ڸ��� �׽�Ʈ
http://localhost:9080/ecard.do?ID=20201222000421

scwin.onpageload = function() {
	gcm.log("[/CARD-01_s1.xml] [onpageload()] ==> [TEST_01] [01-1.  ���ڸ��� ȭ�� �ε�...@@@]" );
};

scwin.btn_ecard_onclick = function() {
	gcm.log("[/CARD-01_s1.xml] [btn_ecard_onclick()] ==> [TEST_01] [��ǰ�����ϱ� ��ư Ŭ�� �̺�Ʈ]");
};
----------------------------------------------------------------------------------------------------------------

- /websquare.jsp ���Ͽ���
<script language="JavaScript" type="text/javascript">
	WebSquareExternal.ECARD_BNCD = "<%=Util.nullToEmpty((String)request getAttribute("ECARD_BNCD"))%>";	// 01. ���� ���
	WebSquareExternal.ECARD_SFFN = "<%=Util.nullToEmpty((String)request.getAttribute( ECARD_SFFN"))%>";	// 02 ���� ���� ���
</script>
----------------------------------------------------------------------------------------------------------------

scwin.fn_getHandoRstList = function() {
	gcm.log("[/TL0190_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID +"[00. 
		�ѵ���ȸ ��� ���� ����_S[��] _�ѵ���ȸ ��� ����]"+ JSON.stringify(scwin.handoRstList) );
	
	if(v_handoRstListYn == "Y") 	 // �ѵ���ȸ ��� ������ �����ϸ�
	{
		var commonData = { 
			"CON_TYPE" : scwin CON_TYPE 	// ���� ����
			,"BNCD" : scwin.COM_BNCD 		// �����ڵ��� ==> �⺻ �����ڵ�: 060, ������ȣ 000000
			, "SFN" : scwin SFFN					// ������ȣ ���
		}
		gcm.log("[/TL0190_01_m.xml] [fn_getHandoRstList()] ==> [TEST_ 52] [JSON.stringify(commonData)]"+JSON.stringify(commonData) );
		
		if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "���¸�" || com.getCertiCheck().USER_NAME == "�ڼҿ�")) {	
		// ������ ���¸�, �ڼҿ� �̸� 
			alert("[/TL0190_01_m.xml] [fn_getHandoRstList() ==> [TEST_77] [01. �ѵ���ȸ ��� ���� ����_S] [����]"+ com.getCertiCheck().USER_NAME 
				+"[�����ڵ�]"+ scwin.COM_BNCD +"[������ȣ]"+ scwin.SFFN );
		}
		
		scwin.nextTask(inData, {}, "CHK": "NEXT"});		// ���� Task �Լ� ȣ�� 
	}
I;
----------------------------------------------------------------------------------------------------------------------

scwin.btn_confirm_onclick= function() {
	gcm.log("[/TL0190_01_m.xml] [btn_confirm_onclick()] ==> [TEST_01] [Ȯ�� ��ư Ŭ�� �̺�Ʈ] [1. ������]"+ rdo_decl_mth.getValue() 
		+"[0. ��û�ݾ�]"+ ibx_sincgAmt.getValue() +"[2. ��û ���� �ݾ�]"+ ibx_sincgAmt.sincgPosibAmt  );
	
	if(com getCertiCheck() == null &8 (com.getCertiCheck().USER_NAME == "���¸�" || com.getCertiCheck().USER_NAME == "�ڼҿ�")) {	
		// ������ ���¸�, �ڼҿ� �̸� 
		alert("[/TL0190_01_m.xml] [btn_confirm_onclick() ==> [TEST_77] [���� ��û ���] [����]"+ com.getCertiCheck().USER_NAME 
			+"[01. �����ڵ�]"+ v_handoRstList.COM_BNCD +"[02. ������ȣ]"+ v_handoRstList.SFFN );
	}
	
	var inputData = {
		"loan_kind": v_loan_kind		// 1. ��������(1 �����νſ����, 2 �������, 3 ����Ʈ��(������), 4 ����Ʈ��(���༱����ü)]
		, "soduck_inputyn": v_soduck inputyn 		// 2  �����ҵ�ݾ� ���Է¿��� . 
		, "openbr": v_handoRstList.COM_BNCD 	// 14. ���������(�����ڵ�) ����[2020.12.17, by ���¸�] ��� �⺻ �����ڵ�: 060(77�� �Ѿ��)
		, "jikno": v_handoRstList.SFFN 				// 15. ��������(�����ڵ�) ����[2020.12.17, by ���¸�] ���
	} 	// --> �� 12.14, No. 16 [��]
	  
	gcm.log("[/TL0190_01_m.xml] [btn_confirm_onclick()] ==> [TEST_52] [INPUT ����Ÿ{inputData)]"+ JSON.stringify(inputData) );

	$p.parent().scwin.callP_loanSincgReg(inputData);	 // ���� ��û ���(�θ� ȭ��) ==> (����Ʈ��) �����û(TASK_TL010_00001, 2193) ����_�� ȣ��
};
==============================================================================================================

- ���ڼ��� ���� ���� �Ϸ� ==> �Ϸ�[����] 
scwin.onpageload = function() {
	gcm.log("[/TL0050_01_s1.xml] [onpageload()] ==> [TEST_01] [05-1. ���ڼ��� [����] (TL0050, 01) ȭ�� �ε�...@]" ); 
		
	if($p.parent().scwin.nowTaskInfo.P_ID == "PLO001") 	// ����� ����Ʈ�� �̸� ==> ����[2020.12.18, by ���¸�]
	{
		v_agree_content_tite = '����� ����Ʈ�� ���� �����ѵ� ��ȸ�� ��û�մϴ�.';
		v_agree_content = "���� ������ ����� �����ϰ� ���� �ſ������� ���� �� �ǰ�������� ���� ��ȸ �� ������ �����մϴ�."		// ���� ����[2020.12.22, by ���¸�]
		v_approval_content = "���νſ����� ��ȸ ���� ������</br> �ǰ������������ ���� �� �̿� ���� ���� ��";		// ���� ����[2020.12.22, by ���¸�]
	}
	else 		// CAR �帲 ���� �̸�
	{
		v_agree_content_tite = '���� CAR �帲 ����� ���� �����ѵ� ��ȸ�� ��û�дϴ�.';
		v_agree_content = "���� ������ ����� �����ϰ� ���� ��ȸ �� ���� �����մϴ�.";		// ���� ����[2020.12.23, by ���¸�] 
		v_approval_content = "���νſ����� ��ȸ ���� ������</br> ���ﺸ���������� ��ȸ ���� ������/br> �ǰ������������ ���� �� �̿� ���� ������";
		// 1 ���� ����[2020.12.23, by ���¸�]
	}
};
==============================================================================================================

- ���ڼ��� ����
public Map end throws Exception {
	log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_01] [���ڼ���(TASK_TL0120_00003) (����_�ڡ�) �����] ��� [TelelD]"+ this.getTelelD() );
	
	if("MWEB_01_BYPASS".equals(this.getTeleD()) {
		String curTm = DtUtil.getCurTm(); 
		String SIGN_DATA  =// ���ڼ��� ����  
			"�ŷ��� : ���ݴ㺸 ����"							"\n" +
			"���� : " + this.userIno.USER_NAME  	"\n" + 
			"������� : " + this.userIno.USER_BIRTH_DAY 		"\n" +		// ������� �߰�[2020.12.22. by ���¸�] | 
			// "����ȣ : " + this.userIno.USER_NEW_CODE 	"\n" + 	// ����ȣ ����[2020.12.22. by ���¸�]
		log.debug("[/TASK_TL0120_00003.java] [end()] ==> [TEST_51] [�����_���] [SIGN_DATA"]+ SIGN_DATA );

		String SIGN_TK = this.getSignTk{SIGN_DATA);

		returnMap.put("SIGN_TK", SIGN_TK);

		this.setNextTelelD("END");
	}
T
==============================================================================================================

- ���� ������ ����� �˾� ȭ�� ©���� ������ ���� ó�� ==> �Ϸ�[����] 
1. ����: ����� ��Ŀ�� ���� ==> ��Ŀ�� ����
scwin.onpageload = function() (  
	gcm.log("[/POP_L6040_01_m.xml] [onpageload()] ==> [TEST_01] [01-1. ����� �˻� �˾� ȭ�� �ε�.....@]" ); 
	
	// ibx_wpNm.focus(); 		// ����� ��Ŀ�� ����  ==> ��Ŀ�� ����[2020.12.22, by ���¸�]
};
==============================================================================================================

- confirm ���� ��ư �� �߰� ==> �Ϸ�[����] 
scwin fn_getHandoRstList = function() {
	gcm.log("[/TL0000_01_m.xml] [fn_getHandoRstList()] ==> [TEST_01] [P_ID]"+ scwin.nowTaskInfo.P_ID +"[00. 
		�ѵ���ȸ ��� ���� ����_S[��] _�ѵ���ȸ ��� ����]"+ JSON.stringify(scwin.handoRstList) );
 
	if(scwin.nowTaskInfo.P_ID == "PLO001) 	// ����Ʈ�� STEP1(PL0010. ���� �ѵ� ��ȸ) �̸�
	{		
		if(v_handoRstListYn == "Y") 		// �ѵ���ȸ ��� ������ �����ϸ�
		{
			var opt = {"leftBtnLabel": "ó������ �ٽ��ϱ�", "rightBtnLabel" : "�̾ �����ϱ�", width ":"350", "height": "230"}; 
			// �˾�â ���� ����(����, ����, ���� ��ư �� ����)  ==> // �˾�â ���� ���� �߰�[2020.12.21, by ���¸�]

			com.confirm("<br/>������ �̹� ����Ʈ�� �����ѵ��� ��ȸ �� ����� ���� �մϴ�. <br/>�ѵ� ��ȸ�� �� ��������� ���� ��û��
			�����Ͻðڽ��ϱ�?", scwin.fn_confirm_callback, opt);
			return;
		}
		else
		{
			scwin.nextTask(inData, {}, {"CH" : "NEXT"});	 // ���� Task �Լ� ȣ�� => 01. [����] ��ǰ���Ծȳ�[����] (TZ0001, 01) ����
		};
	}
};

scwin.fn_confirm_callback = function(rtnValue) {
	gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_01] [confrim â �ݹ�] [rtnValue]"+ rtnValue );
	
	if(rtnValue)		// '�̾ �����ϱ�' ��ư Ŭ���̸�(����Ʈ�� STEP2 ���� ó��)
	{
		gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_11] [confrim â �ݹ�] [����Ʈ�� STEP2(PLO010) ���μ��� ȣ��]" ); 
		com.menulist.goXTouch("PL0010", "", "", ""	); 		// ����Ʈ�� STEP2(PL0010, ���� ��û) [�ſ� ����] ���μ��� ȣ��	
	}
	else 		// ó������ �ٽ��ϱ� ��ư ���̸�(�ѵ���ȸ ��� ���� ó��)
	{
		gcm.log("[/TL0001_01_m.xml] [fn_confirm_callback()] ==> [TEST_21] [confrim â �ݹ�] [�ѵ���ȸ ��� ���� ���� ȣ��] [rtnValue]"+ rtnValue );
		scwin.fn_callService("TASK_TL0160 00003', scwin.service03_callback(); 	// �ѵ���ȸ ��� ���� ���� ȣ��
	}
};
==============================================================================================================
 
������������������� 2020.12.23(��) �۾� �������������������
---> 07:30 ~ 20:30 ==> Ÿ���� �� ��(�ڡ�] ó��(19:30)	 ==> �� PC���� �۾�

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- ���ڸ��� �׽�Ʈ ==> �Ϸ�[����] 
1. �����ڵ�(v_handoRstList.COM_BNCD)�� 77�� �Ѿ��(�⺻ �����ڵ� 060) ==> ���� �������� Ȯ��
==============================================================================================================
 
- �����Ͻû�ȯ radio(��ȯ���) üũ ó���� ���� ==> �Ϸ�[����]  
scwin.rdo_decl_mth_onviewchange function(e) { 
	gcm.log("[/TL0190_01_s1.xml] [rdo_decl_mth_onviewchange()] ==> [TEST_01] [������ radio �ڽ� ���� �̺�Ʈ]" );
	
	if(rdo_decl_mth.getValue() == "2") 	// �������� �����������(���̳ʽ�����) �̸�
	{
		rdo_sanghw_mth_2.setValue("1");		// �����Ͻû�ȯ radio(��ȯ���) üũ ó���� ����[2020.12.23, by ���¸�]
	}
};
==============================================================================================================

- (����Ʈ��) �����û(TASK_TL0190_00001, 2193) ���� �� ȣ�� ���� - ==> �Ϸ�[����]  
1.. ���� _METXERR_01211
[/TL0190_01_m.xml] [service_callback()] ===> [TEST 70] �� [JSON.stringify(rtnJSON)]{"ERR_CODE" : "E"
, "ERR_MSG": ".","OUT_DATA": "", "CryptoYN" :"", "RTN_CODE": "_MFTXERR_01211"
, "RTN_MSG": "","OUT_DATA TYPE": ""}
2. ����: ���� ���� Disk�� ���� ���� ���� ������� �� 
3. ��ġ: �̿��� �������� ��ȭ�ؼ� �ذ���
==============================================================================================================
 
- �� ������������ ���(TASK-COMMF -9214) ���� ȣ�� ���� 
1. ���� _MFTXERR-OP90149Y 105(���ְ� ������ ����Ʈ�� ���� ��Ͻ� ���� ��)
[/TL0150_01_m.xml] [service_callback0()] ===> [TEST 70] �� [JSON.stringify(rtnJSON)]{"ERR_CODE" : "E"
, "ERR_MSG": "�����޼��� �̵��, ����η� �����ϼ���.","OUT_DATA": "", "CryptoYN" :"", "RTN_CODE": "_MFTXERR_OP90149Y105"
, "RTN_MSG": "�����޼��� �̵��, ����η� �����ϼ���.","OUT_DATA TYPE": ""} 
2. ����: ���ְ� ���� ���� ���� ����Ÿ�� ������ ������ ������
3. ��ġ: �ڼҿ� ������ ICT�� �����ؼ� ó��
==============================================================================================================

������������������� 2020.12.24(��) �۾� �������������������
---> 07:30 ~ 20:30 ==> Elegator Company ���� ����(15 :40, 3�� 5õ��(����, �Ķ� ����, �뷮��), ���빮 ����) 

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- jWEB Grand ���� ��� ����
==============================================================================================================
 
- ȸ�� (09 00, ȸ�ǽ�, ������)
1. ���� ����
 1) 12�� 28�� (��) Grand ����
  ��. ���� 17�ÿ� � ���� ���� �� ����¡
  ��. ���� �� �Ϸ� ==-> �ſ�ī�� ����(������ �븮)�� ���� ���� 
 2) 12�� 31��(��) ���� �ʼ�
  �� ������ ���� ���� �ʼ�(11��, �����ֿ� ������ ���غ��� ��� �� ���� ������Ʈ ���� �˷� �شٰ� ��) 
 3) 2021�� 1�� 4��(��) ~ 6��(��) �ް�
==============================================================================================================
 
- 01.jWEB �ҽ� �м� ==> �Ϸ�[����] 
01. jWEB �ҽ� �м�.txt ���� ����
==============================================================================================================
 
- 02. jWEB ���� �ҽ� �м� ==> �Ϸ�[����] 
02. jWEB ���� �ҽ� �м�.txt ���� ����
==============================================================================================================
 
- 50. jWEB ���� �м� ==> �Ϸ�[����]  
53. jWEB ���� �м�(MW_IWEB) ���� ����
==============================================================================================================
 
������������������� 2020.12.25(��) �۾� �������������������
---> 07:30 ~ 21:30 ==> ��ź��(���), Ÿ����

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- Memo(2020.12, 02 ~ 23) �ؽ�Ʈ �Կ�, ����
1. ���� ����(��ü ����  ==> ��ǻ���� ���� ==> TAMA_NB_CO_GID
 1) TAMA_NB_CO_GID ��Ʈ�Ͽ��� ������(Notepad ++) SW���� ==> Ctrl + V
==============================================================================================================

- ������[��]
05:00 ���
05:40 ����
06:15 �����(��Ʈ�� ������ ��)
06:25 �븲��(����ö)
06:53 �������Ա���(����)
06:54 ����(�������Ա��� --> �����м�Ÿ�� --> �������� ICT ������ 6�� �繫��)
07:35 ���
08:00 �ؽ�Ʈ �Կ�, ���� �۾�
11:30 �߽�(CU ������)
12:00 ����
13:00 �ؽ�Ʈ �Կ�, ���� �۾�
18:11 ����
18:30 ����(û��õ --> ��������(û��6�� ������, ���빮) --> ��)
2);20 ���
2);40 ����(����ö)
21;30 �븲��
22;40 �Ͱ�
23:00 ��ħ
==============================================================================================================
 
������������������� 2020.12.26(��) �۾� ������������������� 
--->07:30 ~ 20:00 ==> �ָ� ���(07:30)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- jWEB ���� �ؽ�Ʈ �Կ�, ����
11. jWEB ����3(jWEB) ���� ���� ==> 00. ����3.txt
==============================================================================================================

- TAMA ȸ�� ��Ʈ�ϸ�(��ǻ�� �̸�(C)) ����
1. TAMA_HOME ==> TAMA_NB_CO_GID --> (��)�����̵���Ÿ ȸ�翡�� ���� ���� ��Ʈ��
==============================================================================================================

- TAMA ���� ��Ʈ�ϸ�(��ǻ�� �̸�(C)) ����
1. TAMA_HOME ==> TAMA_NB_HOME
==============================================================================================================

- ������ AOP(A$pect Oriented Programming 
1. ���� ������ ���� ���� � ������ �������� �ٽ����� ����, �ΰ����� �������� ����� ���� �� ������ �������� ���� ���ȭ��
�ڴٴ� ���̴�. ���⼭ ���ȭ�� � ����� �����̳� ����� �ϳ��� ������ ���� ���� ���Ѵ�.  
1. https://engkimbs.tistory.com/746 
2. https://www.youtube.com/results?search_query=AOP
==============================================================================================================

- �ָ�[��]
05:00 ���
05:40 ����
06:15 �����
06:25 �븲��(����ö)
06:53 �������Ա���(����)
06:54 ����(�������Ա��� --> �����м�Ÿ�� --> �������� ICT ������ 6�� �繫��)
07:35 ���
08:00 �ؽ�Ʈ �Կ�, ���� �۾�
11:30 �߽�(CU ������)
12:00 ����
13:00 �ؽ�Ʈ �Կ�, ���� �۾�
18:11 ���� 
18:30 ����(û��õ --> ��������(û��6�� ������, ���빮) --> ��)
2);20 ���
2);40 ���� ������(507�� ���� ����)
21;30 �뵿�� ������
22;40 �Ͱ�
22:30 ���� ==> ü��: 74.1kg
22:45 �ν��� �� ��ü(276U, 19U ����)
23:00 ��ħ
==============================================================================================================
 
������������������� 2020.12.27(��) �۾� ������������������� 
---> 08:00 ~ 21:30 ==> ���

- �ؽ�Ʈ �Կ�, ����
01. jWEB �м� ���� ���� ==> 01. jWEB.txt
02. jWEB ���� �м� ���� ���� ==> 01. ����.txt
==> �ʹ� �ð��� ���� �ɸ�: ���� ����� �ؽ�Ʈ �ν��� ���̴� ��� ���, XPlatform �ϰ� ���� ��� ����� ��
==============================================================================================================
 
- �ָ�2[��] 
05:00 ���
05:40 ����
06:15 �����
06:25 �븲��(����ö)
06:53 �������Ա���(����)
06:54 ����(�������Ա��� --> �����м�Ÿ�� --> �������� ICT ������ 6�� �繫��)
07:35 ���
08:00 �ؽ�Ʈ �Կ�, ���� �۾�
11:30 �߽�(CU ������)
12:00 ����
13:00 �ؽ�Ʈ �Կ�, ���� �۾�
18:11 ���� 
18:30 ����(û��õ --> ��������(û��6�� ������, ���빮) --> ��)
2);20 ���(��Ʈ�� ������ ��)
2);40 ���� ������(507�� ���� ����)
21;30 �뵿�� ������
22;40 �Ͱ�
22:30  ���ͳ� ����
23:00 ��ħ
==============================================================================================================
 
- �����е�2 �ٿ� �׷��̵�
1. 020.01.12 ������ 4S, �����е� 2 iOS 6 �ٿ�׷��̵� �ϴ� �� ==> https://m.blog.naver.com/6984htu1/221774654740
2. 8��� �����е��� ����һ��� ������ ==> https://ianseo.tistory.com/32
3. https://m.blog.naver.com/PostView.nhn?blogId=burton1&logNo=221619274687&proxyReferer=https:%2F%2Fwww.google.com%2F
==============================================================================================================
 
������������������� 2020.12.28(��) �۾� �������������������
---> 07:30 ~ 20 30 ==> �������� Prj Grand ����(9��, ��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
- � ���� ����
==============================================================================================================

- PUTTY���� ������ �ؽ�Ʈ ?���� ���� ó��  ==> �Ϸ�[����] 
1. ������(HI-TAM) 5.0[���������ý���] => jmbisad1a[172.16 190 120]: ���콺 �� Ŭ�� --> SSH  --> PUTTY: Ŭ�� 
2. PUTTY(��â): ���콺 �� Ŭ�� ==> Change Settings: Ŭ�� ==> jmbisad1a[172.16 190 120] (��â)
 1) 01. ���� ����(jWEB): ���� ==> Save ��ư: Ŭ��
7. Window ==> Apperance ==> Font Settings ==> Change: Ŭ��
  ===> �۲�(F): ����ü, ũ��(S) : 10, ��ũ��Ʈ(R); �ѱ� ==> Applay: Ŭ��
3. ������(HI-TAM)�� ������ �� ���� ����(Change Settings)�� �ٽ� ��ƾ� ��
-----------------------------------------------------------------------------------------------------------------------

- ���� �� ����
1 Window ==> Lines of scrollback
1) 200(����Ʈ) ==> 100000(10��)���� ����)
==============================================================================================================

- ����Ž���� �ű� �͹̳� �߰� ==> �Ϸ�[����] 
1. ȯ�� ����(��â) 
 1) ���� �͹̳� ����: �۸� ==>  �߰�
  ��. ���� �͹̳� ����(Xshell 4)
  ��) �͹̳� �̸�: Xshell 4
   ��) ���� ���: C\Program Files (x86)\NetSarang\Xshell 4\Xshell.exe 
   ��) �͹̳� Ÿ��: Window 
   ��) ���� �ɼ�: /url telnet://<ip><port> -newtab <dev_nm>
-------------------------------------------------------------------------------------------------------------------

 2) �ܺ� �͹̳� ���� %3 SSH(��> �߰� Ŭ��
  �� ���� �͹̳� ���� (��â) 
   ��) Xshell 4(�߰��� Xshell 4 ����): Ŭ�� ==> Ȯ��
==============================================================================================================

- ���������� �α��� ���� (���� ��������)
1. ����: ��ũ���� �� ���������� �α��νÿ� "�޴�����ȣ ��ȿ�� ���� �߻�"��� ������ ��(����Ʈ�� �׽�Ʈ)
2. ����: ���¸� ���� �������� �ڵ�����ȣ �Է� �� �Ǿ� �ִٰ� �� 
3. ��ġ:
 1) �ڼҿ� ���忡�� ���¸� ���� �������� �ڵ�����ȣ �Է��� �޶�� ��û --> ó�� �ȵ�
 2) ���� ��ġ: ���������� ��� ���� ����(�̰��� ����) ==> ���������� �簡��(��������[������], ���µ��)
==============================================================================================================

- jWEB ���� �м�
51. ����(XTOUCH) ==> 01. �㺸���ݰ��� ��ȸ(TASK_COMMF-2173) ���� ȣ�� 
51. ����(XTOUCH)_������ ==> ���ݴ㺸 ���� ��û ���� ȣ��
==============================================================================================================

������������������� 2020.12.29(ȭ) �۾� �������������������
---> 07:30 ~ 8:000 ==> �� ���� (16��), ����(18��, ��ȣ�� ����(������), ����, ����[���ö�Ʈ:110�� ��) �����̰� ��)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
1. jWEB Grand ���� ����
==============================================================================================================
  
- �������� �ݼ��Ϳ��� ��ȭ(10:30)
1.WEB(�)���� ����Ʈ�� �׽�Ʈ ==> ��ũ������ �Ǿ��µ� BPR �԰� �ȵǾ �ǰ�������� �ڷḦ �� �޾Ƽ� ��ȭ �� 
==> �ϴ� �׽�Ʈ �ڷ� ��� ��û, BPR ������� ������ ���忡�� ����
==============================================================================================================
  
- WEB ����(����) ����
1. ������ �ٲ�鼭 ��ȭ�� ������ �� ���༭ 404 ������ ��ٰ� �� ==> weblogic �����Ͼ� �湮(14��)
 1) ICT �����ο��� �ذ���(16:45)
==============================================================================================================
  
- WEB ���� �м�
51 ����(XTOUCH) ==> 01. �㺸���ݰ��� ��ȸTASK_COMMF_2173) ���� ȣ�� 
51. ����(XTOUCH)_������ ==> ���ݴ㺸 ���� ��û ���� ȣ��
==============================================================================================================

������������������� 2020.12.30(��) �۾� �������������������
---> 07:30 ~ 18:30 ==> ������ (���� 10��), �� �����(ȸ�� ��) ���¹� �̻簡 ���� ������ ��(10��), �߽�(11:40, �� ���뱹, ������)
								, jWEB Prj �ʼ�(18:30)

- �������� ����� ��ŷ(jWEB) ������Ʈ[��]
1. jWEB Grand ���� ����
==============================================================================================================
  
- WEB ���� �м�
51 ����(XTOUCH) ==> 01. �㺸���ݰ��� ��ȸTASK_COMMF_2173) ���� ȣ�� 
51. ����(XTOUCH)_������ ==> ���ݴ㺸 ���� ��û ���� ȣ��
==============================================================================================================

- DB Aspect ��� 
1. ���� ������ ���� ���� DB�� ���� ��Ŵ
DEBUG(" [ com xtouch xtouchlib dao WPE 50 GET SERVICE INFO Dao 1- com xtouch.init DaoA$pect 
DEBUG(" [ DaoAspect WFE 50 GET SERVICE_INFO_Dao inserTL0gDetail boolean ] - com xtouch init Dao Aspect
==============================================================================================================

������������������� 2020.12.31(��) �۾� �������������������
---> 07:30 ~ 20 30 ==> �ް�1

- �ް�1[��]
1. ������ �޽�
==============================================================================================================
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
