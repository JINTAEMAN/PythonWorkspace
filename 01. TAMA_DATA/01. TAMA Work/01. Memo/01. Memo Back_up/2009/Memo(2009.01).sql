

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2009.01) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2009.01.01(목) 작업 ■■■■■■■■■■■■■■■■
---> 이과장집 
   
- [2009년 기축년(己丑年) 신년 목표]
목표: 재도약의 해 
 1. 개발자로서의 자질 향상(업무 숙련, 고급 기능 숙련)  
 2. W 프로젝트 계획 철저(성공) 
 3. M 프로젝트(3천: 1,8천) 
 (2008년: 18,279,547,   2007년:24,037,888 ) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.02(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:40   --> 이과장집(과자 사감) 

- 하나은행 Prj
- SBC(Server Based Computing) 시스템 리얼 적용(DB, FTP연결 안됨)   
==============================================================================================================

- 수납장표조회(http://127.0.0.1:9002/dpfi_ReceiptSlip.do?method=list&imageKey=05150003600000130020080307113455590)  
==> /dpfi_receipt_slip_list.jsp  

- 수납장표 요청 파일 업로드 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F 
==> /com/hana/depo/dpb/sub/dpb015_cvs_file_upload.jsp 
수납장표 요청: 파일 업로드가 안됨 
관련 공문번호는 조사1과5332(694)  
-------------------------------------------------------------------------------------------------------------------- 

CREATE SYNONYM DEPO.DEPO_WF_NTFCOST FOR DEPO_WF_NTFCOST;  
동일 데이터베이스 안에 두명의 유저가 있다.  
유저A,  유져B  
유저A가 유저B의 테이블을 이용해 새 테이블을 만든다.  
create table table_name as select * from 유저B.table_name;  
테이블을 만들지 않고 참조만 하려 한다면 synonym(동의어)을 만들고 권한을 부여 하면 됩니다.   

-유저 DEPO가 테이블 JESI_23_INFO에 대한 참조만 함 
CREATE SYNONYM DEPO.JESI_23_INFO FOR JESI_23_INFO; 
-유저 DEPO에 대한 DELETE, INSERT, SELECT, UPDATE 권한을 줌 
GRANT DELETE, INSERT, SELECT, UPDATE ON  FREX_CM_USER TO DEPO; 
==============================================================================================================

- 하나은행 행번: 9811673/ssj***** 
==============================================================================================================

- DB 연결(db 패스워드) 
금융정보 실서버: DBBPM1 111.18.1.52 frexadm/frexadm11 
금융정보 서버: DBBPM1_TEST 111.15.20.23 depo/depo11 frexadm/frexadm11 
금융정보 TOBE 서버: DBBPM1_TEST 111.15.20.23 depo2/depo2 
외환 TOBE 서버: DBBPM1_TEST 111.15.20.23 frex2/frex2 
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
리모드 리렉토리: /home/apps/serversource/frex2/src/frexEar/frexWebApp 
(이전 경로: /home/apps/dom_frex2/applications/frexEar/frexWebApp) 
6. 사이트 이름: 52. 외환 테스트 서버(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
리모드 리렉토리: /home/apps/dom_frex2/applications/oz35 
7. 사이트 이름: 53. 외환ASIS 테스트 서버(OZ) 
FTP: 111.15.1.4 (frex01/frex01_dev) 
리모드 리렉토리: /home/apps/dom_frex/applications/oz30/repository_file 
==============================================================================================================

- 조영록 과장(여신): 일자리 소개해준 다고 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.03(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:10 ~ 18:00 

- 하나은행 Prj
- 수납장표 요청 파일 업로드 
http://127.0.0.1:9002/DP015_Workobject.do?method=mgrpop&gubun=upload&pop=5&wfno=F572EADAB8F411DCA63D0003BA29841F  
==> /com/hana/depo/dpb/sub/dpb015_cvs_file_upload.jsp 
수납장표 요청: 파일 업로드가 안됨 
관련 공문번호는 조사1과5332(694) 
==> 원인:  
1. 교환일이 에러남(날짜 오류) ==> 조치 완료 
2. 업로드 파일(엑셀)에 더문더문 한줄씩 뛰워져 있음 ==> 줄을 붙여야 함 
==============================================================================================================

- 날짜 제거 처리(엑셀 데이타: 2008-07-01 ==> 20080701): /DpfiReceiptSlipFromFileAction.java 에서 
if(row[0].substring(4, 5).equals("-")){ //교환일이 "-" 이면 ==> 2008-07-01 
   exchage_dt = row[0].substring(0, 4) + row[0].substring(5, 7) + row[0].substring(8, 10); //교환일 
} else if(row[0].substring(4, 5).equals(".")){ //교환일이 "." 이면 ==> 2008.07.01 
   exchage_dt = row[0].substring(0, 4) + row[0].substring(5, 7) + row[0].substring(8, 10); //교환일 
} else if(row[0].substring(2, 3).equals(".")){ //교환일이 "." 이면 ==> 08. 7. 2. 
   String p_year = row[0].substring(0, 2).trim(); 
   String p_month = row[0].substring(3, 5).trim(); 
   String p_day = row[0].substring(6, 8).trim(); 
   if(p_year.length() < 4)  p_year = "20" + p_year; 
   if(p_month.length() == 1)  p_month = "0" + p_month; 
   if(p_day.length() == 1)  p_day = "0" + p_day; 
   exchage_dt = p_year + p_month + p_day; //교환일 
} 
==============================================================================================================

- 수정한 파일 
/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpfi/action/DpfiReceiptSlipFromFileAction.java 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.04(일) 작업 ■■■■■■■■■■■■■■■■ 
----> 07:30 ~ 15:00 

▦조기축구
07:30 기상  
08:20 신구초등학교 
09:20 게임 
10:00 신년 고사(오세림 회장, 원종록 총무), 휠라 코트 받음(20만원 상당) 
10:20 떡꾹 끓여 먹음 
11:50 종료  
12:30 300 당구장 
14:30 종료 
15:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.05(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00   -->  이과장집: 저녁 먹음(라면, 밥) 

- 하나은행 Prj
- 명의통보 엑셀Upload(/DpfiReturnNtfFileUploadAction.java) 수정  
-------------------------------------------------------------------------------------------------------- 

-  숫자 체크 함수(checkNumber, isNumber) 
private int checkNumber(String str) {  //숫자 체크 함수 
int gubun = 1; //구분(0:숫자, 문자:1) 
String delims = "1234567890";  
String str_tr = str.trim(); 
String delim_char = ""; 
String str_char = ""; 

for ( int i = 0; i < delims.length(); i++ ) { //숫자 Loop 
delim_char = delims.substring(i, i + 1); 

for ( int j = 0; j < str_tr.length(); j++ ) { //비교 문자 Loop 
str_char = str_tr.substring(j, j + 1); 
//log.debug("[processUploadedFileItem()] [delim_char]"+ delim_char +"[str_char]"+ str_char); 
if (delim_char.equals(str_char)) {  //숫자 이면 
gubun = 0; 
break; 
} 
    } 
}   
return gubun; 
}  
==============================================================================================================

- 조회 에러 
에러 내용: EXCEPTION raised String index out of range: 
원인: String index out of range: -1 에러는 String변수에서 길이에 대한 에러입니다. ...  
조치: String 이나 substring부분을 중점적으로 보시기 바랍니다 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.06(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 21:00  

- 하나은행 Prj
- 명의통보 엑셀Upload(/DpfiReturnNtfFileUploadAction.java) 수정  
==============================================================================================================

- 통계 -> 현황분석(1620359/182) 
/DpfiAnalizeTrendListAction.java 파일에서 
SignonUserAccount userAccount = getUserAccount(request);  
String strBrcd = userSession.getBrcd();      // 부점코드 
==============================================================================================================

- 구글 토크 가입: 진태만: *@*.*, 이은화 과장: *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.07(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:30  -->  이과장집: 맥주(과자 사감) 

- 하나은행 Prj
- 금융정보 협업 테스트 
협업: 이병훈 차장, 양현주씨 
------------------------------------------------------------------------------------------------------------------ 

 - 금융정보 결재목록(http://111.16.1.128/dpfi_WorkAppListInbox.do)   
- 명의인통보결재(/depo_project/src/depoEar/depoWebApp/WEB-INF/src/com/hana/depo/dpb/dao/DPB030WorkfloJDAO.java)  
public void insertRetNtf(String ntf_wf_no, String emp_no) {   // 사용 안함 
	// INSERT INTO DEPO_WF_RET_NTF 
}  

- DEPO_WF_RET_NTF 파일 생성 수정(기존: 결재후 생성, 수정: 인쇄 후 생성) 
명의인통보결재 화면에서 결재를 하고 명의인통보 조회/인쇄 화면에서 인쇄를 한 다음에 생성  
==============================================================================================================

- zipcode 데이타 에러 
SELECT A.WF_NO WF_NO,  A.NM NM, A.ADDR1 , A.ZIPCODE  
FROM DEPO_WF_NM_NTF A 
WHERE   A.WF_NO = '840B8864AAD611DDAB600003BA0D8E19' 
--  WHERE  A.ZIPCODE ='당점거래없음' 
---------------------------------------------------------  

-- UPDATE DEPO_WF_NM_NTF A 
SET A.ZIPCODE =NULL 
WHERE  A.WF_NO = '1183D100AADD11DDAB600003BA0D8E19'  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.08(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:30  

- 하나은행 Prj
- Batch 작업  
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 200 OK 
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 500 Internal Server Error 
http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_createFile.jsp?wf_no=F90651CEB52911DCA63D0003BA29841F
&cnt=1&output=311,312&imgkey=05150096500000130020071228185223306&mtd=email 
http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_save.jsp?wf_no=F90651CEB52911DCA63D0003BA29841F&cnt=1
&output=311,312&imgkey=05150096500000130020071228185223306&mtd=email 
==============================================================================================================

1. HttpClient 3.1 등록 
commons-httpclient-3.0.1.zip 를 받아서 압축을 풀고,  
commons-httpclient-3.0.1.jar 를 CLASSPATH 에 추가 
조치: Propertites of depo_project => Java Build Path ==> Libraries  
JRE Sytem Library(마우스 오른쪽 클릭) -> Add JARs 
JAR Selection: commons-httpclient-3.1.jar 체크 ==> OK  
==============================================================================================================

- 마우스 오른쪽 클릭 제어 
<script type=text/javascript> 
document.oncontextmenu = new function ('return false'); 
document.ondragstart = new function ('return false'); 
//document.onselectstart = new function ('return false');   //마우스 오른쪽 클릭 제어 
</script> 
==============================================================================================================

 -- 명의통보내역 조회   ==============> IDX: 76241, POST_NUM: 137070, NM: 김일홍 
SELECT IDX, A.POST_NUM AS 우편번호, A.NM AS 성명, A.POST_STATUS AS 통보상태, A.POST_NO AS 등기번호,  
      NTF_DATE AS 통보일자, OFFICIAL_DOC_NO AS 관련공문, A.RET_DATE AS 반송일, INPUT_DATE, A.EXCEL_UPLOAD_DT AS 엑셀_등록일자 
-- SELECT COUNT(*) 
FROM DEPO_WF_RET_NTF A  
WHERE A.IDX IS NOT NULL 
-- AND A.POST_STATUS IN ('00')   --통보상태(00:명의인 통보(다운로드전), 10:엑셀다운로드, 20:명의인 통보(+등기번호), 99:등기서류 반송)  
--AND A.INPUT_DATE = '20090107'  --등록일자   
--AND A.IDX IN ( '57091', '57093')     
ORDER BY A.IDX DESC 
--;   
--------------------------------------------------------------------------------------------------------------------------------- 

-- 중복 데이타 조회 
SELECT IDX, A.POST_NUM AS 우편번호, A.NM AS 성명, A.POST_STATUS AS 통보상태, A.POST_NO AS 등기번호,  
      NTF_DATE AS 통보일자, OFFICIAL_DOC_NO AS 관련공문, A.RET_DATE AS 반송일, INPUT_DATE, A.EXCEL_UPLOAD_DT AS 엑셀_등록일자 
FROM DEPO_WF_RET_NTF A 
WHERE ROWID > ( SELECT MIN(ROWID)   
FROM DEPO_WF_RET_NTF B 
WHERE B.POST_NUM = A.POST_NUM  --우편번호  
AND B.NM = A.NM  --성명  
) 
--AND A.IDX > 76241   --IDX 
ORDER BY A.NM DESC 
--;  
==============================================================================================================

- 스키 
예스스키: 강원도 정선군 남면 무릉리 416-1 
엑세풀 펜션: 강원도 정선군 남면 무릉리 778-1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.09(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 22:00  -->  이과장집: 맥주, 여신 김정자 과장 철수 

- 하나은행 Prj
- Batch 작업  
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 200 OK 
[/DPDBTool.java] ->[publish()] [getStatusLine()]HTTP/1.1 500 Internal Server Error 

java Exception in thread "main" java.lang.NoClassDefFoundError  
이에러는 환경문제를 떠나서  현재 자바를 실행시키는데 필요한 클래스 파일을 못 찾고 있다는 소리입니다.  
한번 c:/ 바로 밑에다가 자바 파일 놓고  컴파일 해보신후  그자리에서 한번 실행시켜보세요  
==============================================================================================================

- 탭으로 새창 띄우기(IE7.0) 
도구(T) -> 인터넷 옵션(O): 일반 --> 탭: 설정(T) 
팝업 표시 방법 ->  항상 새 탭에서 팝업 열기(T): 클릭 --> 확인 
==============================================================================================================

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

//SELECT FREXADM2.FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM 

SELECT FREX_CM_GET_BRNM_F('0120') BR_NM 
FROM DUAL]
   
FTP: 111.15.1.4   
리모드 리렉토리: /home/apps/dom_frex2/applications/oz35  ====> 예상 경로   
==============================================================================================================

- LogMein(원격 연결): 로그미인 
https://secure.logmein.com/computers.asp 
TAMA (세션): 컴퓨터 액세스 코드: tama1212 
ALLORNOT (세션): 컴퓨터 액세스 코드: lee20280 
*@*.* / 123edc 
설치: http://www.download.com/LogMeIn-Free/3000-7240_4-10317491.html?tag=mncol 
http://macrouni.tistory.com/553 

https://tama--1--phzpgmszkr.app55.logmein.com/main.html  ==> Get Pro 
https://secure.logmein.com/welcome/pro3995/  ==> *@*.* / 123edc 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.10(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 18:00  

- 하나은행 Prj
- frexadmin2 붙이기   
lgm.ozr(수입어음 도착 통지서) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 
printHaja.ozr(하자통보서 출력) --> HAJA_PRINT.odi ===> /ip_030_print_haja_info.jsp 
chuDoc.ozr(추심서류 도착통지서) --> GET_BRANCH_NM.odi ===> /ip_030_print_chu_info.jsp 

SELECT FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM FROM DUAL  ==> 
SELECT FREXADM2.FREX_CM_GET_BRNM_F('#OZParam.BR_CD#') BR_NM FROM DUAL 
--------------------------------------------------------------------------------------------------------- 

- 오즈 에러 
에러내용: 도큐먼트:  바인딩한 페이지가 존재하지 않습니다. 
조치: 보고서에 "데이터 밴드" 만 있는데 조회 건수가 0이면 데이터 밴드 자체가 그려지지 않기 때문에  
이런 메시지가 나올 수 있습니다. (물론 데이터 밴드의 반복횟수를 따로 설정하지 않는 경우에 해당됩니다)  
<param name="viewer.showerrormessage" value="false">   ===> 추가 

- obj_stream 생성 처리 
서버가 뷰어에 ozr, obj_stream 전달 (obj_stream 파일은 odi의 매타정보를 포함한 파일로 odi의 파일날짜가  
obj_stream 보다 최신인 경우 odi를 다시 obj_stream 파일로 생성함)  
==============================================================================================================

- 선적서류 접수 팝업(/edms_project2/src/frexEar/frexWebApp/com/hana/frex/ip/body/ip_030_detail.jsp) 
function printDoc() { 
	var gb = document.IP030WorkfloForm['workObject.dpdaGb'].value; 

	if (gb == '0') { 
	    getSimsaEmpNo();  //수입어음 도착 통지서 출력(/ip_030_print_bl_info.jsp) 
	} else { 
	    printDadp();  //추심서류도착통지서 출력(/ip_030_print_chu_info.jsp) 
	} 
} 

<table cellspacing="0" cellpadding="0" class="hnd" onClick="printDoc()" ALIGN="right"> 
    <tr> 
    <td class="btnLeft1"></td> 
    <td class="btnCenter1">재출력</td> 
    <td class="btnRight1"></td> 
    </tr> 
</table>  
<hana:contains name="IP030WorkfloForm" property="workObject.stepId" value="050, 000, "> 
    <!-- BUTTON 시작  --> 
<table cellspacing="0" cellpadding="0" class="hnd" onClick="printHaja()" ALIGN="right"> 
    <tr> 
    <td class="btnLeft1"></td> 
    <td class="btnCenter1">하자통보서</td>  ==> /ip_030_print_haja_info.jsp 
    <td class="btnRight1"></td> 
    </tr> 
</table> 
     <!-- BUTTON 시작 --> 
</hana:contains> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.11(일) 작업 ■■■■■■■■■■■■■■■■
----> 07:30 ~ 15:00 

▦조기축구
07:50 기상  
08:50 신구초등학교 
09:20 게임 
11:00  떡꾹 끓여 먹음(숙직실에서 끓여 옴) 
11:30 종료  
11:50 놀부 부대찍(만원 냄) 
13:00 제우스 당구장(양장피, 팔보채) 
15:30 요리왕(반포APT 상가 호균이형 가게) 
18:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.12(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 20:30 -->  이과장집: 맥주(이름, 금욜 피곤한데 괴롭혀서 삐져서 달램), 여신 이석호 과장 투입 

- 하나은행 Prj
- setAttribute 설정  
 /IP030WorkfloJDAO.java 파일에서 
public List getOzPrint_IPH_BASE( 
	p_StRtn = eai.sendNew(); 

	if(!p_StRtn.equals("1")) {  //전송 실패 이면  
		request.setAttribute("p_msg2", p_StRtn);   
	} 
} 

 /ip_030_print_bl_info.jsp 파일에서 
List list_IPB_LGM = (new com.hana.frex.ip.dao.IP030WorkfloJDAO()).getOzPrint_IPB_LGM(request, ref_no, account);   
//L/G 발급정보(조회된 데이타) 

if(list_IPB_LGM == null) {  //EAI에서 에러가 나면   
p_msg = (String) request.getAttribute("p_msg");    
}  
if(size_IPB_LGM < 1  size_IPH_BASE < 1) {  //EAI에서 에러가 나면  
%>   
<script>   
<% if(size_IPB_LGM < 1 && size_IPH_BASE < 1) { //EAI에서 에러가 나면(list_IPB_LGM)  %> 
alert("EAI 연계가 실패 되었습니다. \n[수입 LG발급원장 에러 내용]: <%=p_msg%>\n[L/C 정보 에러 내용]: <%=p_msg2%>");     
<% } else {   %> 
<% if(size_IPB_LGM < 1 ) {  //EAI에서 에러가 나면(list_IPB_LGM)  %> 
alert("EAI 연계가 실패 되었습니다. \n[수입 LG발급원장 에러 내용]: <%=p_msg%>");   
<% }    %> 
<% if(size_IPH_BASE < 1) {  //EAI에서 에러가 나면(list_IPH_BASE)  %>  
alert("EAI 연계가 실패 되었습니다. \n[L/C 정보 에러 내용]: <%=p_msg2%>");   
<% }  %> 
<% }  %> 
</script>  
<% } %>  
==============================================================================================================

- 등기리스트 업로드 수동 처리 
12월 02일: 1299, 12월 05일: 1294,   ==> EXCEL_UPLOAD_DT: 20090110 
12월 18일: 2595, 12월 23일: 997, 12월 29일: 798  ==> EXCEL_UPLOAD_DT: 20090112 
01월 06일: 996  ==> EXCEL_UPLOAD_DT: 20090113 

01. 2008년 12월 02일 등기발송리스트(처리).xls ~ 05. 2009년 01월 06일 등기발송리스트(처리).xls 
==============================================================================================================

- 11월중 금융정보EDMS 통계자료 
금융정보EDMS 제공건수: 3,246 건 
금융정보EDMS 통보건수: 6,209 건   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.13(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 20:30 -->  이과장집: 맥주(Batch작업 문제 처리: HttpClient) 

- 하나은행 Prj
- 정보계 각 단위업무별 일평균 거래량 조사 
--환전 실적 조회 @@@@@@@@@@@@@   
SELECT SUBSTR ( B.CR_ILSI, 1, 8 ) AS M_DAY, COUNT(*) AS M_CNT  
FROM DEPO_WF_HOSTDATA3 A, DEPO_WF_MASTER B 
WHERE A.WF_NO = B.WF_NO 
AND SUBSTR ( B.CR_ILSI, 1, 8 ) >= '20081201'  --최초생성일자(12월)   
AND SUBSTR ( B.CR_ILSI, 1, 8 ) <= '20081231'  
AND A.FETCH_GUBUN = '51'  --데이타구분(51:환전실적)  
GROUP BY SUBSTR ( B.CR_ILSI, 1, 8 )  
--;   
------------------------------------------------------------------------------------------- 

51 환전 실적, 64 명의인 변경, 69 수표 정보(정보계) 
53 카드번호로 신용카드 정보, 61 계좌번호로 신용카드 정보, 66 신용카드 정보(상세) 
52 가맹점 매출내역  
==============================================================================================================

- 오즈 파일 긴급반영 요청  
수정파일명: report-24.ozr 
수정내용: 명의인통보 수정(통보서의 사용목적 일괄적으로 '정보제공요청기관 문의요망'으로 수정) 
==============================================================================================================

- 사용자매뉴얼_영업점업무(금융정보제공) 
금융정보접수 ==> 금융정보접수 ==> 금융거래정보제공스캔  ==> (통계 -> 기록관리부) 
1520314 박정원  신탄진지점(652) 
==============================================================================================================

- 발송내역 처리: 404건 조회 됨 
-- 발송내역 조회 @@@@@@  
SELECT G.IDX,  G.NM AS 성명, G.ADDR1 AS 주소 
FROM DEPO_WF_DETAIL F, DEPO_WF_NM_NTF G  
WHERE F.WF_NO = G.WF_NO  
AND G.NTF_YN = '1' 
AND G.offer_date = '20090112' 
AND (F.org_type <> '13' and  (F.prt_type <> '08' or F.prt_type is null) )  --기관분류(13:보건복지부, 08:국세청)  
ORDER BY  G.NM 
--;  
----------------------------------------------------------------------------------------------------------------- 

-- 명의통보내역 조회: 401건 조회 됨 
SELECT A.IDX,  A.NM AS 성명, A.ADDR AS 주소 
-- SELECT COUNT(*)  
FROM DEPO_WF_RET_NTF A  
WHERE A.IDX IS NOT NULL 
   AND A.POST_STATUS IN ('10')   --통보상태(00:명의인 통보(다운로드전), 10:엑셀다운로드, 20:명의인 통보(+등기번호))  
    AND A.INPUT_DATE = '20090112'  --등록일자  
ORDER BY  A.NM     
--;  
----------------------------------------------------------------------------------------------------------------- 

- 발송내역 처리: 
테이블 생성 생성 후 받은 excel파일로 수동 업로드 처리 
76384 김호겸 ==>  20090112 ==> 등기번호: 1138202549215 
76630 윤광민 ==>  20090112 ==>  등기번호: 1130601452977 
76384 조맹욱 ==>  20090112 ==>  등기번호: 1138202548023 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.14(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 22:20  --> 곽과장 결근 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.  
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120  
==============================================================================================================

- 자료제공 방법 개선 Batch로 못 돌리는 이유 
1. dpb015_report_save.jsp 파일에서report-1.ozr(출력공문서), report-54.ozr(추가사항)  파일을 생성 하는데  
오즈로 만드는 과정에서 .ocx를 사용 
2. Batch 작업은 Java Application으로 만들어 지므로 .ocx를 사용 못 함(ActiveX 사용 못함) 
(311: report-1.ozr(출력공문서), 312: report-54.ozr(추가사항) 파일 생성됨) 
----------------------------------------------------------------------------------------------------------------- 

1. HttpClient: Script 사용 못함, ActiveX 사용 못함 
2. Junit: Script 사용 가능, ActiveX 사용 못함 
==============================================================================================================

- 예약된 작업 만들기 
1. batch 파일 생성(/test_batch.bat 파일) 
cd C:\Program Files\Internet Explorer 
iexplore.exe -new "http://127.0.0.1:9002/com/hana/depo/dpb/sub/dpb015_report_createFile.jsp? 
wf_no=F90651CEB52911DCA63D0003BA29841F&cnt=1&output=311,312 
&imgkey=05150096500000130020071228185223306&mtd=email" 

2. 예약된 작업 
시작 --> 프로그램(P) --> 보조프로그램 --> 시스템 도구 --> 예약된 작업: 클릭 
예약 작업 추가 --> 예약 작업 마법사 
작업이름: iexplore,  작업실행: 매일 
==============================================================================================================

- TeraStream 
CoSORT를 강력한 데이터 정렬(Sorting) 및 변형(Trans-formation)을 위한 핵심엔진으로 사용하는 ETT를 비롯한  
종합 Batch 작업 도구이다. Unix/Windows/Linux환경에서 파일 및 DB 형태의 데이터를 전환/정제/검증/관리  
등을 매우 빠르고 편리하게요구 사항에 맞게 처리함으로써 ETT혹은 EAI를 통한 데이터의 통합을 원할히 하도록  
설계된 신계념의 도구이다.  
==============================================================================================================

- 하나은행 차세대 프로젝트(한우리 신승춘 사장 전화옴: 하나 TeraStream SM) 
하나은행 차세대 프로젝트에서 EDMS 업무인 수신 업무를 운영하고 추가 개발하는 업무를 담당하여 BPM 
솔루션과 Batch 작업 솔루션은 Agent로 사용하여 업무 효율화에 노력. 
또, 외환업무를 EAI로 연계하는 로직 개발 
JAVA,JSP,ORACLE, STRUTS,EAI,BPM,EDMS 
==============================================================================================================

- 고속버스 승차권 예약 
2009.01.25(일) 06:30  서울 -> 포항 우등 29,400원 
2009.01.25(일) 11:00  서울 -> 포항 우등 29,400원 
2009.01.27(화) 24:00  포항 -> 서울 심야우등 32,300원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.15(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00  --> 이과장집(카프리 맥주, 과자 사감) 

- 하나은행 Prj
- 오즈 수정(윤경숙 대리(외환업무팀)와 협의   331-3629 1720774   0060): M1216-810NS03459 
lgm.ozr(수입어음 도착 통지서) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 
printHaja.ozr(하자통보서 출력) --> HAJA_PRINT.odi ===> /ip_030_print_haja_info.jsp 
chuDoc.ozr(추심서류 도착통지서) --> GET_BRANCH_NM.odi ===> /ip_030_print_chu_info.jsp 

라벨 ==> 표시형식: mask_#_####/##/##  -> 일자(2009/01/15)  ===> 오즈 3.0 이상 
라벨 ==> 표시형식: mask_#_#,###  -> 금액(2009/01/15) 
라벨 ==> 표시형식: #,##0.00  -> 금액(55766355.47  ==> 55,766,355.47)   
write("[리포트]--> [i]"+ (string)i);   //디버깅 ==> 숫자이면((string)로 변경) 
더미_밴드4 == > 안보임 ===> 해결: 반복횟수: 1로 설정 
=================================================================================================== 

string str; 
write("[제시기일 l lbl]--> [test]"); 

if (#OZFormParam.PRSN_DUDT#  != null) {   //제시기일이 존재하면  
	if (#OZFormParam.PRSN_DUDT# == ""  #OZFormParam.PRSN_DUDT# == "0") { 
		str = "";  
	} else { 
		write("[제시기일 lbl]--> [TEST] [제시기일이 존재하면]"); 
		str = formatDate(parseDate(#OZFormParam.PRSN_DUDT#, "yyyyMMdd"), "yyyy/MM/dd");  //제시기일  
	}  

	setattr("caption", str);  
}   
------------------------------------------------------------------------------ 

- slit 사용(참조: java.util.StringTokenizer) 
String[] p_icrs_alwn_rts = p_ICRS_ALWN_RT_Ori.split("[.]");    //증가허용률  
if(p_icrs_alwn_rts.length > 0) {  
	p_icrs_alwn_rt = p_icrs_alwn_rts[0];   //증가허용률  
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.16(금) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 21:00  --> 눈 

- 하나은행 Prj
- 오즈 수정(윤경숙 대리(외환업무팀)와 협의   331-3629 1720774   0060): M1216-810NS03459 
lgm.ozr(수입어음 도착 통지서) --> AFEX_IPB_LGM.odi ===> /ip_030_print_bl_info.jsp 

테스트용: 신용장번호: M1216812XS08068  USD149,600.00      
외환 AS-IS 실서버: http://111.16.1.87:6011/loginForm.do 
==============================================================================================================

- 은행연합회 통보비용 제출 
1. 은행연합회 통보비용 제출요망 
 1) 대상기관: 검찰청(2008.7.1 ~ 12.31), 경찰청(7.1 ~ 12.31), 관세청(7.1 ~ 12.31), 국세청(12.1 ~ 12.31)  
기관코드(02:검찰청, 03:경찰청, 06:관세청, 08:국세청)  
==============================================================================================================

- 오즈 엑셀 파일 저장(오즈 Grid 조회 건수 늘이기) 
Option --> Options --> SQL Tool Options 
Fetch of Need ==> Initial Fetch: 90000로 설정(디폴트: 100로 되어 있음) 
==============================================================================================================

- 자동차세 1년치 납부(1년치: 10%할인: 서울시 관악구청)  
납세번호: 6205751-10106001-2009013-5024652, 세목: 자동차세 자동차, 부과금액: 153,040원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.17(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00  --> 차세대 시범점 테스트 실시(하나은행에서 피자 사옴), 승본(나눔 93 후배) 결혼 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.  
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120  
==============================================================================================================

- Pro-C 
SQL을 이용하여 절차적 처리를 할 수 있는 절차적언어의 하나입니다.(C Code 기반) 
==============================================================================================================

- 한글 도메인 등록 요청(상요형) 
장소공  ==> 1년: 22만원, 2년: 33만원(가비아) 
==============================================================================================================

- 신사조기회 월 회비 등록(HSBC 매월 28일) 
신한은행: 110-260-713275, 예금주: 박태호(재무) ==> 월 2만원(회비)   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.18(일) 작업 ■■■■■■■■■■■■■■■■
----> 07:30 ~ 12:00 

▦조기축구
07:40 기상  
08:30 신구초등학교 
09:20 게임  
11:50 종료  
13:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.19(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 20:00   --> 삼겹살(EDMS팀), 이과장집(콘* 찢어짐) 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.  
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120  
==============================================================================================================

- 데이타 이관 
SELECT * 
FROM F_SW.VWVQ14_INBOX A 
WHERE A.F_WOBNUM = '5E3E182E9B1B11DDAB600003BA0D8E19'  
--; 
------------------------------------------------------------------------------ 

-- CREATE OR REPLACE VIEW VWVQ14_INBOX 
(F_WOBNUM, F_WORKSPACEID, F_LOCKED, F_LOCKMACHINE, F_LOCKUSER,  
 F_LOCKTIME, F_LASTUSER, F_BOUNDUSER, F_BOUNDMACHINE, F_TAG,  
 F_UNIQUEID, F_OPERATIONID, F_WORKCLASSID, F_ENQUEUETIME, F_CREATETIME,  
 F_INSTRSHEETID, F_WORKORDERID, "F_TimeOut", "F_Subject", "F_Overdue",  
 "iwfDisplayLevel", "iwfNormal", "swfBankCode", "swfBranchCode", "swfMapId",  
 "swfPrevResponse", "swfPrevUser", "swfStepId", "swfCurGroup", "swfRoleCode",  
 "iwfPrimeWork", "swfScanOpId", "swfRejectYN", "swfMapVer", "iwfSeqNo",  
 "swfRouteInfo", "swfCurUserId", "swfOrderType") 
AS  
SELECT RAWTOHEX(F_WobNum) F_WobNum, F_WorkSpaceId, F_Locked, F_LockMachine, F_LockUser,  
F_LockTime, F_LastUser, F_BoundUser, F_BoundMachine, F_Tag, F_UniqueId, F_OperationId,  
F_WorkClassId, F_EnqueueTime, F_CreateTime, F_InstrSheetId, F_WorkOrderId,  
F_TimeOut "F_TimeOut", F_Subject "F_Subject", F_Overdue "F_Overdue",  
iwfDisplayLevel "iwfDisplayLevel", iwfNormal "iwfNormal", swfBankCode "swfBankCode",  
swfBranchCode "swfBranchCode", swfMapId "swfMapId", swfPrevResponse "swfPrevResponse",  
swfPrevUser "swfPrevUser", swfStepId "swfStepId", swfCurGroup "swfCurGroup",  
swfRoleCode "swfRoleCode", iwfPrimeWork "iwfPrimeWork", swfScanOpId "swfScanOpId",  
swfRejectYN "swfRejectYN", swfMapVer "swfMapVer", iwfSeqNo "iwfSeqNo",  
swfRouteInfo "swfRouteInfo", swfCurUserId "swfCurUserId", F_UF021 "swfOrderType"  
FROM F_SW.VWQueue14_344  
WHERE F_Locked < 2 AND F_QueueWPClassId = 1 WITH READ ONLY;  

- 필드 타입 에러 
ORA-00997: illegal use of LONG datatype  
to_lob() 내장함수: long함수를 lob로 전환  ===> 안됨 
==============================================================================================================

- SQL PLUS 접속 
사용자 이름(U): depo, 암호(P): depo1, 호스트 문자열(H): DBBPM1 
사용자 이름(U): depo, 암호(P): depo1, 호스트 문자열(H): DBBPM1_TEST 
사용자 이름(U): frexadm, 암호(P): frexadm11, 호스트 문자열(H): DBBPM1_TEST 
------------------------------------------------------------------------------ 

- COPY FROM 
COPY FROM 은 SQLPLUS 명령어이고, 서로 다른 DB로 부터 테이블의 데이터를 그대로 복사하고자 할 때 사용 
(테이블을 백업할때 만약 해당 테이블에 BLOB,CLOB,LONG RAW,LONG의 컬럼이 있다면)   

SQL> connect frexadm/frexadm11@DBBPM1_TEST 
연결되었습니다.   
SQL> COPY FROM depo/depo1@DBBPM1  CREATE VWVQ14_INBOX USING SELECT * FROM F_SW.VWQUEUE14_344  
--;    
배열의 인출/바인드 크기는 15입니다. (배열 크기는 15) 
작업이 완성되면 커밋됩니다. (복사 완료: 0) 
최대 긴 크기는 80 입니다. (롱 80) 

ERROR: 
ORA-01727: 수치의 정도 범위(38 자리 이내)를 초과했습니다 
------------------------------------------------------------------------------ 

- 수치 필드가 126 이여서 에러가 나는 것으로 추정 됨  ===> 실패 
CREATE TABLE VWQUEUE14_344 
( 
	F_UNIQUEID        FLOAT(126)                  NOT NULL, 
} 

SQL> SELECT COUNT(*) FROM VWVQ14_INBOX   --;     
==============================================================================================================

- VWQueueQuery 경로 
import filenet.vw.api.VWQueueQuery; 
vwQueueQuery = vwQueue.createQuery("F_WobNum", minValue, maxValue, 1+2+32+64, null, null, 1); 
C:\depo_project\lib\workflo\pw\filenet\vw\api\VWQueueQuery  ===> pw.jar 
 ==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.20(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 20:00   --> 미국 44대 대통령 오바마 취임 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.   
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120  
==============================================================================================================

- 포항계 정산, 통보, 피부과, 드림 안과(충혈: 건조증) 
포항계 회비: 4만원, 농협에서 11만원 찾고 ==> 동양종금에 15만원 송금 완료 
==============================================================================================================

- 뷰티클래식 피부과 치료(회원번호: 0000823)  
http://www.beauty-classic.com 
- 드림 성모 안과 치료 
http://www.hellolasik.com 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.21(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 20:00 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.  
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120 
--------------------------------------------------------------------------------------------------------- 

- 이미지 목록(/DPB015WorkfloAction.java 에서) 
public ActionForward detail(ActionMapping mapping, ActionForm form, 
            HttpServletRequest request, HttpServletResponse response) 
workfloJDAO.getImageInfo(workfloForm.getWorkObject());   // 이미지정보  
} 

- 이미지 목록(/DpfiCommonJDAO.java 에서) 
public final void getImageInfo(WorkfloModel workfloModel) { 
try { 
    strSql = new StringBuffer(); 
    strSql.append("SELECT B.FORM_NM FORM_NM,         \n"); 
    strSql.append("       A.FORM_CD FORM_CD,         \n"); 
    strSql.append("       NVL(A.IMG_DID,'') IMG_DID,  \n"); 
    strSql.append("       NVL(A.EIDX,'') IMG_DID2  \n"); 
    strSql.append("FROM COMM_CM_IMG A, COMM_CM_DOC B   \n"); 
    strSql.append("WHERE A.IMG_KEY = ?              \n"); 
    strSql.append(" AND A.UPMU_GB = '05'           \n"); 
    strSql.append(" AND A.DEL_YN <> 'Y'             \n"); 
    strSql.append(" AND A.FORM_CD = B.FORM_CD \n"); 
    strSql.append("ORDER BY B.FORM_ORD, A.IMG_SEQ ASC \n");  
}      

pStmt = dbcon.prepareStatement(strSql.toString()); 
pStmt.setString(1, StringUtil.checkNull(workfloModel.getImageKey()).trim()); 
resultSet = pStmt.executeQuery(); 

while (resultSet.next()) { 
if (!isPrint1  && resultSet.getString("FORM_CD").toString().equals("9-09-0002")) { 
imageList.add(new ImageInfoModel("< 작업의뢰 >", ""));  //공백 한줄 추가.. 
isPrint1 = true; 
} 
if (!isPrint2  && resultSet.getString("FORM_CD").toString().equals("5-08-0156")) { 
imageList.add(new ImageInfoModel("< 발송이미지  >", ""));  //공백 한줄 추가.. 
isPrint2 = true; 
} 
if (!isPrint3  &&  
(   resultSet.getString("FORM_CD").toString().equals("5-08-1000")  
      resultSet.getString("FORM_CD").toString().equals("5-08-0157")  
    ) 
   )  
{ 
imageList.add(new ImageInfoModel("< 수표,전표,기타  >", ""));  //공백 한줄 추가.. 
isPrint3 = true; 
} 
String form_nm = resultSet.getString("FORM_NM"); 
if ( resultSet.getString("FORM_CD").toString().equals("5-08-0157") ) { 
form_nm += Integer.toString(supyoCnt); 
supyoCnt++; 
} 

ImageInfoModel imgModel = new ImageInfoModel( form_nm  ,  
StringUtil.checkNull(resultSet.getString("IMG_DID")) + StringUtil.checkNull(resultSet.getString("IMG_DID2")) ); 
   
imgModel.setFormCd( resultSet.getString("FORM_CD").toString() ); 
imageList.add(imgModel); 
} 

workfloModel.setImageInfo(imageList);  
} 

- 이미지 보기(/dpb015_detail.jsp 에서) 
<select name="image" id="image" size="4" style="width:290;" onclick="viewImageDpfi(this.value)"> 
<logic:notEmpty name="DPB015WorkfloForm" property="workObject.imageInfo"> 
<logic:iterate id="imageInfo" name="DPB015WorkfloForm" property="workObject.imageInfo"> 
<option value="<bean:write name="imageInfo" property="imageId"/> 
~~<bean:write name="imageInfo" property="formCd"/>"> 
<bean:write name="imageInfo" property="formName"/> 
</option> 
  </logic:iterate> 
</logic:notEmpty> 
</select>  

- 이미지 보기(/dpcmscript.js 에서) 
function viewImageDpfi(docId) {  // 이미지 보기 
var strUrl = "/com/hana/depo/dpfi/common/dpfi_utils_imageview.jsp?did=" + strImagez +"&bkmark="+ arrParams[1]+"&frmcode="+ frmCD; 
 parent.hidden.location.href = strUrl; 
} 

- 이미지 보기(/dpfi_utils_imageview.jsp 에서) 
HanaFxLink hdn = new HanaFxLink(); 
rs = hdn.getFile( did, drmUserName );  // did ==> docID: ex) fxedmD0000010n  
imagepath = (String)rs.get("path");  
status = (String)rs.get("STATUS");  

if ("0".equals(status))  
{ 
imagepath = imageDownLoadUrl + filename;  
} else if (status == null)  
{  
} else { 

%> 
<script language="javascript">alert("EDMS 엔진에서 이미지파일을 가져오지 못했습니다.");</script>   
<% 
} 
--------------------------------------------------------------------------------------------------------- 

- 이미지 편집(/dpb015_detail.jsp 에서) 
function editImagePopup() {   //이미지 편집 
pop = window.showModalDialog("/com/hana/depo/dpb/sub/dpb015_edit_image.jsp", window, str);  
} 

<span class="btn05" onclick="editImagePopup()" style="cursor:hand">이미지편집</span><span class="btn_back"></span><br><br> 

/dpb015_edit_image.jsp 에서 
<body onLoad="init()" topmargin="5" leftmargin="0" marginheight="0" marginwidth="0"> 
<form action="/com/hana/scan/dpfi/scan_ImageIndexCall.jsp" method="post" name="frm" id="frm">   
</form>    
 이미지 편집중입니다. 
</body> 

/scan_ImageIndexCall.jsp 에서 
<COMMENT id=__NSID__> 
<OBJECT ID="VisIndex" WIDTH=350 HEIGHT=95 CLASSID="CLSID:FD8305FF-A372-4BE0-A68E-F89E033F7FEF"> 
<PARAM NAME="CallProgramName" VALUE="VisImageIndex.exe"> <!-- 호출할 프로그램명 --> 
</OBJECT> 
</COMMENT>   
==============================================================================================================

- 오즈 서버 에러 
invalid protocol version. the peer seem's to be not an OZServer. 
Please check the following URL of ozserver. 
http://111.15.1.7:5006/oz30/server/TOBE 
오즈 TOBE ==> /home/apps/dom_frex2/applications/oz35/repository_files  
connection_servlet=http://111.15.1.7:5006/oz30/server 
--> connection_servlet=http://111.15.1.7:5006/oz35/server 
==============================================================================================================

- 뷰티클래식 피부과 치료(회원번호: 0000823) ==> 2번째, 잡 조회(메일 처리), 포항계 인쇄 
http://www.beauty-classic.com  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.22(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 20:30   --> 설 선물(한우리 신사장: 기업은행 Gift카드: 5만원) 

- 하나은행 Prj
- 이미지 편집 에러 
아래건으로 상세화면 들어가 보면 
이미지편집에는 34장(수표 포함)이 있는데 EDMS에서는 17장만 보인다고 합니다.  
096B206EE04211DDAB630003BA0D8E19  조사1과5332862 EMP_NO: 1741120 
==> 스캔시 수표 정보가 스캔은 되었는데 EDMS 엔진에서 수표 이미지파일을 가지고 오지 못 함 
       (일시적으로 EDMS 엔진 이상이나 네트웍 장애가 있었든 것으로 추정 됨) 
커버페이지(센터용)(1개) + 금융거래정보제공요구서(센터용)(1개) + 첨부문서(2개) + 수표(16개) 
금융거래정보제공 대외발송문서 수표(13개)  ===> 현재 총: 17개(수표 이미지 안 보임) 
==> 실재 총 수량: 33개(수표 이미지 16개 포함) 
==============================================================================================================

- 이미지 편집 파일(ocx) 
1. HanaBankImageEdit.exe 설치 
2. C:\EDMS\Image\DPA\VisIndexCall.ocx 파일 재 등록 
REGSVR32  C:\EDMS\Image\DPA\VisIndexCall.ocx 
3. C:\EDMS\Image\ImageEdit 폴더 ocx 파일 재 등록 
REGSVR32 C:\EDMS\Image\ImageEdit\imgedit.ocx 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.23(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:50 ~ 18:30   --> 저녁(생선집: 이과장), 맥주(상상 호프집), 이과장집(금, 토) 

- 하나은행 Prj
- 업무재할당 진행중 표시 요청 
업무재할당(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> 업무재할당(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
현재 금융정보제공 명의통보, 금융정보제공 통보비용의 경우 "-"로 표시 되어 있음 

/AdminReassignDAO.java 파일에서 
public HashMap findReassignList(int currentPage, int countPerPage, String empNo, String prevEmpNo,  
     String roleCd, String masterBrcd) {  
if ( StringUtil.checkNull(rs.getString("DISUSE_YN")).equals("X") ) { 
reassign.setDisuse_yn("미진행");  
} 
else if ( StringUtil.checkNull(rs.getString("DISUSE_YN")).equals("Y") ) { 
reassign.setDisuse_yn("작성완료");  
} 
else { 
reassign.setDisuse_yn("진행중"); 
} 
} 

/admin_reassign_center.jsp 파일에서 
<logic:equal name="reassign" property="stepCd" value="004"> <!-- 1. 업무종류가 금융정보제공 센타 이면 --> 
<logic:equal name="reassign" property="disuse_yn" value="미진행"> <!-- 1.1. 진행상태가 미진행 이면 --> 
<td colspan="2"  bgcolor="#f6e690" class="top_5 bottom_3 center"><bean:write name="reassign" property="disuse_yn"/></td> 
</logic:equal> 
<logic:notEqual name="reassign" property="disuse_yn" value="미진행"> <!-- 1.2. 진행상태가 미진행이 아니면 --> 
<td colspan="2" class="top_5 bottom_3 center"><bean:write name="reassign" property="disuse_yn"/></td> 
</logic:notEqual> 
</logic:equal>  
<logic:notEqual name="reassign" property="stepCd" value="004"> 
<!-- 2. 업무종류가 금융정보제공 센타가 아니면(금융정보제공 명의통보, 금융정보제공 통보비용) --> 
<td  width="60" colspan="2"  class="top_5 bottom_3 center">-</td> 
</logic:notEqual>  
--------------------------------------------------------------------------------------------------------- 

-- 작성 내역 조회 
SELECT WF_NO, DISUSE_YN --작업진행정도(null:처음, E:미진행, D:작업시작, N:진행중, Y:작성끝(통보대상자 작성완료:책임자 상신가능))   
FROM DEPO_INF_ETL_NTF G --작성 내역 요약 Table 
WHERE G.WF_NO IN ('41D9112E288011DDA64D0003BA29841F') 
--;  
==============================================================================================================

-- 명의인통보(명의인통보 조회_인쇄) 조회 @@@@@   ===> 명의인통보 테이타 만들기  
SELECT G.WF_NO, G.NM, G.SSN_BIZ_NO, G.OFFER_DATE AS 기관제공일, G.ZIPCODE AS 우편번호, G.ADDR1, G.ADDR2 
-- SELECT COUNT(*)   
FROM DEPO_WF_NM_NTF G  
WHERE G.WF_NO IS NOT NULL 
AND G.NTF_YN = '1'    --통보여부(1:통보, 2:통보상신, 3:결재중, 4:결재완료, 5:미통보)   
AND G.OFFER_DATE = '20090107' --기관제공일    
-- AND G.ZIPCODE > '550786'     --우편번호 
ORDER BY G.OFFER_DATE DESC 
--;   
------------------------------------------------------------------------------------------------------ 

-- 명의통보내역 조회   ==============> TEXT용 테이타 정리 -->  DIX:58554, 58555   
SELECT IDX, A.POST_NUM AS 우편번호, A.NM AS 성명, A.POST_STATUS AS 통보상태, A.POST_NO AS 등기번호,  
      NTF_DATE AS 통보일자, OFFICIAL_DOC_NO AS 관련공문, A.RET_DATE AS 반송일, INPUT_DATE,  
   A.EXCEL_UPLOAD_DT AS 엑셀_등록일자 
-- SELECT COUNT(*) 
FROM DEPO_WF_RET_NTF A 
-- WHERE A.POST_STATUS ='00'  --POST_NO(등기번호)  
WHERE A.IDX IS NOT NULL 
   AND A.POST_STATUS IN ('20')   --통보상태(00:명의인 통보(다운로드전), 10:엑셀다운로드,  
20:명의인 통보(+등기번호), 99:등기서류 반송)  
   -- AND A.INPUT_DATE = '20090105'  --등록일자  
   AND A.EXCEL_UPLOAD_DT = '20090107'  --엑셀_등록일자 
   --AND A.IDX IN ( '57091', '57093')     
ORDER BY A.IDX 
--;   
==============================================================================================================

- Flex 
어도비 플렉스, 2004년 매크로미디어에 의하여 만들어진 리치인터넷어플리케이션을 개발하기 위한 기술 
==============================================================================================================

- 엑셀 드롭다운 박스 설정(콤보박스, 리스트 박스) 
데이타(D) --> 유효성 검사(L) --> 데이타 유효성 
제한대상(A): 목록, 드롭다운 표시(I): 체크 
원본(S): 수용,변경불가(TFT),변경불가(개발팀),미결정 
==============================================================================================================

- 엑셀 드롭다운 박스 설정(콤보박스 + 콤보박스 + 콤보박스) 
1. 콤보박스 아이템으로 사용할 가격표가 있어야겠죠  
Sheet1 만들기 
2. Sheet2에 적용할 양식을 만들었습니다  
콤보박스는 메뉴에서 [보기 - 도구모음 - 양식]으로 들어가면 있구요   
원하는 모양으로 양식을 꾸며주세요 
그다음 각 콤보박스를 마우스 오른쪽으로 누르고 [컨트롤서식(F)]으로 들어갑니다  
그리고 [입력범위]와 [셀연결]을 아래 그림처럼 입력해 줍니다  
입력범위는 콤보박스를 클릭하면 보여질 아이템들이 있는 범위이고  
셀연결은 콤보박스의 아이템을 선택하면 반환되는 [인덱스]가 기록될 셀입니다  
INDIRECT는 텍스트로 지정한 참조영역의 값을가져오는 함수구요  
C7이 2이므로 =INDIRECT("Sheet1!F"&C7+1)는 =INDIRECT("Sheet1!F3")이 되는거죠 
=INDIRECT("Sheet1!B"&C3+1)  --> 단가 
=INDIRECT("Sheet1!D"&C5+1)  --> 단가2 
=INDIRECT("Sheet1!F"&C7+1)  --> 단가3 
==============================================================================================================

- 고속버스 승차권 예약 
2009.01.25(일) 06:50  서울 -> 포항 우등 29,400원(취소) 
2009.01.27(화) 24:00  포항 -> 서울 심야우등 32,300원(사용) 
전산센타: 02)536-6460~3 
- 고속버스 노선(낙성대 -> 고속터미널): 643번, 8541번, 5413번 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.28(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 19:00   --> 배과장 만남(삼겹살, 포장마차), 이과장집(1월말 철수 결정) 

- 하나은행 Prj
- 업무재할당 진행중 표시 요청 
업무재할당(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> 업무재할당(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
현재 금융정보제공 명의통보, 금융정보제공 통보비용의 경우 "-"로 표시 되어 있음  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.29(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:50 ~ 20:00  --> 점빼기 수술(레이저):14개(4개는 2만원): 총 15만원 --> 152,100원(DC20%) (뷰티클래식 피부과: 송무현) 

- 하나은행 Prj
- 외환EDMS 데이타 변경 문서 작업 
외환EDMS데이타변경자료_박성우.xls 
==============================================================================================================

- 연락처 
(주)3rdinfo 진동권 사장(*, *@*.*)(장재성PM 소개) ==> 전화 통화 함 
(주)SK C&C 김태욱 과장(*) ==> 전화 통화 함 
--------------------------------------------------------------------------------------------------- 

- 이력서 보냄(이메일) 
1. 기업은행 여신업무 개발 프로젝트(업무 몰라도 무관하나 은행업무 경험자 필수 사항) 
- Java JSP,Servlet 구현 가능한 중급 2명 
- 2009.02.02 ~ 2009.08.31 까지 7개월 프로젝트 
- 출근 08:30 ~ 퇴근 22:00 근무 조건을 수용 할수 있는 분만 지원 하세요. 
업체명 : 솔인텍 전상용 사장(*@*.*): * 
홈페이지 : www.solintech.co.kr 

2. 우리은행 IFRS관련 프로젝트 
-기간 : 2월중순~ 12월말 
-인원 : 100명 내외 
-스킬 : java,회계관련 프로젝트 경험자 
업체명 : 다른정보기술(주) 박호균 상무(*@*.*)  
홈페이지 : www.dareun.co.kr 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2009.01.30(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 18:00   --> 이과장집(Prj 철수, LCD 집까지 들어줌: 택시) 

- 하나은행 Prj
- 업무재할당 진행중 표시 요청 
업무재할당(http://111.16.1.128/ad_reassign_AdminReassignTreeAction.do) 
--> 업무재할당(http://111.16.1.128/ad_reassign_AdminReassignAction.do) 
현재 금융정보제공 명의통보, 금융정보제공 통보비용의 경우 "-"로 표시 되어 있음 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■