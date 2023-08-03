

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2010.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2010.09.01(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 03:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET 이용)
==============================================================================================================

 - 구직 활동
(주) 예술과 기술 유승현 상무
==============================================================================================================

1 2010/07/24 11:00 ~ 12:00  모빌리언스 핸드폰 SK마케팅앤컴퍼니 55,000 원   
1 2010/08/27 19:00 ~ 20:00  모빌리언스 핸드폰 SK마케팅앤컴퍼니 5,500 원  
==============================================================================================================

 - 포항집에 가져 가야 할 것(2010.09.21 추석)
가방, 반찬통, 속옷(빨래, 수건), 유리컵, 교통카드
- 포항집에서 가져 올 것
반찬(진미 볶음채)
==============================================================================================================

- mdb 연결(VB.NET에서)
Dim dbConnString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\test\test.mdb; Password=; User ID=" 
Dim sSQL As String = "Select fldName1, fldName2  from tblTest " 
Dim dbConn As New OleDb.OleDbConnection(dbConnString)
dbConn.Open()  '데이터베이스 연결

If (dbConn.State = ConnectionState.Open) Then 
    Dim sqlCmd As New OleDb.OleDbCommand(sSQL, dbConn)
    Dim pReader As OleDb.OleDbDataReader = sqlCmd.ExecuteReader()
	
	iRsCount = pReader.FieldCount  '조회된 결과 건수

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
 					
■■■■■■■■■■■■■■■■■■ 2010.09.02(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 09:00 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET 이용)
1.  조회
SELECT A.idx, B.GroupCode, A.HNAME, A.HP, A.CONTENT, A.TEL, A.TEL_OFFICE, A.EMAIL, A.ADDRESS           
FROM DB_ADDRESS A, DB_GROUP B       
WHERE A.GroupCode = B.GroupCode     
	AND A.HNAME LIKE '%은%'  
ORDER BY A.HNAME, B.GroupName, A.Work_DT DESC 
 
2. 수정
UPDATE  DB_ADDRESS 
SET GroupCode ='0001', hname = '김은아 조카', hp = '010-7406-9406', tel = '061-684-4322', tel_office = '', 
	Content = '조카(작은 누나)_T3', email = '', address = '여수시' 
WHERE idx = 202   
==============================================================================================================

 - DBNull 형식 설정(null값 제거)
1. 에러: VB.NET에서  ""DBNull" 형식에서 "String" 형식으로 캐스팅할 수 없습니다. " 라는 에러가 납니다
2. 조치: .Col = 5 : .Text = IIf(IsDBNull(rs(4)), "", rs(4))  '5 행(전화번호) 
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.09.03(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:30 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET 이용)
1. 조회(SELECT), 등록(INSERT), 수정(UPDATE), 삭제(DELETE) 완료
2. fpSpread ADO, ListView DataGridView
==============================================================================================================

- fpspr70.ocx
첨부된파일을 다운받아 내컴퓨터=>c=>windows=>system32에 저장 
==============================================================================================================

- Farpoint Spread
http://www.mungchung.com/xe/?mid=spread&listStyle=webzine&sort_index=regdate&order_type=desc&document_srl=2833
http://www.componentsource.com/products/farpoint-spread/index-ko-krw.html
http://www.21cbook.co.kr
==============================================================================================================

- 서점
1. 신한전문서적 방문(T)3487-0857)
2. 비트교육센터 별관 맞은 편 지하(책 2~30% DC)
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.09.04(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:30 ~ 00:00 

[TAMA_HouseK_Book]

- TAMA_HouseK_Book(VB.NET 이용)
1. currentYear = Microsoft.VisualBasic.Left(DTPicker1.Value, 4)     '해당 년
==============================================================================================================

 www.codeproject.com 을 뒤지다 보니... c#으로 된 부분이 있길래... 적용해봤습니다...
datagridview에 데이타를 바인딩 후... 이런식으로...  combobox에 맵핑할 데이타를 조회해서... 
맵핑할 컬럼에 적용하는 방법   보시면 다들 아시는 코드입니다.

다만...   datagridview.Columns.Remove (ds.Tables ("T_ATTENDANCE").Columns("ATT_CD").ColumnName 부분은
전 해당 컬럼을 지우지는 않고.. 보이지 않게 했습니다.   아직 업데이트를 테스트를 해보지 않아서...

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
 					
■■■■■■■■■■■■■■■■■■ 2010.09.05(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

▦조기축구
06:10 기상 
07:00 신구초등학교
07:40 게임(2:0 승)
08:50 게임(4:2 승): 2골 넣음
09:40 종료 
10:20 문경세제(오세림 고문이 쏨): 작년 회비 문제로 다툼
12:20 수정식당(필름 끊김)
18:00 열쇠 잃어버림
19:00 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.13(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:30 ~ 18:30  --> 현대해상 SM 첫 출근(서울시 중구 서소문동 135번지 올리브 타워 17층 통합채널팀)

- 현대해상 SM
1. 통합채널팀(/채널서비스 센터/해상화재IT실/IT서비스본부/현대HDS): 761-0128
 1) 윤대섭 센터장 H) 017-502-2925
 2) 강성오 팀장 H) 017-232-6013(팀장)
 3) 정일영 대리 H) 010-8932-1389(파트장)
 4) 권오득 대리 H) 010-4759-4658
 5) 안재광 차장 H) 010-8778-0303(자동차 보험)
 7) 천세선 과장 H) 010-4602-3474(개인 정보)
 8) 함은진 과장 H) 010-5362-8323(..)
 9) 장미정 사원 H) 010-2277-5350(보상)
==============================================================================================================

- IP 주소(현대해상 SM)
IP 주소: 10.81.17.78
GW: 10.81.17.1
SM: 255.255.255.0
DNS: 10.1.17.242, 10.3.22.50
- 파일 서버: \\10.81.17.56\zzzzz
- 프린터 서버(삼성 ML-4050 Series) --> IP 주소: 10.81.17.67
사번: i050761, PMS ID:  IA1308/ssj**8**
출입 보안 등록: 정맥, 안면 인식 등록
==============================================================================================================

- 정보처리기사 자격증 번호: 03201010432A
- 슬리퍼 구매(14,800원: 롯데 마트 서울역점)
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.14(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30

- 현대해상 SM
1. 현대해상 Project 산출물 분석 
1) 현대해상 X-internet: TrustForm
2) EAI 연계
==============================================================================================================

- 속독 학원
1. 한국광속학원(http://www.ksokdok.com)
서울시 서초구 방배동 1038번지 대우 프라자 301호, 525-0775
355기 토요 기초반  ==> 9월 25일(매주 토요일) 오후 2-8시까지(4-16주 과정)
2. 대한논리속독학원(http://www.sogdok.com)
서울당산: 02-2672-8225, 서울 영등포구 당산동 5가 11-34 삼성타운 310호
서울봉천: 02-884-8214, 서울시 관악구 봉천5동 480-3 삼성프라자 4층
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.15(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> CS 조회(첫 참석)

- 현대해상 SM
1. 현대해상 Project 소스 분석

- 계약조회( --> 사이버창구)(http://www.hi.co.kr/servlet/hi.cybercenter.cmts.servlet.P2001AGServlet?q=) 
1. /cis-hi-b2c/java_src/hi/cybercenter/cmts/servlet/P2001AGServlet.java 파일에서
public class P2001AGServlet extends JDFXecureServlet { 
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{  
			// Interface 명 --> 통합 계약조회(일반,장기,자동차)
		        // Interface ID --> IR_HI-HOME_0100
		    	// Tran ID      --> CIZZ0013I01L
			String ifId = "IR_HI-HOME_0100";

			CIZZ0013I01LBean insuCheck = new CIZZ0013I01LBean(); 
			bizVo = insuCheck.getTraAccident(request, ifId);			 
			cizz0035Vo = (CIZZ0035VO)bizVo.getBusinessVo(); 
		}
		
		boolean trState2   = bizVo.getService().getTRState();  // EAI 성공여부 상태
		String resultCode2 = bizVo.getService().getErrorCode();
		String err_msg2    = bizVo.getService().getTRMessage();			
		
		if ( !trState2 ) {
			if (resultCode2.equals("UCI00003")) {	//비계약자일경우
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
		CIZZ0034VO[] contList = cizz0035Vo.getCizz0034VOList();  // 계약  List 가져오기
		int loopSize = contList.length; 
		for(int j=0; j < loopSize; j++) {
			HiUtil.nullToEmp(contList[j].getClass(), contList[j]); 
			if(contList[j].getInagAgmtStatCat().trim().equals("521")||contList[j].getInagAgmtStatCat().trim().equals("522")) {   //유지건521  납입유예건522 
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

2. /cis-hi-b2c/java_src/hi/cis/cisbean/cmtst/CIZZ0013I01LBean.java 파일에서
public class CIZZ0013I01LBean { 
	public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId) throws Exception{
		try{
			////////////////////////////////////////////////////////////
			// 1. 요청/응답 업무객체 생성 및 데이터 설정
			////////////////////////////////////////////////////////////
			bizVo   = new CisResultObjVO();
			reqVo   = new CIZZ0033VO();
			resVo   = new CIZZ0035VO();			
			reqVo.setPtyRegNo(strPtyRegNo);
			reqVo.setRegNoCat(strRegNoCat);
			reqVo.setInqCat(iInqCat);
			reqVo.setAgmtStatCat(strAgmtStatCat);
			
			////////////////////////////////////////////////////////////
			// 2. 서비스 호출
			////////////////////////////////////////////////////////////
			OutboundProcess service = new OutboundProcess();
			service.setUserId(HiUtil.getCisUserId());
			//service.setLoopback(true, "CIZZ0013I01L");
			service.call(ifId, reqVo, resVo);
			
			////////////////////////////////////////////////////////////
			// 3. 결과 확인
			////////////////////////////////////////////////////////////
			if ( service.getTRState() ) {
				ELogger.info("<br>================================");
				ELogger.info("<br>CIS 호출 성공");
				ELogger.info("<br>================================");

				HiUtil.nullToEmp(resVo.getClass(), resVo);
				
				CIZZ0034VO[] contList = resVo.getCizz0034VOList();
				for(int i=0; i<contList.length; i++) {
					HiUtil.nullToEmp(contList[i].getClass(), contList[i]);
					ELogger.info("<br>계약조회--------------------------");
					ELogger.info("<br>보험계약번호         : " + contList[i].getInagNo());
					ELogger.info("<br>보험계약번호순서 : " + contList[i].getInagNoSeq());
				}
				resVo.setCizz0034VOList(contList);   // 계약  List 셋팅
			}
			bizVo.setBusinessVo(resVo);
			bizVo.setService(service);
		}
				
		return bizVo;
	}
} 
==============================================================================================================

- document.getElementById과 explorer 8
explorer 8에서 실행하면 "개체가 필요합니다."라는 javascript 에러가 발생(아래와 같이 id를 등록하고 가져와야 함)

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
					 
■■■■■■■■■■■■■■■■■■ 2010.09.16(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:50 ~ 18:30

- 현대해상 SM
1. 현대해상 Project 소스 분석

- 고객정보변경( --> 사이버창구/계약변경)(http://www.hi.co.kr/cybercenter/contractcenter/change/contractNoserviceView.jsp) 
1. /cis-hi-b2c/java_src/hi/cybercenter/cmts/servlet/AddServlet.java 파일에서
public class AddServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {	

		//행정동 주소(직장 번지 한글주소)
		hsZIP_LEGAL_NAME.put("ZIP_LEGAL_NAME0",cizz0099Vo.getCipm0024VO().getAddrAmsvgAddrKorWork().trim()); 
		try
		{
			printJspPage(request, response, "/cybercenter/contractcenter/change/contractAddrModifyView.jsp");
		}
	}
}

2. /cybercenter/contractcenter/change/contractAddrModifyView.jsp 파일에서
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
onMouseOut="javascript: imgOut(this);" alt="고객정보변경"/></a>

3. /servlet/hi.cybercenter.cmts.servlet.AddrProxyServlet.java 파일에서
public class AddrProxyServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(which.equals("onlyAddr")) {	//주소지만변경 우편물수령지 변경 안함
			printJspPage(request, response, "/servlet/hi.cybercenter.cmts.servlet.ModifyAddrPostServlet");
		}
	}
}

4. /servlet/hi.cybercenter.cmts.servlet.ModifyAddrPostServlet.java 파일에서
public class ModifyAddrPostServlet extends JDFXecureServlet {
	public void performTask(HttpServletRequest request,HttpServletResponse response) throws Exception {	 
		if (isModAddr.booleanValue() || isModPost.booleanValue()) {	// 주소지가 변경되었거나 우편물수령지가 변경되면
			/*********** 계약상 주소지연락처 변경 후 proc_flage = 'A1' 로 Insert 시작 ********/
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

		/******** WCC proc_flag = 'A1'으로 전송 시작 *******/
		this.sendWccSocket("16", strContractID, sessionMgr, es, ps, flw);
		
		printJspPage(request, response,"/cybercenter/contractcenter/change/contractChangeCompleteView.jsp?which="+ which);
	}
}

5. /cybercenter/contractcenter/change/contractChangeCompleteView.jsp 파일에서
<%=sessionMgr.getNm()%></strong>님께서 변경 신청하신 <span class="orange">주소지, 연락처, 수령지 정보</span>가  
다음과 같이 정상적으로 반영되었음
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.09.17(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30 --> PC 도착(14:00)

- 현대해상 SM
1. 프로그램 설치
1) jdk 1.4
2) 에디터 플러스
3) WinMerge-2[1].2.4-exe => 옵션
4) 오라클 클라이언트(92010NT_CLT)
5) sql 디벨로퍼(sqldeveloper-5338)
6) 이클립스(eclipse3.3.2)  
Host: 10.85.1.83, Paht: /CVSROOT, 050761/050761
\\10.81.17.52\zzzzz\utility 유틸
2. PC 모니터(HP 17인치) 관리번호: D0012232 
-----------------------------------------------------------------------------------------------------------

2. 통합보안 관리시스템(http://ams.hi.co.kr) ==> IA1308/IA1308
HI 메신저: IA1308@himsg.com, IA1308/ssj***1
[SC3-devwas02:hidev01] /Appl > waslog  ===> was log 보기(개발 서버) 
01. 운영 서버(admin) ==> http://homeadmin.hi.co.kr/auth/loginView.jsp, IA1038/hh101636
3. ftp 설정 
01. 개발 서버(WEB) ==> /Appl/hib2c/hib2c.ear/hib2cWeb.war ==> FTP서버(S): 127.0.0.1, 포트: 10039, hidev01/qwer1234
02. 개발 서버(WAS) ==> /Appl/hib2c/hib2c.ear/hib2cWeb.war/WEB-INF/classes
03. 개발 서버(WAS0_log) ==> /Logs/hib2c/WAS/hib2cSvr 
04. 개발 서버(admin) ==> /Appl/homeadmin/homeadminSvr.ear/hi_mgr.war
05. 개발 서버(upload) ==> /Appl/upload2
06. 개발 서버(이미지) ==> /Appl/hib2c/docs/images
11. R홈 서버(WEB) ==> /Appl/rhib2c/rhib2c.ear/hib2cWeb.war
31. WCC 테스트 ==> FTP서버(S): 127.0.0.1, 포트: 10040, jeus/jeus 
41. Batch 테스트 ==> FTP서버(S): 127.0.0.1, 포트: 10035, batch / bat0108! 
51. 배포 서버 ==> /B2C/Appl/hib2c/docs/images ==> FTP서버(S): 10.18.5.74, 포트:, hihom_d1/hihom_d1
61. 배포 확인 ==> FTP서버(S): hyoungsang, HIHA000/HIHA000
==============================================================================================================

- 속독(철저 분석), 정보시스템감리사, 개인보호필름 15.6형W(344.0 X 194.5)
속독 전문교육원 골든스쿨: http://www.goldenschool.com/index.htm --> 동작 교육원 T)822-8214
속독 마법사: http://www.magicsokdok.kr
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.18(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:10 ~ 00:00

▦속초야구
 
05:40 기상 
06:10 서울대입구역
06:40 당산역(안재광차장 차)
08:50 속초 설악 야구장
10:30 조식(12명 옴)
11:20 속초 설악 야구장(안 차장님 팀: 유니폼 하의 빌림(회비 4만원 님)): 광명시 팀
12:00 수비 연습
14:00 연습 게임(4:1로 이김)
15:00 정식 게임(심판 2명)
16:00 5회부터 포수로 들어감(4타석 3타수 1안타, 1포볼, 2도루(3루 도루 성공))
17:40 종료(17:14로 짐): 상태팀 선수 출신 2명
19:20 한화 리조트(샤워)
20:20 석식(회, 맥주)
22:00 속초 출발
00:00 낙성대 도착, 취침
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.09.19(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 10:00 ~ 00:00

- 휴식
10:00 기상
12:00 중식
13:00 이발
14:00 목욕(태화사우나: 4,500원): 몸무게 75kg
15:00 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.20(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30

- 현대해상 SM
1. 프로그램 분석
- 로그인
운영서버(Admn): http://homeadmin.hi.co.kr/auth/loginView.jsp, IA1038/hh101636
운영서버(백도어): http://www.hi.co.kr/secure/secure.jsp, IA1038/hh101636
개발서버: http://thome.hi.co.kr
개발서버(Admn): http://tmgr.hi.co.kr/auth/loginView.jsp, IA1038/ff101636
개발서버(백도어): http://thome.hi.co.kr/work/backdoor.jsp
- 일일점검	
\\10.85.1.48\document\공유함_new\09_장애관리\09_02_일일점검\02 팀별일일점검사항취합(팀별)\
IA1304/IA1304
- hosts 파일
C:\WINDOWS\system32\drivers\etc\hosts
10.18.12.84		thome.hi.co.kr
==============================================================================================================

 - Eclipse에 Tomcat Server플러그인 설치하기
http://www.javajigi.net/pages/viewpage.action?pageId=165
http://androidmo.tistory.com/103
http://smin01.egloos.com/2596359
==============================================================================================================

- The KM
22시 소연(신림역 4번 출구: 4만), 이안(Ace), 제이, 유미(수모), 아영(부산), 연아, 미소
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.21(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:00 ~ 00:00

- 추석연휴
08:00 기상  
08:50 다림질(Y셔츠 8벌)
10:00 조식
11:20 강남터미널(서울 --> 포항) 
17:00 포항고속터미널(5시간 걸림)
17:30 포항집
19:20 포항계(쌍용사거리 --> 자갈마당): 봉춘, 정하 미참석
        ==> 찌든 떼 세탁 요령(1. 퍼지, 2. 뜨거운 물에 옥시크린 넣고 담겨 둠, 3, 헹굼, 4, 탈수) --> 주남이형 조언
21:00 종료
21:20 송도해수욕장(주남이형 차)
21:50 귀가
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.09.22(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:00 ~ 00:00

- 추석
07:30 기상  
08:10 작은 아버지, 대규
08:20 차례(수일 용돈: 만원)
09:20 대동 우방 203호
09:40 차례
12:30 이모집(경태 딸 낳음)
19:00 이모와 이모부 싸움
23:00 이모네집 제사
23:30 종료
23:50 귀가(두수형님 택시)
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.09.23(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:00 ~ 00:00

- 추석연휴
09:00 기상  
10:00 조식(령경 용돈: 만원)
12:00 큰누나네 귀가
22:40 포항집 출발
23:40 포항고속터미널(1시간 걸림)
00:15 포항출발
04:15 강남터미널(4시간 걸림)
05:10 4318 버스(고속터미널)
05:30 5524 버스(방배경찰서)
05:50 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.24(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30

- 현대해상 SM
1. 프로그램 분석

- 자동차보상( --> 사이버창구/보상창구)(http://www.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=) 
1. /cis-hi-b2c/java_src/hi/amends/servlet/ViewSagoListServlet.java 파일에서
public class ViewSagoListServlet extends JDFXecureServlet { 
	public void performTask(HttpServletRequest request, HttpServletResponse response) throws Exception {

		try {  
			// Interface 명 --> HI-HOME 계약자별보상처리현황(자동차)
			String ifId2 = "IR_HI-HOME_0094";

			CLMQ9200M01LBean insuCheck2 = new CLMQ9200M01LBean(); 
			bizVo = insuCheck2.getTraAccident(request, ifId2);
			clmq9213Vo = (CLMQ9213VO)bizVo.getBusinessVo();
		}
			
		boolean trState2   = bizVo.getService().getTRState();  // EAI 성공여부 상태
		String resultCode2 = bizVo.getService().getErrorCode().trim();
		String err_msg2    = bizVo.getService().getTRMessage().trim();				
		System.out.println("[/ViewSagoListServlet.java] [performTask()] [trState2]"+ trState2);

		if ( !trState2 ) {
			hdmf.jdf.util.MsgHandler.alertMsg(out,"", resultCode2);
			ScriptHandler.historyBack(out);
			return;
		}
 
		printJspPage(request, response, "/cybercenter/bosangcenter/bosangListView.jsp");  // 자동차보상
	}
}

2. /cis-hi-b2c/java_src/hi/cis/cisbean/amends/CLMQ9200M01LBean.java 파일에서
public class CLMQ9200M01LBean { 
	public CisResultObjVO getTraAccident(HttpServletRequest request, String ifId) throws Exception {
		try{
			////////////////////////////////////////////////////////////
			// 1. 요청/응답 업무객체 생성 및 데이터 설정
			////////////////////////////////////////////////////////////
			bizVo   = new CisResultObjVO();
			amendVo = new CLMQ9213VO();
			
			amendVo.setAgctPolHolderRegNo(strAgctPolHolderRegNo);	//계약자번호	
			amendVo.setFmDt(strFmDt);		//사고기준일	
			
			////////////////////////////////////////////////////////////
			// 2. 서비스 호출
			////////////////////////////////////////////////////////////
			OutboundProcess service = new OutboundProcess();
			service.setUserId(HiUtil.getCisUserId());
			
			////////////////////////////////////////////////////////////
			// 3. 결과 확인
			////////////////////////////////////////////////////////////
			if ( service.getTRState() ) {
				System.out.println("<br>================================");
				System.out.println("<br>CIS 호출 성공");
				System.out.println("<br>================================");

				HiUtil.nullToEmp(amendVo.getClass(), amendVo);
				
				//사고LIST
				CLMQ9214VO[] acdtList = amendVo.getClmq9214VOList();
				for(int i=0; i<acdtList.length; i++){
					HiUtil.nullToEmp(acdtList[i].getClass(), acdtList[i]);
					System.out.println("<br>사고LIST------------------------");
					System.out.println("<br>접수면책확인 : " + acdtList[i].getAcdtStat());
					System.out.println("<br>보종구분         : " + acdtList[i].getReqBzCat());
				}
				amendVo.setClmq9214VOList(acdtList); 
			}

			bizVo.setBusinessVo(amendVo);
			bizVo.setService(service);
		}	
		return bizVo;
	}
} 

3. /cis-hi-b2c/docroot/cybercenter/bosangcenter/bosangListView.jsp 파일에서
<jsp:useBean id="CLMQ9213VO"  class="hi.cis.vo.amends.CLMQ9213VO" scope="request"/>
<%	 
	CLMQ9214VO[] autoAcdlist = CLMQ9213VO.getClmq9214VOList();	//보상처리조회( 계약자 )
%> 
	<table id="ContractList" class="blue1 tm10"> 
		<tr>
			<th scope="col">선택</th>
			<th scope="col" class="pipe">접수번호</th>
			<th scope="col" class="pipe">상품명</th>
			<th scope="col" class="pipe">사고접수일</th>
			<th scope="col" class="pipe">사고일자</th>
		</tr> 
<%
	for(int i = 0; i < loopSize2; i++) {
		if(!autoAcdlist[i].getAcdtStat().trim().equals("접수면책")) {
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

- Eclipse에 Tomcat Server 플러그인 설치하기(실패)
http://blog.naver.com/ssari93?Redirect=Log&logNo=130086724100  --> C:\Program Files\Apache Software Foundation\Tomcat 6.0
<Context path="/tomcat1" reloadable="true" docBase="D:\eclipse\workspace\tomcat1" workDir="D:\eclipse\workspace\tomcat1\work" /> 
<Context path="/cis-hi-b2c_N" reloadable="true" docBase="C:\projects\cis-hi-b2c_N" workDir="C:\projects\cis-hi-b2c_N\work" /> 
http://localhost:8080/cis-hi-b2c_N/portal/index.jsp
==============================================================================================================

- 포항계 계비 송금 완료(회비(3~9월): 7만, 모임비: 2만)
농협: 072-02-255993 예금주: 권태정
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.25(토) 작업 ■■■■■■■■■■■■■■■■■■  
---> 08:30 ~ 18:30

- 휴식
09:00 기상 
14:30 버스(461번)
15:00 광속독 학원(2호선 방배역 효령 아파트 상가 3층)
15:20 학습 참관
16:00 귀가
==============================================================================================================

- 에어컨
삼성전자 하우젠 AF-TB151WNA, 15평형(1등급), 가격: 1,158,900원
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=75995678&service_id=elecdn
삼성전자 하우젠 AF-J15PWTH, 15평형(1등급), 가격: 1,190,000원
http://itempage.auction.co.kr/detailview.aspx?itemNo=A540428980
==============================================================================================================
					
■■■■■■■■■■■■■■■■■■ 2010.09.26(일) 작업 ■■■■■■■■■■■■■■■■■■  
---> 06:30 ~ 00:00 

▦조기축구
06:20 기상 
07:20 신구초등학교
07:30 게임(2:1 승)
08:50 게임(4:2 승)
10:00 게임(2:1 승)
11:20 종료 
11:40 문경세제(중식: 회비에서 지출)
13:00 종료 
14:00 귀가
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.27(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:20 ~ 18:30

- 현대해상 SM
- 뉴스(회사소개/PR센터/보도자료)
http://thome.hi.co.kr/company/ko/pr/press/press01_list.jsp?CATEGORY=NEWS
- 이벤트게시판(관리자 화면/홈페이지)
1. list 화면
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=LISTADMIN
==> /manager/home/event/event_list.jsp
2. view 화면
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=VIEWADMIN&ID=1017
==> /manager/home/event/event_view.jsp
3. insert 화면
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=WRITE
==> /manager/home/event/event_write.jsp
/servlet/hi.b2c.customer.servlet.EventServlet?MODE=INSERT
==> /manager/home/event/event_list.jsp
4. eidt 화면
http://tmgr.hi.co.kr/servlet/hi.manager.home.event.servlet.EventServlet?MODE=UPDATE&ID=1017
==> /manager/home/event/event_modify.jsp
/servlet/hi.b2c.customer.servlet.EventServlet?MODE=MODIFY
==> /manager/home/event/event_list.jsp
==============================================================================================================

--테이블 필드명 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT  A.TABLE_NAME 테이블명ID, B.COMMENTS  테이블명, --A.COLUMN_ID COL_SEQ,
              A.COLUMN_NAME 칼럼ID, C.COMMENTS 칼럼명, A.DATA_TYPE||'('|| A.DATA_LENGTH||')' 칼럼LEN
FROM ALL_TAB_COLUMNS  A, ALL_TAB_COMMENTS B, ALL_COL_COMMENTS C
WHERE A.OWNER = B.OWNER
  AND A.TABLE_NAME  = B.TABLE_NAME
  AND A.OWNER = C.OWNER
  AND A.TABLE_NAME = C.TABLE_NAME
  AND A.COLUMN_NAME = C.COLUMN_NAME
  AND A.TABLE_NAME ='SF_CCRSLT1'   --테이블명
 ORDER BY A.COLUMN_ID 
;
==============================================================================================================

- [센터 워크샾]
채널서비스센터 워크샾 일정: 2010.10.15 ~ 2010.10.16(금~토: 1박2일)
==============================================================================================================

- 조기회 주소록 작성 및 나눔 카페 등록
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.28(화) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:10 ~ 18:30

- 현대해상 SM
- 홈페이지 회사소개 수정 작업(요청ID: R20100927-0052)
-------------------------------------
개발유형 : 업무처리 화면 개선
분석 : 10.09.28 ~ 10.09.28(1)
설계 : 10.09.28 ~ 10.09.28(1)
구현 : 10.09.28 ~ 10.09.28(3)
테스트 : 10.09.29 ~ 10.09.29(2)
현업 담당자 : 김희진 사원
-------------------------------------
PMS 요청 현황(http://ppms.hi.co.kr:7001/PMS/request/request.html?CM=detail&isNew=N&readMode=R&msgDiv=SR&srMngNo=R20100927-0052&partId=IT2062)

가. Home  > 회사소개 > 투자자정보 > 경영정보 > 개요(배너추가) ==>  배너추가(증권거래소(KRX) 새창 띄우기)
http://thome.hi.co.kr/company/ko/ir/management/managementView02.jsp
나. Home > 상품공시 > 판매중인상품 하단 ==> 자동차할인할증 수정(팝업)
http://thome.hi.co.kr/popup/guidebook.jsp
다. Home > 상품공시 > 예금자보(image 변경) 
http://thome.hi.co.kr/company/ko/notice/products/productsView07.jsp ===> 장기보험, 해상보험 수정(2010년 4월 1일 기준)
라. 이미지 폴더(/images/newimages/company/)
/banner_findkrx.gif
/h3_publicproduct_rate09_02_des.gif
/h3_publicproduct_rate09_04_des.gif
==============================================================================================================

1. 요구사항 등록 - 윤홍진 과장(BA)  ====> 샘플
2. 일정 전달 : 작업의뢰 등록해 달라고 요청
* 간소화(10이하), 소형(10~30), 중형
3. My Portal : SDLC에서 표준공수 산정
4. WBS 산정 : 저장 후 일정확인요청
5. 일정 확인 : 확정
6. 일정 확정 했다고 알림
---------------------------------------------------------------- 
1. 작업의뢰 관리번호 및 제목 ====> 샘플
R20100316-0001 / 홈페이지 회원정제 작업의뢰
2. 일정
완료예정일: 2010-03-26
3. 요청유형: 업무처리 프로세스 개선
4. 요구사항 정의
- 2007년 이전 가입자 중 비계약자이며, 2007년 이후 로그인 하지 않은 회원 중
  전자금융거래에 동의하지 않은 회원을 삭제함
5. PMS에 등록된 시스템명: 홈페이지
==============================================================================================================

- 보상서비스 개선 사항(현업 담당: 유성철 대리)
1. 사고접수조회 요건 추가                                                                                                                                                        
- 접수완료시 현재 조회됨
- 가접수상태도 조회되게 변경(포탈쪽과 협의 필요)
- 보상처리조회: http://thome.hi.co.kr/servlet/hi.amends.servlet.ViewSagoListServlet?q=7

2. EDMS 연동하여 첨부파일 하이포탈로 전송
- 보상창구/자동차보상 --> 사진보기
http://thome.hi.co.kr/servlet/hi.amends.servlet.RII0AAGServlet?q=7F000001189E00FA8379DB0546E50F6CE5C32A2D600C1F#detailIFrmL

3. 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정(용량 부족이나 과부하시 줄일수 있음)
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
- 첨부파일 고객이 확인 가능(자동차 보험은 가능)
- Fax 전송(가상 번호 생성 후 확인: 포탈은 사용 중)

4. 관리자 장기보험 사고가접수 조회(http://tmgr.hi.co.kr/servlet/hi.manager.home.care.servlet.JubsuList)
- 조건별 조회 점검
- 조건에 모바일구분 추가하여 카운트 display
- e-겨울엔스키보험: http://tmgr.hi.co.kr/servlet/hi.manager.home.insu.servlet.ViewInsuList
==============================================================================================================

- 은행 계좌체크(http://thome.hi.co.kr/servlet/hi.amends.servlet.UEJ81AUServlet?q=7F000001189E00333B5075E33D4AA711399731B59E9C13)
/cis-hi-b2c/java_src/hi/amends/servlet/JubsuViewServlet.java  ===> 수정 필요
ptyKorNm3=시뮬레이션응
[/JubsuViewServlet.java] [performTask()] [getLtmca911VoList()[0]]시뮬레이션응[account_owner]무궁화삼천리화려강산
- 사고접수 완료 화면
/cis-hi-b2c/docroot/amends/damage/care/accident_take_process_06.jsp
==============================================================================================================

- 인터페이스 검증
I/F 검증계 http://10.2.11.102:52201/ems, I101688/I101688
I/F 운영계 http://10.3.11.71:52201/ems, I101636/I101636
메시지로그조회 > 메시지로그조회  ==> 인터페이스 ID: IR_HI-HOME_0089
==============================================================================================================
						 
■■■■■■■■■■■■■■■■■■ 2010.09.29(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30  --> CS 조회(안드로이드 모바일, 발표: 고유진 과장)

- 현대해상 SM
- 운영서버 적용 요청 ==> 홈페이지 회사소개 수정 작업(요청ID: R20100927-0052)
- 프로젝트 SDLC
배포: 이행완료일 전날 12시 이전까지 완료(현업 인수 테스트가 완료 되어야 함)
이행요청 결재 완료: 이행완료일 전날 14시 이전까지 완료되어야 함(팀장 결재)
- 이미지 등록(배포 서버 ==> IP: 10.18.5.74, 포트:, hihom_d1/hihom_d1)
==============================================================================================================

- Tortoise SVN 설치(IA1308/home1234)
HOME --> svn://10.81.18.197/hi-home
HOMEADMIN --> svn://10.81.18.197/homeadmin
==============================================================================================================

- 현대해상 IT자체감사 대비 소프트웨어 현황 조사
Inspector4.exe 설치 ===> 파일(F) --> 내보내기: 진태만_050761.xls
==============================================================================================================

- 보상서비스 개선 사항(현업 담당: 유성철 대리)
1. 사고접수조회 요건 추가                                                                                                                                                        
- 접수완료시 현재 조회됨
- 가접수상태도 조회되게 변경(포탈쪽과 협의 필요) 
2. 인터넷 접수 ===> 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정(용량 부족이나 과부하시 줄일수 있음)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4893
Rmultipart dir:::  /Appl/upload2/hib2c/data/sagojupsu/201009
==============================================================================================================
					 
■■■■■■■■■■■■■■■■■■ 2010.09.30(목) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:00 ~ 18:30

- 현대해상 SM
- 보상서비스 개선 사항(현업 담당: 유성철 대리) 
2. 인터넷 접수 ===> 장기사고접수 파일업로드 첨부파일 개수 증가(인터넷 접수)
- 현재 3개에서 최대 10개로 수정(용량 부족이나 과부하시 줄일수 있음) ==> 기본 3개(클릭으로 추가0
- 첨부파일 용량 증설 희망(500KB --> 1.2M)
- Loading 바(상태)
http://thome.hi.co.kr/amends/damage/care/accident_take_process_17_popup.jsp?seq=4905
Rmultipart dir:::  /Appl/upload2/hib2c/data/sagojupsu/201009
accident_take_process_17.jsp 파일 수정

--첨부파일 업로드 정보 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT * FROM SAGO_JUBSU 
WHERE CONTRACT_ID = 4893   --신청번호
;

--첨부파일 업로드 정보 수정 @@@@@@@@@@@@@@@@@@@@@@@@@@
UPDATE SAGO_JUBSU 
SET IMGUPLOAD1 = '211.jpg', IMGURL1 = '201009',
        IMGUPLOAD2 = '212.jpg', IMGURL2 = '201009',
        IMGUPLOAD3 = '213.jpg', IMGURL3 = '201009'
WHERE CONTRACT_ID = 4893   --신청번호
;

--- 칼럼 추가  ---------
ALTER TABLE SAGO_JUBSU ADD ( 
	IMGURL4		VARCHAR2(50),	--첨부파일경로4
	IMGUPLOAD4    VARCHAR2(100)	--첨부파일명4
);

COMMENT ON TABLE SAGO_JUBSU IS '사고 접수 정보';  
COMMENT ON COLUMN SAGO_JUBSU.IMGURL4 IS '첨부파일경로4';
COMMENT ON COLUMN SAGO_JUBSU.IMGUPLOAD4 IS '첨부파일명4';
==============================================================================================================

 - loading 창 설정(로딩 창 설정) ==>  progress bar(상태바)
/accident_take_process_17_popup.jsp 파일에서
<script type="text/JavaScript">
<!--
var modalWin = null;
var modallessChk = 0;
var modallessExcute = 0;
var param_p_page = "";

/*** modal 수에 따라 실제 조회 함수 호출 함수 */
function checkForm() {  
	var f = document.theForm; 
	if(f.img.value == ""){
		alert("첨부파일을 선택하세요");
		return;
	}

	/*** 조회시 loading창 표시 함수 */  
	if( modallessExcute++ == 0 ) { 
		var features = 'dialogWidth:400px; dialogHeight:120px; edig:sunken; resizable:No; status:no; scroll:no; center:Yes; title:No'; 
		modalWin = window.showModelessDialog("/common/modal_pop.jsp",window,features);  // loading창 표시
		stopShow = setInterval("waiting_searchDataSet()",1000);   //시간 인터벌 설정  
	}
}
 
function goPage(page) { 	
	var f = document.theForm;	
	f.submit();
	search_complate();  //조회시 loading 완료 후 초기화 함수 호출
}

/*** modal 수에 따라 실제 조회 함수 호출 함수*/
function waiting_searchDataSet() {    
	if( modallessChk++ == 1 ) {
	    goPage(param_p_page);  //실제 조회 함수 호출
	    modallessChk = 0;
	    clearInterval(stopShow);
	}
}
 
/*** 조회시 loading 완료 후 초기화 함수 */
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

<a href="javascript:checkForm()"><img src="/btn_savefileok.gif" alt="구비서류접수완료"/></a>
==============================================================================================================

- 밥 주문
밥코리아닷컴(www.bobkorea.com)
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 