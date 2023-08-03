

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.12) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.12.01(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:30 

- 하나은행 Prj
- 대외기관통보 
금융정보작업 
대외기관통보(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
첨부문서 첨부하기(http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=uploadRequest&imgKey=05150096500000130020080104144724516)  
첨부문서 첨부 실행(/dpfi_AttachFileUpload.do?method=upload)    
==============================================================================================================

- 16. 금융정보제공 eMail 발송관련 개선요청_대량파일 다운로드로 변경. 
-STATUS: LCT 
-DATE: 2008-11-11 
-반영예정일:  
-메뉴 : 요구기관정보제공 > RECORD CLICK! > 대외기관통보 
-내용 : 
이메일 발송전에 작성한 자료 사이즈가 20MB를 넘는 경우 SPAM BROKER에 의해 차단됨. 
자료 사이즈가 20MB를 넘는 경우 `대량 파일 다운로드`로 변경 

첨부파일 사이즈가 20MB를 초과하였습니다.  [09. 대용량 파일 다운로드]를 이용해 주십시오.  
  
- /MailSender.java 파일에서 
System.out.println("passwdzip.length() : "+passwdzip.length()); //test+++ 

long twentyMegaByte = 1024 * 1024 * 20; // 20Mbyte 
if (passwdzip.length() > twentyMegaByte) { 
setErrCode("2"); 
setErrMsg("20Mbyte 이상은 첨부할 수 없습니다."); 
throw new RuntimeException(getErrMsg()); 
}  
------------------------------------------------------------------------------------------------------------------- 
  
- /dpb015_detail.jsp 파일에서   
<img src="<bean:message key="image.url"/>/button/registration_ok_s3.gif" width="48" height="17" hspace="2" onclick="doneWithUpload()"> 
첨부완료  ==> 클릭하면 

function doneWithUpload() {     //첨부완료 이면 

}   
------------------------------------------------------------------------------------------------------------------- 

<img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif"  align="absmiddle" onclick="publishing()"> 
발송 ==> 클릭하면 
	function publishing(  ) {  //발송 이면(대외기관통보) 
		new Ajax.Request('/dpfi_LegacyInfoPublish.do?method=publish', '');
	} 
}  
  
- /DpfiLegacyInfoPublishAction.java  파일에서   
public ActionForward publish(ActionMapping mapping, ActionForm form, 
	HttpServletRequest request, HttpServletResponse response) { 

	if(executeImageDownload(imageList, fullPath, userAccount.getEmp_no())) {  
		wb = legacyJDAO.createWorkbook(wob, fullPath, userAccount.getEmp_no(), userAccount.getEmp_nm(), hostListMap); 
		
		if(wb!= null){ 
			result = mailSending(imageKey,mailTo,subject ,contents.toString(), fullPath,faxNo); //첨부파일 사이즈가 20Mb를 넘을 경우 "2"     

			if(result.equals("2")) {    
				result = "false첨부파일 사이즈가 20MB를 초과하였습니다.  `대용량 파일 다운로드`를 이용해 주십시오. ";  
			} 
		} 
	} 
} 
   
private String mailSending(String imageKey, String to,  String subject ,String contents, String fullPath, String tel) {  
	if(file.isDirectory()){ 
	fileList = file.list(); 
	for(int i = 0; i < fileList.length;i++){ 
	String tmp = fileList[i];   //파일명  
	tmp = tmp.substring(tmp.lastIndexOf(".") + 1,tmp.length());  //확장자 
	   
	if (tmp.equals("금융정보제공 내역.zip" )) { 
	continue; 
	} 
	if(!tmp.toUpperCase().equals("EXE")) ms.addFile(new File(fullPath +  fileList[i])); 
	} 
	} 
	if(!ms.send()) result = ms.getErrCode(); 

	return result; 
} 
------------------------------------------------------------------------------------------------------------------------------ 
  
var attch_file_size = $F('workObject.info_offer_mtd_cd');  	// 첨부파일 크기 
if (pubMthd == "05" && attch_file_size > 20) {  	// 인터넷 이면(메일) 
	alert("첨부 이미지가 20MB 이상이면  9.대용량을 다운로드를 이용해 주시기 바랍니다."); 
	return false; 
}   
==============================================================================================================

- 수정한 파일 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_request.jsp  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB050WorkfloAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/form/DPB050WorkfloForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiLegacyInfoPublishJDAO.java  
==============================================================================================================

- Orange에서 DB 실행(오렌지4) 
1. 쿼리문 선택(마우스로 원하는 쿼리 선택) 
2. Action --> Run Selection(Ctrl + L) 
==============================================================================================================

- 스캔 URL 
URL(AS IS)  --> http://111.15.1.4:5006/scanFxLogin.do 
URL(TO BE) --> http://111.15.1.7:5006/scanFxLogin.do 
0000130/036   ===> 인증암호: hana123  
==============================================================================================================

- map 이미지 작업 
DP015_금융정보제공_센타v1.0 DP020_금융정보제공_영업점자료요청v1.0  
DP030_금융정보제공_명의통보v1.0 DP040_금융정보제공_영업점v1.0 
DP050_금융정보제공_통보비용결재v1.3 
==============================================================================================================

- 금융정보 관련 테이블 
DEPO_WF_MASTER(마스터 Table), DEPO_WF_DETAIL(접수내역 Table) 
DEPO_INF_ETL_NTF(작성 내역 요약 Table), DEPO_WF_NM_NTF(통보대상자들 Table) 
DEPO_WF_NTFCOST(통보비용관리 Table), DEPO_ITEMS_SLT(출력 필드 보관 Table) 
DEPO_WF_HOSTDATA2(기타 CRM연동 Table), DEPO_WF_HOSTDATA1(수신,여신,수익,외화 관련 Table)  
DEPO_WF_HOSTDATA3(타시스템연동 Table),   
DEPO_WF_HOSTDATA4(통보대상자 Table)  ==> 통보대상자 임시 보관을 하는 Table  
DEPO_WF_HOST_ACCT(수납내역 Table), DEPO_WF_RCPT_DETAILS(수납여부 기록용 Table) 
DEPO_WF_RET_NTF(발송내역 Table), COMM_CM_HISTORY(공통_CM_이력 Table)  
COMM_CM_SAM_HISTORY(계정계 수표정보 Table), COMM_CM_URL_HISTORY(작성자 연동 요청내역 Table)   
COMM_CM_HISTORY(공통_CM_이력 Table) COMM_CM_URL_FUNC(연계함수 Table) 
COMM_CM_JIKMU_EMP(직무별 취급자 Table) COMM_CM_JIKMU(직무정보 Table) 
COMM_CM_BUJE_LOG(부재 로그 Table) COMM_CM_USER(공통사용자 Table) 
COMM_CM_USER_ROLE(사용자별 직무 Table) 
COMM_CM_MENU(메뉴목록 Table)   
COMM_CM_PROGRAM(프로그램목록 Table) COMM_CM_PROGRAM_ROLE(프로그램 롤 Table)  
==============================================================================================================

- 신사조기회 회비 납부 
국민 465101-01-187230   예금주: 박하연  ==> 24만원(2008년 분) 
==============================================================================================================

- 네이트온(nate On) 아이디(이메일): * 
이은화 과장: *@*.* *(*) 
배상범 과장: *@*.* 017-228-6646(*) 
문태용: *@*.* 010-2846-2776(*) 
임호수: *@*.* 016-402-5479(*) 
황현용: *@*.* 010-6848-2000(*) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.02(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 20:00   --> 맥주집(이과장): 이과장(18번째) ==> 전화 안 받아서 찾아감(농담에 삐짐) 

- 하나은행 Prj
- 부재자등록관련 오류수정 
부재관리(http://111.16.1.128/ad_bujelog_AdminBujeLogListAction.do) 
부재등록(http://111.16.1.128/ad_bujeinput_AdminBujeInputAction.do?method=inputList) 
부재해제(http://111.16.1.128/ad_bujelog_AdminBujeLogAction.do?method=releaseAdminBujeLog&bujeEmpNo=1810521)  
대직자선택(http://111.16.1.128/CmBujeDajicAction.do?method=list&title=대직자선택&empNo=1710283) 

COMM_CM_JIKMU_EMP(직무별 취급자 Table) COMM_CM_JIKMU(직무정보 Table) 
COMM_CM_BUJE_LOG(부재 로그 Table) COMM_CM_USER(공통사용자 Table) 
------------------------------------------------------------------------------------------------ 

--- 대직일자 칼럼 추가  --------- 
ALTER TABLE COMM_CM_BUJE_LOG ADD (  
DEJIK_DT CHAR (8), --대직일자 
DEJIK_DT2 CHAR (8) --대직일자2 
); 
------------------------------------------------------------------------------------------------ 

- /admin_buje_input_list.jsp 파일에서 
<SCRIPT LANGUAGE="javascript" SRC="<bean:message key="script.url"/>/CoCalendar_2.js"></SCRIPT>  
<script language="JavaScript"> 
<!--   
var cal2 = new CalendarPopup();   // Calendar 다시 만듬 
cal2.ShowYearNavigation(); 
//--> 
</script> 

<html:text name="bujeInput" property="dejik_dt_fr" size="10" maxlength="10" />  <-- 대직일자 -->  
<IMG SRC="<bean:message key="image.url"/>/button/date.gif" ALIGN="absmiddle" CLASS="hnd"  
onClick="cal2.Select(document.adminbujeInputForm.dejik_dt_fr, 'dejik_dt_fr', 'yyyy-MM-dd')"> 
------------------------------------------------------------------------------------------------ 
  
/depo_project/src/depoEar/depoWebApp/com/hana/depo/admin/body/cm_buje_dajic.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/action/CmBujeDajicAction.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/form/AdminBujeInputForm.java  --> 제외  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/common/admin/model/AdminBujeInputModel.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.03(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 21:30 

- 하나은행 Prj
 - 금융정보제공 요구기관정보제공(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - 대외기관통보(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
요구기관 정보제공방법 선택: 인터넷: /첨부파일 사이즈가 20MB 초과 이면 --> 메일 발송 불가   
[WF_NO]37B1CD8CBA8811DCA63D0003BA29841F  ==>  9999999  --> 0000135(팀장결재) 

 - /dpb015_detail.jsp 파일에서   
 <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif"  align="absmiddle" onclick="publishing()"> 
발송 ==> 클릭하면 
function publishing(  ) {  //발송 이면(대외기관통보) 
new Ajax.Request('/dpfi_LegacyInfoPublish.do?method=publish',  
{ 
var tmp = response.split(''); 
if(tmp[0] == 'false' && tmp[1] != ''){   //첨부파일 사이즈가 20MB 초과 이면   
if(confirm('메일 발송 중 첨부파일 용량이 20MB 이상이 첨부되어 발송이 실패 했습니다.\n  
대용량 파일 다운로드를 선택하시겠습니까?')){ 
$('workObject.info_offer_mtd_cd').selectedIndex = 9;   //09. 대용량 파일 다운로드 콤보 박스  
} 
}  
} 
}  
------------------------------------------------------------------------------------------------------ 
   
 - 수정할 파일 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb015_detail.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiProviderInformListJDAO.java 
==============================================================================================================

- 10월중 금융정보EDMS 통계자료 
금융정보EDMS 제공건수: 3,244 건 
금융정보EDMS 통보건수: 3,903 건   
==============================================================================================================

-- FILE NET Workplace(BPM) 
1. http://111.18.1.56:8080/WorkplaceDP   ==> peadmin / peadmin 
2. Admin ==> Process Administrator ==> Workplace(새창 띄우기) 
Search 
Look for: Workflows 
Value: 37B1CD8CBA8811DCA63D0003BA29841F -> Insert: 클릭-> Find Now: 클릭 
데이타: 마우스 오른쪽 클릭(Open Item -> Tracker) --> Open Tracker 
------------------------------------------------------------------------- 
3. 반송 
007_부장결재(Status가 In Process 이면) 클릭 ==> Complete Work(네모체크 이미지) 클릭 
Response: 반송 -> Applay -> OK 
==============================================================================================================

- 교보 세팅 자료 전달 
KBLCM.zip을 공형근 차장(mymap.*@*.*)에게 전달(이은화 과장) 
진태만 *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.04(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 19:10  --> 이승재 과장 투입(문서고), 하나은행 출입카드 비용 선납(2만원), 배과장 만남(고기집, 맥주,여관) 

- 하나은행 Prj
 - 금융정보제공 요구기관정보제공(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - 대외기관통보(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F&queueName=Inbox&method=detail&)  
요구기관 정보제공방법 선택: 인터넷: /첨부파일 사이즈가 20MB 초과 이면 --> 메일 발송 불가   
[WF_NO]37B1CD8CBA8811DCA63D0003BA29841F  ==>  9999999  --> 0000135(팀장결재) 
==============================================================================================================

- 통보유예기간 6개월 연장  
--통보유예기간 수정(금융정보 접수상세)  @@@@@@@@@@@@@   
UPDATE DEPO_WF_DETAIL  
SET  GET_TIME='20090610',    --통보유예 
GET_TIME_ASSIGN='6'   --통보유예지정(0: 없음, 1:1개월, 2:2개월, 3:2개월, 6:개월) 
WHERE WF_NO='34DA1AEE35EC11DDAB4F0003BA0D8E19' 
   
--통보유예기간 수정(수신_WF_마스터)  @@@@@@@@@@@@@   
UPDATE DEPO_WF_MASTER  
SET NTF_DATE='20090610'   --통보예정일  
WHERE WF_NO='34DA1AEE35EC11DDAB4F0003BA0D8E19'  
==============================================================================================================

- SCGetGrade 에러 
/dpb015_report.jsp 파일에서 
//var isAuthOK  = SCGetGrade.IsAuthority("HNBK-76CA-7191-3670-0001","0000027", "3","금융정보제공문서");  
var isAuthOK  = "1" //TEST 
==============================================================================================================

- 제공정보작성 리스트 조회(박응용 과장) 
금융정보제공 타시스템 연계(http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=X&pop=crm) 
/dpb015_crm.jsp 
공동망 거래내역  ==>  ▷  상대계좌로 기간별 거래내역 조회: 체크 
COMM_CM_URL_HISTORY  
연계구분(fetch_gubun) ==> (08:공동망거래내역, 21:수신, 22:여신, 23:외환, 24:수익증권) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.05(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 19:00  --> 부산복집(충무로역 근처), 맥주(김차장, 박과장, 심과장, 류과장, 하나은행 최광열 대리), 태용자고 감 

- 하나은행 Prj
- 금융정보 기능개선 진행상황 및 테스트(현업 테스트) 
1) 통보비용->결재상신 수납보고서작성시 오류수정 
2) 통보비용 엑셀다운로드 오류수정 
3) 통보비용 결재상신 기능개선 
4) 결재목록 통보비용 오류 
5) 영업점 접수번호 미생성 확인요청 
-> 접수번호는 결재시 생성되며 요청하신 건은 결재전인 건으로 확인하였습니다. 
전체 접수대상중 접수번호가 생성되지 않은 목록 전달하였으며 접수번호 미생성건을 확인하기 위해 
로그를 출력중임.  
6) 전표 및 영업점 요청목록 중 완료건은 요청리스트에서 제외  
==============================================================================================================

---  칼럼 추가  --------- 
ALTER TABLE COMM_CM_BUJE_LOG ADD (  
DEJIK_DT CHAR (8), --대직일자 
DEJIK_DT2 CHAR (8) --대직일자2 
); 
----------------------------------------------------------------------- 

--  칼럼 수정  --------- 
ALTER TABLE COMM_CM_BUJE_LOG MODIFY (  
   CART_DT CHAR(8)   --장바구니 일자 
 ); 
----------------------------------------------------------------------- 

 --- 칼럼 삭제  --------- 
ALTER TABLE COMM_CM_BUJE_LOG  DROP COLUMN CART_DT RETURNACCEPTDATE  
-- ; 
==============================================================================================================

- 조화 보냄 
송정철 아벗님 상: 조화 보냄(6만 3천원) 
리본문구: 근조 삼가고인의 명복을 빕니다.(배송 안내 이미지 처럼 일부 한자로 요망) 
받는 분: *  받는 일자:즉시 
포항시 남구 대잠동 270-1 포항 성모병원 영안실 송정철  
부모님상: 50만원(43만원 송금) 
농협: 717109-52-027262( 71710952027262 ) 예금주: 심정미(주남이형 형수) 43만원 송금 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.06(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:40 ~ 18:00---> 토요근무 격주 운영(점심: 서달원 차장님이 사줌), 이과장집(19번째): 맥주 사감 

- 하나은행 Prj
 - 금융정보제공 요구기관정보제공(http://127.0.0.1:9002/dpfi_ProviderInformList.do) 
 - 대외기관통보(http://127.0.0.1:9002/DP015_Workobject.do?workObjectId=37B1CD8CBA8811DCA63D0003BA29841F)   
- 정보제공방법 인터넷(Email)에서 대용량 파일 다운로드로 변경 
UPDATE DEPO_INF_ETL_NTF   
SET  INFO_OFFER_MTD_CD = '09', --정보제공방법(01.등기우편, 02:일반우편, 03:FAX, 05:인터넷(Email), 09:대용량 파일 다운로드) 
INFO_OFFER_MTD_SUMM = NULL  
WHERE WF_NO =  '37B1CD8CBA8811DCA63D0003BA29841F' 
AND INFO_OFFER_MTD_CD = '05'   
--; 
==============================================================================================================

- 반송내역 대량파일 UPLOAD 기능 
명의통보내역(http://127.0.0.1:9002/dpfi_ReturnNtfInform.do?method=main)  
1. 하나은행 파일 업로드(/dpfi_return_ntf_file_upload.jsp) 
2. /DpfiReturnNtfFileUploadAction.java 파일에서 
public void processUploadedFileItem(HttpServletRequest request, FileItemStream item) {  
batchquery = makeNtfQuery();   //명의통보서를 수정하는 함수(3.명의인 통보(+등기번호)로 변경) 
pstmtUp = workfloJDAO.getConnection().prepareStatement(batchquery ); 

// 중복 혹은 데이터가 있는지 확인   
String query = "SELECT COUNT(IDX) X FROM DEPO_WF_RET_NTF   \n";  
query += " WHERE TRIM(POST_NUM) = ?          \n";   //우편번호 
query +=  "    AND TRIM(NM) LIKE ?          \n"; //성명  
query +=  "    AND POST_STATUS IN ('00','10') ";  
log.debug("[processUploadedFileItem()] [query]"+ query); 

ResultSet rs = pstmt2.executeQuery(); 

if (rs!= null && rs.next()) {  
int xCnt = rs.getInt("x"); 
log.debug("[processUploadedFileItemReturn()] [중복 데이타 수(반송)] ==> [xCnt]"+ xCnt); 

if (xCnt ==1>  {   //idx값이 1이면(같은 idx값 1개만 존재 ==> 등기번호를 업데이트 할 수 있음)  
pstmtUp.setString(idx++, afterRow[4]);  //등기번호 
//pstmtUp.setString(idx++, afterRow[6]);  //엑셀 등록일자  
pstmtUp.setString(idx++, "20081206");  //엑셀 등록일자(20081206) 
pstmtUp.setString(idx++, afterRow[1]);  //우편번호 
pstmtUp.setString(idx++, afterRow[2]+"%");  //성명   

pstmtUp.addBatch(); 
} 
}  
} 

private String makeNtfQuery() {   
sql  = "  UPDATE DEPO_WF_RET_NTF \n"; 
sql += "  SET   POST_NO = NVL(?, ' '),     \n";   //등기번호 
sql += "     EXCEL_UPLOAD_DT = ?, \n";   //엑셀 등록일자 
sql += "      POST_STATUS = '20'       \n"; //통보상태(20: 3.명의인 통보(+등기번호)) 
sql += "  WHERE TRIM(POST_NUM) = ? \n";  //우편번호 
sql += "   AND TRIM(NM) LIKE ?          \n"; //성명  
sql += "    AND POST_STATUS IN ('00','10')   ";  
log.debug("[makeNtfQuery()] [sql]"+ sql); 

return sql; 
}  
---------------------------------------------------------------------------------------------------------- 

- 웹로직 에러(2,059건을 돌리면 에러가 남) 
에러내용: 2008. 12. 9. 오전 8시 14분 24초 KST> <Warning> <WebLogicServer> <BEA-000337>  
<ExecuteThread: '14' for queue: 'weblogic.kernel.Default' has been busy for "648" seconds working on the  
equest "Http Request: /dpfi_ReturnNtfFileUpload.do",  
which is more than the configured time (StuckThreadMaxTime) of "600" seconds.>  
원인: 해당 메세지는 /media//visual.swf 라는 요청이 지정된 10분(600초)동안이나 끝나지 않았다는 것이고, 
가용한 Thread가 없다는 것을 나타납니다. 그러나, 위 메세지만으로 확인할 수 있는 사항은 대단히 
적습니다.   
Thead time out 개념의 설정 값이 있는 데, 이것을 Stuck Thread Max Time 이라 하고 default 값은 600초입니다..  
간략하게 설명하자면, 하나의 thread가 하나의 request를 받고서 뭔가 처리를 하는 데..그 시간이 600초가  
넘어가면 주신 에러와 같은 로그가 나타나게 됩니다. 웹로직에서는 이런 경우 thread를 refresh 해주는  
기능이 없기 때문에, 단지 이렇게 시간을 정해 놓고, 로그 상에서 warning을 보여주게 됩니다. 
아시고 계시겠지만, hang 상태에서는 thread dump를 생성해서 어떤 application에서 hang을 유발한 건지  
확인을 하는 것이 좋고, 최대한 빨리 웹로직을 재구동하는 게 가장 좋은 조치 방법입니다. 
해결책: 건수를 2,000개씩 끊어서 저장할 것(프로그램 실행 시간이 10분이 안넘게 할 것) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.07(일) 작업 ■■■■■■■■■■■■■■■■ 
---> 08:50 ~ 22:30  
 
- 이과장집
07:00 기상(장위1동 이과장집): 생리함 ==> 축구 장비 챙겨 왔는데 축구하러 못 감 
13:00 점심(알덮밥): 배달
14:00 바람의 화원(재방송): 2회
16:00 영화 다운 받아 봄
22:40 이과장집 출발(고구마 삶은 거 얻어 옴)
23:50 귀가
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.08(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 22:30  --> 늦게 일어나 비 맞고 출근 

- 하나은행 Prj
- 긴급반영 요청 
긴급_수신_운영_진태만_20081208_01.xls 
==============================================================================================================

- 긴급반영 요청 파일 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb015_detail.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_request.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_appv.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb050_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb060_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpb/body/dpb070_list_excel.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB050WorkfloAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/form/DPB050WorkfloForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB050WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB060WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiLegacyInfoPublishJDAO.java 
==============================================================================================================

- CRM 조회 행번 수정 
앞2자리 행번이 00 이면 김태석차장님(1011235) 행번으로 조회 수정 
protected final String CRM_USERID = "1011235"; 
//if ( firstChar.equals("80")  firstChar.equals("00") ) {  //앞2자리 행번이  00 이면(00: 테스트 행번) 
if ( firstChar.equals("00")) {  //앞2자리 행번이  00 이면(00: 테스트 행번) 
workfloForm.setUserid(CRM_USERID );  //행번(1011235) 
} 

- 긴급반영 요청 
(CRM 조회 행번 수정: 앞2자리 행번이 00 이면 김태석차장님(1011235) 행번으로 조회 수정) 
긴급_수신_운영_진태만_20081209_01.xls, 긴급_수신_운영_진태만_20081208_02.xls 

- 긴급반영 요청 파일 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB015WorkfloCrmAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/action/DPB015WorkfloCrmOJJAction.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB015WorkfloJDAO.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiBondLinkAction.java 
==============================================================================================================

- 자료제공 방법 개선(Batch 전송)   
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

/DpfiLegacyInfoPublishAction.java 파일에서 
public ActionForward publish_TEST()  {  //발송 이면(대외기관통보) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //메일 발송 
faxSending(fullPath, filename); //Fax 발송 
} 

public ActionForward publish()  {  //발송 이면(대외기관통보) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //메일 발송 
faxSending(fullPath, filename); //Fax 발송 
} 
--------------------------------------------------------------------------------------------------------- 

- Agent(Batch 전송)  ==> 실시간 Batch 
/URLAgent.java 
--------------------------------------------------------------------------------------------------------- 

- crontab 개요 ==> 시간대 설정 Batch 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch/DPMain.java 
  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfibatch/PublishLaunch.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
------------------------------------------------------------------ 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch 
com.hana.depo.dpfibatch.PublishLaunch 
  

telnet 111.15.20.23 fnsw/fnsw_dev  
[fnsw@devpsvr1]/fnsw > crontab -l   
00 01 * * * /usr/bin/ksh /vwapp/dpbatch/startPublishbatch.sh 
  
[fnsw@devpsvr1]/fnsw > vi /vwapp/dpbatch/startdpbatch.sh  
"/vwapp/dpbatch/startdpbatch.sh" 15 ??, 347 -+??  
#!/bin/sh 
# $Id$ 
# Batch Agent 

JAVA_HOME=/fnsw/jsdk1.4.2_04 

DPBATCH_CLASSPATH=.:/vwapp/lib/ojdbc14.jar:/fnsw/bin/pw.jar:/vwapp/dpbatch/dpbatch.jar 

DPBATCH_INI=/vwapp/dpbatch/dpbatch.ini 

JAVA_OPTIONS=-cp 
JAVA=$JAVA_HOME/bin/java 

$JAVA $JAVA_OPTIONS $DPBATCH_CLASSPATH com.hana.depo.dpbatch.DPLaunch $DPBATCH_INI 1>  
dpbatch.out 2> dpbatch.err    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.09(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 19:00  --> 하나은행 Prj 회식(한국1회관(다동별관 뒤쪽): 19:00 ~ 22;00) 

- 하나은행 Prj
- 자료제공 방법 개선(Batch 전송)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

<%  
//out.println("[/dpb015_detail.jsp] [getMethod()]"+ form.getMethod() +"[책임자_승인일자]"+ form.getWorkObject().getAppr_date()); 
if ((!form.getWorkObject().getAppr_date().trim().equals("")) && (form.getMethod().equals("publish"))) {  //발송 조건이 되면(책임자_승인일자 존재) %>                   
                    <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif" align="absmiddle" onclick="publishing()"> <!-- 발송, 출력 이미지 --> 
<% } %>   
   
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? "); 

-- 금융정보 대외기관통보 조회(대외기관통보 Tab:6번째)  ===> FAX, 이메일 발송이 안된 것 
SELECT  INFO_OFFER_MTD_CD AS 요구기관_정보제공방법,  --정보제공방법(01.등기우편, 02:일반우편, 03:FAX, 05:인터넷(Email), 09:대용량 파일 다운로드) 
INFO_OFFER_MTD_SUMM AS 상세방법, OFFER_MEMBERS, EMAIL_STATUS, FAX_STATUS, B.APPR_DATE AS 승인일자,  
OFFER_REQ_ACCT_CNT, PRT_DOC_TPL_MGR, PRT_SUMM_TPL_MGR,  
MODIFIER, MODIFY_DATE, PRE_OFFER_DATE,  
DISUSE_YN AS 작업진행정도  --작업진행정도(null:처음, D:작업시작, N:작업진행중, Y:작성끝(통보대상자 작성완료:책임자 상신가능))  
FROM DEPO_INF_ETL_NTF A, DEPO_WF_MASTER B    --작성 내역 요약 Table  
WHERE A.WF_NO IS NOT NULL 
AND A.WF_NO = B.WF_NO 
AND A.WF_NO = C.WF_NO  
AND C.EMAIL_STATUS IS NULL 
AND C.FAX_STATUS IS NULL 
AND A.APPR_DATE IS NOT NULL    -- 승인일자 
AND C.INFO_OFFER_MTD_CD IN ('03', '05') --정보제공방법( 03:FAX, 05:인터넷(Email))  
--; 
==============================================================================================================

/DpfiLegacyInfoPublishAction.java 파일에서 
public ActionForward publish_TEST()  {  //발송 이면(대외기관통보) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //메일 발송 
faxSending(fullPath, filename); //Fax 발송 
} 

public ActionForward publish()  {  //발송 이면(대외기관통보) 
result = mailSending(imageKey, mailTo, subject, contents.toString(), fullPath, faxNo); //메일 발송 
faxSending(fullPath, filename); //Fax 발송 
} 
--------------------------------------------------------------------------------------------------------- 
  
-  시간대 설정 Batch 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpbatch/DPMain.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfibatch/PublishLaunch.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiLegacyInfoPublishAction.java 
--------------------------------------------------------------------------------------------------------- 

telnet 111.15.20.23 fnsw/fnsw_dev 
[fnsw@devpsvr1]/fnsw > crontab -l 
00 01 * * * /usr/bin/ksh /vwapp/dpbatch/startPublishbatch.sh 

[fnsw@devpsvr1]/fnsw > vi /vwapp/dpbatch/startPublishbatch.sh 
#!/bin/sh 
# $Id$ 
# Batch Agent 

JAVA_HOME=/fnsw/jsdk1.4.2_04  
DPBATCH_CLASSPATH=.:/vwapp/lib/ojdbc14.jar:/fnsw/bin/pw.jar:/vwapp/dpbatch/publishBatch.jar 

DPBATCH_INI=/vwapp/dpbatch/dpbatch.ini 

JAVA_OPTIONS=-cp 
JAVA=$JAVA_HOME/bin/java 

$JAVA $JAVA_OPTIONS $DPBATCH_CLASSPATH com.hana.depo.dpfibatch.PublishLaunch $DPBATCH_INI 1>  
publishBatch.out 2> publishBatch.err  
==============================================================================================================

- chmod: 파일 사용권한 조정 
     -    - - -       - -- - -- 
파일타입  소유자(owner) 소유그룹(owner) 다른 사용자(others)   
   읽기(r:4), 쓰기(w:2), 쓰기(x:1) 
 -------------------------------------------------------------------------------------- 

기호 표현은 [ugoa][+-][rwx] 이다. 이것은 u (user=file owner), g (group), o(others), a(all=u and g and o)와  
권한을 더할지 삭제할지를 결정하는 + 또는 - 그리고 r(read) w(write) x(execute)에서 비롯된 권한 기호 표현의  
문자로 표현된 것이다. "file.txt"을 모두(all)에게 쓰기 가능(writable)하게 하기 위해서는: 
> chmod a+w  file.txt    
>chmod 666   file.txt    
-rw-rw-rw-   1 alice   users   79 Jan 1 16:14 file.txt 
  
> chmod 755   mydir    
drwxr-xr-x    2 alice    users    1024 Dec 31 22:32 mydir 

> chmod 666   file.txt    
-rw-rw-rw-   1 alice   users   79 Jan 1 16:14 file.txt 

> chmod 755   startdpPublishbatch.sh    ===> 실행 권한 주기 
-rwxr-xr-x   1 fnsw     fnusr        368 Dec  9 15:44 startdpPublishbatch.sh* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.10(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00  --> 이과장집(20번째): 맥주(얻어 먹음), 호떡 사감 

- 하나은행 Prj
 - 자료제공 방법 개선(Batch 전송)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 

<%  
//out.println("[/dpb015_detail.jsp] [getMethod()]"+ form.getMethod() +"[책임자_승인일자]"+ form.getWorkObject().getAppr_date()); 
if ((!form.getWorkObject().getAppr_date().trim().equals("")) && (form.getMethod().equals("publish"))) {  //발송 조건이 되면(책임자_승인일자 존재) %>                   
                    <img id="pub_img" src="<bean:message key="image.url"/>/button/send_s.gif" align="absmiddle" onclick="publishing()"> <!-- 발송, 출력 이미지 --> 
<% } %>   
   
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? ");  
==============================================================================================================

- 영업점(DP040) 통보비용 tab에 센터송금계좌가 미 존재   
접수계좌번호(accept_acct_no)가 존재하지 않으므로 센터송금계좌가 안 보여줌 
(명의 확정시에만 접수계좌번호 생성)  
통보비용(http://111.16.1.128/DP040_Workobject.do?workObjectId=05EA1634C50D11DDAB620003BA0D8E19&method=search&)  
==============================================================================================================

 -/DPB040WorkfloAction.java 파일에서 
public ActionForward detail() { 
// 명의 확정시에만 계좌번호 생성 
if (  !workfloForm.getWorkObject().getRpt_omit_yn().equals("Y")  
  &&  workfloForm.getWorkObject().getAccept_acct_no().equals("") )  {  
String vacct = vacctJDAO.getAccount( workfloJDAO.getConnection(), workObjectId 
  , workfloForm.getWorkObject().getMapId(), workfloForm.getWorkObject().getOrg_type() 
  , workfloForm.getWorkObject().getCr_br_cd()) ;  
  
workfloForm.getWorkObject().setAccept_acct_no( vacct);   //접수계좌번호 
} 
} 

 - /DpfiVirtualAccountJDAO.java 파일에서 
public String getAccount(Connection conn, String wfno, String mapcd, String org_type,  String br_cd) throws DatabaseException { 
String vacct = "";  
if ( org_type.equals("02")  org_type.equals("03")  org_type.equals("06") ) { 
 vacct = getFixAccount(conn,wfno, org_type); 
} 
else { 
 vacct = getOneAccount(conn,wfno); 
} 
  
return vacct; 
} 

//법원,경찰청, 국세청 계좌번호를 가져온다  (이 세곳은 고정 가상계좌를 사용  = 02,03,06)  
public String getFixAccount(Connection conn, String wfno, String org_type) throws DatabaseException { 
String sql = "select vacct  from  DEPO_WF_HOST_VACC where org_type = ? and rownum = 1 "; 
String sql = "select vacct  from  DEPO_WF_HOST_VACC where org_type = ? and rownum = 1 "; 
}2008-12-10 

//이미 할당된 계좌를 초기화 한다 (단 임의 할당 계좌-"구분코드 3"-만 해당된다.  
public String getOneAccount(Connection conn, String wfno) throws DatabaseException { 
String sql = "SELECT VACCT  FROM  DEPO_WF_HOST_VACC WHERE ORG_TYPE = ? AND ROWNUM = 1 ";  
}   
----------------------------------------------------------------------------------- 

- /dpb040_detail.jsp 파일에서 
센터송금계좌: <html:text name="DPB040WorkfloForm" property="workObject.accept_acct_no" size="20" readOnly="true"/>  
-----------------------------------------------------------------------------------  

최광열[하나은행정보공통팀] 
05EA1634C50D11DDAB620003BA0D8E19 
최광열[하나은행정보공통팀] 
금융건인데요.. 
최광열[하나은행정보공통팀] 
1020950 228 지점에.. 4960 공문이거든요. 
최광열[하나은행정보공통팀] 
통보비용에.. 송금계좌가 없네요.. 
==============================================================================================================

1. 유가환급금 신청(국세청 1544-2030) ==> 등기우편으로 보냄 
금천 세무서 별관(등기).... 사업자 원천징수 영수증  ===> 11만원 
http://s.nts.go.kr/menu/main/main1.asp?tax_code=119 
(151-869) 서울 관악구 신림1동 438-2 (문성터널 옆) 유가환급금 담당자앞 대표전화 : 02-850-4200 

나라정보기술 T) 554-4940: 요청(완료): 2,3,4,5월 
클라우드 나인 T) 774-0031: 요청(완료): 8, 9, 10월 
한우리 T) 2205-0354: 요청(완료): 11, 12월 ==> 총 9개월 
보낼 곳 ==> 하나은행 명동 허브 5층 Fax)02-331-3669, Tel)02-331-3377(내선) 
- 하나은행 명동 허브 주소 
(100-021) 서울특별시 중구 명동1가 59-5 명동HUB B/D 5F EDMS팀  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.11(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 19:00  --> 삼성 노트북 고장(숙대옆 근처 삼성 AS 센타에 맡기고 옴, OS 재설치): 이발 

- 하나은행 Prj
 - 자료제공 방법 개선(Batch 전송)  
http://127.0.0.1:9002/dpfi_LegacyInfoPublish.do?method=publish_TEST 
  
-- 금융정보 대외기관통보 조회(대외기관통보 Tab:6번째)  ===> FAX, 이메일 발송이 안된 것 
SELECT  INFO_OFFER_MTD_CD AS 요구기관_정보제공방법,  --정보제공방법(01.등기우편, 02:일반우편, 03:FAX, 05:인터넷(Email), 09:대용량 파일 다운로드) 
INFO_OFFER_MTD_SUMM AS 상세방법, OFFER_MEMBERS, EMAIL_STATUS, FAX_STATUS, A.APPR_DATE AS 승인일자,  
OFFER_REQ_ACCT_CNT, PRT_DOC_TPL_MGR, PRT_SUMM_TPL_MGR,  
MODIFIER, MODIFY_DATE, PRE_OFFER_DATE,  
DISUSE_YN AS 작업진행정도  --작업진행정도(null:처음, D:작업시작, N:작업진행중, Y:작성끝(통보대상자 작성완료:책임자 상신가능))  
FROM DEPO_WF_MASTER A, DEPO_WF_DETAIL B, DEPO_INF_ETL_NTF C  
WHERE A.WF_NO IS NOT NULL 
AND A.WF_NO = B.WF_NO 
AND A.WF_NO = C.WF_NO  
AND C.EMAIL_STATUS IS NULL 
AND C.FAX_STATUS IS NULL 
AND A.APPR_DATE IS NOT NULL    -- 승인일자 
AND C.INFO_OFFER_MTD_CD IN ('03', '05') --정보제공방법( 03:FAX, 05:인터넷(Email))  
--; 

-- 발송 완료 후 FAX, 이메일 발송 처리 
query.append(" UPDATE DEPO_INF_ETL_NTF SET "); 
if(flag.equals(DpfiLegacyInfoPublishJDAO.EMAIL)) query.append(" EMAIL_STATUS = ? "); 
else if(flag.equals(DpfiLegacyInfoPublishJDAO.FAX)) query.append(" FAX_STATUS = ? ");      
query.append("\n  WHERE WF_NO = ? "); 
--;  

F90651CEB52911DCA63D0003BA29841F 
561BEB20BDAA11DCA63D0003BA29841F 
A7C7D674D87011DCA6470003BA29841F 
F11785F8DF6A11DCA6470003BA29841F 
10DDABBADFA711DCA6470003BA29841F 
DC3EB8BEF09911DCA6480003BA29841F 
==============================================================================================================

- 자료제공 방법 개선(dpfibatch Batch: Java Application으로 만듬)  ==> D:\java_projects\dpfibatch 로 세팅 
1.  java 실행 방법 
Run --> Run Configurations --> Java Application  --> PublishLaunch 클릭 ==> Arguments Tab  
Program arguments: D:/java_projects/dpfibatch/dpfibatch.ini  ==> Run: 클릭 
2. jar 파일 내용물 확인 
devpsvr1(fnsw)/vwapp/dpbatch> jar -tvf dpPublishBatch.jar  
==============================================================================================================

- log4j: 로그 설정 
log4j:WARN No appenders could be found for logger (org.apache.struts.util.MessageResourcesFactory). 
log4j:WARN Please initialize the log4j system properly. 
원인: 설정파일인 "log4j.xml" 혹은 "log4j.properties"를 classpath 내에 넣는다.   
==============================================================================================================

 - 삼성노트북 센스 하드 에러(15:00 ~ 18:00) 
현상: 이클립스 응답 없음을 강제종료하고 재시작을 하니 하드 읽는 소리만 계속 나오 부팅이 안됨 
원인: 윈도우 XP 사용자 권한이 삭제 됨(삼성 AS센타 직원 말: 사용자 권한 폴더가 삭제 되어서 하드를 교체해야 함) 
처리: 데이타 백업 후 하드 교체(박광식 대리 T)756-2653) 
--------------------------------------------------------------------------------------------------------- 

- 삼성노트북 센스 재설치 
F4: 클릭 --> 전체 복구 설치: 클릭 ==> CD로 포맷하지 않고 재설치 됨 
============================================================================================================== 

- flex3 강의    
http://blog.naver.com/xldhtl?Redirect=Log&logNo=90036901951 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.12(금) 작업 ■■■■■■■■■■■■■■■■
---> 09:50 ~ 22:00   --> 삼성 AS센타 노트북 찾아 옴(XP 홈 설치된 상태에서 받아옴), 하나 출입카드 수령 

- 하나은행 Prj
 - 프로그램 재실치 
1. TAMA's HouseK_Book 복구 
2. DB 설치(Oracle9i Client, Toad 8.0) 
3. 웹로직 설치 
4. 이클립스 설치(depo_project, dpfibatch) 
==============================================================================================================

- 하나은행 EDMS 차세대 연계 Proj(수신(금융정보)) 
수신: http://127.0.0.1:9002/loginForm.do  ==> depodomain  
빌드에러 현상: 
BUILD FAILED 
D:\java_projects\depo_project\src\depoEar\build.xml:40: The following error occurred while executing this line: 
D:\java_projects\depo_project\src\depoEar\build.xml:114: c:\depo_project\lib not found. 
원인: D:\java_projects라서 안 됨(C:\java_projects로 잡아 줘야 함)  
==============================================================================================================

- 자바 컴파일 버전 오류 
에러내용: Exception in thread "main" java.lang.UnsupportedClassVersionError 
원인: 이클립스 자바 컴파일 버전 설정 오류 
조치: 이클립스(eclipse)에서 Window > Preferences > Compiler > JDK Compliance 에서  
Compiler compliance level: 1.4 로 설정 ==> Apply 
==============================================================================================================

- TEST 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "dpb015_detail.jsp" xargs ls -al 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "DPB050WorkfloAction.*" xargs ls -al 
[depo01@sun450-03]/sun450-04/dom_depo > find ./ -name "DPB015WorkfloCrmAction.*" xargs ls -al 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.13(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:10 ~ 17:00   --> 토요근무,  점심(서달원 차장님이 사줌), 대구 여행(중협 결혼): 이과장 

- 하나은행 Prj
- 자료제공 방법 개선(dpfibatch Batch: Java Application으로 만듬) 
java jar 파일 찾아서 세팅 
==============================================================================================================
 
- 중협 결혼
17:00 퇴근(하나은행 명동 Hub) 
17:20 서울 출발(이과장): 명동 외환은행 본점 근처 
19:00 남양주 IC 
19:20 만남 휴게소(중앙 고속도로 -> 호법   분기점 -> 여주 분기점 -> 중부내륙고속도로) 
22:00 북대구IC   ==> 5시간 소요 
22:20 여관(수성구 수성못 근처) 
23:20 맥주(여관)  
23:50 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.14(일) 작업 ■■■■■■■■■■■■■■■■ 
---> 09:10 ~ 17:00  

- 중협 결혼2
10:00 기상( 대구 수성못 근처) 
12:00 점심(칼국수) 
13:00 뉴욕뉴욕 웨딩(대구시 수성구 수성 관광호텔 옆): 이과장 차에서 기다림 
14:00 점심(부페): 답례품 포도주 가지고 옴 => 부주 20만원 
14:20 대구 출발 
15:00 칠곡 휴게소(김천 분기점 -> 중부내륙고속도로) 
17:00 여주 휴게소(여주 분기점 -> 호법 분기점 -> 중앙 고속도로 -> 서하남 -> 송파 IC) 
19:00 송파IC 
19:20 귀가   ==> 5시간 소요 
23:00 취침 
------------------------------------------------------------------------------------------------------------------------------

- 중협 결혼 
일시: 2008년 12월 14일(일) 13시 
장소: 뉴욕뉴욕 웨딩(대구시 수성구 수성 관광호텔 옆) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.15(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 22:00 --> 하나은행 Prj 소스 백업 CD 받음(삼성AS 센타): 퀵 

- 하나은행 Prj
- 자료제공 방법 개선(dpfibatch Batch: Java Application으로 만듬)   
devpsvr1(fnsw)/vwapp/dpbatch> jar -tvf dpPublishBatch.jar  
==============================================================================================================

- EDMS프로젝트 전체 회의(서달원PM) 
- 내용: 1. PL 중심 운영(PL 지시 이행) 
   2. 책임감 부족 
   3. EDMS Proj 원만히 진행 중(기업여신, 외환, 무역금융(종로)) 
- 장소 : 6층 회의실(세미나2) -> 제일 큰곳 
- 시간 : 12월15일(월) 10시 30분 ~ 
- 대상 : 개발자 전체 
==============================================================================================================

- 프라임 저축은행정기예금 만기 해지 
기간: 12 개월,  예치금액 2,000,000 원, 이자율: 7.20 %  
이자지급방법: 만기일시지급(복리), 만기일자 2009/12/15 
실수령액: 2,135,052 원(세금:13,450 원(소득세 )) 
----------------------------------------------------------------  
- 프라임 저축은행정기예금 신규  ==> 세금우대 
기간: 12 개월,  예치금액 5,600,000 원, 이자율: 9.05 %  
이자지급방법: 만기일시지급(복리), 만기일자 2009/12/15  
- 프라임 저축은행정기예금 신규 ==> 일반 
기간: 12 개월,  예치금액 400,000 원, 이자율: 9.05 % 
이자지급방법: 만기일시지급(복리), 만기일자 2009/12/15 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.16(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 22:00  --> 삼성노트북 센스 OS 재설치(2번째) 

- 하나은행 Prj
- 자료제공 방법 개선(dpfibatch Batch: Java Application으로 만듬)  
- db 에러 
java.lang.ClassCastException: oracle.sql.BLOB 
==============================================================================================================

- 삼성 노트북 에러 
현상: NTLDR is missing 
원인: 윈도우 손상 
1. NTLDR 파일 손상이나 삭제 
2. HDD의 MBR영역손상 
3. BOOTFONT.BIN 이나 NTDETECT.COM 파일의 손상 
조치: F4 + 전체 복구 
------------------------------------------------------------------ 
- 삼성노트북 센스 재설치(2번째) 
F4: 클릭 --> 전체 복구 설치: 클릭 ==> CD로 포맷하지 않고 재설치 됨 
이승민(교보생명 옆자리): * 
============================================================================================================== 

- Error 404--Not Found 에러 
현상: http://127.0.0.1:9002/loginForm.do  ==>  Error 404--Not Found  
조치: 1. 디플로이 해줌(조치: 메뉴 -> Run -> External Tools -> depo_project build.xml 실행)  
 2. installed JRE 다시 추가(Window -> Prefrerence > Java -> installed JRE --> add: C:\j2sdk1.4.2_04 추가)  
==============================================================================================================

- 하나포탈 URL 에러( Tel)2887) 
http://portal.hanafn.com:8206  
1. SafePC 설치(통합보안프로그램) 
2. HELP용SSO.exe 설치 -> 하나포탈 설치용 
3. http://111.15.1.46:9082 ==> EDMS 설치 
- EDMS 설치 
1. http://111.15.1.4:9082 로 들어가서 edmsverctl.exe를 설치(C:\EDMS 폴더 생성) 
2. 재부팅 후 http://111.15.1.4:9082 로 다시 들어가서 설치 파일 다운을 받음 
(C:\EDMS 폴더에 OZ35 폴더가 생성 되지 않으면 재부팅 후 다시 설치 파일 다운을 받을 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.17(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:30  --> 자리 이동, 이과장집(22번째): 포도주(결혼식 담례품) 가져감, 창덕궁 정거장 합류 

- 하나은행 Prj
- 자료제공 방법 개선(dpfibatch Batch: Java Application으로 만듬)  
/dpb015_detail.jsp 파일에서 
function publishing() {    //발송 이면(대외기관통보) 
if (pubMthd == "03"   pubMthd == "05"  ) { //FAX, 이메일 발송 이면  
 var xPdf = makePdf(); //대표공문을 만들어 놓고 서버에 올린 다음에... 
  
 if (!isMakePdf) { 
alert("전자문서 만들기에 실패 했습니다. \n\n잠시후 다시 시도해 주시기 바랍니다.");  
return false; 
 }  
}  

function makePdf() {    //기본 출력공문서+ 금융정보제공 파일 생성 
var strUrl  = "/com/hana/depo/dpb/sub/dpb015_report_save.jsp?wf_no=" + wf_no +"&cnt=1" ; 
strUrl += "&output="+ outputz; 
strUrl += "&imgkey="+ imgkey; 
strUrl += "&mtd="+ mtd;  

pop = window.showModalDialog(strUrl, 'pop', str); 
}  
}  
--------------------------------------------------------------------------------------------------------- 

/dpb015_report_save.jsp 파일에서 
<script language = "JavaScript" for="ozviewer" event="OZExportCommand(code, path, filename)">  
//파일저장 성공여부 (code=1:성공, code=0:실패) 
if (code==1) {  
send('<%=getMtd%>', '<%=todayDate%>', '<%=getImgKey%>', filename, path+filename); 
}else { 
alert('문서 제작에 실패했습니다.\n\n 잠시후 다시 시도해 주시기 바랍니다.');  
}  
</script> 

function send(sendgb, date, imgkey, filename, localfile) {   //문서를 서버로 올리기 
httpupload.hostname = "<%=hostip%>"; 
httpupload.port = "<%=hostport%>"; 
httpupload.url = "/ozfileupload.do?method=upload"; 
} 
  
<div id="OZEmbedControlLocation2" style="padding-left:10;"> 
<script LANGUAGE="Javascript">  
var tag = '<OBJECT id="ozviewer" width="'+obj_width+'" height="'+obj_height+'" CLASSID="CLSID:0DEF32F8-170F-46f8-B1FF-4BF7443F5F25"></OBJECT>';  
var paramTag = new Array(); 
//============================= 보고서 생성 시작 =============================== 
if (outputArr.length >= 1){  
reportGubun(outputArr[0]);  //report 이름 가져오기  
paramTag[paramTag.length] = '<param name="connection.reportname" value="' + reportozr + '.ozr">';    
  
// OZ odi setting  
paramTag[paramTag.length] = '<param name="odi.odinames" value="' + reportodi + '">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.pcount" value="5">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args1" value="wf_no=<%=getWfNo%>">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args2" value="fetch_gubun=' + outputArr[0] + '">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args3" value="emp_nm=<%=curUserNm%>">'; 
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args4" value="branch_nm=<%=curBrNm%>">';     
paramTag[paramTag.length] = '<param name="odi.' + reportodi + '.args5" value="mtd=<%=getMtd%>">';    
} 
//============================= 보고서 생성 끝 =============================== 

oz_activex_build(OZEmbedControlLocation2, tag, paramTag);  
</script> 
</div> 
--------------------------------------------------------------------------------------------------------- 

/dpcmscript.js 파일에서 
function oz_activex_build(parent, tag, paramTag){    //오즈 파일 생성 
var OZViewerObjectElement = document.createElement(tag);  
for(var i = 0 ; i < paramTag.length; i++){  
 var OZViewerParamElement = document.createElement(paramTag[i]); 
 OZViewerObjectElement.appendChild(OZViewerParamElement);  
 } 

 parent.appendChild(OZViewerObjectElement);  
} 
--------------------------------------------------------------------------------------------------------- 

- 자료제공 방법 개선 Batch로 못 돌리는 이유: 
1. dpb015_report_save.jsp 파일에서report-1.ozr(출력공문서), report-54.ozr(추가사항)  파일을 생성 하는데  
오즈로 만드는 과정에서 .ocx를 사용 
2. Batch 작업은 Java Application으로 만들어 지므로 .ocx를 사용 못 함(.ocx를 실행 못 시킴) 
(311: report-1.ozr(출력공문서), 312: report-54.ozr(추가사항) 파일 생성됨) 
- 실서버 이메일 저장 위치(2008년  5월 21일 이후로 실서버에 데이타 저장하지 않은 것으로 판단됨) 
[depo01@sun450-03]/sun450-04/dom_depo > cd /home/apps/dom_depo/depofiles/email 
==============================================================================================================

- FTP 설정 
1. 사이트 이름: 01. 테스트 서버(jsp) 
FTP: 111.15.1.4(depo01/depo01_dev) 
리모드 리렉토리: /home/apps/dom_depo/serverclasses/depoEar/depoWebApp/com/hana/depo 
2. 사이트 이름: 02. 테스트 서버(class) 
FTP: 111.15.1.4(depo01/depo01_dev) 
리모드 리렉토리: /home/apps/dom_depo/serverclasses/depoEar/depoWebApp/WEB-INF/classes/com/hana/depo 
3. 사이트 이름:03. 테스트 서버(OZ) 
FTP: 111.15.1.4(depo01/depo01_dev) 
리모드 리렉토리: /home/apps/dom_depo/applications/oz35/repository_files 
4. 사이트 이름: 04. 테스트 서버(cron) 
FTP: 111.15.20.23(fnsw/fnsw_dev) 
리모드 리렉토리: /vwapp/dpbatch 
5. 사이트 이름: 51. 외환 테스트 서버(jsp, class) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
리모드 리렉토리: /home/apps/dom_frex2/applications/frexEar/frexWebApp 
6. 사이트 이름: 52. 외환 테스트 서버(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
리모드 리렉토리: /home/apps/dom_frex2/applications/oz35 
7. 사이트 이름: 53. 외환ASIS 테스트 서버(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
리모드 리렉토리: /home/apps/dom_frex/applications/oz30/repository_file  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.18(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 22:00  --> 김민영 차장이 저녁 쏨(굴떡국, 소주): 이메일 사건(최광열 대리 <-> 심석준 과장) 

- 하나은행 Prj
- 명의인통보(명의인통보 조회_인쇄) 인쇄 수 조회(http://111.16.1.128/dpfi_PrintRegisterPerson.do) 
-- 명의인통보 인쇄(성공) 처리 @@@@@@@@@@@@@ ===> 100명 다시 결재완료로 환원: 4 -> 1 로 수정 
-- UPDATE DEPO_WF_NM_NTF   
SET  NTF_YN  = '1',  --통보여부( 1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)  
OFFER_DATE  = TO_CHAR(SYSDATE, 'YYYYMMDD')  --기관제공일  
WHERE IDX IN ('618908', '618908', '618908') 
--; 
  
 -- 명의통보서 조회 @@@@@@@@@@@@@    
SELECT WF_NO, IDX, NM 성명, SSN_BIZ_NO AS 주민번호, ZIPCODE AS 우편번호, 
   NTF_YN AS 통보여부, NTF_DATE AS 통보일자, OFFER_DATE AS 기관제공일 
FROM DEPO_WF_NM_NTF 
WHERE IDX IS NOT NULL        
 AND OFFER_DATE >= '20081201'  --기관제공일 
 AND NTF_YN  = '1'   --통보여부( 1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)  
ORDER BY OFFER_DATE DESC 
--;  
==============================================================================================================

- 명의인통보 조회/인쇄 조회 에러(TEST서버에서) (http://111.15.1.4:9082/dpfi_PrintRegisterPerson.do) 
/DpfiPrintRegisterPersonAction.java 파일에서(/dpfi_print_register_person.jsp) 
public class DpfiPrintRegisterPersonAction {  
public ActionForward print(  
listForm.setListInbox(listJDAO.getInboxList(listForm.getEmpNo(),  listForm.getConditions(),  
listForm.getCurrentPage() ) );  //List 조회 
}  
} 

/DpfiPrintRegisterPersonJDAO.java 파일에서 
public List getInboxList(String empNo, String htCons, int curPage) {   
pstmt = getInboxPreparedStatement(empNo, htCons, QUERY_LIST);     
resultSet = pstmt.executeQuery();  //에러 줄 
} 
public PreparedStatement getInboxPreparedStatement( 
pstmt = dbcon.prepareStatement(strSql.toString(), 
                                       ResultSet.TYPE_SCROLL_INSENSITIVE, 
                                       ResultSet.CONCUR_UPDATABLE); 
} 
==============================================================================================================

- 영화 예매 
제목: 지구가 멈추는날 
CGV 미아점(2008년 12월 24일 22시 00분) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.19(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00  --> 이과장집(23번째): 창덕궁 정거장 합류, 맥주, 영화 놈놈놈 관람 

- 하나은행 Prj
- 명의인통보(명의인통보 조회_인쇄) 인쇄 수 조회(http://111.16.1.128/dpfi_PrintRegisterPerson.do) 
-- 명의인통보 인쇄(성공) 처리 @@@@@@@@@@@@@ ===> 100명 다시 결재완료로 환원: 4 -> 1 로 수정 
-- UPDATE DEPO_WF_NM_NTF   
SET  NTF_YN  = '1',  --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)  
OFFER_DATE  = TO_CHAR(SYSDATE, 'YYYYMMDD')  --기관제공일  
WHERE IDX IN ('618908', '618908', '618908') 
--;  
---------------------------------------------------------------------------------------------------------- 

/DpfiPrintRegisterPersonJDAO.java 파일에서 
public void insertRetNtf(String[] keys, String emp_no) {  
//MAX 값을 구한다. 
 sql  = "SELECT NVL(max(idx),0) maxNum FROM depo_wf_ret_ntf "; 
   
 pStmt = dbcon.prepareStatement(sql ); 
 rs = pStmt.executeQuery(); 
  
 if (rs != null && rs.next()) { 
 maxNum = StringUtil.checkNull(rs.getString("maxNum")); 
 } 

sql  = "\n  INSERT INTO depo_wf_ret_ntf  \n"; 
sql += "\n      (idx, wf_no, nm, input_date, emp_no, offer_date, ntf_date,  official_doc_no"; 
sql += "\n   , post_no, ret_cause, ret_gubun, ret_date, post_name, post_status, req_facts, use_cause, addr, post_num )  ";  
sql += "\n  SELECT  /*+ INDEX ( a DEPO_WF_NM_NTF_U1) */                       "; 
sql += "\n      "+maxNum+"+ rownum, a.wf_no wf_no,  a.nm nm                 "; 
sql += "\n     ,  TO_CHAR(SYSDATE, 'YYYYMMDD') input_date, '"+ emp_no +"' emp_no   "; 
sql += "\n     ,  c.offer_date offer_date , TO_CHAR(SYSDATE, 'YYYYMMDD') ntf_date  "; 
sql += "\n     ,  c.official_doc_no  official_doc_no                               "; 
sql += "\n     ,  a.zipcode post_no, '' as ret_cause,  '' as ret_gubun, '' as ret_date    "; 
sql += "\n     ,  '' as post_name,  '00' as post_status                            "; 
sql += "\n     , b.req_facts req_facts, b.use_cause use_cause, a.addr1  , a.zipcode  "; 
sql += "\n  FROM depo_wf_nm_ntf a , depo_wf_detail b  , depo_wf_master c          "; 
sql += "\n  WHERE a.wf_no = b.wf_no   \n"; 
sql += "\n AND a.wf_no = c.wf_no   \n"; 
sql += inIdx ;  
}  
==============================================================================================================

-  명의통보내역(http://127.0.0.1:9002/dpfi_ReturnNtfInform.do?method=main)  
1. 명의통보내역(/dpfi_ntf_person_status.jsp) 
2. /DpfiReturnNtfInformAction.java 파일에서 
public ActionForward list( 
lst = jdao.listReturnInform(nm, searchDate1, searchDate2,  dateYn, gubun,printtype, currentPage); 
} 

2. /DpfiReturnNtfInformJDAO.java 파일에서 
public List listReturnInform( 
if(searchDate1.equals("")) {   //처음 시작이면 
lst = null; 
} else { //조회 버튼을 누르면 
String query = listReturnInform(nm, searchdate1, searchdate2,  dateYn, gubun, printtype, curPage); 
} 
} 

public List listReturnInform( 
String query = listPrepareStatement(nm, searchdate1, searchdate2,  dateYn, gubun, printtype, curPage); 
} 

private String listPrepareStatement( 
String query = "";  //query 문 
query = DatabaseUtil.getPagingSqlString(query, startRecord, endRecord); //페이징 처리 
} 
-------------------------------------------------------- 
  
1. 하나은행 파일 업로드(/dpfi_return_ntf_file_upload.jsp) 
2. /DpfiReturnNtfFileUploadAction.java 파일에서 
==============================================================================================================

-- 명의통보내역 조회 @@@@@@@@@@@@@  
SELECT * 
FROM DEPO_WF_RET_NTF 
WHERE POST_STATUS = '10'  --통보상태(00:명의인 통보(다운로드전), 10:엑셀다운로드, 20:명의인 통보(+등기번호), 99:등기서류 반송) 
  AND NTF_DATE BETWEEN '20081110' AND '20081219'  --통보일 
--;  

-- 명의통보내역 수정 @@@  
UPDATE DEPO_WF_RET_NTF 
SET POST_STATUS = '00'    --통보상태(00:명의인 통보(다운로드전), 10:엑셀다운로드) 
WHERE POST_STATUS = '10'   --통보상태 
  AND NTF_DATE BETWEEN '20081110' AND '20081219'  --통보일 
--;  
==============================================================================================================  

- 수정한 파일 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_ntf_person_status.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_return_inform_ntf_write.jsp 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_return_ntf_file_upload.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiReturnNtfInformJDAO.java  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiReturnNtfFileUploadAction.java  
==============================================================================================================

- 하나은행 개설(개설일: 2008.12.19) 
계좌번호: 190-910229-12107   예금주: 진태만 
비밀번호: 5**1, ATM출금 비밀번호: 5***2 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.20(토) 작업 ■■■■■■■■■■■■■■■■
---> 11:20 ~ 18:00  --> 이과장집(24번째): 창덕궁 정거장 합류, 볼링(130:125, 125:125, 125:119): 2승 1무 

- 하나은행 Prj
- 명의인통보 조회/인쇄 조회 에러(TEST서버에서) (http://111.15.1.4:9082/dpfi_PrintRegisterPerson.do) 
/DpfiPrintRegisterPersonAction.java 파일에서(/dpfi_print_register_person.jsp) 
public class DpfiPrintRegisterPersonAction {  
public ActionForward print(  
listForm.setListInbox(listJDAO.getInboxList(listForm.getEmpNo(),  listForm.getConditions(),  
listForm.getCurrentPage() ) );  //List 조회 
}  
} 

/DpfiPrintRegisterPersonJDAO.java 파일에서(명의인통보작성 -> /DpfiListRegisterPersonJDAO.java) 
public List getInboxList(String empNo, String htCons, int curPage) { 
pstmt = getInboxPreparedStatement(empNo, htCons, QUERY_LIST); 
resultSet = pstmt.executeQuery();  //에러 줄 
} 
public PreparedStatement getInboxPreparedStatement( 
pstmt = dbcon.prepareStatement(strSql.toString(), ResultSet.TYPE_SCROLL_INSENSITIVE, 
ResultSet.CONCUR_UPDATABLE); 
} 
--------------------------------------------------------------------------------------------------- 

원인: case when (TO_DATE(C.NTF_DATE) <= SYSDATE) and (length(G.addr1) > 0) then 'Y' else 'N' end ntfDateYn, 
--통보예정일 도래 & 주소 여부");  
조치: (case when (C.NTF_DATE <= TO_CHAR(SYSDATE ,'yyyymmdd') and length(G.addr1) > 0) then 'Y' else 'N' end) ntfDateYn,   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.21(일) 작업 ■■■■■■■■■■■■■■■■ 
---> 08:40 ~ 21:00 

- 이과장집  
08:00 기상(장위1동 이과장집) ==> 전날 볼링 3게임 처서 피곤해서 축구하러 못 감 
10:00 아침(청국장) 
16:00 점심(알덮밥): 배달  
16:30 보드 강습 동영상 시청(초급, 중급) 
20:00 저녁(라면)
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.22(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:00 

- 하나은행 Prj
- 현황분석(통계) 조회 수정요청 
현황분석(http://111.16.1.128/dpfi_AnalizeTrendList.do?method=list) 
점포별은 업무지원부 빼주세요. 업무지원부만 전체 건수가 조회되야 합니다.  
log.debug("[금융]-> [appv()] [tna]"+ tna);  
System.out.println("[금융] [/DPDBTool.java]-> [pubsh()] [rs]===> "+ rs);  
==============================================================================================================

- 스키장(보드) 예약(http://www.owski.co.kr/): 베어스타운 
예약일: 2008.12.28(일) 
당일권(09 : 00 ~ 16 : 45): 30,000원 
보드 - 260 1대 / 보호장비(무릎, 엉덩이 보호대): 5,000원 
보드 - 235 1대 / 의류 성인1벌 /보호장비(무릎, 엉덩이 보호대): 5,000원 
보드 강습(6인 이상: 인당 5만원 예약 요망)  
총 금액: 210,000원  
--------------------------------------------------------------------- 
내용 수량 금액 금액    
리프트 비용(오후권) 2 30,000 60,000 
보드 대여 2 10,000 20,000 
보호장비 대여 2 5,000 10,000 
보드복 대여 1 10,000 10,000 
장갑(이과장) 1 10,000 10,000 
보드 강습 2 50,000 100,000 
총액 115,000 210,000  
==============================================================================================================

- 자동이체 내역 
HSBC은행에서 총 자동이체 내역 1,876,600원 
(매월 24일 HSBC은행에서 국민은행 계좌(640-21-0052-309)로 75만원 자동이체 포함 금액) 

1. 자동이체 내역 
일자 월고정비용 금액   
15 빌라 관리비 110,000원 
22 LG파워콤(인터넷) 25,100원 
24 국민은행 자동이체  750,000원(640-21-0052-309) 
24 부모님 생활비 200,000원(606401-04-083394) 
24 프라임 저축 적금 300,000원(400490-61-473440) 
24 동양 펀드 적금 100,000원(801390-60-429074) 
24 myLG070 5,000원 
25 PCA변액보험료 300,000원 
25  Met종신보험료 86,500원 
25 신한카드대금(예상) 300,000원 
--> HSBC은행 합계 1,876,600원 
2. 국민은행 자동이체 내역 
10  국민연금 88,870원   
25  적립펀드(미래에셋) 100,000원(617455-04-007599) 
25  장기주택마련저축 10,000원(470348-01-002266) 
25  삼성증권 펀드 100,000원   
25  대생연금보험료 200,000원 
25  휴대폰 요금 30,000원 
27 국민카드대금(예상) 50,000원 
말일 건강보험료 45,000원 
--> 국민은행 합계 623,870원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.23(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  --> 이과장집(25번째): 맥주(명동:서유기) 

- 하나은행 Prj
-  현황분석(통계) 조회 수정 요청 
현황분석(http://111.16.1.128/dpfi_AnalizeTrendList.do?method=list) 
점포별은 업무지원부 빼주세요. 업무지원부만 전체 건수가 조회되야 합니다.  

- 수정한 파일 
/depo_project/src/depoEar/depoWebApp/com/hana/depo/dpfi/body/dpfi_analize_trend_list.jsp 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiAnalizeTrendListAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/form/DpfiAnalizeTrendListForm.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiAnalizeTrendListJDAO.java  
==============================================================================================================

-- DB 링크 
SELECT * FROM user_db_links --// DB LINK 확인 
--; 

--// DB 링크 생성 
CREATE DATABASE LINK REAL_BPM 
CONNECT TO frexadm IDENTIFIED  --// DB LINK  생성 
BY frexadm11 USING 'DBBPM1' 
--; 
==============================================================================================================

- 실DB 데이타를 적용(로그인을 실DB와 같게 하기 위해서 가지고 옴) 
/leftmenu.jsp 파일에서 
eventResponse = (MenuEventResponse)request.getAttribute("MenuEventResponse"); 
   
   if (eventResponse != null) 
   { 
menuList = (ArrayList)eventResponse.getMenu(); 
   subPidList   = eventResponse.getPidList(menuList); 
   mainMenuList = eventResponse.getMenuList(menuList, "1", null); 
   }  

/MenuProcessor.java 파일에서 
public void processEvent(HttpServletRequest request, String screenName) { 
if( !centerTF ) { // 영업점인 경우 
menuList = menuDao.getMenuListWithBranchDI(center_result, screenName,"DIB001"); 

} else {   //센타인 경우 
menuList = menuDao.getMenuListWithDI(center_result, screenName, userId); 
} 
} 

/MenuJDAO.java 파일에서 
public Collection getMenuListWithBranchDI(String topPosition, String requestURI, String roleCd) { 

} 
---------------------------------------------------------------------------------------------- 

-> 적용 테이블(COMM_CM_MENU, COMM_CM_PROGRAM, COMM_CM_PROGRAM_ROLE)  
SELECT  *  FROM COMM_CM_MENU_20081223                                                                
--; 
SELECT COUNT(*) FROM COMM_CM_MENU@REAL_BPM 
--; 
1. TEST DB 테이블 임시저장 후 삭제 
-- 통보비용관리 Table 저장  @@@@@@@@@@@@@ 
-- CREATE TABLE COMM_CM_MENU_20081223 AS SELECT * FROM COMM_CM_MENU 
--; 
-- 통보비용관리 Table 삭제 
-- DROP TABLE COMM_CM_MENU 
--; 
--  CREATE TABLE COMM_CM_MENU  AS SELECT * FROM COMM_CM_MENU@REAL_BPM 
--; 
==============================================================================================================

- 무료문자 
http://empireks.tistory.com/427 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.24(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 19:00  --> 이과장집(26번째): 와인(이마트), 영화(지구가 멈추는날:미아CGV), 케익 선물 받음(하나은행) 

- 하나은행 Prj
- 업무재할당 진행중 표시 요청 
업무재할당(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
영업점요청 또는 전표요청 진행중 인건도 진행상태를 진행중으로 표시해주세요.   
SELECT WF_NO, DISUSE_YN		--작업진행정도(null:처음, D:작업시작, N:작업진행중, Y:작성끝(통보대상자 작성완료:책임자 상신가능))   
FROM DEPO_INF_ETL_NTF G		--작성 내역 요약 Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--; 
==============================================================================================================

- 외환 세팅 
1. /edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/common/intf/test/EAIClientTest.java 클릭 
2. Run --> Run Configurations --> JUnit  --> Name: EAIClientTest 
3. ClassPath 탭: User Entries: 클릭 --> Advanced  --> Add folders 
C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config 선택  
4. Run --> Run as --> EAIClientTest 실행 
==============================================================================================================

- EAI 서비스 목록(http://111.15.1.7:9062/eaimanager.do?method=list) 
Exception : 수신 배열 오류 !! 
com.hana.common.intf.eai.EAIClient.getServiceInfo EAIClient.java 480 line . 
원인: C:GRID_ID_ROWCOUNT:5:조회건수 이후 필드 A로 작성할 것 
---------------------------------------------------------------------------------------------- 

// LG발급원장-OZ(TAMA) 
EAIClient FXE0028 = new EAIClient("FXE0028"); 
FXE0028.setString("INQ_DV_CD", "EAI0113");   //업무구분 
FXE0028.setString("ERR_CODE", "000000000"); 
FXE0028.setString("ERR_CTT", ""); 
FXE0028.setString("REF_NO", "00000000000000000000"); 
eaitest.put("FXE0028", FXE0028);  
============================================================================================================== 
  
- 오즈 서버 License 적용 방법(로컬) 
1. 발급받은 오즈서버 License 파일(ozlicense_하나은행_081127_temp_3.5De.xml)을 오즈 서버가 설치 
된 디렉토리/license 밑에 ozlicense.xml 파일명으로 올립니다. 
2. 서버 재시작  
---------------------------------------------------------------------------------------------- 

- 오즈 서버 License 적용 방법(테스트 서버):  http://111.15.1.4:9082/oz/server 
1. 발급받은 오즈서버 License 파일(ozlicense_하나은행_081127_temp_3.5S.xml)을 오즈 서버가 설치 
된 디렉토리(/home/apps/dom_depo/applications/oz35/license) 밑에 ozlicense.xml 파일명으로 올립니다. 
2. 서버 재시작 - WebLogic : 웹로직 관리콘솔에서 OZ 웹애플리케이션 모듈 redeploy   
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2008.12.25(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:00

- 이과장집(크리스마스) 
09:00 기상 
10:00 아침(케익) 
16:00 점심(알덮밥): 배달  
21:00 저녁(라면) 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.26(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:00   --> 송년회 회식(과메기, 회), 나눔 송년 모임(현용, 임모) 한우방, 소주, 신선 설농탕 

- 하나은행 Prj
- EAI 서비스 목록(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(수입 LG발급원장-OZ), FXE0028(수입 LG발급원장-OZ), FXE0030부서명조회-OZ) 

// FXE0029 수입 전문기본정보-OZ(TAMA) 
EAIClient FXE0029 = new EAIClient("FXE0029"); 
FXE0029.setString("INQ_DV_CD", "EAI0114");   //업무구분 
FXE0029.setString("ERR_CODE", "000000000");  //오류코드 
FXE0029.setString("ERR_CTT", "");  //오류내용 
FXE0029.setString("REF_NO", "M1235706NS00018");  //LG일련번호 
eaitest.put("FXE0029", FXE0029); 
------------------------------------------------------------------------- 

수신 Data : [EM00000663SFFC5090B001000000000SPFM00016 9       0002SPFM00029프레임워크 기타처리 오류입니다.    
SFFC5090B::pfmServiceFrame.c::pfmServiceMainProcessing::00221      SPFM00016       
SFFC5090B::pfmFlowControlFrame.c::pfmCallServiceFlow::00653  00@@]  
박성우: 메세지가 계정계쪽 오류 
============================================================================================================== 
   
- 업무재할당 진행중 표시 요청 
업무재할당(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
영업점요청 또는 전표요청 진행중 인건도 진행상태를 진행중으로 표시해주세요.   
SELECT WF_NO, DISUSE_YN --작업진행정도(null:처음, D:작업시작, N:작업진행중, Y:작성끝(통보대상자 작성완료:책임자 상신가능))   
FROM DEPO_INF_ETL_NTF G --작성 내역 요약 Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--; 
==============================================================================================================

-- 명의인통보(명의인통보 조회_인쇄) 조회 @@@@@   ===> 명의인통보 테이타 만들기 
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE, G.ZIPCODE, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --기관제공일   
AND G.NTF_YN = '5'   --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)   
AND G.ZIPCODE > '552008-12-270786' 
ORDER BY G.OFFER_DATE DESC 
--; 
--------------------------------------------------------------------------- 
  
-- 명의인통보(인쇄) 수정 @@@@@   ===> 명의인통보 테이타 만들기  
-- UPDATE DEPO_WF_NM_NTF G  
SET NTF_YN = '4',  --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)  
OFFER_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD') --기관제공일   
WHERE G.NTF_YN = '5'550786--통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)   
  AND G.ZIPCODE > '650786' 
--; 
==============================================================================================================

- 보드 강습 송금 
우리은행: 018-746138-02-001 예금주:이용주(겨울사랑)  
겨울사랑 주소: 경기도 포천시 내촌면 음현리 723-10 이용주 
스키 장비(준비물): 스키복, 스키장갑, 양말, 지도 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.27(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:20 ~ 18:00  

- 하나은행 Prj
-- 명의인통보(명의인통보 조회_인쇄) 조회 @@@@@   ===> 명의인통보 테이타 만들기 
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE, G.ZIPCODE, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --기관제공일   
AND G.NTF_YN = '5'   --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)   
AND G.ZIPCODE > '550786' 
ORDER BY G.OFFER_DATE DESC 
--; 
--------------------------------------------------------------------------- 
  
-- 명의인통보(인쇄) 수정 @@@@@   ===> 명의인통보 테이타 만들기  
-- UPDATE DEPO_WF_NM_NTF G  
SET NTF_YN = '4',  --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)  
OFFER_DATE = TO_CHAR(SYSDATE, 'YYYYMMDD') --기관제공일   
WHERE G.WF_NO IS NOT NULL 
AND G.OFFER_DATE = '20081226' --기관제공일   
AND G.NTF_YN = '5'   --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)   
AND G.ZIPCODE > '550786' 
--; 
--------------------------------------------------------------------------- 

- ROWNUM 분석  
rownum 은 db에서 불려져 올때 붙여짐(줄수), 쿼리를 다시 한번 SELECT 함 
--  INSERT INTO DEPO_WF_RET_NTF                                                  
(IDX, WF_NO, NM, INPUT_DATE, EMP_NO, OFFER_DATE,   
NTF_DATE, OFFICIAL_DOC_NO, POST_NO, RET_CAUSE, RET_GUBUN,  
RET_DATE, POST_NAME, POST_STATUS, REQ_FACTS, USE_CAUSE,    
ADDR, POST_NUM)   
SELECT  58653+ROWNUM, M.WF_NO, M.NM, M.INPUT_DATE, M.EMP_NO, M.OFFER_DATE,  
M.NTF_DATE, M.OFFICIAL_DOC_NO, M.POST_NO, M.RET_CAUSE, M.RET_GUBUN,  
M.RET_DATE, M.POST_NAME, M.POST_STATUS, M.RET_CAUSE, M.USE_CAUSE,  
M.ADDR1, M.ZIPCODE  
FROM            
(           
SELECT  /*+ INDEX ( A DEPO_WF_NM_NTF_U1) */                       
A.WF_NO WF_NO,  A.NM NM                 
,  TO_CHAR(SYSDATE, 'YYYYMMDD') INPUT_DATE, '0000131' EMP_NO   
,  C.OFFER_DATE OFFER_DATE , TO_CHAR(SYSDATE, 'YYYYMMDD') NTF_DATE   
,  C.OFFICIAL_DOC_NO  OFFICIAL_DOC_NO                                
,  A.ZIPCODE POST_NO, '' AS RET_CAUSE,  '' AS RET_GUBUN, '' AS RET_DATE     
,  '' AS POST_NAME,  '00' AS POST_STATUS                     
, B.REQ_FACTS REQ_FACTS, B.USE_CAUSE USE_CAUSE, A.ADDR1 , A.ZIPCODE   
FROM DEPO_WF_NM_NTF A, DEPO_WF_DETAIL B, DEPO_WF_MASTER C           
WHERE A.WF_NO = B.WF_NO  
AND A.IDX IN ('0', '54522', '51189', '53974', '51411', '53891', '51105', '54492', '54638', '51431', '54344', '54764', '51007') 
ORDER BY A.NM 
) M 
--; 
==============================================================================================================

- 수정한 파일  
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiPrintRegisterPersonAction.java 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/dao/DpfiPrintRegisterPersonJDAO.java 
/report-24.odi 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.28(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 20:00 

- 베어스타운 스키장(장위1동에서 50분 거리, 사람이 분비지 않아 좋았음) 
07:00 기상(장위1동 이과장집): 전날 이과장집앞 주차(옆집에서 차 빼달라고 함) 
08:00 출발(김밥): 47번 국도(태릉 -> 퇴계원IC -> 일동방향 -> 포천시 -> 내촌중학교) 
09:20 겨울사랑 도착(포천시 내촌중학교 앞): 잔금 11만원 계산(총 21만원) 
10:00 베어스타운 스키장 옆 스키장(잘못 알고 감) 
10:25 베어스타운 스키장 시계탑 앞(총 4명) 
10:30 보드 강습(앞 에찌, 뒷 에찌) 
12:30 점심(설렁탕) 
10:30 보드 강습(초급자 코스 2번, 중상급자 코스 2번): 일어나지 못해 뒷 에찌로 턴(많이 넘어짐) 
16:30 종료 
17:30 장비 반납(보드, 보호장비) 
18:00 저녁(보쌈) 
19:00 이과장집 
20:40 귀가(이과장과 같이 옴) 
21:20 맥주 
22:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.29(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 20:00   --> 한우리 송년 회식(횟집, 맥주집, 노래방), 이과장집(03:00) 

- 하나은행 Prj
- EAI 서비스 목록(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(수입 LG발급원장-OZ), FXE0028(수입 LG발급원장-OZ)  
오즈배열처리 요청(김선영 대리(정보공통:3338)) 

// 수입 LG발급원장-OZ(TAMA) 
EAIClient FXE0028 = new EAIClient("FXE0028"); 
FXE0028.setString("INQ_DV_CD", "EAI0113");   //업무구분 
FXE0028.setString("ERR_CODE", "000000000");  //오류코드 
FXE0028.setString("ERR_CTT", "");  //오류내용 
FXE0028.setString("REF_NO", "M1236812EU00018");  //LG일련번호 
eaitest.put("FXE0028", FXE0028); 
   
[수신 Data]  ==> EM00000563SFFC5090B001000000000OCOM14105 9       0001OCOM14105입력값이 부적당합니다.                 
SFFC5090B::mffcbiz_usr_atht_base.c::b000_inputvalid_proc::00229       01OCOM14105직원번호는 필수 입력항목입니다.             
@@  
============================================================================================================== 

- 외환TOBE 테스트 서버 로그 보기 
[frex01@sun450-03]/users/frex01 > vi .profile 
[frex01@sun450-03]/users/frex01 > log 
[frex01@sun450-03]/home/apps/log/weblogic/frex2 > tail -f frex2Admin.out 
1020045 / 1 / 점 : 0065  
============================================================================================================== 

- 선적서류접수 심사 목록(http://111.15.1.7:5006/Ip030_ReceiveList.do?method=searchCenter)  
- /ip_030_detail.jsp 파일에서  
function printBl() {   //수입어음도착통지서 출력 
setValuse();  
for (i = 1; i < 19; i++) { 
    hajaForm = eval("document.IP030WorkfloForm['workObject.haja" + i + "']"); 
    if (hajaForm.checked == true) { 
    if (hajaText != "") { 
    hajaText = hajaText + ", "; 
    } 
hajaText = hajaText + arrHaja[i-1]; 
hajaYN = "Y"; 
    } 
} 
if (form['workObject.hajaMemo'].value != "") { 
    hajaText = hajaText + "(" + form['workObject.hajaMemo'].value + ")"; 
} 

printBlInfo.reset();  
   
if (printBlInfo['AFEX_IPB_LGM.INDO_NO'].value != "") { 
    printBlInfo.submit(); 
} else { 
    return; 
} 

lock();  
} 

<form name="printBlInfo" method="post" action="/com/hana/frex/ip/body/ip_030_print_bl_info.jsp" target="print"> 
<input type="hidden" name="AFEX_IPB_LGM.REF_NO"> 
<input type="hidden" name="AFEX_IPB_LGM.BR_CD">  
</form> 
------------------------------------------------------------------------------------------------ 

- /ip_030_print_bl_info.jsp 파일에서 
<OBJECT id = "ozviewer" 
   CLASSID="CLSID:64DA633F-E73B-4344-83BF-48483346CD53" width="800" height="600"> 
   <param name="connection.servlet" value="<%=messages.getMessage(defaultLocale, "connection_servlet")%>"> 
   <param name="connection.reportname" value="lgm.ozr"> 
   <param name="viewer.configmode" value="jsp"> 
   <param name="viewer.mode" value="print"> 
   <param name="print.mode" value="silent"> 
   <param name="print.copies" value="<%=request.getParameter("PRINT_COUNT")%>"> 
   <param name="odi.odinames" value="AFEX_IPB_LGM"> 
   <param name="odi.AFEX_IPB_LGM.pcount" value="29"> 
   <param name="odi.AFEX_IPB_LGM.args1" value="REF_NO=<%=request.getParameter("AFEX_IPB_LGM.REF_NO")%>"> 
   <param name="odi.AFEX_IPB_LGM.args2" value="BR_CD=<%=request.getParameter("AFEX_IPB_LGM.BR_CD")%>">  
</OBJECT>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.30(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 20:00   -->

- 하나은행 Prj
- EAI 서비스 목록(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(수입 LG발급원장-OZ), FXE0028(수입 LG발급원장-OZ)  
오즈배열처리 요청(김선영 대리(정보공통:3338)) 

- 외환(frex)의 오즈 파일 경로 
/home/apps/dom_frex/applications/oz30/repository_file 
- 외환 TOBE(frex2)의 오즈 파일 경로  
/home/apps/dom_frex/applications/oz30/repository_file/TOBE(새로 만든 폴더 경로) 
/home/apps/dom_frex/applications/oz30/repository_file(현재 상태) 
--> /home/apps/dom_frex2/applications/oz30/oz30/repository_file(변경요청 상태)  
1. 오즈 디자이너에서 --> 
 1) 작업폴더 설정: D:\01. Programming\52. OZ\01. hana\02. 외환 
 2) ODI타입: 카테고리 주소:TOBE로 설정 
2. /ip_030_print_bl_info.jsp 파일에서 
<param name="connection.reportname" value="TOBE/lgm.ozr"> 수정 
----------------------------------------------------------------------------------------- 

- 오즈 connection_servlet 변경 
/edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/frex/resources 
(/home/apps/dom_frex2/applications/frexEar/frexWebApp/WEB-INF/classes/com/hana/frex/resources) 
/ApplicationResources.properties 파일에서 
#oz 
codebase=http://111.15.1.4:5006/oz30/ozviewer/ztransferx.cab#version=1.0.2.2 
download_Server=http://111.15.1.4/oz30/ozviewer 
download_Port=5006 
connection_servlet=http://111.15.1.4:5006/oz30/server 
--> connection_servlet=http://111.15.1.7:5006/oz30/server 
- 오즈 서버 확인 
/home/apps/dom_frex/applications/oz30/WEB-INF/classes/ozserver.properties 
- weblogic ConnectionPool 변경 
/home/apps/dom_frex/applications/oz30/conf/db.properties 파일에서 
DBBPMConnectionPool을 user=frex인 것을 user=frex2로 수정 요청 드립니다. 
김민영 차장님이 user=frex을 거의 사용하지 않는다고 user=frex2로 옮겨라고 합니다 
============================================================================================================== 

- Form 파라미터(connection.pcount, connection.args1) 
<OBJECT id = "ozviewer" 
   CLASSID="CLSID:64DA633F-E73B-4344-83BF-48483346CD53" width="800" height="600"> 
   <param name="connection.servlet" value="<%=messages.getMessage(defaultLocale, "connection_servlet")%>"> 
   <param name="connection.reportname" value="lgm.ozr"> 
   <param name="viewer.configmode" value="jsp">   
   <param name="connection.pcount" value="1">  <!--// Form 파라미터 -->  
   <param name="connection.args1" value="sb_IPB_LGM=<%=sb_IPB_LGM.toString()%>"> <!--//L/G 발급정보(조회된 데이타) -->  
</OBJECT> 

- 오즈 디자이너에서 생성 
OZFormParam ==> 필드이름: sb_IPB_LGM 
- 오즈 디자이너에서 소스 보기 
도구(T) -> 배포마법사(P)  -> 소스보기 
============================================================================================================== 

 - EAI 연결 에러 
에러내용: Exception : PROPRETY File[config\eai.properties]이 존재하지 않습니다 . 
com.hanabank.eai.client.adpt.util.AdapterPropertiesManager.getFile AdapterPropertiesManager.java 437 line ... 

원인: 외환 세팅 config 파일 설정이 지워짐 
처리: 다시 외환   세팅   
1. /edms_project2/src/frexEar/frexWebApp/WEB-INF/src/com/hana/common/intf/test/EAIClientTest.java 클릭 
2. Run --> Run Configurations --> JUnit  --> Name: EAIClientTest 
3. ClassPath 탭: User Entries: 클릭 --> Advanced  --> Add folders 
C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config 선택  
4. Run --> Run as --> EAIClientTest 실행 
FXE0029 다시 해 보세요. 될겁니다.  
------------------------------------------------------------------------------------------------------ 
에러내용: EAIHttpAdapter httpCilent = EAIHttpAdapter.getInstance();  // 2. 전문 생성하여  호출 
 Exception : PROPRETY File[config\eai.properties]이 존재하지 않습니다 . 
처리: 로컬 웹로직에서 EAI 테스트를 하기 위해서는 아래와 같이 설정해야 함.  
EAI연계 테스트를 위해서 로컬 startWebLogic.cmd의 CLASSPATH를 아래처럼 수정해야 합니다. 
set EAI_CONFIG=C:\edms_project2\build\frexEar\frexWebApp\WEB-INF\classes\config 
set CLASSPATH=%WEBLOGIC_CLASSPATH%;%POINTBASE_CLASSPATH%;%JAVA_HOME%\jre\lib\rt.jar;%WL_HOME% 
\server\lib\webservices.jar;%CLASSPATH%;%EAI_CONFIG%; 
==============================================================================================================

============== input data [START] ============ 
INQ_DV_CD                      :[EAI0114] 
ERR_CODE                       :[000000000] 
ERR_CTT                        :[] 
REF_NO                         :[M1233810ES00598] 
============== input data [END] ============== 

[/EAIClient.java][외환]-> [send()] [rtn]true 
[외환]-> [testPrivate()] [응답  도착 여부] [send result:true 
[외환]-> [printMap()] ============ [output start] ============== 
DEPO_BNK_CD:[7119] 
ERR_CTT:[            ] 
SHPM_DT:[20081130] 
OVRS_BNK_COMM_ADV_CD:[1] 
DCRSE_ALWN_RT:[     0.000000000] 
PRSN_DUDT:[        ] 
PAT_PAYM_YN:[N] 
EXPI_DT:[0       ] 
REIM_BNK_BIC_CD:[HNBNCNBJXXX] 
ICRS_ALWN_RT:[     0.000000000] 
APTC_BNK_BIC_CD:[HNBNCNBJXXX] 
INQ_DV_CD:[EAI0114] 
ERR_CODE:[         ] 
OPEN_AMT:[         154100.00] 
[외환]-> [printMap()] ============ [output end] ============== 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.12.31(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 19:00   --> 종무식(하나은행), 이과장집(맥주) 

- 하나은행 Prj
- EAI 서비스 목록(http://111.15.1.7:9062/eaimanager.do?method=list) 
FXE0028(수입 LG발급원장-OZ), FXE0028(수입 LG발급원장-OZ)    
============================================================================================================== 

- 수납장표 요청 파일 업로드 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F 

수납장표 요청 
파일 업로드가 안된답니다.  
확인하시고 말씀해 주세요. 
금융정보팀 김나영입니다.  
관련 공문번호는 조사1과5332(694)이구요,  
엑셀 첨부해서 보내드릴께요.   
============================================================================================================== 

- 오즈 테스트(오즈 디버깅) 
write("[가감율 lbl]--> [#OZFormParam.AMT_MORE# ]"+ #OZFormParam.AMT_MORE#); 
Ctrl + Z ==> 콘솔에 write 결과값이 보임 
============================================================================================================== 

- 가감율(스크립트) 
string a, b, c; 
  
if (#OZFormParam.AMT_MORE#  != null) {   //증가허용률 
  a = #OZFormParam.AMT_MORE#;  //증가허용률 
} else { 
  a = "0"; 
}  
if (#OZFormParam.AMT_LESS# != null) {  //감소허용율 
  b = #OZFormParam.AMT_LESS#;  //감소허용율 
} else { 
  b = "0"; 
} 

c = a + "/" + b;  
setattr("caption", c); 
==============================================================================================================

- 연하장 보내기  
- 연말 결산, 신년 목표 
조영록 과장(여신) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■