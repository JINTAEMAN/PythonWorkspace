

�����������������������������������������������������������
+---------------------------------------------// Memo(2010.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2010.09.01(��) �۾� �����������������
---> 08:30 ~ 03:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET �̿�)
==============================================================================================================

 - ���� Ȱ��
(��) ������ ��� ������ ��
==============================================================================================================

1 2010/07/24 11:00 ~ 12:00  ������� �ڵ��� SK�����þ����۴� 55,000 ��   
1 2010/08/27 19:00 ~ 20:00  ������� �ڵ��� SK�����þ����۴� 5,500 ��  
==============================================================================================================

 - �������� ���� ���� �� ��(2010.09.21 �߼�)
����, ������, �ӿ�(����, ����), ������, ����ī��
- ���������� ���� �� ��
����(���� ����ä)
==============================================================================================================

- mdb ����(VB.NET����)
Dim dbConnString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\test\test.mdb; Password=; User ID=" 
Dim sSQL As String = "Select fldName1, fldName2  from tblTest " 
Dim dbConn As New OleDb.OleDbConnection(dbConnString)
dbConn.Open()  '�����ͺ��̽� ����

If (dbConn.State = ConnectionState.Open) Then 
    Dim sqlCmd As New OleDb.OleDbCommand(sSQL, dbConn)
    Dim pReader As OleDb.OleDbDataReader = sqlCmd.ExecuteReader()
	
	iRsCount = pReader.FieldCount  '��ȸ�� ��� �Ǽ�

    While pReader.Read
	'txtFld1.Text = pReader("fldName1")
	'txtFld2.Text = pReader("fldName2")
    End While

    pReader.Close()
    dbConn.Close()
Else
    MsgBox(" mdb connection error!! ")
End If
==============================================================================================================
 					
������������������� 2010.09.02(��) �۾� �������������������  
---> 09:00 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET �̿�)
1.  ��ȸ
SELECT A.idx, B.GroupCode, A.HNAME, A.HP, A.CONTENT, A.TEL, A.TEL_OFFICE, A.EMAIL, A.ADDRESS           
FROM DB_ADDRESS A, DB_GROUP B       
WHERE A.GroupCode = B.GroupCode     
	AND A.HNAME LIKE '%��%'  
ORDER BY A.HNAME, B.GroupName, A.Work_DT DESC 
 
2. ����
UPDATE  DB_ADDRESS 
SET GroupCode ='0001', hname = '������ ��ī', hp = '010-7406-9406', tel = '061-684-4322', tel_office = '', 
	Content = '��ī(���� ����)_T3', email = '', address = '������' 
WHERE idx = 202   
==============================================================================================================

 - DBNull ���� ����(null�� ����)
1. ����: VB.NET����  ""DBNull" ���Ŀ��� "String" �������� ĳ������ �� �����ϴ�. " ��� ������ ���ϴ�
2. ��ġ: .Col = 5 : .Text = IIf(IsDBNull(rs(4)), "", rs(4))  '5 ��(��ȭ��ȣ) 
==============================================================================================================
					
������������������� 2010.09.03(��) �۾� �������������������  
---> 08:30 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET �̿�)
1. ��ȸ(SELECT), ���(INSERT), ����(UPDATE), ����(DELETE) �Ϸ�
2. fpSpread ADO, ListView DataGridView
==============================================================================================================

- fpspr70.ocx
÷�ε������� �ٿ�޾� ����ǻ��=>c=>windows=>system32�� ���� 
==============================================================================================================

- Farpoint Spread
http://www.mungchung.com/xe/?mid=spread&listStyle=webzine&sort_index=regdate&order_type=desc&document_srl=2833
http://www.componentsource.com/products/farpoint-spread/index-ko-krw.html
http://www.21cbook.co.kr
==============================================================================================================

- ����
1. ������������ �湮(T)3487-0857)
2. ��Ʈ�������� ���� ���� �� ����(å 2~30% DC)
==============================================================================================================
					
������������������� 2010.09.04(��) �۾� �������������������  
---> 08:30 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET �̿�)
1. currentYear = Microsoft.VisualBasic.Left(DTPicker1.Value, 4)     '�ش� ��
==============================================================================================================

 www.codeproject.com �� ������ ����... c#���� �� �κ��� �ֱ淡... �����غý��ϴ�...
datagridview�� ����Ÿ�� ���ε� ��... �̷�������...  combobox�� ������ ����Ÿ�� ��ȸ�ؼ�... 
������ �÷��� �����ϴ� ���   ���ø� �ٵ� �ƽô� �ڵ��Դϴ�.

�ٸ�...   datagridview.Columns.Remove (ds.Tables ("T_ATTENDANCE").Columns("ATT_CD").ColumnName �κ���
�� �ش� �÷��� �������� �ʰ�.. ������ �ʰ� �߽��ϴ�.   ���� ������Ʈ�� �׽�Ʈ�� �غ��� �ʾƼ�...

Try

            Dim new_column As New DataGridViewComboBoxColumn
            new_column.CellTemplate = New DataGridViewComboBoxCell

            sqlAdapt = New SqlDataAdapter()
            sqlAdapt.SelectCommand = New SqlCommand("SELECT ATT_CD, LOCAL_NAME FROM T_ATTENDANCE " _
                                                                          + "WHERE  COM_CD = '" + t_r_com.Text + "'", adoCon)

            Dim row_cnt As Integer          

            row_cnt = sqlAdapt.Fill(ds, "T_ATTENDANCE")          

            new_column.DataSource = ds.Tables("T_ATTENDANCE")
            new_column.HeaderText = ds.Tables("T_ATTEND_MONTH").Columns("ATT_CD").ColumnName
            new_column.DataPropertyName = ds.Tables("T_ATTEND_MONTH").Columns("ATT_CD").ColumnName
            new_column.DisplayMember = ds.Tables("T_ATTENDANCE").Columns("LOCAL_NAME").ToString
            new_column.ValueMember = ds.Tables("T_ATTENDANCE").Columns("ATT_CD").ToString
            new_column.DisplayStyle = DataGridViewComboBoxDisplayStyle.Nothing

            'datagridview.Columns.Remove (ds.Tables ("T_ATTENDANCE").Columns("ATT_CD").ColumnName
            datagridview.Columns.Insert(1, new_column)
Catch ex As System.Data.SqlClient.SqlException
            MessageBox.Show(ex.Message)

End Try
==============================================================================================================
 					
������������������� 2010.09.05(��) �۾� �������������������  
---> 06:30 ~ 00:00 

�������౸
06:10 ��� 
07:00 �ű��ʵ��б�
07:40 ����(2:0 ��)
08:50 ����(4:2 ��): 2�� ����
09:40 ���� 
10:20 ���漼��(������ ���� ��): �۳� ȸ�� ������ ����
12:20 �����Ĵ�(�ʸ� ����)
18:00 ���� �Ҿ����
19:00 �Ͱ�
==============================================================================================================
					 
������������������� 2010.09.13(��) �۾� �������������������  
---> 08:30 ~ 18:30  --> �����ػ� SM ù ���(����� �߱� ���ҹ��� 135���� �ø��� Ÿ�� 17�� ����ä����)

- �����ػ� SM
1. ����ä����(/ä�μ��� ����/�ػ�ȭ��IT��/IT���񽺺���/����HDS): 761-0128
 1) ���뼷 ������ H) 017-502-2925
 2) ������ ���� H) 017-232-6013(����)
 3) ���Ͽ� �븮 H) 010-8932-1389(��Ʈ��)
 4) �ǿ��� �븮 H) 010-4759-4658
 5) ���籤 ���� H) 010-8778-0303(�ڵ��� ����)
 7) õ���� ���� H) 010-4602-3474(���� ����)
 8) ������ ���� H) 010-5362-8323(..)
 9) ����� ��� H) 010-2277-5350(����)
==============================================================================================================

- IP �ּ�(�����ػ� SM)
IP �ּ�: 10.81.17.78
GW: 10.81.17.1
SM: 255.255.255.0
DNS: 10.1.17.242, 10.3.22.50
- ���� ����: \\10.81.17.56\zzzzz
- ������ ����(�Ｚ ML-4050 Series) --> IP �ּ�: 10.81.17.67
���: i050761, PMS ID:  IA1308/ssj**8**
���� ���� ���: ����, �ȸ� �ν� ���
==============================================================================================================

- ����ó����� �ڰ��� ��ȣ: 03201010432A
- ������ ����(14,800��: �Ե� ��Ʈ ���￪��)
==============================================================================================================
					 
������������������� 2010.09.14(ȭ) �۾� �������������������  
---> 07:20 ~ 18:30

- �����ػ� SM
1. �����ػ� Project ���⹰ �м� 
1) �����ػ� X-internet: TrustForm
2) EAI ����
==============================================================================================================

- �ӵ� �п�
1. �ѱ������п�(http://www.ksokdok.com)
����� ���ʱ� ��赿 1038���� ��� ������ 301ȣ, 525-0775
355�� ��� ���ʹ�  ==> 9�� 25��(���� �����) ���� 2-8�ñ���(4-16�� ����)
2. ���ѳ��ӵ��п�(http://www.sogdok.com)
������: 02-2672-8225, ���� �������� ��굿 5�� 11-34 �ＺŸ�� 310ȣ
�����õ: 02-884-8214, ����� ���Ǳ� ��õ5�� 480-3 �Ｚ������ 4��
==============================================================================================================
					 
������������������� 2010.09.15(��) �۾� �������������������  
---> 07:00 ~ 18:30  --> CS ��ȸ(ù ����)

- �����ػ� SM
1. �����ػ� Project �ҽ� �м�

- �����ȸ( --> ���̹�â��)(http://www.hi.co.kr/servlet/hi.cybercenter.cmts.servlet.P2001AGServlet?q=) 
1. /cis-hi-b2c/java_src/hi/cybercenter/cmts/servlet/P2001AGServlet.java ���Ͽ���
public class P2001AGServlet extends JDFXecureServlet { 
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{  
			// Interface �� --> ���� �����ȸ(�Ϲ�,���,�ڵ���)
		        // Interface ID --> IR_HI-HOME_0100
		    	// Tran ID      --> CIZZ0013I01L
			String ifId = "IR_HI-HOME_0100";

			CIZZ0013I01LBean insuCheck = new CIZZ0013I01LBean(); 
			bizVo = insuCheck.getTraAccident(request, ifId);			 
			cizz0035Vo = (CIZZ0035VO)bizVo.getBusinessVo(); 
		}
		
		boolean trState2   = bizVo.getService().getTRState();  // EAI �������� ����
		String resultCode2 = bizVo.getService().getErrorCode();
		String err_msg2    = bizVo.getService().getTRMessage();			
		
		if ( !trState2 ) {
			if (resultCode2.equals("UCI00003")) {	//�������ϰ��
				request.setAttribute("iMCnt", Integer.toString(iMCnt));
				request.setAttribute("iLCnt", Integer.toString(iLCnt));
				request.setAttribute("iCCnt", Integer.toString(iCCnt)); 

				printJspPage(request, response, strUrl);
				return;
			} else {
				hdmf.jdf.util.MsgHandler.alertMsg(out,"", resultCode2);
				ScriptHandler.historyBack(out);
				return;
			}
		}

		HiUtil.nullToEmp(cizz0035Vo.getClass(), cizz0035Vo);
		CIZZ0034VO[] contList = cizz0035Vo.getCizz0034VOList();  // ���  List ��������
		int loopSize = contList.length; 
		for(int j=0; j < loopSize; j++) {
			HiUtil.nullToEmp(contList[j].getClass(), contList[j]); 
			if(contList[j].getInagAgmtStatCat().trim().equals("521")||contList[j].getInagAgmtStatCat().trim().equals("522")) {   //������521  ����������522 
				if (contList[j].getInagLobCd().trim().equals("M"))
					iMCnt++;
				else if (contList[j].getInagLobCd().trim().equals("L"))
					iLCnt++;
				else if (contList[j].getInagLobCd().trim().equals("C") || contList[j].getInagLobCd().trim().equals("F") || contList[j].getInagLobCd().trim().equals("I"))
					iCCnt++;
			}
		}
		request.setAttribute("CIZZ0035VO", cizz0035Vo);
		request.setAttribute("iMCnt", Integer.toString(iMCnt));
		request.setAttribute("iLCnt", Integer.toString(iLCnt));
		request.setAttribute("iCCnt", Integer.toString(iCCnt));
	 
		printJspPage(request, response, strUrl); 
	}
}

2. /cis-hi-b2c/java_src/hi/cis/cisbean/cmtst/CIZZ0013I01LBean.java ���Ͽ���
public class CIZZ0013I01LBean { 
	public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId) throws Exception{
		try{
			////////////////////////////////////////////////////////////
			// 1. ��û/���� ������ü ���� �� ������ ����
			////////////////////////////////////////////////////////////
			bizVo   = new CisResultObjVO();
			reqVo   = new CIZZ0033VO();
			resVo   = new CIZZ0035VO();			
			reqVo.setPtyRegNo(strPtyRegNo);
			reqVo.setRegNoCat(strRegNoCat);
			reqVo.setInqCat(iInqCat);
			reqVo.setAgmtStatCat(strAgmtStatCat);
			
			////////////////////////////////////////////////////////////
			// 2. ���� ȣ��
			////////////////////////////////////////////////////////////
			OutboundProcess service = new OutboundProcess();
			service.setUserId(HiUtil.getCisUserId());
			//service.setLoopback(true, "CIZZ0013I01L");
			service.call(ifId, reqVo, resVo);
			
			////////////////////////////////////////////////////////////
			// 3. ��� Ȯ��
			////////////////////////////////////////////////////////////
			if ( service.getTRState() ) {
				ELogger.info("<br>================================");
				ELogger.info("<br>CIS ȣ�� ����");
				ELogger.info("<br>================================");

				HiUtil.nullToEmp(resVo.getClass(), resVo);
				
				CIZZ0034VO[] contList = resVo.getCizz0034VOList();
				for(int i=0; i<contList.length; i++) {
					HiUtil.nullToEmp(contList[i].getClass(), contList[i]);
					ELogger.info("<br>�����ȸ--------------------------");
					ELogger.info("<br>�������ȣ         : " + contList[i].getInagNo());
					ELogger.info("<br>�������ȣ���� : " + contList[i].getInagNoSeq());
				}
				resVo.setCizz0034VOList(contList);   // ���  List ����
			}
			bizVo.setBusinessVo(resVo);
			bizVo.setService(service);
		}
				
		return bizVo;
	}
} 
==============================================================================================================

- document.getElementById�� explorer 8
explorer 8���� �����ϸ� "��ü�� �ʿ��մϴ�."��� javascript ������ �߻�(�Ʒ��� ���� id�� ����ϰ� �����;� ��)

<script language="JavaScript">
function init() {
	var gbn = document.fundForm.day.value;
	if(gbn=="") {
	  document.getElementById("searchDay").value = "2010-09-15";
	}   
</script>

<input name="searchDay" type="text" class="txt" notnull hangeulonly errname="search_day" readonly/> 
==> <input id="searchDay" type="text" class="txt"notnull hangeulonly errname="search_day" readonly/>
==============================================================================================================
					 
������������������� 2010.09.16(��) �۾� �������������������  
---> 06:50 ~ 18:30

- �����ػ� SM
1. �����ػ� Project �ҽ� �м�

- ����������( --> ���̹�â��/��ຯ��)(http://www.hi.co.kr/cybercenter/contractcenter/change/contractNoserviceView.jsp) 
1. /cis-hi-b2c/java_src/hi/cybercenter/cmts/servlet/AddServlet.java ���Ͽ���
public class AddServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {	

		//������ �ּ�(���� ���� �ѱ��ּ�)
		hsZIP_LEGAL_NAME.put("ZIP_LEGAL_NAME0",cizz0099Vo.getCipm0024VO().getAddrAmsvgAddrKorWork().trim()); 
		try
		{
			printJspPage(request, response, "/cybercenter/contractcenter/change/contractAddrModifyView.jsp");
		}
	}
}

2. /cybercenter/contractcenter/change/contractAddrModifyView.jsp ���Ͽ���
<script> 
function goMove(code) {
	checkLogin( function() {
		goNavi(code);
	});
}

function goNavi(code) {
	if(!code) {
		location.href = "/"; 
	} else if(code == "CY0201") {
		var action = "/servlet/hi.cybercenter.cmts.servlet.AddServlet";
		XecureNavigate(action, "_self", "");
	}
}
</script>

<a href="javascript:goMove('CY0201');" onMouseOver="javascript: rolloverList('3', '15');">
<img src="/images/newimages/submain/cybercenter_menu02_01_off.gif" onMouseOver="javascript: imgOver(this);" 
onMouseOut="javascript: imgOut(this);" alt="����������"/></a>

3. /servlet/hi.cybercenter.cmts.servlet.AddrProxyServlet.java ���Ͽ���
public class AddrProxyServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(which.equals("onlyAddr")) {	//�ּ��������� ���������� ���� ����
			printJspPage(request, response, "/servlet/hi.cybercenter.cmts.servlet.ModifyAddrPostServlet");
		}
	}
}

4. /servlet/hi.cybercenter.cmts.servlet.ModifyAddrPostServlet.java ���Ͽ���
public class ModifyAddrPostServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request,HttpServletResponse response) throws Exception {	 
		if (isModAddr.booleanValue() || isModPost.booleanValue()) {	// �ּ����� ����Ǿ��ų� ������������ ����Ǹ�
			/*********** ���� �ּ�������ó ���� �� proc_flage = 'A1' �� Insert ���� ********/
			try {
				pool = new DBPool("hdmf", this);
				pool.setAutoCommit(false);  
				strbSQL = new StringBuffer(""); 
				strbSQL.setLength(0);
				strbSQL.append("INSERT INTO CONTRACT_INFO ");
				strbSQL.append("(CONTRACT_ID, REQ_FLAG, RSN_NO, CRET_DT, INPATH_FLAG, INPATH, ADMINID, PROC_FLAG, SCREEN_ID, ");
				strbSQL.append("HIPATH, PRE_SVC1, PRE_SVC2, CRET_IP, MACADDRESS, HDDSERIALNUM) ");
				strbSQL.append("VALUES (?,'16',?,SYSDATE,'1', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

				pool.setCommand(strbSQL.toString());
				pool.setString(pNum++, strContractID);
				pool.setString(pNum++, sessionMgr.getRsn_No());
				pool.setString(pNum++, inpath);
				pool.setString(pNum++, strAdminId);
				pool.setString(pNum++, strProcflag);
				pool.setString(pNum++, screen_id);
				pool.setString(pNum++, hipath);
				pool.setString(pNum++, pre_svc1);
				pool.setString(pNum++, pre_svc2);
				pool.setString(pNum++, regi_ip);
				pool.setString(pNum++, strMacAddr);
				pool.setString(pNum++, strHddSerial);

				pool.executeUpdate();
			}
		}

		/******** WCC proc_flag = 'A1'���� ���� ���� *******/
		this.sendWccSocket("16", strContractID, sessionMgr, es, ps, flw);
		
		printJspPage(request, response,"/cybercenter/contractcenter/change/contractChangeCompleteView.jsp?which="+ which);
	}
}

5. /cybercenter/contractcenter/change/contractChangeCompleteView.jsp ���Ͽ���
<%=sessionMgr.getNm()%></strong>�Բ��� ���� ��û�Ͻ� <span class="orange">�ּ���, ����ó, ������ ����</span>��  
������ ���� ���������� �ݿ��Ǿ���
==============================================================================================================
						 
������������������� 2010.09.17(��) �۾� �������������������  
---> 07:10 ~ 18:30 --> PC ����(14:00)

- �����ػ� SM
1. ���α׷� ��ġ
1) jdk 1.4
2) ������ �÷���
3) WinMerge-2[1].2.4-exe => �ɼ�
4) ����Ŭ Ŭ���̾�Ʈ(92010NT_CLT)
5) sql �𺧷���(sqldeveloper-5338)
6) ��Ŭ����(eclipse3.3.2)  
Host: 10.85.1.83, Paht: /CVSROOT, 050761/050761
\\10.81.17.52\zzzzz\utility ��ƿ
2. PC �����(HP 17��ġ) ������ȣ: D0012232 
-----------------------------------------------------------------------------------------------------------

2. ���պ��� �����ý���(http://ams.hi.co.kr) ==> IA1308/IA1308
HI �޽���: IA1308@himsg.com, IA1308/ssj***1
[SC3-devwas02:hidev01] /Appl > waslog  ===> was log ����(���� ����) 
01. � ����(admin) ==> http://homeadmin.hi.co.kr/auth/loginView.jsp, IA1038/hh101636
3. ftp ���� 
01. ���� ����(WEB) ==> /Appl/hib2c/hib2c.ear/hib2cWeb.war ==> FTP����(S): 127.0.0.1, ��Ʈ: 10039, hidev01/qwer1234
02. ���� ����(WAS) ==> /Appl/hib2c/hib2c.ear/hib2cWeb.war/WEB-INF/classes
03. ���� ����(WAS0_log) ==> /Logs/hib2c/WAS/hib2cSvr 
04. ���� ����(admin) ==> /Appl/homeadmin/homeadminSvr.ear/hi_mgr.war
05. ���� ����(upload) ==> /Appl/upload2
06. ���� ����(�̹���) ==> /Appl/hib2c/docs/images
11. RȨ ����(WEB) ==> /Appl/rhib2c/rhib2c.ear/hib2cWeb.war
31. WCC �׽�Ʈ ==> FTP����(S): 127.0.0.1, ��Ʈ: 10040, jeus/jeus 
41. Batch �׽�Ʈ ==> FTP����(S): 127.0.0.1, ��Ʈ: 10035, batch / bat0108! 
51. ���� ���� ==> /B2C/Appl/hib2c/docs/images ==> FTP����(S): 10.18.5.74, ��Ʈ:, hihom_d1/hihom_d1
61. ���� Ȯ�� ==> FTP����(S): hyoungsang, HIHA000/HIHA000
==============================================================================================================

- �ӵ�(ö�� �м�), �����ý��۰�����, ���κ�ȣ�ʸ� 15.6��W(344.0 X 194.5)
�ӵ� ���������� ��罺��: http://www.goldenschool.com/index.htm --> ���� ������ T)822-8214
�ӵ� ������: http://www.magicsokdok.kr
==============================================================================================================
					 
������������������� 2010.09.18(��) �۾� �������������������  
---> 06:10 ~ 00:00

�˼��ʾ߱�
 
05:40 ��� 
06:10 ������Ա���
06:40 ��꿪(���籤���� ��)
08:50 ���� ���� �߱���
10:30 ����(12�� ��)
11:20 ���� ���� �߱���(�� ����� ��: ������ ���� ����(ȸ�� 4���� ��)): ����� ��
12:00 ���� ����
14:00 ���� ����(4:1�� �̱�)
15:00 ���� ����(���� 2��)
16:00 5ȸ���� ������ ��(4Ÿ�� 3Ÿ�� 1��Ÿ, 1����, 2����(3�� ���� ����))
17:40 ����(17:14�� ��): ������ ���� ��� 2��
19:20 ��ȭ ����Ʈ(����)
20:20 ����(ȸ, ����)
22:00 ���� ���
00:00 ������ ����, ��ħ
==============================================================================================================
						 
������������������� 2010.09.19(��) �۾� �������������������  
---> 10:00 ~ 00:00

- �޽�
10:00 ���
12:00 �߽�
13:00 �̹�
14:00 ���(��ȭ��쳪: 4,500��): ������ 75kg
15:00 �Ͱ�
==============================================================================================================
					 
������������������� 2010.09.20(��) �۾� �������������������  
---> 07:20 ~ 18:30

- �����ػ� SM
1. ���α׷� �м�
- �α���
�����(Admn): http://homeadmin.hi.co.kr/auth/loginView.jsp, IA1038/hh101636
�����(�鵵��): http://www.hi.co.kr/secure/secure.jsp, IA1038/hh101636
���߼���: http://thome.hi.co.kr
���߼���(Admn): http://tmgr.hi.co.kr/auth/loginView.jsp, IA1038/ff101636
���߼���(�鵵��): http://thome.hi.co.kr/work/backdoor.jsp
- ��������	
\\10.85.1.48\document\������_new\09_��ְ���\09_02_��������\02 �����������˻�������(����)\
IA1304/IA1304
- hosts ����
C:\WINDOWS\system32\drivers\etc\hosts
10.18.12.84		thome.hi.co.kr
==============================================================================================================

 - Eclipse�� Tomcat Server�÷����� ��ġ�ϱ�
http://www.javajigi.net/pages/viewpage.action?pageId=165
http://androidmo.tistory.com/103
http://smin01.egloos.com/2596359
==============================================================================================================

- The KM
22�� �ҿ�(�Ÿ��� 4�� �ⱸ: 4��), �̾�(Ace), ����, ����(����), �ƿ�(�λ�), ����, �̼�
==============================================================================================================
					 
������������������� 2010.09.21(ȭ) �۾� �������������������  
---> 08:00 ~ 00:00

- �߼�����
08:00 ���  
08:50 �ٸ���(Y���� 8��)
10:00 ����
11:20 �����͹̳�(���� --> ����) 
17:00 ���װ���͹̳�(5�ð� �ɸ�)
17:30 ������
19:20 ���װ�(�ֿ��Ÿ� --> �ڰ�����): ����, ���� ������
        ==> ��� �� ��Ź ���(1. ����, 2. �߰ſ� ���� ����ũ�� �ְ� ��� ��, 3, ���, 4, Ż��) --> �ֳ����� ����
21:00 ����
21:20 �۵��ؼ�����(�ֳ����� ��)
21:50 �Ͱ�
==============================================================================================================
						 
������������������� 2010.09.22(��) �۾� �������������������  
---> 08:00 ~ 00:00

- �߼�
07:30 ���  
08:10 ���� �ƹ���, ���
08:20 ����(���� �뵷: ����)
09:20 �뵿 ��� 203ȣ
09:40 ����
12:30 �̸���(���� �� ����)
19:00 �̸�� �̸�� �ο�
23:00 �̸���� ����
23:30 ����
23:50 �Ͱ�(�μ����� �ý�)
==============================================================================================================
						 
������������������� 2010.09.23(��) �۾� �������������������  
---> 08:00 ~ 00:00

- �߼�����
09:00 ���  
10:00 ����(�ɰ� �뵷: ����)
12:00 ū������ �Ͱ�
22:40 ������ ���
23:40 ���װ���͹̳�(1�ð� �ɸ�)
00:15 �������
04:15 �����͹̳�(4�ð� �ɸ�)
05:10 4318 ����(����͹̳�)
05:30 5524 ����(��������)
05:50 �Ͱ�
==============================================================================================================
					 
������������������� 2010.09.24(��) �۾� �������������������  
---> 07:20 ~ 18:30

- �����ػ� SM
1. ���α׷� �м�

- �ڵ�������( --> ���̹�â��/����â��)(http://www.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=) 
1. /cis-hi-b2c/java_src/hi/amends/servlet/ViewSagoListServlet.java ���Ͽ���
public class ViewSagoListServlet extends JDFXecureServlet { 
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {

		try {  
			// Interface �� --> HI-HOME ����ں�����ó����Ȳ(�ڵ���)
			String ifId2 = "IR_HI-HOME_0094";

			CLMQ9200M01LBean insuCheck2 = new CLMQ9200M01LBean(); 
			bizVo = insuCheck2.getTraAccident(request, ifId2);
			clmq9213Vo = (CLMQ9213VO)bizVo.getBusinessVo();
		}
			
		boolean trState2   = bizVo.getService().getTRState();  // EAI �������� ����
		String resultCode2 = bizVo.getService().getErrorCode().trim();
		String err_msg2    = bizVo.getService().getTRMessage().trim();				
		System.out.println("[/ViewSagoListServlet.java] [performTask()] [trState2]"+ trState2);

		if ( !trState2 ) {
			hdmf.jdf.util.MsgHandler.alertMsg(out,"", resultCode2);
			ScriptHandler.historyBack(out);
			return;
		}
 
		printJspPage(request, response, "/cybercenter/bosangcenter/bosangListView.jsp");  // �ڵ�������
	}
}

2. /cis-hi-b2c/java_src/hi/cis/cisbean/amends/CLMQ9200M01LBean.java ���Ͽ���
public class CLMQ9200M01LBean { 
	public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId) throws Exception {
		try{
			////////////////////////////////////////////////////////////
			// 1. ��û/���� ������ü ���� �� ������ ����
			////////////////////////////////////////////////////////////
			bizVo   = new CisResultObjVO();
			amendVo = new CLMQ9213VO();
			
			amendVo.setAgctPolHolderRegNo(strAgctPolHolderRegNo);	//����ڹ�ȣ	
			amendVo.setFmDt(strFmDt);		//��������	
			
			////////////////////////////////////////////////////////////
			// 2. ���� ȣ��
			////////////////////////////////////////////////////////////
			OutboundProcess service = new OutboundProcess();
			service.setUserId(HiUtil.getCisUserId());
			
			////////////////////////////////////////////////////////////
			// 3. ��� Ȯ��
			////////////////////////////////////////////////////////////
			if ( service.getTRState() ) {
				System.out.println("<br>================================");
				System.out.println("<br>CIS ȣ�� ����");
				System.out.println("<br>================================");

				HiUtil.nullToEmp(amendVo.getClass(), amendVo);
				
				//���LIST
				CLMQ9214VO[] acdtList = amendVo.getClmq9214VOList();
				for(int i=0; i<acdtList.length; i++){
					HiUtil.nullToEmp(acdtList[i].getClass(), acdtList[i]);
					System.out.println("<br>���LIST------------------------");
					System.out.println("<br>������åȮ�� : " + acdtList[i].getAcdtStat());
					System.out.println("<br>��������         : " + acdtList[i].getReqBzCat());
				}
				amendVo.setClmq9214VOList(acdtList); 
			}

			bizVo.setBusinessVo(amendVo);
			bizVo.setService(service);
		}	
		return bizVo;
	}
} 

3. /cis-hi-b2c/docroot/cybercenter/bosangcenter/bosangListView.jsp ���Ͽ���
<jsp:useBean id="CLMQ9213VO"  class="hi.cis.vo.amends.CLMQ9213VO" scope="request"/>
<%	 
	CLMQ9214VO[] autoAcdlist = CLMQ9213VO.getClmq9214VOList();	//����ó����ȸ( ����� )
%> 
	<table id="ContractList" class="blue1 tm10"> 
		<tr>
			<th scope="col">����</th>
			<th scope="col" class="pipe">������ȣ</th>
			<th scope="col" class="pipe">��ǰ��</th>
			<th scope="col" class="pipe">���������</th>
			<th scope="col" class="pipe">�������</th>
		</tr> 
<%
	for(int i = 0; i < loopSize2; i++) {
		if(!autoAcdlist[i].getAcdtStat().trim().equals("������å")) {
			if(!autoAcdlist[i].getAcdtRcpNo().trim().equals("")) {
%>
		<tr>
			<td ><input type="radio" name="slct" onClick="javascript:js_go( '<%= autoAcdlist[i].getReqBzCat().trim() %>', 
				'<%= autoAcdlist[i].getAcdtRcpNo().trim()%>');" /></td>
			<td class="pipe"><%= autoAcdlist[i].getAcdtRcpNo().trim().substring(1) %></td>
			<td class="pipe"><%= autoAcdlist[i].getProdName().trim() %></td>
			<td class="pipe"><%= autoAcdlist[i].getReqStdt().trim() %></td>
			<td class="pipe"><%= autoAcdlist[i].getEvntDt().trim() %></td>										
		</tr>
<%
				nRowCnt++;
			}
		}
	}
%>	
==============================================================================================================

- Eclipse�� Tomcat Server �÷����� ��ġ�ϱ�(����)
http://blog.naver.com/ssari93?Redirect=Log&logNo=130086724100  --> C:\Program Files\Apache Software Foundation\Tomcat 6.0
<Context path="/tomcat1" reloadable="true" docBase="D:\eclipse\workspace\tomcat1" workDir="D:\eclipse\workspace\tomcat1\work" /> 
<Context path="/cis-hi-b2c_N" reloadable="true" docBase="C:\projects\cis-hi-b2c_N" workDir="C:\projects\cis-hi-b2c_N\work" /> 
http://localhost:8080/cis-hi-b2c_N/portal/index.jsp
==============================================================================================================

- ���װ� ��� �۱� �Ϸ�(ȸ��(3~9��): 7��, ���Ӻ�: 2��)
����: 072-02-255993 ������: ������
==============================================================================================================
					 
������������������� 2010.09.25(��) �۾� �������������������  
---> 08:30 ~ 18:30

- �޽�
09:00 ��� 
14:30 ����(461��)
15:00 ���ӵ� �п�(2ȣ�� ��迪 ȿ�� ����Ʈ �� 3��)
15:20 �н� ����
16:00 �Ͱ�
==============================================================================================================

- ������
�Ｚ���� �Ͽ��� AF-TB151WNA, 15����(1���), ����: 1,158,900��
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=75995678&service_id=elecdn
�Ｚ���� �Ͽ��� AF-J15PWTH, 15����(1���), ����: 1,190,000��
http://itempage.auction.co.kr/detailview.aspx?itemNo=A540428980
==============================================================================================================
					
������������������� 2010.09.26(��) �۾� �������������������  
---> 06:30 ~ 00:00 

�������౸
06:20 ��� 
07:20 �ű��ʵ��б�
07:30 ����(2:1 ��)
08:50 ����(4:2 ��)
10:00 ����(2:1 ��)
11:20 ���� 
11:40 ���漼��(�߽�: ȸ�񿡼� ����)
13:00 ���� 
14:00 �Ͱ�
==============================================================================================================
					 
������������������� 2010.09.27(��) �۾� �������������������  
---> 07:20 ~ 18:30

- �����ػ� SM
- ����(ȸ��Ұ�/PR����/�����ڷ�)
http://thome.hi.co.kr/company/ko/pr/press/press01_list.jsp?CATEGORY=NEWS
- �̺�Ʈ�Խ���(������ ȭ��/Ȩ������)
1. list ȭ��
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=LISTADMIN
==> /manager/home/event/event_list.jsp
2. view ȭ��
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=VIEWADMIN&ID=1017
==> /manager/home/event/event_view.jsp
3. insert ȭ��
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=WRITE
==> /manager/home/event/event_write.jsp
/servlet/hi.b2c.customer.servlet.EventServlet?MODE=INSERT
==> /manager/home/event/event_list.jsp
4. eidt ȭ��
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=UPDATE&ID=1017
==> /manager/home/event/event_modify.jsp
/servlet/hi.b2c.customer.servlet.EventServlet?MODE=MODIFY
==> /manager/home/event/event_list.jsp
==============================================================================================================

--���̺� �ʵ�� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT  A.TABLE_NAME ���̺��ID, B.COMMENTS  ���̺��, --A.COLUMN_ID COL_SEQ,
              A.COLUMN_NAME Į��ID, C.COMMENTS Į����, A.DATA_TYPE||'('|| A.DATA_LENGTH||')' Į��LEN
FROM ALL_TAB_COLUMNS  A, ALL_TAB_COMMENTS B, ALL_COL_COMMENTS C
WHERE A.OWNER = B.OWNER
  AND A.TABLE_NAME  = B.TABLE_NAME
  AND A.OWNER = C.OWNER
  AND A.TABLE_NAME = C.TABLE_NAME
  AND A.COLUMN_NAME = C.COLUMN_NAME
  AND A.TABLE_NAME ='SF_CCRSLT1'   --���̺��
 ORDER BY A.COLUMN_ID 
;
==============================================================================================================

- [���� ��ũ��]
ä�μ��񽺼��� ��ũ�� ����: 2010.10.15 ~ 2010.10.16(��~��: 1��2��)
==============================================================================================================

- ����ȸ �ּҷ� �ۼ� �� ���� ī�� ���
==============================================================================================================
					 
������������������� 2010.09.28(ȭ) �۾� �������������������  
---> 07:10 ~ 18:30

- �����ػ� SM
- Ȩ������ ȸ��Ұ� ���� �۾�(��ûID: R20100927-0052)
-------------------------------------
�������� : ����ó�� ȭ�� ����
�м� : 10.09.28 ~ 10.09.28(1)
���� : 10.09.28 ~ 10.09.28(1)
���� : 10.09.28 ~ 10.09.28(3)
�׽�Ʈ : 10.09.29 ~ 10.09.29(2)
���� ����� : ������ ���
-------------------------------------
PMS ��û ��Ȳ(http://ppms.hi.co.kr:7001/PMS/request/request.html?CM=detail&isNew=N&readMode=R&msgDiv=SR&srMngNo=R20100927-0052&partId=IT2062)

��. Home  > ȸ��Ұ� > ���������� > �濵���� > ����(����߰�) ==>  ����߰�(���ǰŷ���(KRX) ��â ����)
http://thome.hi.co.kr/company/ko/ir/management/managementView02.jsp
��. Home > ��ǰ���� > �Ǹ����λ�ǰ �ϴ� ==> �ڵ����������� ����(�˾�)
http://thome.hi.co.kr/popup/guidebook.jsp
��. Home > ��ǰ���� > �����ں�(image ����) 
http://thome.hi.co.kr/company/ko/notice/products/productsView07.jsp ===> ��⺸��, �ػ��� ����(2010�� 4�� 1�� ����)
��. �̹��� ����(/images/newimages/company/)
/banner_findkrx.gif
/h3_publicproduct_rate09_02_des.gif
/h3_publicproduct_rate09_04_des.gif
==============================================================================================================

1. �䱸���� ��� - ��ȫ�� ����(BA)  ====> ����
2. ���� ���� : �۾��Ƿ� ����� �޶�� ��û
* ����ȭ(10����), ����(10~30), ����
3. My Portal : SDLC���� ǥ�ذ��� ����
4. WBS ���� : ���� �� ����Ȯ�ο�û
5. ���� Ȯ�� : Ȯ��
6. ���� Ȯ�� �ߴٰ� �˸�
---------------------------------------------------------------- 
1. �۾��Ƿ� ������ȣ �� ���� ====> ����
R20100316-0001 / Ȩ������ ȸ������ �۾��Ƿ�
2. ����
�ϷΌ����: 2010-03-26
3. ��û����: ����ó�� ���μ��� ����
4. �䱸���� ����
- 2007�� ���� ������ �� �������̸�, 2007�� ���� �α��� ���� ���� ȸ�� ��
  ���ڱ����ŷ��� �������� ���� ȸ���� ������
5. PMS�� ��ϵ� �ý��۸�: Ȩ������
==============================================================================================================

- ���󼭺� ���� ����(���� ���: ����ö �븮)
1. ���������ȸ ��� �߰�                                                                                                                                                        
- �����Ϸ�� ���� ��ȸ��
- ���������µ� ��ȸ�ǰ� ����(��Ż�ʰ� ���� �ʿ�)
- ����ó����ȸ: http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7

2. EDMS �����Ͽ� ÷������ ������Ż�� ����
- ����â��/�ڵ������� --> ��������
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL

3. ��������� ���Ͼ��ε� ÷������ ���� ����(���ͳ� ����)
- ���� 3������ �ִ� 10���� ����(�뷮 �����̳� �����Ͻ� ���ϼ� ����)
- ÷������ �뷮 ���� ���(500KB --> 1.2M)
- ÷������ ���� Ȯ�� ����(�ڵ��� ������ ����)
- Fax ����(���� ��ȣ ���� �� Ȯ��: ��Ż�� ��� ��)

4. ������ ��⺸�� ������� ��ȸ(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
- ���Ǻ� ��ȸ ����
- ���ǿ� ����ϱ��� �߰��Ͽ� ī��Ʈ display
- e-�ܿ￣��Ű����: http://tmgr.hi.co.kr/servlet/hi.manager.home.insu.servlet.ViewInsuList
==============================================================================================================

- ���� ����üũ(http://thome.hi.co.kr/servlet/hi.amends.servlet.UEJ81AUServlet?q=7F000001189E00333B5075E33D4AA711399731B59E9C13)
/cis-hi-b2c/java_src/hi/amends/servlet/JubsuViewServlet.java  ===> ���� �ʿ�
ptyKorNm3=�ùķ��̼���
[/JubsuViewServlet.java] [performTask()] [getLtmca911VoList()[0]]�ùķ��̼���[account_owner]����ȭ��õ��ȭ������
- ������� �Ϸ� ȭ��
/cis-hi-b2c/docroot/amends/damage/care/accident_take_process_06.jsp
==============================================================================================================

- �������̽� ����
I/F ������ http://10.2.11.102:52201/ems, I101688/I101688
I/F ��� http://10.3.11.71:52201/ems, I101636/I101636
�޽����α���ȸ > �޽����α���ȸ  ==> �������̽� ID: IR_HI-HOME_0089
==============================================================================================================
						 
������������������� 2010.09.29(��) �۾� �������������������  
---> 07:00 ~ 18:30  --> CS ��ȸ(�ȵ���̵� �����, ��ǥ: ������ ����)

- �����ػ� SM
- ����� ���� ��û ==> Ȩ������ ȸ��Ұ� ���� �۾�(��ûID: R20100927-0052)
- ������Ʈ SDLC
����: ����Ϸ��� ���� 12�� �������� �Ϸ�(���� �μ� �׽�Ʈ�� �Ϸ� �Ǿ�� ��)
�����û ���� �Ϸ�: ����Ϸ��� ���� 14�� �������� �Ϸ�Ǿ�� ��(���� ����)
- �̹��� ���(���� ���� ==> IP: 10.18.5.74, ��Ʈ:, hihom_d1/hihom_d1)
==============================================================================================================

- Tortoise SVN ��ġ(IA1308/home1234)
HOME --> svn://10.81.18.197/hi-home
HOMEADMIN --> svn://10.81.18.197/homeadmin
==============================================================================================================

- �����ػ� IT��ü���� ��� ����Ʈ���� ��Ȳ ����
Inspector4.exe ��ġ ===> ����(F) --> ��������: ���¸�_050761.xls
==============================================================================================================

- ���󼭺� ���� ����(���� ���: ����ö �븮)
1. ���������ȸ ��� �߰�                                                                                                                                                        
- �����Ϸ�� ���� ��ȸ��
- ���������µ� ��ȸ�ǰ� ����(��Ż�ʰ� ���� �ʿ�) 
2. ���ͳ� ���� ===> ��������� ���Ͼ��ε� ÷������ ���� ����(���ͳ� ����)
- ���� 3������ �ִ� 10���� ����(�뷮 �����̳� �����Ͻ� ���ϼ� ����)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4893
Rmultipart dir:::  /Appl/upload2/hib2c/data/sagojupsu/201009
==============================================================================================================
					 
������������������� 2010.09.30(��) �۾� �������������������  
---> 07:00 ~ 18:30

- �����ػ� SM
- ���󼭺� ���� ����(���� ���: ����ö �븮) 
2. ���ͳ� ���� ===> ��������� ���Ͼ��ε� ÷������ ���� ����(���ͳ� ����)
- ���� 3������ �ִ� 10���� ����(�뷮 �����̳� �����Ͻ� ���ϼ� ����) ==> �⺻ 3��(Ŭ������ �߰�0
- ÷������ �뷮 ���� ���(500KB --> 1.2M)
- Loading ��(����)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
Rmultipart dir:::  /Appl/upload2/hib2c/data/sagojupsu/201009
accident_take_process_17.jsp ���� ����

--÷������ ���ε� ���� ��ȸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT * FROM SAGO_JUBSU 
WHERE CONTRACT_ID = 4893   --��û��ȣ
;

--÷������ ���ε� ���� ���� @@@@@@@@@@@@@@@@@@@@@@@@@@
UPDATE SAGO_JUBSU 
SET IMGUPLOAD1 = '211.jpg', IMGURL1 = '201009',
        IMGUPLOAD2 = '212.jpg', IMGURL2 = '201009',
        IMGUPLOAD3 = '213.jpg', IMGURL3 = '201009'
WHERE CONTRACT_ID = 4893   --��û��ȣ
;

--- Į�� �߰�  ---------
ALTER TABLE SAGO_JUBSU ADD ( 
	IMGURL4		VARCHAR2(50),	--÷�����ϰ��4
	IMGUPLOAD4    VARCHAR2(100)	--÷�����ϸ�4
);

COMMENT ON TABLE SAGO_JUBSU IS '��� ���� ����';  
COMMENT ON COLUMN SAGO_JUBSU.IMGURL4 IS '÷�����ϰ��4';
COMMENT ON COLUMN SAGO_JUBSU.IMGUPLOAD4 IS '÷�����ϸ�4';
==============================================================================================================

 - loading â ����(�ε� â ����) ==>  progress bar(���¹�)
/accident_take_process_17_popup.jsp ���Ͽ���
<script type="text/JavaScript">
<!--
var modalWin = null;
var modallessChk = 0;
var modallessExcute = 0;
var param_p_page = "";

/*** modal ���� ���� ���� ��ȸ �Լ� ȣ�� �Լ� */
function checkForm() {  
	var f = document.theForm; 
	if(f.img.value == ""){
		alert("÷�������� �����ϼ���");
		return;
	}

	/*** ��ȸ�� loadingâ ǥ�� �Լ� */  
	if( modallessExcute++ == 0 ) { 
		var features = 'dialogWidth:400px; dialogHeight:120px; edig:sunken; resizable:No; status:no; scroll:no; center:Yes; title:No'; 
		modalWin = window.showModelessDialog("/common/modal_pop.jsp",window,features);  // loadingâ ǥ��
		stopShow = setInterval("waiting_searchDataSet()",1000);   //�ð� ���͹� ����  
	}
}
 
function goPage(page) { 	
	var f = document.theForm;	
	f.submit();
	search_complate();  //��ȸ�� loading �Ϸ� �� �ʱ�ȭ �Լ� ȣ��
}

/*** modal ���� ���� ���� ��ȸ �Լ� ȣ�� �Լ�*/
function waiting_searchDataSet() {    
	if( modallessChk++ == 1 ) {
	    goPage(param_p_page);  //���� ��ȸ �Լ� ȣ��
	    modallessChk = 0;
	    clearInterval(stopShow);
	}
}
 
/*** ��ȸ�� loading �Ϸ� �� �ʱ�ȭ �Լ� */
function search_complate() {
	//alert("[/accident_take_process_17_popup.jsp] [search_complate()] [test]");
	if( modalWin && modalWin != null ) {
	    modalWin.close();
	    modalWin = null;
	    modallessExcute = 0;
	}
}
//-->
</script> 

<a href="javascript:checkForm()"><img src="/btn_savefileok.gif" alt="���񼭷������Ϸ�"/></a>
==============================================================================================================

- �� �ֹ�
���ڸ��ƴ���(www.bobkorea.com)
============================================================================================================== 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+ 
����������������������������������������������������������� 