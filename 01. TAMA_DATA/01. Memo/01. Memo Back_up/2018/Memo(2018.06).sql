	

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.06) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.06.01(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 22:40 ==> 염차장이 UI 공통 파일 함부로 만들어 놔서 내가 화냄(10시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
1. Message 등록(다국어)(/SY_MessageInputMtGual.xfdl)   ==> 완료 @@@
 1) gds_message ==> 언어(01: 한국어, 02. 영어, 03. 중국어, 04. 일본어, 05: 러시아어)
==============================================================================================================

 [공통 공지] 메세지 추가(이전 소스: 사용 불가)
1. 메세지 요청이 와서 추가 했어요. 필요시 요청 바랍니다.
 1) globalvars.xml 파일 업데이트 받으면  됩니다. 
gfn_alert(this, "000171", "");	// 000171: 저장할 내용이 없습니다.
==> gfn_alert("I0009", "저장");		// I0009: [M1]할 Data가 존재하지 않습니다.

gfn_confirm(this, "000172", "", "fn_confirmCallback"); 		// 000172: 삭제하시겠습니까?   ==> Q0004
==> gfn_confirm("Q0004");	  // Q0004: 삭제하시겠습니까?  
if(gfn_confirm("Q0002"))  // Q0002: 저장 하시겠습니까?  
{
	trace("[/SY_MessageInputMtGual.xfdl][fn_save()]==> [02. 저장(공통)][TEST_02_1]" );  

	this.fn_saveData();   	// FSP_서버 저장 함수[fn_saveData()] 호출
}  

if(gfn_confirm("Q0019", "AP QMS"))  // Q0019: [M1] 시스템을 종료하시겠습니까?
{
	trace("[/APQMS.xadl][application_onbeforeexit()]==> [창닫기_완료][TEST_51]" );  
	//this.fn_saveData();   	// FSP_서버 저장 함수[fn_saveData()] 호출
}  

gfn_alert("I0002");		// 정상적으로 처리되었습니다. 
==============================================================================================================

- alert 저장 에러
1. 현상: 화면 등록[object Div]를 확인하세요.
2. 원인: 이전 alert 함수가 수정이 안되어 있음
3. 조치:
gfn_alert(this, "000050", "");	 // 000050: 정상적으로 등록되었습니다.
==> gfn_alert("I0002");		// 정상적으로 처리되었습니다. 
==============================================================================================================

- 로그인 화면(/commLogin.xfdl)에 아이디 저장 기능 개발
1. Cookie 이용 대신에 getPrivateProfile, setPrivateProfile을 이용
 1) getPrivateProfile: Application에서 개인화를 위해 저장해 놓은 데이타를 얻어오는 Method 
strValue = getPrivateProfile("aa");
strValue = application.getPrivateProfile("aa");
-------------------------------------------------------------------------------------------------------

 2) bSucc: Application에서 개인화를 위해 데이타를 저장하는 Method 
bSucc = setPrivateProfile("aa", "A");
bSucc = application.setPrivateProfile("aa", "A");
==============================================================================================================

- 개발 서버 로그인 에러 
1. 현상: 로그인(/commLogin.xfdl) 화면에서 로그인 버튼 클릭(with java)을 하면 아래 에러 발생
======================= OUTDATA ========================
 
[Variables]
variable=[
index=0 (errorSqlCode, string, "")
, index=1 (errorSqlStatus, string, "")
, index=2 (ErrorCode, int, "-999999999")
, index=3 (ErrorMsg, string, "FSPManager#SY_LoginAction")
, index=4 (errorTrace, string, "com.sz.core.ServiceNotFoundException: FSPManager#SY_LoginAction
at com.sz.core.DefaultServiceManagerService.getService(Unknown Source)
at com.sz.core.DefaultServiceManagerService.getServiceObject(Unknown Source)
at com.sz.core.ServiceManagerFactory.getServiceObject(Unknown Source)
at com.sz.core.ServiceManagerFactory.getServiceObject(Unknown Source)
at com.sz.ui.BaseMainServlet.process(Unknown Source)
at com.sz.ui.AbstractMainServlet.doPost(Unknown Source)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:650)
at javax.servlet.http.HttpServlet.service(HttpServlet.java:731)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:303)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)
at org.apache.catalina.filters.CorsFilter.handleNonCORS(CorsFilter.java:458)
at org.apache.catalina.filters.CorsFilter.doFilter(CorsFilter.java:177)
at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:241)
at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:208)
2. 원인: com.sz.core.ServiceNotFoundException: FSPManager#SY_LoginAction --> SY_LoginAction class를 못 찾음
 1) Project 빌드가 제대로 안됨
  가. build_classes ==> D:\QMS\APQMS\workspace\APQMS\build\classes ==> 정상 빌드 되었으면 classes 폴더가 생성됨  
3. 조치:  Project 빌드 다시 실행
 1) eclipse 상단 > Project > Clean > Clean(새창) --> Clean all projects: 체크 박스 선택 ==> OK:클릭
 2) build class 확인 => D:\QMS\APQMS\workspace\APQMS\build\classes ==> 정상 빌드 되었으면 classes 폴더가 생성됨 
==============================================================================================================

/* 메시지 정보 조회 ==> [cm:CM_MessageInfo_S01.xml] [2018.06.01, by 진태만] */ 
SELECT MSG_CD               -- 화면 등록
		 , MSG_DIV              -- 메시지구분
		 , MSG_CONTENT          -- 메시지내용
		 , REMARKS              -- 비고
		 , MSG_CD AS MSG_CD_ORG -- 화면 등록
FROM TB_CM_MSGCD
WHERE 1 = 1
     AND MSG_CD LIKE '%' || 'T0001' || '%'
     AND MSG_DIV = 'T'
ORDER BY MSG_CD		
;
==============================================================================================================

- 넥사크로, Xplatform 2개월 라이센스 셋팅
1. 유효 기간: 2018.06 ~ 07
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.02(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 06:40 ~ 10:10 ==> 출근(06:40 ~ 10:10), 도윤주 결혼(13시, 수원, 정희 이모 딸)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
1. Message 등록(다국어)(/SY_MessageInputMtGual.xfdl)  
 1) 외국어 처리(gds_message) ==> 언어(01: 한국어, 02. 영어, 03. 중국어, 04. 일본어, 05: 러시아어)
 /*****************************************************************************************
* 함  수  명 : gfn_message()
* 설   명    : Common message 
* 작  성 자 : 진태만
* 작  성 일 : 2018.05.31
*****************************************************************************************/ 
gfn_message = function(sCode, sKind, objArr)
{  
	trace("[/lib_Form.xjs][gfn_message()]==> [TEST_01][sCode]"+ sCode +"[sKind]"+ sKind +"[objArr]"+ objArr ); 

	var sMessage	= "";
	var sMsgGp		= "";
	var sType		= "";
	var sCaption	= "";
	var retVal;
	var iFindRow 	= application.gds_message.findRow("MSG_CD", sCode);		// 화면 등록
	 
	if(iFindRow < 0)
	{
		sMessage 	= "화면 등록[" + sCode + "]를 확인하세요.";
		sType 		= "warning";
		sCaption 	= "Warning";
	}
	else
	{
		sMsgGp		= application.gds_message.getColumn(iFindRow, "MSG_DIV");		// 메시지구분
		sMsgLang	= application.gds_message.getColumn(iFindRow, "MSG_LANG");  	// 언어
		sMessage	= application.gds_message.getColumn(iFindRow, "MSG_CONTENT");	// 메시지내용
		sMessage2	= application.gds_message.getColumn(iFindRow, "MSG_CONTENT2");	// 메시지내용2
		sMessage3	= application.gds_message.getColumn(iFindRow, "MSG_CONTENT3");
		sMessage4	= application.gds_message.getColumn(iFindRow, "MSG_CONTENT4");
		sMessage5	= application.gds_message.getColumn(iFindRow, "MSG_CONTENT5"); 
		trace("[/lib_Form.xjs][gfn_message()]==> [TEST_03][언어]"+ sMsgLang +"[MsgGp]"+ sMsgGp +"[sMessage]"+ sMessage );
		//trace("[/lib_Form.xjs][gfn_message()]==> [TEST_04][gds_message,_CNT]"+ application.gds_message.getRowCount() 
		+"[gds_message.saveXML()] \n"+ application.gds_message.saveXML() );

		if(sMsgLang == "02")  // 언어가 02 이면
		{
			sMessage = sMessage2;
		}
		else if(sMsgLang == "03")  // 언어가 03 이면
		{
			sMessage = sMessage3;
		}
		else if(sMsgLang == "04")  // 언어가 04 이면
		{
			sMessage = sMessage4;
		}
		else if(sMsgLang == "05")  // 언어가 05 이면
		{
		sMessage = sMessage5;
		}
		else  // 언어가 한국어 이면
		{
			sMessage = sMessage;
		}

		switch(sMsgGp)
		{
			case "E":
			sType 		= "error";
			sCaption 	= "Error";
			break;

			case "Q":
			sType 		= "question";
			sCaption 	= "Question";
			break;

			case "W":
			sType 		= "warning";
			sCaption 	= "Warning";
			break;

			case "I":
			sType 		= "information";
			sCaption 	= "Information";
			break;

			default:
			sType 		= "default";
			sCaption 	= "Alert";
			break;
		}		
	}

	for(var i=0; i<objArr.length; i++)
	{		
		sMessage = sMessage.replace("[M"+(i+1)+"]",objArr[i]);
	}
	 
	if(sKind == "C")  // 확인(Confirm)
	{ 
		retVal = confirm(sMessage, sCaption, sType);
		trace("[/lib_Form.xjs][gfn_message()]==> [TEST_32][sKind]"+ sKind +"[retVal]"+ retVal );

		return retVal;
	}
	else if(sKind == "M")	// 메세지(Message)
	{
		alert(sMessage, sCaption, sType); 
	}
	else if(sKind == "S")
	{
		return sMessage; 	// StatusBar Message Return;
	}
	else
	{
		return false;
	} 
}
==============================================================================================================

- 주말
05:45 기상
06:00 집출발
06:40 출근
07:10 조식(1층 식당)
07:40  Message 등록(다국어) 수정
10:10 공장 출발
10:40 삽교역 도착
10:54 삽교역 출발
12:20 수원역 도착 
12:30 매산시장 정류장(83-1번 버스 탑승)
12:55 수원고용복지플러스센터 정류장 도착 
13:10 더아리엘웨딩홀 도착(1층) ==> 성철이 외삼촌, 경태, 성희 만남 --> 축의금 10만원 함(성희가 돈 빌려줌, 송금해줌)
==> 정희 이모, 이모부, 명식이형 가족 만남 --> 규호 이모(연금 월 360만원 나온다고 함(35년 근무))
14:00 식당(3층 부페, 경태랑 같이 소주 3병 먹음)
14:30 종료
14:40 택시(5,800원, 동훈이와 같이 수원역까지 타고 옴)
15:40 새마울호(수원 -> 영등포역, 4,800원): 청구할 것
16:30 서울역 도착(깜빡 졸아서 서울역 도착)
16:40 서울역 출발(752번 버스)
17:10 대동초교 정류자 도착
17:20 귀가
17:30 낮잠
22:30 기상
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.03(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

▦ 축구
06:00 기상
07:30 인터네 서핑
12:00 중식
14:30 집출발 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 더위서 힘듬
대림운동장 아리수 수돗물 3통 받아옴		 
19:00 귀가
20:00 석식
23:00 취침
==============================================================================================================

- 신한은행 공인인증서 재발급
1. 신한은행( http://banking.shinhan.com/sandbox/index.jsp ) > 인증센터 > 갱신
1. 정보입력 Tab
01. 고객정보입력
이용자번호: TAMARIO
주민번호: 720625-1703411
02. 약관동의
03. 공인인증서갱신
고객명: 진태만
출금통장번호: 110-437-783130(110437783130, 신한은행)   통장비밀번호: 5***
04. 갱신완료   ==> s*p***5*1*@
2. 정보확인 및 인증 Tab
1. OTP 인증 ==> OTP 카드(핸드폰 OTP 어플 이용)
3. 공인인증서 갱신 Tab
4. 비밀번호 변경
 1) s*p***5*1*@ ==> s*p***1*1*@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.04(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 22:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 개발 서버 로그인 에러 
1. FSP 서버 정재훈 대리에게 전화해서 해결
 1) 원인: com.sz.core.ServiceNotFoundException: FSPManager#SY_LoginAction --> SY_LoginAction class를 못 찾음
 1) Project 빌드가 제대로 안됨
  가. build_classes ==> D:\QMS\APQMS\workspace\APQMS\build\classes ==> 정상 빌드 되었으면 classes 폴더가 생성됨  
3. 조치:  Project 빌드 다시 실행
 1) eclipse 상단 > Project > Clean > Clean(새창) --> Clean all projects: 체크 박스 선택 ==> OK:클릭
 2) build class 확인 => D:\QMS\APQMS\workspace\APQMS\build\classes ==> 정상 빌드 되었으면 classes 폴더가 생성됨
--------------------------------------------------------------------------------------------------------------------------------

- build_classes
D:\QMS\APQMS\workspace\APQMS\build\classes ==> 정상 빌드 되었으면 classes 폴더가 생성됨

- .metadata_WEB-INF
D:\QMS\APQMS\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\APQMS\WEB-INF
1. classes ==> 정상 빌드 되었으면 생성됨 
--------------------------------------------------------------------------------------------------------------------------------

1. Message 등록(다국어)(/SY_MessageInputMtGual.xfdl)   ==> 완료 @@@
 1) gds_message ==> 언어(01: 한국어, 02. 영어, 03. 중국어, 04. 일본어, 05: 러시아어)
==============================================================================================================

 [공통 공지] 메세지 추가(수정) 
1. gfn_alert 메세지
 1) 수정 전: gfn_alert(this, "W0001", "메세지구분");	// W0001: [M1]은(는) 필수입력 항목입니다.
 2) 수정 후: fn_alert(this, "W0001", "메세지구분", "fn_alertCallback");	// W0001: [M1]은(는) 필수입력 항목입니다. 		
 // 수정[Message 등록], 2018.06.01, by 진태만
 /***********************************************************************
 * 함수명  	: fn_alertCallback
 * 설명 		: alert 컨펌 콜백
 * params  		: None
 * return Type 	: None 
***********************************************************************/
this.fn_alertCallback = function(sid, rtn)
{
	trace("[/SY_MenuInput.xfdl][fn_alertCallback()] ==> [alert 처리...][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	this.div_search.cbo_msgGp.setFocus();	// 메세지구분 포커스 처리 
	return false;
}
--------------------------------------------------------------------------------------------------------------------

2. gfn_confirm 메세지
 1) 수정 전: gfn_confirm("Q0002");	// Q0002: 저장 하시겠습니까?    
 2) 수정 후: gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");			// Q0002: 저장 하시겠습니까?     
/***********************************************************************
 * 함수명  	: fn_saveConfirmCallback
 * 설명 		: 저장 컨펌 콜백
 * params  		: None
 * return Type 	: None 
***********************************************************************/
this.fn_saveConfirmCallback = function(sid, rtn)
{
	trace("[/SY_MessageInputMtGual.xfdl][fn_saveConfirmCallback()] ==> [저장 처리...][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	this.fn_saveData();   	// FSP_서버 저장 함수[fn_saveData()] 호출
}
--------------------------------------------------------------------------------------------------------------------

- arg가 2개 이상일 경우
gfn_alert(this, "W0007", "업무구분|행 추가");		// W0007: [M1]을(를) 선택 후에 [M2]을(를) 하시기 바랍니다 
 /***********************************************************************
 * 함수명  	: fn_alertCallback
 * 설명 		: alert 컨펌 콜백
 * params  		: None
 * return Type 	: None 
***********************************************************************/
this.fn_alertCallback = function(sid, rtn)
{
	trace("[/SY_MenuInput.xfdl][fn_alertCallback()] ==> [alert 처리...][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	this.div_search.cbo_bizGp.setFocus();	// 업무구분 포커스 처리 
	return false;
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.05(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 이상탁 차장 집안상, 유비 리포트(10시 ~ 14시), 소프트 잼 김용호 사장하고 FSP 서버 파일업로드 문제로 싸움(16시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 파일 업로드, 다운로드(/FileUpload.xfdl) 개발 
1. 파일 업로드 처리
this.FileUpload00.set_uploadurl(application.services["svcurl"].url +"FileUploader?mode=upload&subDir="+ subDirFolder );		
// 파일 업로드 처리
==>  [/FileUpload.xfdl][btn_upload_onclick()] ==> [FileMng_02][edt_SubDir.value]img/apqms/20180605[subDirFolder]img/apqms/2018060

2. 파일 다운로드 처리
this.FileDownload.set_downloadfurl(this.sDownloadFileName);		// 파일 다운로드 처리
==>  [FileMng_53][this.sUrl]http://localhost/FileUploader?mode=download&subDir=img/apqms/20180605&fileName=alert_information_20180605191428445.png   
==============================================================================================================

- 유비 리포트(10시 ~ 14시)
1. 로컬, 개발 서버에 유비 리포트 ?치
--------------------------------------------------------------------------------------------------------------------------------

- 유비 리포트 라이센스 요청(9시, 예산) ==> 7월 말 
C:\Users\hsaqmad1sa>hostname
HSAQMAD1
--------------------------------------------------------------------------------------------------------------------------------

- 유비 리프토 URL 설정
1. 테스트 URL ==> http://localhost/APQMS/QuickView.html?formname=sample%3A%3AUbiReport_smp.xfdl
2. 유비 리프토 URL ==> http://localhost/UbiServer
3. 유비 리프토 URL ==> http://localhost/ubi4/ubihtml.jsp 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.06(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현충일(공휴일)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 파일 업로드, 다운로드(/FileUpload.xfdl) 개발 
1. 파일 업로드 처리 
/***********************************************************************
 * 함수명  	: btn_upload_onclick
 * 설명 		: 파일 업로드 버튼 클릭 이벤트 
***********************************************************************/
this.btn_upload_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/fsp_fileUpload.xfdl][btn_upload_onclick()] ==> [파일 업로드 버튼 클릭 이벤트][TEST_01]" );
	 
	var sToday = gfn_getToday();  	// 오늘 날짜: 20180605
	//var sSubDirFolder = "img/apqms/"+ sToday;  	// 서브 디렉토리(절대 경로)  // TEST @@@ ===>
	var sSubDirFolder = "img\\apqms\\"+ sToday;  	// 서브 디렉토리(상대 경로)
	this.edt_SubDir.set_value(sSubDirFolder);  	// 서브 디렉토리 edt 셋팅 
	application.services["svcurl"].url ="http://localhost/";	// svcurl 서버
	trace("[/fsp_fileUpload.xfdl][btn_upload_onclick()] ==> [TEST_03][edt_SubDir.value]"+ this.edt_SubDir.value +"[sSubDirFolder]"+ 
	sSubDirFolder +"[application.services.svcurl]"+ application.services["svcurl"].url );
	 
	this.FileUpload.set_uploadurl(application.services["svcurl"].url +"FileUploader?mode=upload&subDir="+ sSubDirFolder );		
	// 파일 업로드(mode=upload) 처리
	// ==> [TEST_02][edt_SubDir.value]img/apqms/20180605[sSubDirFolder]img/apqms/2018060 
	trace("[/fsp_fileUpload.xfdl][btn_upload_onclick()] ==> [TEST_51]");

	//FileUpload00 upload 결과는 onerror 또는 onsuccess 에서 확인 필요
	this.FileUpload.upload();
	trace("[/fsp_fileUpload.xfdl][btn_upload_onclick()] ==> [TEST_end]");
}

this.FileUpload_onerror = function(obj:FileUpload,  e:nexacro.FileUploadErrorEventInfo)
{
	trace("[/fsp_fileUpload.xfdl][FileUpload_onsuccess()] ==> [실패][TEST_01][e.errormsg)]"+ e.errormsg ); 
}

this.FileUpload_onsuccess = function(obj:FileUpload,  e:nexacro.FileUploadEventInfo)
	{ 
	trace("[/fsp_fileUpload.xfdl][FileUpload_onsuccess()] ==> [성공][TEST_01]" );
	trace("[/fsp_fileUpload.xfdl][FileUpload_onsuccess()] ==> [성공][02. e.datasets[0],_CNT]"+ e.datasets[0].getRowCount() 
	+"[e.datasets[0].saveXML()] \n"+ e.datasets[0].saveXML() );  	
}

2. 파일 다운로드 처리
/***********************************************************************
 * 함수명  	: FileDownload_onclick
 * 설명 		: 파일 다운로드 버튼 클릭 이벤트
***********************************************************************/
this.FileDownload_onclick = function(obj:FileDownload,  e:nexacro.ClickEventInfo)
{ 
	trace("[/fsp_fileUpload.xfdl][FileDownload_onclick()] ==> [파일 다운로드 버튼 클릭 이벤트][TEST_01]" );
	 
	application.services["svcurl"].url = "http://localhost/";	// svc url 
	this.sUrl = application.services["svcurl"].url +"FileUploader?mode=download&subDir="+ this.edt_SubDir.value;
	this.sUrl +="&fileName="+ encodeURI(this.edt_FileNameServer.value.replace(/\+/,"%2B")); 
	trace("[/fsp_fileUpload.xfdl][FileDownload00_onclick()] ==> [TEST_51][파일명]"+ this.edt_FileName.value 
	+"[edt_SubDir.value]"+ this.edt_SubDir.value +"[this.sUrl]"+ this.sUrl );
	  
	this.FileDownload.set_downloadfilename(this.edt_FileName.value); 	// 파일명 
	this.FileDownload.set_downloadurl(this.sUrl); 	// 파일 다운로드 처리  
	==>  [FileMng_53][this.sUrl]http://localhost/FileUploader?mode=download&subDir=img/apqms/20180605&fileName=alert_information_20180605191428445.png   

	trace("[/fsp_fileUpload.xfdl][FileDownload00_onclick()] ==> [TEST_91]" );
}

this.FileDownload_onsuccess = function(obj:FileDownload,  e:nexacro.FileDownloadEventInfo)
{
	trace("[/fsp_fileUpload.xfdl][FileDownload_onsuccess()] ==> [download 성공][TEST_01]" );
}

this.FileDownload_onerror = function(obj:FileDownload,  e:nexacro.FileDownloadErrorEventInfo)
{
	trace("[/fsp_fileUpload.xfdl][FileDownload_onerror()] ==> [download 에러][TEST_01]" );
} 
==============================================================================================================
 
- 파일업로드&다운로드[FSP 서버]
1. https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/31457287
==============================================================================================================

- 로그인 (/commLogin.xfdl) 화면 수정
1. 문구 수정: COPYRIGHT(C) 2018 BY HYUNDAI STEEL. ALL RIGHTS RESERVED. 
==============================================================================================================

- 현대제철 AP QMS Prj UI 공통 업무
1. 팝업 메뉴 처리
 1) 모달, 모달리스 처리, 팝업 콜백 처리
2. Grid, 엑셀 복사 붙여넣기 처리, 엑셀 다운로드 처리
 1) Grid, 엑셀 복사 붙여넣기 처리
 2) Grid 엑셀 다운로드 처리
3. SMS 보내기 
4. 이메일 보내기(메일 스케줄)
5. 보안 리스트 처리(어플리케이션 보안성 점검 체크 기준) 
 1) 비밀번호 변경 팝업(/pop_password_edit.xfdl)
 2) 비밀번호 찾기 팝업(/pop_pwd_findEmp.xfdl)
 3) 아이디 중복 팝업(/pop_id_check.xfdl)
 4) 사용자 인증, 접근통제 입력값 검증 등
==============================================================================================================

- 2018년 4, 5월 지출결의서 작성
2016.08.04.30: 2018년 04월 지출 결의서: 74,200원
2016.08.05.31: 2018년 05월 지출 결의서: 100,500원
==> 합계:  174,700원
==============================================================================================================

- Korail 철도 회원 카드
1. KTX 패밀리 체크 카드(철도회원) ==> 카드번호: 0550566830/hptn*1*0*(hp수**1*0*)
http://www.korail.com/bt/pr11100/w_pr11110.html   ==> 현장발권 비밀번호: 0**9
==============================================================================================================

- 비밀번호 관리
1. 라스트 패스(LastPass) ==> https://lastpass.com/misc_download2.php, tamario@naver.com / hp태*1*0*
==============================================================================================================

- 네이버 가계부 flash 에러
1. 현상: 접속하신 기기에서는 플래시(flash)를 지원하지 않아 해당 기능을 이용하실 수 없습니다.
2. 조치: 플래시 플레이어 삭제 후 재설치
 1) 플래시 플레이어 다운로드 ==> https://get.adobe.com/flashplayer/?loc=kr
--------------------------------------------------------------------------------------------------------------------------------

- 구글 크롬 플래시(Adobe Flash Player) 차단 해제 하는 방법
1. 오른쪽 상단에 [더보기] > [설정] 메뉴 선택:
2. 고급 > 개인정보 및 보안 > 콘텐츠 설정: 클릭 > Flash > 허용 ==> 추가: 클릭 > 사이트 추가(새창)
사이트: moneybook.naver.com ==> 입력 > 추가: 클릭 ==> 화면 새로 고침 
==============================================================================================================

- 엑셀 순환 참조 경고
1. Excel에서 순환 참조 경고 메시지가 나타남 [Step by Step] ==> https://support.microsoft.com/ko-kr/help/2542605
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.07(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 파일 업로드, 다운로드(/FileUpload.xfdl) 개발 
1. 파일 삭제 처리 
 1)  ImageViewer에 출 력--> 파일 업로드 경로 웹경로 밖에 설정
==> <attribute name="FileRootDir">D:\QMS\APQMS\workspace\APQMS\upload\</attribute>	  
 2) 파일 삭제 ==> fileService.deleteFile(map);
 3) 파일업로드(HTML5)  ==> http://localhost/APQMS/QuickView.html?formname=sample_fsp%3A%3Afsp_fileUpload.xfdl
--------------------------------------------------------------------------------------------------------------------------------
 
- 파일 업로드(/FileUpload.xfdl) HTML5에서 에러 발생
1. 현상:
java.lang.IllegalArgumentException: Invalid character found in the request target. The valid characters are defined in RFC 7230 and RFC 3986
==============================================================================================================

- C드라이브 아래 폴더 안에 파일삭제
내문서를 제외한 경로의 파일에 대한 접근은 되지 않습니다(기본설정) 
다른경로의 파일을 접근하기 위해선 adl의 속성 중 filesecurelevel 속성값을 all 로 지정 하여야 합니다. 
값이 all 로 설정된 경우, Personal Path 외의 경로나 파일에 접근하면, 접근 허용 여부를 사용자에게 확인하는 UserConfirm 창이 나타납니다. 
※ 'Personal Path'란 개인 디렉토리를 뜻하는 것으로 MS 윈도우즈 시스템에서는 '내 문서'를 의미합니다. 
첨부된 스크린샷과 같이 adl 속성중에 firesecurelevel 조정이 가능합니다. 
혹은 원하는 시점에 application.set_firesecurelevel("all") 로 지정 가능합니다. 
--------------------------------------------------------------------------------------------------------------------------------

http://localhost/alert_04_20180606193628224.png			==> D:\QMS\APQMS\workspace\APQMS\WebContent 
http://localhost/APQMS/alert_04_20180606193628224.png		==> D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS 
==============================================================================================================

- 로컬에 있는 파일 삭제 방법 => java단에서 삭제 처리 하라고 함 
1. this.virtual.remove(''경로'');   // VirtualFile 의 remove() 속성 이용
2. Extension._ext_deleteFile("C:/TEMP/test/test32/utf-88.txt");  
위와 같이 extcommon 을 사용 하는 방법이 있습니다.  
두가지 방법 모두 Runtime 에서만 사용이 가능 하며 HTML5 IE, 크롬 브라우져에서는 파일 삭제 기능은 동작 하지 않습니다 
이는 브라우져 제약 사항 입니다. 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.08(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- FSP 서버 파일 업로드, 다운로드(/FileUpload.xfdl) 개발 ==> Runtime 버전 개발 완료
1. 파일 삭제 처리
 1) /fsp_fileUpload.xfdl 파일에서
/***********************************************************************
 * 함수명  	: btn_delete_onclick
 * 설명 		: 파일 삭제 버튼 클릭 이벤트 
***********************************************************************/
this.btn_delete_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{	
	trace("[/fsp_fileUpload.xfdl][btn_delete_onclick()] ==> [파일 삭제 버튼 클릭 이벤트][TEST_01]" ); 	
	trace("[/fsp_fileUpload.xfdl][btn_delete_onclick()] ==> [TEST_02][ds_fileList2,_CNT]"+ 
	this.ds_fileList2.getRowCount() +"[ds_fileList2.saveXML()] \n"+ this.ds_fileList2.saveXML() );

	this.fsp_clear();	// [FSP 서버] FSP clear(Dataset의 데이터 삭제) 
	this.fsp_addMulti("hsteel/test:FileMng_I01", "", 0, "", 0, "B");	// [FSP 서버] 저장 처리 

	this.fsp_callService(		// [FSP 서버] 서버 호출
		"SY_LoginAction"		// Action 명 ==> (with java)
		, "deleteFile"			// Action 내에서 처리할 메소드 명(""이면 execute 라는 메소드가 호출)	
		, "ds_cond=ds_fileList2"	// inDs 
		, ""						// outDs
		, ""					// args 
		, "fn_callback"			// 콜백 함수 명 
		, false					// error시 callback 호출 여부 
		, false					// "처리 중입니다."라는 창 표시 여부
		, false					// 서버와의 통신 방식으로 동기식으로 처리할지 여부(true: 동기, false: 비동기)	
		, "sid_delete"			// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);	 
}
--------------------------------------------------------------------------------------------------------------------------------

 2) /SY_LoginAction.java 파일에서
package com.aqqms.mes.sy.action;

import java.io.File;
 
public class SY_LoginAction extends AbstractAction {

	private static final long serialVersionUID = 1L;  
	private final String defFilePath;

	/**
	 * class 생성 시, final 변수에 현재 OS에 맞는 경로 설정
	 */
	public SY_LoginAction()
	{
		//System.out.println("[/SY_LoginAction.java] [SY_LoginAction()] ==> [TEST_01]" ); 
		
		String sOSName = System.getProperty("os.name"); 
		//System.out.println("[/SY_LoginAction.java] [SY_LoginAction()] ==> [TEST_02] [sOSName]"+ sOSName 
		+"[sOSName.WINDOW]"+ sOSName.toUpperCase().indexOf("WINDOW") ); 
		
		if( sOSName.toUpperCase().indexOf("WINDOW") > -1 )			// OS가 윈도우 계열이면
		{
			//System.out.println("[/SY_LoginAction.java] [SY_LoginAction()] ==> [TEST_41]" ); 
			//defFilePath = "D:";
			defFilePath = "D:" + File.separator + "QMS"+ File.separator + "APQMS"+ File.separator + "workspace"+ 
			File.separator + "APQMS"+ File.separator + "upload"+ File.separator;		// 디렉토리(상대 경로)
		}
		else
		{
			//System.out.println("[/SY_LoginAction.java] [SY_LoginAction()] ==> [TEST_42]" ); 
			defFilePath = "/Japp/applications/UploadFiles/DM_Invoice";
		}
		System.out.println("[/SY_LoginAction.java] [SY_LoginAction()] ==> [TEST_51] [sOSName]"+ sOSName 
		+"[defFilePath]"+ defFilePath ); 
	}

	/**
	  *해당 하는 파일들을 삭제하는 Method 
	 * 
	 * @param ctx
	 * @throws Exception
	 */
	public void deleteFile(BusinessContext ctx) throws Exception 
	{
		System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [파일 삭제 처리] [TEST_01]" );

		AqqmsCommonNexacroIF service = (AqqmsCommonNexacroIF)ServiceManagerFactory
		.getServiceObject("AqqmsCommonNexacroService");  	// Service 명
		
		DataSet oCondDs = (DataSet)ctx.getInputObject("ds_cond");
		
		File file = null;

		String sFileNameOri = oCondDs.getString(0, "FILE_NAME");		// 파일명 Full
		String sGrpId = oCondDs.getString(0, "GRP_ID");		// 그룹ID
		 
		String sFileName       = sFileNameOri.substring(0, sFileNameOri.lastIndexOf("."));
		String sDeleteFileExt  = sFileNameOri.substring(sFileNameOri.lastIndexOf("."));
		String sDeleteFileName = sFileName;
		String sFileNameDir = defFilePath + sGrpId;		// 디렉토리(상대 경로)
		System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [TEST_04] [sFileNameOri]"+ sFileNameOri 
		+"[sFileName]"+ sFileName +"[sDeleteFileExt]"+ sDeleteFileExt +"[sDeleteFileName]"+ sDeleteFileName );
		System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [TEST_05] [디렉토리(상대 경로)]"+ sFileNameDir);

		for(int i = 1; ; i++ )
		{ 
			if( i > 1 ) 
			{
				sDeleteFileName = sFileName + "_" + i;
			}
			file = new File(sFileNameDir + File.separator + sDeleteFileName + sDeleteFileExt);

			if( file.exists() )
			{ 
				System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [TEST_42] [i_번째]"+ i +"[삭제할 파일명]"+ sDeleteFileName +"[file]"+ file  );

				file.delete();		// 해당 파일 경로에 있는 파일명 삭제 처리
				System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [TEST_44_삭제 완료] [i_번째]"+ i +"[삭제할 파일]"+ sDeleteFileName +"[file]"+ file  );

				file = null;
			}
			else
			{
				file = null;
				break;
			} 

			service.execute("hsteel/test:FileMng_D01", oCondDs);			//  해당 DB Row 삭제
			System.out.println("[/SY_LoginAction.java] [deleteFile()] ==> [TEST_91] [해당 DB Row 삭제_완료]"  );		

			ctx.addOutput("fv_sMsgCd", ""); 
		}   // end of for() 
	}
}
--------------------------------------------------------------------------------------------------------------------------------

 3) /FileMng_D01.xml 파일에서
/* 파일 정보 조회 ==> [/hsteel/test/TEST_S01.xml] [2018.06.07, by 진태만] */ 
SELECT A.SEQ, A.FILE_NM AS FILE_NAME, A.GRP_ID
FROM (SELECT * FROM TB_QA_FILEAPPEND ORDER BY SEQ DESC) A
WHERE ROWNUM = 1		-- 1줄만 가져오기
==============================================================================================================

- 투비 콜센터에 글 올림  ==> http://support.tobesoft.co.kr/Support/index.html
[JTM] HTML5에서 파일 업로드 처리 안됨==> FSP 서버 script에서 나는 에러로 추정됨
[JTM] Runtime에서 파일 삭제 처리 안됨 ==> java단에서 삭제 처리 하라고 함(개발 완료)
==============================================================================================================

- svn: E155004: Working copy "로컬경로" is already locked 에러 해결방법 
1. 현상:
 svn: E155004: Working copy 'D:\QMS\APQMS\workspace\APQMS\WebContent\APQMS\common' locked
svn: E155004: 'D:\QMS\APQMS\workspace\APQMS' is already locked.
2. 조치: 프로젝트 우클릭 -> team -> refresh/cleanup 후 업데이트하니 정상적이로 동작함.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.09(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵)
10:30 TV 시청
11:00 집출발
11:10 6.13 지방선거 사전투표(대림2동 주민센터 2층 투표소)	==> 정의당에 투표 함
11:20 플러스 마트(주) ==> 아이스크림, 대림/평양 물냉면(2인분) 
11:30 엘마트(주) ==> 빵 구입
12:00 귀가
12:30 중식(냉면)
13:00 낮잠 
19:00 기상 
19:30 석식
19:50 TV 시청(비 조금 옴)
22:30 구로리 공원(아리수 물 뜨러 감: 2리터 물통, 패트병 3통)
22:50 귀가
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.10(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 날씨 흐림

▦ 축구
09:00 기상
09:30 조식(빵)
10:00 TV 시청
12:30 중식
14:30 집출발 
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 날씨가 흐려서 체력이 많이 좋아짐
18:00 종료
18:20 귀가
19:00 TV 시청
20:00 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.11(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 상단 공통 메뉴(7개) 변경에 논쟁 벌임

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 서버 파일 업로드, 다운로드(/FileUpload.xfdl) 개발 ==> HTML5 버전 개발 완료 @@@
1. HTML5에서 파일 업로드 처리 안됨==> FSP 서버 script에서 나는 에러로 추정됨
 1) 현상:
 2018. 6. 11 오전 10:33:37 org.apache.coyote.http11.AbstractHttp11Processor process
정보: Error parsing HTTP request header
 Note: further occurrences of HTTP header parsing errors will be logged at DEBUG level.
java.lang.IllegalArgumentException: Invalid character found in the request target. The valid characters are defined in RFC 7230 and RFC 3986 
 2) 원인: 파라미터 인코딩 문제, 스크립트에서 기존 파라미터(특수문자, 공백 포함)를 넘길 ?, encodeURI로 감싸주면 됨
 3) 조치:
this.sUrl = application.services["svcurl"].url +"FileUploader?mode=upload&subDir="+ v_sSubDirFolder;
 ==> this.sUrl = application.services["svcurl"].url +"FileUploader?mode=upload&subDir="+ encodeURI(v_sSubDirFolder);
--------------------------------------------------------------------------------------------------------------------------------

- 파일업로드/다운로드 기준 
1. 저장경로
- 개발기 : D드라이버에 UPLOAD 폴더 생성 및 업로드(개발기 서버에 자체 저장 -> 테스트이므로)
==> D:\QMS\APQMS\workspace\APQMS\upload\</attribute>	 	<!-- 업로드된 파일이 저장될 최상위 디렉토리(상대 경로: 개발서버) -->
- 운영기 : Z드라이버에 UPLOAD폴더 생성 및 업로드(별도 스토리지에 저장 -> 운영기이므로)
(Z드라이버는 네트웍드라이버 연결되어 있는 상태이고 별도스토리지 공간임)
==> Z:\upload\</attribute> --> 	<!-- 업로드된 파일이 저장될 최상위 디렉토리(상대 경로: 운영서버) --> 

2. 업로드 기준
- 이미지 파일(JPG, TIF, PNG) : DB table의 CLOB 칼럼에 저장
- 첨부 파일(TXT, DOC, XLS, PDF, 도면파일) : UPLOAD디렉토리에 저장
- 업로드 확장자 제한필요 : 특정 확장자만 업로드 가능하도록 조치 -> 보안강화
- 100메가 초과 파일 업로드 불가조치

3. 다운로드 기준
- 다운로드 시 다운로드한 사용자, 일시 history 테이블에 기록 -> 보안점검 시 이력 제출용
- 특정 권한자만 다운로드 가능토록 권한부여기능 필요
3번사항은 급한건 아니니 1,2번 선 구현 필요.
==============================================================================================================

- FileUpload 사용시 업로드 전에 용량 체크가 가능
1. 런타임의 경우는 VirtualFile의 getFileSize를 이용하여 파일의 크기를 알수가 있습니다. 
첨부한 샘플을 참고하시기 바랍니다  
HTML5경우 브라우져에서 로컬에 접근하여 체크할 수 없어 확인할 수 없습니다. 

서버쪽에서 체크하셔야 합니다.  
서버쪽에서 제한은 서비스에 아래와 같이 제한 할 수 있습니다. 

ex) 
request.setCharacterEncoding("utf-8"); 
String contextRealPath = request.getSession().getServletContext().getRealPath("/"); 
String PATH = request.getParameter("PATH"); 
String savePath = contextRealPath + "\\" +PATH; 
System.out.println(savePath); 
int maxSize = 500 * 1024 * 1024; 		// 최대 업로드 파일 크기 500MB(메가)로 제한
==============================================================================================================

- saveToImageFile
saveToImageFile: FileUpload를(을) 이미지 파일로 저장(export)하는 메소드
==============================================================================================================

- toUpperCase: 모든 영문자를 대문자로 변환해 반환하는 메소드 
var objString = "abcd";
var strText;
strText = objString.toUpperCase(); 	// strText = ABCD
strText = "abcd".toUpperCase(); 	// strText = ABCD
--------------------------------------------------------------------------------------------------------------------------------

- toLowerCase: 모든 영문자를 소문자로 변환해 반환하는 메소드  
var objString = "ABCD";
var strText;
strText = objString.toLowerCase(); 	// strText = abcd
strText = "ABCD".toLowerCase(); 	// strText = abcd
============================================================================================================== 		

- cellmovingtype: 그리드의 셀 전체를 이동할 수 있는지 여부를 설정하는 속성 
1. Grid.set_cellmovingtype("col");	// set  
Grid.cellmovingtype;		// get  
2. 그리드 속성 : cellmovvingtype   col 로 설정 
==============================================================================================================

- Table 명 변경 
1. SCF100 ==> HSSCF100: 화면정보 TB
2. SCM100 ==> HSSCM100: 메뉴정보 TB
3. SCV100 ==> HSSCV100: 메시지 정보 TB
==============================================================================================================
 
- 상단 공통 메뉴(7개) 변경
1. ["신규","저장","삭제","인쇄","캡처","도움말"];  	// 상단 공통 메뉴(6개)	 
 ==> ["조회","등록","저장","삭제","인쇄","캡처","도움말"];  	// 상단 공통 메뉴(7개)
==============================================================================================================

- 엑셀을 이용한 다수의 INSERT 처리
1. 구글에서 "엑셀을 이용한 다수의 INSERT 처리" 검색
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.12(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:00 ==> 북미정상회담(10시, 싱가포르), 월간보고(16시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 화면 등록 화면()/SY_ScreenInput.xfdl) 수정
1. Grid 밑에 있는 Div 있으면 Grid가 늘어나면 Div를 덮어 버림
 1) 원인: Grid 원인보다 Div 원인이 더 큼, 소스가 꼬였을 지도 모름
 2) 조치: div_detail Div 수정
==============================================================================================================

- insert문 생성 query(2018.06.11) 처리
-- 메뉴 정보 TB insert query  @@@@@@@ 
SELECT 
            'INSERT INTO HSSCM100('||
		 ' BIZ_GP, MENU_ID, MENU_NM, SCR_ID, SORT_SEQ,'||  		-- 정렬순서 	 	 --// 5 ------ 
		 ' UI_ID, UP_MENU_ID, PATH_NM, USE_YN, REGISTER, '|| 		-- 생성자			--// 10 ----- ------
		 ' REG_DDTT, MODIFIER, MOD_DDTT'|| 
		' ) 
		VALUES ('||
			CHR(39)|| BIZ_GP ||CHR(39)  								-- 업무구분('SY')
			||CHR(44)||CHR(39)|| MENU_ID ||CHR(39)  			-- 메뉴ID(,'SY-08-000')
			||CHR(44)||CHR(39)|| MENU_NM ||CHR(39)  		-- 메뉴명(,'TEST')
			||CHR(44)||CHR(39)|| SCR_ID ||CHR(39)  				-- 화면ID(,'SY-08-000')
			||CHR(44)||CHR(39)|| SORT_SEQ ||CHR(39)  		-- 정렬순서 	 	 --// 5 ------ 
			||CHR(44)||CHR(39)|| UI_ID ||CHR(39)  				-- 화면URL 
			||CHR(44)||CHR(39)|| UP_MENU_ID ||CHR(39)		-- 상위메뉴ID
			||CHR(44)||CHR(39)|| PATH_NM ||CHR(39)			-- 경로명
			||CHR(44)||CHR(39)|| USE_YN ||CHR(39)  			-- 사용여부
			||CHR(44)||CHR(39)|| REGISTER ||CHR(39)  			-- 생성자			--// 10 ----- ------
			||CHR(44)||CHR(39)|| REG_DDTT ||CHR(39)  		-- 생성일	   
			||CHR(44)||CHR(39)|| MODIFIER ||CHR(39)  		-- 수정자
			||CHR(44)||CHR(39)|| MOD_DDTT ||CHR(39)  		-- 수정일	 
			||');'
FROM HSSCM100	 -- 메뉴 정보 TB
WHERE 1 =1 
ORDER BY REG_DDTT 
--;    
--------------------------------------------------------------------------------------------------------------------------------

-- 메뉴 정보 TB 결과값 @@@@@@@ ==> 180건
INSERT INTO HSSCM100( BIZ_GP, MENU_ID, MENU_NM, SCR_ID, SORT_SEQ, UI_ID, UP_MENU_ID, PATH_NM, USE_YN, REGISTER,  REG_DDTT, MODIFIER, MOD_DDTT ) 
 			VALUES ('SY','SY-08-000','TEST','','70','','SY-00-000','SY','Y','1519927','2018/06/08 17:08:08','1519927','2018/06/08 17:10:30');
INSERT INTO HSSCM100( BIZ_GP, MENU_ID, MENU_NM, SCR_ID, SORT_SEQ, UI_ID, UP_MENU_ID, PATH_NM, USE_YN, REGISTER,  REG_DDTT, MODIFIER, MOD_DDTT ) 
 			VALUES ('SY','SY-08-010','파일 업로드','SY_fileUpload','80','SY_fileUpload','SY-08-000','SY','Y','1519927','2018/06/08 17:10:30','','');
==============================================================================================================

-- 메시지코드 정보 TB insert query  @@@@@@@  
SELECT 
		'INSERT INTO HSSCV100('||
		 ' MSG_CD, MSG_LANG, MSG_CONTENT, MSG_CONTENT2, MSG_CONTENT3,'||  		-- 메시지내용3 	 	 --// 5 ------ 
		 ' MSG_CONTENT4, MSG_CONTENT5, MSG_DIV, REMARKS, REGISTER, '|| 				-- 등록자			--// 10 ----- ------
		 ' REG_DDTT, MODIFIER, MOD_DDTT'|| 
		' ) 
					VALUES ('||
		CHR(39)|| MSG_CD ||CHR(39)  								-- 메시지코드('I0014')
		||CHR(44)||CHR(39)|| MSG_LANG ||CHR(39)  			-- 언어(,'01')
		||CHR(44)||CHR(39)|| REPLACE(MSG_CONTENT, '''', '"') ||CHR(39)  		-- 메시지내용(,'정상적으로 등록되었습니다.')
		||CHR(44)||CHR(39)|| REPLACE(MSG_CONTENT2, '''', '"') ||CHR(39)  	-- 메시지내용2 
		||CHR(44)||CHR(39)|| REPLACE(MSG_CONTENT3, '''', '"') ||CHR(39)  	-- 메시지내용3 	 	 --// 5 ------ 
		||CHR(44)||CHR(39)|| REPLACE(MSG_CONTENT4, '''', '"') ||CHR(39)  	-- 메시지내용4 
		||CHR(44)||CHR(39)|| REPLACE(MSG_CONTENT5, '''', '"') ||CHR(39)		-- 메시지내용5
		||CHR(44)||CHR(39)|| MSG_DIV ||CHR(39)				-- 메시지구분
		||CHR(44)||CHR(39)|| REMARKS ||CHR(39)  			-- 비고
		||CHR(44)||CHR(39)|| REGISTER ||CHR(39)  			-- 등록자			--// 10 ----- ------
		||CHR(44)||CHR(39)|| REG_DDTT ||CHR(39)  		--등록일	   
		||CHR(44)||CHR(39)|| MODIFIER ||CHR(39)  		-- 수정자
		||CHR(44)||CHR(39)|| MOD_DDTT ||CHR(39)  		-- 수정일	 
					||');'
FROM HSSCV100	 -- 메시지코드 정보 TB
WHERE 1 =1 
ORDER BY REG_DDTT 
--;    
--------------------------------------------------------------------------------------------------------------------------------
 
-- 메시지코드 정보 TB 결과값 @@@@@@@ ==> 89건
INSERT INTO HSSCV100_02( MSG_CD, MSG_LANG, MSG_CONTENT, MSG_CONTENT2, MSG_CONTENT3, MSG_CONTENT4, 
MSG_CONTENT5, MSG_DIV, REMARKS, REGISTER,  REG_DDTT, MODIFIER, MOD_DDTT ) 
 			VALUES ('E0001','01','해당 Grid[M1]의 "binddataset"이 존재하지 않습니다.','','','','','E','','1519927','2018/05/31 13:36:57','','');
INSERT INTO HSSCV100_02( MSG_CD, MSG_LANG, MSG_CONTENT, MSG_CONTENT2, MSG_CONTENT3, MSG_CONTENT4, 
MSG_CONTENT5, MSG_DIV, REMARKS, REGISTER,  REG_DDTT, MODIFIER, MOD_DDTT ) 
 			VALUES ('E0002','01','해당 Grid[M1]의 User Property "validExpr"이 존재하지 않습니다.','','','','','E','','1519927','2018/05/31 13:47:03','','');
-- ======================================================================================================

-- 게시판 정보 TB insert query  @@@@@@@  
SELECT 
            'INSERT INTO TB_CM_BOARD('||
		 ' BOD_NO, BOD_SUBJ, BOD_CONTENT, PRIORITY, READ_CNT,'||  										-- 읽은 수		--// 5 ------ 
		' START_DATE, END_DATE, ATTRIBUTE1, ATTRIBUTE2, ATTRIBUTE3 '|| 								-- 수정일		--// 10 ----- ------ 
		' ATTRIBUTE4, ATTRIBUTE5, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY '|| 		-- 수정자		--// 15 ------  
		' LAST_UPDATE_DATE '|| 				-- 수정일 
		' ) 
					VALUES ('||
							BOD_NO  			-- 게시판 번호(NUMBER) (9)
		-- REPLACE(BOD_NO, NULL, 0)   						-- 게시판 번호(NUMBER)가 NULL 이면 0으로 처리
		||CHR(44)||CHR(39)|| BOD_SUBJ ||CHR(39)  			-- 제목(, '2016년 통합시스템 주문번호 첫자리 코드안내')
		||CHR(44)||CHR(39)|| BOD_CONTENT ||CHR(39)  		-- 내용(,'2016년 통합시스템 주문번호 첫자리 코드안내')
		||CHR(44)||  PRIORITY   										-- 우선 순위(NUMBER) (,0)
		||CHR(44)||  READ_CNT           								-- 읽은 수(NUMBER) (,0)		 --// 5 ------  
		||CHR(44)||CHR(39)|| START_DATE ||CHR(39)   		-- 시작일  
		||CHR(44)||CHR(39)|| END_DATE ||CHR(39)   			-- 종료일   
		||CHR(44)||CHR(39)|| ATTRIBUTE1 ||CHR(39)   		-- ATTRIBUTE1  
		||CHR(44)||CHR(39)|| ATTRIBUTE2 ||CHR(39)   		-- ATTRIBUTE2
		||CHR(44)||CHR(39)|| ATTRIBUTE3 ||CHR(39)   		-- ATTRIBUTE3  		--// 10 ----- ------ 
		||CHR(44)||CHR(39)|| ATTRIBUTE4 ||CHR(39)   		-- ATTRIBUTE4  
		||CHR(44)||CHR(39)|| ATTRIBUTE5 ||CHR(39)   		-- ATTRIBUTE5   
		||CHR(44)||CHR(39)|| CREATED_BY ||CHR(39)  				-- 생성자			 
		||CHR(44)||CHR(39)|| CREATION_DATE ||CHR(39)  			-- 생성일	   
		||CHR(44)||CHR(39)|| LAST_UPDATED_BY ||CHR(39)  		-- 수정자		 --// 15 ------  
		||CHR(44)||CHR(39)|| LAST_UPDATE_DATE ||CHR(39)  	-- 수정일	 		
		||');' 
FROM TB_CM_BOARD	-- 게시판 정보 TB 
WHERE 1 =1 
ORDER BY CREATION_DATE 
 ; 
-- ======================================================================================================

-- 게시판 정보 TB 결과값 @@@@@@@ ==> 2건 
INSERT INTO TB_CM_BOARD( BOD_NO, BOD_SUBJ, BOD_CONTENT, PRIORITY, READ_CNT, START_DATE, END_DATE
	, ATTRIBUTE1, ATTRIBUTE2, ATTRIBUTE3  ATTRIBUTE4, ATTRIBUTE5, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY  LAST_UPDATE_DATE  ) 
	VALUES (9,'2016년 통합시스템 주문번호 첫자리 코드안내','2016년 통합시스템 주문번호 첫자리 코드안내',0,0
				,'20151222','20161230','이상탁','','','','','1515533','2015/12/22 00:00:00','','');
INSERT INTO TB_CM_BOARD( BOD_NO, BOD_SUBJ, BOD_CONTENT, PRIORITY, READ_CNT, START_DATE, END_DATE
	, ATTRIBUTE1, ATTRIBUTE2, ATTRIBUTE3  ATTRIBUTE4, ATTRIBUTE5, CREATED_BY, CREATION_DATE, LAST_UPDATED_BY  LAST_UPDATE_DATE  ) 
	VALUES (22,'신규 원자재 구분코드 게시','2016년 1월 8일부터 변경되는 원자재구분코드를 아래와 같이 안내드리오니 
	참조하시기 바랍니다.',0,0,'20151229','20161229','이상탁','','','','','1515533','2015/12/29 00:00:00','','');
 ; 
-- ======================================================================================================

- sql 쿼리문 안에 작은 따옴표(홑따옴표) 처리
SELECT REPLACE('서울지부 We''Rule 뒷마당','''','"')  FROM DUAL
-- ==> 서울지부 We"Rule 뒷마당
;

SELECT REPLACE('서울지부 We"Rule 뒷마당','"','''') FROM DUAL
-- ==> 서울지부 We'Rule 뒷마당
; 
==============================================================================================================

- 삭제할 테이블 백업 
01. TB_CM_ACLGRPUIINFO:권한그룹화면 정보 TB ==> HSSCR120: 업구그룹별 화면권한정보 TB
02. TB_CM_BOARD: 게시판 정보 TB -> 삭제 처리 완료 @@@
03. TB_CM_LOGINLOG: 로그인이력 TB ==> HSSCU210: LOGIN시도 정보 TB
04. TB_CM_MENUINFO: 메뉴정보 TB ==> HSSCM100: 메뉴 정보 TB
05. TB_CM_MSGCD: 메시지코드 TB ==> HSSCV100: 메시지코드 정보 TB  -> 삭제 처리 완료 @@@
06. TB_CM_MYMENUINFO: 마이메뉴 ==> HSSCM110: 마이메뉴 정보 TB ==> [/hsteel/test/TEST_S01.xml] [2018.05.10, by 진태만] */	 
--> 삭제 처리 완료 @@@
07. TB_CM_USERINFO: 사용자 정보 TB ==>  HSSCU100: 사용자등록 정보 TB
08. TB_QA_FILEAPPEND: 첨부파일관리 TB ==> 
===========================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.13(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 21:00 ==> 2018 지방선거(임시 공휴일), 황원철 부장 출근(13시 ~ 18시)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 마이 메뉴 화면(/frmLeft.xfdl) 수정  
1. Grid에 이미지 Display 처리(마이메뉴 Grid)
 1) 마이메뉴 삭제 이미지(x)가 안 보이면 Generate Application을 한 후 실행 시키면 보임
<Grid id="grd_myMenu" taborder="0" binddataset="ds_myMenu" scrollbars="autovert" useinputpanel="false" treeuseline="false" treeusecheckbox="false" 
	treeinitstatus="expand,null" oncellclick="fn_CallMyMenu" oncelldblclick="fn_CallMyMenu" left="0" top="0" bottom="0" style="cursor:hand;" width="200" 
	autofittype="col" autoenter="select" cssclass="grd_LF_MyMenu">
	<Formats>
		  <Format id="default">
			<Columns>
			  <Column size="10"/>
			  <Column size="167"/>
			  <Column size="24"/>
			</Columns>
			<Rows>
			  <Row size="30"/>
			</Rows>
			<Band id="body">
			  <Cell style="selectbackground:EXPR(lev=='0'?&quot;transparent&quot;:lev=='1'?&quot;transparent&quot;:&quot;&quot;);"/>  <!--// 1. 빈공간 칼럼 //-->
			  <Cell col="1" displaytype="tree" edittype="tree" style="color:EXPR(lev=='0'?&quot;#40b1ac&quot;:lev=='2'?&quot;#a8a8aa&quot;:&quot;&quot;);
			color2:EXPR(lev=='0'?&quot;#40b1ac&quot;:lev=='2'?&quot;#a8a8aa&quot;:&quot;&quot;);font:
			EXPR(lev=='0'?&quot;bold antialias 9 Malgun Gothic&quot;:&quot;&quot;);selectbackground:EXPR(lev=='0'?
			&quot;transparent&quot;:lev=='1'?&quot;transparent&quot;:&quot;&quot;);selectcolor:EXPR(lev=='0'?&quot;#40b1ac&quot;:&quot;&quot;);
			selectfont:EXPR(lev=='0'?&quot;bold underline antialias 9 Malgun Gothic&quot;:lev=='1'?&quot;underline 9 Malgun Gothic&quot;:&quot;&quot;);" 
			text="bind:MENU_NM" treestartlevel="0" treelevel="bind:LVL_NO"/> <!--// 2. 메뉴명 칼럼 //-->
			  <Cell col="2" displaytype="image" edittype="expand" text="img::grd_LF_MymenuX.png"/>	<!--// 3. 마이메뉴 삭제 이미지(x) 칼럼 //-->
			</Band>
		</Format>
	</Formats>
</Grid> 
==============================================================================================================

- Grid의 Validation Check 처리
1. Grid 속성 중 validExpr(User Properties)에서
 1) MSG_CD:메시지코드:P,MSG_CD:메시지코드:D
 2) alert시 표현할 Column Text : P(필수입력), N(숫자입력), D(중복체크)   
----------------------------------------------------------------------------------------------------------------------------------------

2. 저장 소스에서
this.fn_save = function()
{  
	trace("[/SY_MessageInputMtGual.xfdl][fn_save()] ==> [03. 저장(공통)][TEST_01]" );
	 
	var bRst = true;
	var iSaveCnt = 0;
	var iRowCnt = this.ds_list.getRowCount();
	trace("[/SY_MessageInputMtGual.xfdl][fn_save()] ==> [TEST_02][iRowCnt]"+ iRowCnt +"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );  	

	var oDsUpdateChk = gfn_datasetUpdateChk(this.ds_list);		// Ds Update 여부 체크 

	if(!oDsUpdateChk)	// 저장할 데이타가 미존재하면
	{  
		gfn_alert(this, "I0009", "저장");		// I0009: [M1]할 Data가 존재하지 않습니다.
		return false;
	} 
	else
	{ 
		bRst = gfn_validGrid(this.grd_list, false);		// Grid의 Validation Check 처리 함수 호출 
		 
		if(bRst) 	// Validation Check 성공 이면
		{
			gfn_confirm(this, "Q0002", "", "fn_saveConfirmCallback");	// Q0002: 저장 하시겠습니까?   
		}
	}
	 
	return bRst;	  
}
----------------------------------------------------------------------------------------------------------------------------------------

3. 공통 ib_Validation.xjs 소스에서
/*****************************************************************************************
* 함  수  명 : gfn_validGrid()
* 설   명    : Grid의 Validation Check하는 Function
* 설   명2    : 
*				- Column0:Column Text:[P[N[D]]]
*				- 적용할 Column ID : Alert시 표현할 Column Text : P(필수입력), N(숫자입력), D(중복체크)
@return boolean 
* 작  성 자 : 진태만
* 작  성 일 : 2018.05.01 
*****************************************************************************************/     
gfn_validGrid = function(oGrid:Grid, bAllCheck)
{
	//trace("[/lib_Validation.xjs][gfn_validGrid()] ==> [TEST_01][oGrid]"+ oGrid +"[bAllCheck]"+ bAllCheck ); 
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.14(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==>  

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 마이 메뉴 화면(/frmLeft.xfdl) 수정  ==> 완료 
/***********************************************************************
 * 함수명  	: div_head_btn_bookmark_onclick
 * 설명 		: My Menu 버튼 클릭 이벤트(My Menu에 등록, 삭제 처리) 
***********************************************************************/
this.div_head_btn_bookmark_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{  
	this.isBookmark = gfn_checkBookmark(this.av_menuId); 	 // My Menu에 포함된 메뉴화면 인지 확인  
	trace("[/frmWork.xfdl][div_head_btn_bookmark_onclick()] ==> [My Menu 처리][TEST_01][this.isBookmark]"+ 
	this.isBookmark +"[av_menuId]"+ this.av_menuId );

	if(this.isBookmark)	 // 북마크가 존재하면(마이 메뉴 삭제 처리)
	{
		trace("[/frmWork.xfdl][div_head_btn_bookmark_onclick()] ==> [My Menu 처리(마이 메뉴 삭제 처리)][TEST_11]
		[this.menuId]"+ this.menuId +"[menuTitle]"+ this.menuTitle ); 	 
		gfn_confirm(this,"Q0022", "[" + this.menuTitle + "]", "fn_saveConfirmCallback");	// Q0022: [M1] 메뉴를 삭제하시겠습니까?  
	} 
	else 	 // 북마크가 존재 안하면(마이 메뉴 추가 처리)
	{
		trace("[/frmWork.xfdl][div_head_btn_bookmark_onclick()] ==> [My Menu 처리(마이 메뉴 추가 처리)][TEST_12]
		[application.gv_userId]"+ application.gv_userId );
		 
		this.isBookmark = true;
		var row = application.gds_myMenu.addRow();
		application.gds_myMenu.setColumn(row, "MENU_ID", this.menuId);		// 메뉴ID
		application.gds_myMenu.setColumn(row, "MENU_NM", this.menuTitle);		// 메뉴명
		application.gds_myMenu.setColumn(row, "MENU_URL", this.menuUrl);		// MENU URL 
		application.gds_myMenu.setColumn(row, "EMP_NO", application.gv_userId);		// 사원번호 

		application.av_leftFrame.form.fn_modBookmark();		// 마이 메뉴 추가, 삭제[왼쪽 메뉴 화면(/frmLeft.xfdl) 호출] 
	}  
}
--------------------------------------------------------------------------------------------------------------------------------

- /frmWork.xfdl 에서 왼쪽 메뉴 화면(/frmLeft.xfdl) 으로 이동안됨
--> frmWork_onactivate(폼이 활성화되었을 때 발생하는 이벤트) 함수 사용
this.frmWork_onactivate = function(obj:Form, e:nexacro.ActivateEventInfo)
{
	//trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [활성화][TEST_01]" ); 

	this.isBookmark = gfn_checkBookmark(this.av_menuId); 	 // My Menu에 포함된 메뉴화면 인지 확인  
	trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [활성화][TEST_23][this.isBookmark]"+ this.isBookmark 
	+"[this.av_modBookmarkClass]"+ this.av_modBookmarkClass );
	
	if(gfn_isNull(this.av_modBookmarkClass))		// av_modBookmarkClass가 NULL 이면
	{ 
		if(this.isBookmark)	// 북마크가 존재하면(마이 메뉴 삭제 처리)
		{
			trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [TEST_31][메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02]");
			this.div_head.btn_bookmark.set_cssclass("btn_WF_BookMark_S");	// 마이메뉴 이미지 진하게 처리
			this.div_head.btn_bookmark.set_tooltiptext("메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02");		// 메뉴명 툴팁 설정  
		}
		else	// 북마크가 존재 안하면(마이 메뉴 추가 처리)
		{
			trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [TEST_32][메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02]");
			this.div_head.btn_bookmark.set_cssclass("btn_WF_BookMark");		// 마이메뉴 이미지 연하게 처리
			this.div_head.btn_bookmark.set_tooltiptext("메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02");		// 메뉴명 툴팁 설정	
		}
	}	
	else
	{
		if(this.av_modBookmarkClass)	// 북마크가 존재하면(마이 메뉴 삭제 처리)
		{
			trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [TEST_31][메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02]");
			this.div_head.btn_bookmark.set_cssclass("btn_WF_BookMark_S");	// 마이메뉴 이미지 진하게 처리
			this.div_head.btn_bookmark.set_tooltiptext("메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02");		// 메뉴명 툴팁 설정  
		}
		else	// 북마크가 존재 안하면(마이 메뉴 추가 처리)
		{
			trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [TEST_32][메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02]");
			this.div_head.btn_bookmark.set_cssclass("btn_WF_BookMark");		// 마이메뉴 이미지 연하게 처리
			this.div_head.btn_bookmark.set_tooltiptext("메뉴명: ["+ this.menuTitle +"] 마이메뉴에 등록, 삭제_02");		// 메뉴명 툴팁 설정	
		}
	}
	//trace("[/frmWork.xfdl][frmWork_onactivate()] ==> [활성화][TEST_91]" ); 
}  
==============================================================================================================
 
- 2018.06.15(금) 현대제철Prj 상황 보고
1. 어제 주간보고에서 심부장이 개발 완료 화면에 리포트가 없다고 허위 보고라고 화냈다고 함.
2. 다음주에 품질 감사가 나오는데 이런 품질로 어떻게 대응 하냐고 함.(여상무님이 리포트 업무 설명하다가 설계대로 개발 안되어 있다고
염차장에게 짜증냄)
3. 이상탁 부장이 내보고 공통 업무 중지하고 개발에 투입하라고 지사함
4. 황부장과 염차장 초급 개발자가 하는 실수(메시지 등록)로 서로 말싸움함
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.15(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역) 

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 상단 공통 메뉴(7개) 변경
1. ["조회","등록","저장","삭제","인쇄","캡처","도움말"];  	// 상단 공통 메뉴(7개) 
/***********************************************************************
 * 함수명  	: div_head_btn_screenshot_onclick
 * 설명 		: 업무화면의 캡처 처리 
***********************************************************************/
this.div_head_btn_screenshot_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmWork.xfdl][div_head_btn_screenshot_onclick()] ==> [06. 캡처(공통)][TEST_01]" );
	 
	var calculatedDt = new Date();
	var Date_ymdhms = gfn_toFormatString(calculatedDt, "Y-m-d_h_i_s");  
	//trace("[/frmWork.xfdl][div_head_btn_screenshot_onclick()]==> [06. 캡처(공통)][TEST_02_2][calculatedDt]"+ 
	calculatedDt +"[Date_ymdhms]"+ Date_ymdhms );   
	 
	var sFileName = "capture_" + this.av_menuId +"_"+ this.av_menuNm +"_"+ Date_ymdhms +"_e.jpg"; 	// 파일명 
	//trace("[/frmWork.xfdl][div_head_btn_screenshot_onclick()]==> [06. 캡처(공통)][TEST_04][파일명]"+ sFileName 
	+"[경로]"+ system.convertRealPath("%MYDOCUMENT%")   );  

	var bSucc = this.saveToImage(system.convertRealPath("%MYDOCUMENT%") + sFileName,"JPG","Compress:95;");	
	// Spin를(을) 이미지 파일로 저장(export)하는 메소드
	trace("[/frmWork.xfdl][div_head_btn_screenshot_onclick()]==> [06. 캡처(공통)][TEST_end][bSucc]"+ bSucc 
	+"[06. 캡처(공통)][TEST_04][파일명]"+ sFileName +"[경로]"+ system.convertRealPath("%MYDOCUMENT%")   );  
	 
	gfn_alert(this, "I0025", "["+ this.av_menuNm +"]" );	// I0025: 화면 [M1]이(가) 내문서(C:\Users\00\Documents)에 캡처 되었습니다.  
}

/***********************************************************************
 * 함수명  	: div_head_btn_help_onclick
 * 설명 		: 업무화면의 도움말 처리 
***********************************************************************/
this.div_head_btn_help_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/frmWork.xfdl][div_head_btn_help_onclick()] ==> [07. 도움말(공통)][TEST_01]" );
	 
	var iColonIdx 		= this.menuUrl.indexOf("::"); 	 
	var sSvcGrp 		= this.menuUrl.substring(0, iColonIdx);	// 업구구분 
	var sFileNm			= this.menuUrl.substr(iColonIdx + 2).replace(".xfdl", "") + "_Help.htm";	// 파일명(.htm)
	trace("[/frmWork.xfdl][div_head_btn_help_onclick()]==> [07. 도움말(공통)][TEST_02][this.menuUrl]"+ this.menuUrl +"[sFileNm]"+ sFileNm ); 
	  
	var param = { 
		pForm : this,
		pSvcGrp : sSvcGrp,	// 업구구분
		pFileNm : sFileNm	// 파일명(.htm)
	};
	trace("[/frmWork.xfdl][div_head_btn_help_onclick()]==> [07. 도움말(공통)][TEST_22][sSvcGrp]"+ sSvcGrp +"[sFileNm]"+ sFileNm ); 

	gfn_popup (
		this, 
		"CM_ManualViewer",
		705, 
		510, 
		"도움말", 
		param,
		"common::commManualViewer.xfdl", 
		"callback"
	);	
	trace("[/frmWork.xfdl][div_head_btn_help_onclick()]==> [07. 도움말(공통)][TEST_end]" );  
}
--------------------------------------------------------------------------------------------------------------------------------

this.pSvcGrp = this.parent.pSvcGrp;
this.pFileNm = this.parent.pFileNm;

/***********************************************************************
 * 함수명  	: form_onload
 * 설명 		: Form 로딩 
***********************************************************************/
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	trace("[/commManualViewer.xfdl][form_onload()] ==> [폼 로딩][TEST_01][T: 도움말 뷰어 화면][this.pSvcGrp]"+ this.pSvcGrp +"[this.pFileNm]"+ this.pFileNm );  
	
	try
	{
		if(!gfn_isNull(this.pSvcGrp) && !gfn_isNull(this.pFileNm)) 
		{ 
			var wbb_manualViewer_url = application.gv_server_url + "APQMS/manual/" + this.pSvcGrp + "/" + this.pFileNm;	// 파일명(.htm)
			//trace("[/commManualViewer.xfdl][form_onload()]==> [TEST_41][wbb_manualViewer_url]"+ wbb_manualViewer_url );  
	
			this.web_manualViewer.set_url(wbb_manualViewer_url);
			trace("[/commManualViewer.xfdl][form_onload()]==> [TEST_91][web_manualViewer.url]"+ this.web_manualViewer.url );  
		}
	} 
	catch(e) 
	{
		return;
	}
}
==============================================================================================================
 
 - 삭제 로직 수정 
/***********************************************************************
 * 함수명  	: ds_scList_oncolumnchanged
 * 설명 		: 데이터셋의 열(column) 값이 변경된 후에 발생하는 이벤트: Grid 체크 박스 처리
***********************************************************************/
this.ds_scList_oncolumnchanged = function(obj:Dataset, e:nexacro.DSColChangeEventInfo)
{
	trace("[/SY_ScreenInput.xfdl][ds_scList_oncolumnchanged()]==> [TEST_01][e.columnid]"+ e.columnid +"[e.row]"+ e.row 
	+"[e.oldvalue]"+ e.oldvalue +"[e.newvalue]"+ e.newvalue ); 
	  
	if(e.newvalue == 0) 	// 변경되는 값이 0(uncheck)이 될때 
	{ 
		trace("[/SY_ScreenInput.xfdl][ds_scList_oncolumnchanged()]==> [TEST_31]"); 
		this.ds_scList.setColumn(e.row, "ROW_CHK", 0); 	 // ROW Check Box에 체크 처리 제거
	} 
	else
	{
		trace("[/SY_ScreenInput.xfdl][ds_scList_oncolumnchanged()]==> [TEST_32]"); 
		this.ds_scList.setColumn(e.row, "ROW_CHK", 1); 	  // ROW Check Box에 체크 처리
	}
	trace("[/SY_ScreenInput.xfdl][ds_scList_oncolumnchanged()]==> [TEST_end][ds_scList.ROW_CHK]"+ this.ds_scList.getColumn(e.row, "ROW_CHK") );   
}

/***********************************************************************
 * 함수명  	: fn_delete
 * 설명 		: 04. 삭제(공통)  
***********************************************************************/
this.fn_deleteConfirmCallback = function(sid, rtn)
{
	trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()]==> [삭제 처리...][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	var nCheckRowCnt = 0; 

	if(rtn)		// 삭제 컨펌 이면
	{   
		this.ds_scListDel.clearData();

		if(this.ds_scList.getRowCount() > 0)
		{     
			for (var i=0; i < this.ds_scList.getRowCount(); i++) 
			{	 
				if(this.ds_scList.getColumn(i, "ROW_CHK") == 1)		// 체크 칼럼에 체크가 되었으면
				{
				nCheckRowCnt = nCheckRowCnt + 1 ;
				this.ds_scListDel.addRow();
				this.ds_scListDel.copyRow(this.ds_scListDel.getRowCount()-1, this.ds_scList, i);	// ds_scListDel Ds로 복사	 
				//trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()]==> [TEST_41][i_번째]"+ i 
				+"[02. ds_scListDel,_CNT]"+ this.ds_scListDel.getRowCount() );		
				}
			}  // end of for()
		} 
		trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()]==> [TEST_51][ds_scListDel,_CNT]"+ 
		this.ds_scListDel.getRowCount() +"[ds_result.ds_scListDel()] \n"+ this.ds_scListDel.saveXML() );
	
		this.fn_deleteData();   	// FSP_서버 삭제 처리 함수[fn_deleteData()] 호출
	}  
}

/***********************************************************************
 * 함수명  	: fn_deleteConfirmCallback
 * 설명 		: 삭제 컨펌 콜백 
***********************************************************************/
this.fn_deleteConfirmCallback = function(sid, rtn)
{
	trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()] ==> [삭제 처리...][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	var nCheckRowCnt = 0; 

	if(rtn)		// 삭제 컨펌 이면
	{   
		this.ds_scListDel.clearData();

		if(this.ds_scList.getRowCount() > 0)
		{     
			for (var i=0; i < this.ds_scList.getRowCount(); i++) 
			{	  
				if(this.ds_scList.getColumn(i, "ROW_CHK") == 1)		// 체크 칼럼에 체크가 되었으면
				{
					nCheckRowCnt = nCheckRowCnt + 1 ;
					this.ds_scListDel.addRow();
					this.ds_scListDel.copyRow(this.ds_scListDel.getRowCount()-1, this.ds_scList, i);	// ds_scListDel Ds로 복사	 
					//trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()]==> [TEST_41][i_번째]"+ i 
					+"[02. ds_scListDel,_CNT]"+ this.ds_scListDel.getRowCount() );		
				}
			}  // end of for()
		}
		trace("[/SY_ScreenInput.xfdl][fn_deleteConfirmCallback()] ==> [TEST_51][ds_scListDel,_CNT]"+ 
		this.ds_scListDel.getRowCount() +"[ds_result.ds_scListDel()] \n"+ this.ds_scListDel.saveXML() );
		 
		this.fn_deleteData();   	// FSP_서버 삭제 처리 함수[fn_deleteData()] 호출
	}  
}

/***********************************************************************
 * 함수명  	: fn_saveData
 * 설명 		: 삭제 처리 함수 
***********************************************************************/
this.fn_deleteData = function()
{  
	trace("[/SY_ScreenInput.xfdl][fn_deleteData()]==> [저장][TEST_01]" ); 

	var sArgs = "EMP_ID='"+ application.gv_userId +"'";		// 사원번호
	trace("[/SY_ScreenInput.xfdl][fn_deleteData()]==> [저장][TEST_01] [gv_userId]"+ application.gv_userId ); 
	
	this.fsp_clear();	// [FSP 서버] FSP clear(Dataset의 데이터 삭제)
	
	this.fsp_addMulti("sy:SY_ScreenInput_D01", "", 0, "", "B");  // [FSP 서버] SQLMAP에 대해서 주어진 데이터의 건수만큼 
	처리하기 위한 정보 추가
	
	trace("[/SY_ScreenInput.xfdl][fn_deleteData()]==> [TEST_41][INPUT_ds_scList,_CNT]"+ this.ds_scList.getRowCount() 
	+"[ds_result.saveXML()]  \n"+ this.ds_scList.saveXML() );  	 
	
	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_result=ds_scListDel"	// inDs 
		,""						// outDs 
		, sArgs					// args 
		,"fn_callback"			// 콜백 함수 명
		, false					// error시 callback 호출 여부 
		, false					// "처리 중입니다."라는 창 표시 여부
		, false					// 서버와의 통신 방식으로 동기식으로 처리할지 여부(true: 동기, false: 비동기)	
		, "sid_save"			// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);	
}
==============================================================================================================

-- 마이 메뉴 정보 @@@ 
SELECT A.MENU_SEQ, A.MENU_ID 
		,  TO_CHAR(A.REG_DDTT, 'YYYY-MM-DD HH24:MI:SS') REG_DDTT2		-- 날짜 정보
		, A.* 
FROM HSSCM110 A
ORDER BY TO_CHAR(A.REG_DDTT, 'YYYY-MM-DD HH24:MI:SS') DESC, A.MENU_ID
;
-- ======================================================================================================

- 2018 러시아 월드컵 개막식(00시, 러시아)
1. 개막 경기: 2018년 6월 14일  00시[모스코바] ==> 러시아  5:0 사우디아리비아 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.16(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵)
10:30 TV 시청
12:30 중식 
13:00 낮잠
19:00 기상 
19:30 석식
19:50 TV 시청
24:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.17(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 구름 많음

▦ 축구
09:00 기상
09:30 조식
12:30 중식
14:30 집출발 
14:50 다이소(컵 구입)
14:50 구로리 공원(아리수 물 뜨러 감: 2리터 물통, 패트병 3통)
15:30 귀가
15:40 대림운동장 
16:00 게임(은혜교회팀: 어울림 ==> 4 쿼터 뜀): 구름 많아 덜 더움, 컨디션 중간
18:00 종료
18:20 귀가
19:00 TV 시청
19:30 석식
21:00 루옌과 화상통화(베트남)
21:00 취침
00:00 기상
00:20 2018 러시아 월드컵 시청(독일 0:1 멕시코) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.18(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 20:40 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 2018 러시아 월드컵(21시, 스웨덴 vs 대한민국)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 삭제할 테이블 백업 
01. TB_CM_ACLGRPUIINFO:권한그룹화면 정보 TB ==> HSSCR120: 업구그룹별 화면권한정보 TB 
-> "업구그룹별 권한현황" 화면 개발자가 개발 완료 후 삭제 해야 함
02. TB_CM_BOARD: 게시판 정보 TB -> 삭제 처리 완료 @@@ 
04. TB_CM_MENUINFO: 메뉴정보 TB ==> HSSCM100: 메뉴 정보 TB -> 삭제 처리 완료 @@@  TEST @@ ==>
05. TB_CM_MSGCD: 메시지코드 TB ==> HSSCV100: 메시지코드 정보 TB  -> 삭제 처리 완료 @@@
06. TB_CM_MYMENUINFO: 마이메뉴 ==> HSSCM110: 마이메뉴 정보 TB ==> [/hsteel/test/TEST_S01.xml] [2018.05.10, by 진태만] */	 
--> 삭제 처리 완료 @@@
 ==> AAA_TEST_SELECT  --> TB_FSP_TEST TB 
 07. TB_CM_USERINFO: 사용자 정보 TB ==>  HSSCU100: 사용자등록 정보 TB   -> 삭제 처리 완료 @@@  TEST @@ ==>
==>  EMP_NO: 사번 --> USER_ID: 사용자ID
==>  A.ACL_GRP_CD AS 권한그룹코드 	-- 권한그룹코드(변경그룹코드)
==>  CM_UserInfo_S01, CM_UserInfo_I01
03. TB_CM_LOGINLOG: 로그인이력 TB ==> HSSCU210: LOGIN시도 정보 TB 
-> "기간별 로그인 현황" 화면 개발자가 개발 완료 후 삭제 해야 함
08. TB_QA_FILEAPPEND: 첨부파일관리 TB ==> 
===========================================================================================================

- FSP 조회 에러
1. 현상:
2018/06/18 19:11:04,SYSTEM_ERROR,[SUIA_00007]It failed to execute SQL[SQL_ID:
INSERT_SQL_ID:hsteel/test:TEST_S01
UPDATE_SQL_ID:false	 ==> 에러 발생 지점 @@@
DELETE_SQL_ID:
KEY_SQL_ID:
KEY_INCREMENT:0
SAVE_FLAG_COLUMN:
TYPE:S].
2018/06/18 19:11:04,SYSTEM_ERROR,[SUIA_00003]It failed to execute (action:nDefaultAction/execute)(client:all).
com.sz.service.sqlmap.SqlMapRecordNotFoundException: false
at com.sz.service.sqlmap.SqlMapFactoryHelper.makeDataSetSqlRequest(Unknown Source)
at com.sz.service.ui.nexacro.NexacroExecutableService.makeSqlRequest(Unknown Source)
at com.sz.service.ui.nexacro.NexacroExecutableService.save(Unknown Source)
at com.sz.service.ui.nexacro.NexacroExecutableService.execute(Unknown Source)
at com.sz.service.ui.nexacro.DefaultAction.execute(Unknown Source)

[Variables]
variable=[
index=0 (errorSqlCode, string, "")
, index=1 (errorSqlStatus, string, "")
, index=2 (ErrorCode, int, "-999999999")
, index=3 (ErrorMsg, string, "false")
, index=4 (errorTrace, string, "com.sz.service.sqlmap.SqlMapRecordNotFoundException: false
at com.sz.service.sqlmap.SqlMapFactoryHelper.makeDataSetSqlRequest(Unknown Source)
at com.sz.service.ui.nexacro.NexacroExecutableService.makeSqlRequest(Unknown Source) 
2. 원인: 
 1) UPDATE_SQL_ID:false ==> fsp_addSave()함수를 조회해서 그렇게 됨
 
3. 조치:
 1) fsp_addSave()함수 ==> fsp_addSearch()
/*******************************************************************************
* 기      능   : 조회
* 설      명   : 
********************************************************************************/
this.btn_search_onclick = function() 
{ 
	trace("[/fsp_addSave.xfdl][fn_search_onclick()] ==> [조회][TEST_01_2]" ); 
 
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)

	//this.fsp_addSave("hsteel/test:TEST_S01", false);		// [FSP 서버] 조회를 위해 SQLMAP 정보 추가
	this.fsp_addSearch("hsteel/test:TEST_S01", false);	// [FSP 서버] 조회를 위해 SQLMAP 정보 추가(TEST 조회) 
	trace("[/fsp_addSave.xfdl][fn_search_onclick()]==> [TEST_41][ds_cond,_CNT]"+ this.ds_cond.getRowCount() 
	+"[ds_cond.saveXML()]  \n"+ this.ds_cond.saveXML() );  	 

	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		,""	// args
		,"fn_callback"			// 콜백 함수 명
		, false					// error시 callback 호출 여부 
		, false					// "처리 중입니다."라는 창 표시 여부
		, false					// 서버와의 통신 방식으로 동기식으로 처리할지 여부(true: 동기, false: 비동기)	
		, "sid_find"		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	);	
}
===========================================================================================================

- 2018 러시아 월드컵(21시, 스웨덴 vs 대한민국)
1. 스웨덴 1 : 0 대한민국 --> 한국 유효 슈팅 0개, 운이 좋아서 1골만 먹음
2. 월드컵 스코어 맞추기(스웨덴 1:0 대한민국) 현대 오토 에버 이상탁 차장이 맞힘(만원 냄)
3. 20시 50분에 삽교읍내에서 호프집 찾았으나 실패함
===========================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.19(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 중식(칼국수, 밥, 만두, 삽다리 칼국수: 개발팀 -> 이상탁 차장이 쏨)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- 삭제할 테이블 백업   
04. TB_CM_MENUINFO: 메뉴정보 TB ==> HSSCM100: 메뉴 정보 TB -> 삭제 처리 완료 @@@  TEST @@ ==> 
06. TB_CM_MYMENUINFO: 마이메뉴 ==> HSSCM110: 마이메뉴 정보 TB ==> [/hsteel/test/TEST_S01.xml] [2018.05.10, by 진태만] */	
--> 삭제 처리 완료 @@@
 ==> AAA_TEST_SELECT  --> TB_FSP_TEST TB 
 07. TB_CM_USERINFO: 사용자 정보 TB ==>  HSSCU100: 사용자등록 정보 TB -> 삭제 처리 완료 @@@  TEST @@ ==>
==> EMP_NO: 사번 --> USER_ID: 사용자ID
==> A.ACL_GRP_CD AS 권한그룹코드 	-- 권한그룹코드(변경그룹코드)
==> CM_UserInfo_S01, CM_UserInfo_I01 
===========================================================================================================

/* 테스트 정보 조회==> [/hsteel/test/TEST_S01.xml] [2018.05.10, by 진태만] */ 
SELECT EMP_NO AS EMP_NO
		, MENU_ID AS MENU_ID
		, MENU_NM AS MENU_NM
		, TO_CHAR(REG_DDTT, 'YYYY-MM-DD HH24:MI:SS') 등록일
		, TO_CHAR(MOD_DDTT, 'YYYY-MM-DD HH24:MI:SS') 수정일
		FROM TB_TEST   	 -- 테스트 정보 TB 
WHERE 1=1 
 --AND ROWNUM = 1		-- 1줄만 가져오기
ORDER BY REG_DDTT DESC	
;
-- ======================================================================================================

- FSP AAA_TEST_SELECT 제거
"sample:AAA_TEST_SELECT"
==>
this.fsp_addSearch("hsteel/test:TEST_S01", false);	// [FSP 서버] 조회를 위해 SQLMAP 정보 추가(TEST 조회)
===========================================================================================================

- gds_session 수정
1. gds_userInfo 사용 안함
 /* 사용자 정보 가져오기 ==> [sy:SY_UserInfoInq_S01.xml] [2018.06.18 by 진태만] */ 
SELECT USER_ID			-- 사용자ID
		 , PWD						-- 비밀번호
		 , NM AS KO_NM			-- 한글이름
		 , '' AS EN_NM			-- 영문이름
		 , DEPT_CD				-- 부서코드
		  , (SELECT MAX(DEPT_NM) AS DEPT_NM
FROM HSHRA200
WHERE DEPT_CD = A.DEPT_CD
   ) AS DEPT_NAME			-- 부서명
 , PHONE AS TEL_NO		-- 전화번호
 , EMAIL AS MAIL_ADDR 	-- 메일주소
 , '' AS ACL_GRP_CD  		 -- 권한그룹코드(ADM)
 , '' AS PLANT_DIV
 , '' AS  STR_LOC
 ,  'OK' AS AUTH			-- TEST[권한 테스트]: 2018.05.03, by 진태만 
FROM HSSCU100 A 	 -- 사용자등록 정보 TB
WHERE USER_ID = #USER_ID#  -- 사용자ID
;  
-- -----------------------------------------------------------------------------------------------------------
  
- gds_session
<ColumnInfo>
  <Column id="USER_ID" type="STRING" size="256" description="사용자ID"/>
  <Column id="EMP_NO" type="STRING" size="256" description="사번"/>
  <Column id="PASSWORD" type="STRING" size="256"/>
  <Column id="KO_NM" type="STRING" size="256" description="한글이름"/>
  <Column id="EN_NM" type="STRING" size="256"/>
  <Column id="DEPT_CD" type="STRING" size="256" description="부서코드"/>
  <Column id="DEPT_NAME" type="STRING" size="256" description="부서명"/>
  <Column id="TEL_NO" type="STRING" size="256"/>
  <Column id="MAIL_ADDR" type="STRING" size="256"/>
  <Column id="PLANT_DIV" type="STRING" size="256"/>
  <Column id="STR_LOC" type="STRING" size="256"/>
  <Column id="ACL_GRP_CD" type="STRING" size="256" description="권한그룹코드"/>
  <Column id="AUTH" type="STRING" size="256"/>
  <Column id="ORG_ID" type="STRING" size="256" description=""/>
  <Column id="ORG_NAME" type="STRING" size="256" description=""/>
  <Column id="USER_GRP" type="STRING" size="256" description=""/>
  <Column id="GRADE_NAME" type="STRING" size="256" description=""/>
  <Column id="CORP_GRP" type="STRING" size="256" description=""/>
</ColumnInfo>
===========================================================================================================

- FSP 페이징 처리
1. 페이지별로 조회(/fsp_addPageSearch.xfdl)
2. 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
--------------------------------------------------------------------------------------------------------------------------------

- Xplatform에서 xtheme 이미지 추출
1. 문의하신 내용에 대해서는 xtheme에 있는 png및 이미지파일은 물리적으로 추출할 수 없기에 캡쳐를 해서 사용 
==============================================================================================================

- 고정된 사각 영역 캡처(픽픽 프로그램에서)
1. 픽픽 프로그램 > 고정된 사각 영역 캡처 > 고정된 사각 영역 캡처(새창) 
사각 영역의 크기 ==> 가로: 16, 새로 16 px ==> 확인(O): 클릭
2. 고정된 사각 영역 캡처 단축키
 1) Shit + Ctrl + 8
==============================================================================================================

- 속소(휴먼스 빌) 공공 요금
1. 상하수도 요금(4, 5월 연체 되어 나와서 부동산 업자에게 전화해서 화냄), 휴먼스 빌 406호 주인(010-3385-6554)
2. 휴먼스 빌 406호 주인과 통화(상수도 요금 처리해준다고 함, 전기세 한전에 문의하라고 함)
 1) 한전 문의: 목요일날 5, 6월 달 전기 요금 고지서가 나온다고 함(고객번호 확인해서 인터넷 지로로 납부할 것)
==============================================================================================================

- 루옌에게 30만원 송금
1. 루옌이 신용카드 결제가 필요하다고 해서 30만원 송금해줌 ==> 다음달 생활비 70만원만 송금할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.20(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:20 ==> 주간보고서 작성, 강전관 과장 투입(12시), 중식(냉면, 밥, 만두, 삽다리 어죽: 개발팀 -> 오이사가 쏨)
--> 이상탁 차장이 2명 철수 요청 했다고 함

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 페이징 처리
1. 페이지별로 조회(/fsp_addPageSearch.xfdl)
2. 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
==============================================================================================================

- 메뉴등록(/SY_MenuInput.xadl) 변경(여홍구 상무 요청)
1. 품질검사(QI) > H/F 공정 검사(검사원)[QI-03-070, QI_HFProcInsInspector] 화면 삭제
2. 품질검사(QI) > H/F 공정 검사(자주) 화면 ==> H/F 공정 검사[QI-03-060, QI_HFProcIns] 화면 수정
3. 신차개발(NC) > 개발EO관리 > 개발EO 업무 진행 현황[NC-03-030, NC_DvlpEOTskPrgsStat] 화면 추가
4. 신차개발(NC) > 프로젝트관리 > 기술사양검토 등록[NC-01-120, NC_TechSpecReviInput] 화면 추가
==============================================================================================================

- SVN에서 삭제
1. COMMIT > COMMIT(새창)
 1) 파일 체크 > Content: Deleted(Missing 이면 안됨) ==> OK: 클릭
==============================================================================================================

- 웹 개발 페이지 처리(Paging) 방법 - 성능을 고려해보자
http://jeong-pro.tistory.com/88

- 게시판 페이징 처리의 원리와 소스
https://steemit.com/kr-dev/@nhj12311/ewbgg

https://www.google.co.kr/search?newwindow=1&q=jsp+%ED%8E%98%EC%9D%B4%EC%A7%95+%EC%98%88%EC%A0%9C&sa=X&ved=0ahUKEwi_6MjdleLbAhXXdN4KHZEbBW0Q1QIIvwEoAw&biw=1920&bih=947
==============================================================================================================

- 운동화 치수
1. 진태만 운동화 치수 
US:8.5, UK:7.5, EUR:42 ==> 265mm  
2. 진태만 운동화 치수
US:8, UK:7, EUR:41 ==> 260mm
3. 루옌이 구입한 운동화 치수
US:9, UK:8, EUR:43, CM: 274 ==> 275mm
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.21(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 22:10 ==> 여상무님이 오전에 Grid 행추가 문제로 열받아서 오후에 병가로 퇴근

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 페이징 처리
1. 페이지별로 조회(/fsp_addPageSearch.xfdl)
2. 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
==============================================================================================================

private int firstPageNo; 	// 첫 번째 페이지 번호  ==> 처음 (<<)
private int prevPageNo; 	// 이전 페이지 번호  ==> 이전 (<)

private int nextPageNo;	// 다음 페이지 번호  ==> 다음(>)
private int finalPageNo; 	// 마지막 페이지 번호  ==> 마지막(>>)
==============================================================================================================

- Paging 공통 화면(/CmPaging.xfdl) 실행 에러
1. 현상:
uxs (24788): UD 19:14:48:191 ========================================================================== 
SyntaxError: Unexpected token , 
source     : file://D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/nexacro14lib/framework/SystemBase.js at line:1231
function   : _executeEvalStr ( file://D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/common/commPaging.xfdl.js )

2. 원인: position="absolute 0 0 360 30"로 사용하면 에러남  ==>  left="0" top="0" width="1149" height="604" 로 변경
3. 조치: 
<Form id="commPaging" classname="cal_month" inheritanceid="" position="absolute 0 0 360 30" titletext="공통_페이지버튼"> 
==> <Form id="commPaging" classname="Sample_01" left="0" top="0" width="1149" height="604" cssclass="btn_WF_SearchSmall" 
titletext="Paging 조회 샘플" onload="form_onload">
==============================================================================================================

- SVN ID 정보 등록
1. 사번: 1520131,/1, 이름: 강전관 과장   ==>  2018.06.21(목) 등록됨
==============================================================================================================

- div url에 include된 페이지에서 상위폼의 함수호출
1. this.parent.parent.fn_search_onclick();

- div url에 include한 페이지에서 include된 폼의 함수호출
1. this.div_Paging.fn_Paging();   	// Paging 처리
==============================================================================================================

- 속소(휴먼스 빌) 공공 요금  --> 휴먼스 빌 406호 주인(010-3385-6554)
1. 상하수도 요금 ==> 납부 완료
 1) 4월 요금 납부 안함 ==> 부동산에 통보, 5월 요금(4월 16일 부터 계산할 것)
   가. 4월 요금: 1,230원, 5월 요금: 1,960원, 6월 요금(2018.04.28 ~ 05.27) : 1,920원  ==> 총: 5,130원
 2) 고객명: 김경배, 납부자번호(전자납부번호): 44810-01818-00129303-8, 전자수용가번호: 44810-1-00129303-0(448101001293030)
 3) INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 일반지로요금
 
2. 도시가스 요금 ==> 납부 완료
 1) 6월 요금(05.01 ~ 05.31) 900원, 납부마감일: 2018.05.31, 청구기관: 주식회사미래엔서해에너지
 2) 고객명: 김경배, 납부자번호(전자납부번호): 3002251051001, 지로번호: 4029498 
 3) INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 일반지로요금
 
3. 전기 요금  ==> 납부 완료
 1) 6월 요금(04.23 ~ 06.09) 6,760원 ==> 지로번호: 4029498
 2) 고객명: 김경배, 납부자번호(전자납부번호), 고객번호: 06 3814 6903(0638146903)
 3) INTERNET GIRO(인터넷지로) ==> https://www.giro.or.kr/index.giro(메인) 인터넷지로 > 일반지로요금
==============================================================================================================

- 숙소 주소(예산)
1. 숙소 주소: 휴먼스빌 406호[충남 예산군 삽교읍 두리학교길 2]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.22(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 여상무님이 오전에 염차장과 설계서 PK 문제로 싸움

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 페이징 처리
1. 페이지별로 조회(/fsp_addPageSearch.xfdl)
2. 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
==============================================================================================================

- clearData() 에러
1. 현상:
this.ds_paging.clearData();
uxs (43112): SE 10:0:56:52   TypeError: Cannot call method 'clearData' of undefined
2. 원인: this.fn_Init(totalRow); 에서 this를 안 붙이면 fn_Init() 함수안에서 this가 안 먹음
this.fn_callback = function(nErrorCode, strErrorMag, sid)
{
	fn_Init(totalRow);   // Paging 초기화 처리
}

fn_Init = function(totalRecordSize)
{ 
	this.ds_paging.clearData();  // 에러 발생 ==> 
}
3. 조치: 함수 호출시 무조건 this를 붙일 것
==============================================================================================================
 
- div url에 include한 페이지에서 include된 폼의 함수 호출 에러
1. 현상:
/commPagingSearch.xfdl 파일에서  
/***********************************************************************
* 함수명 : fn_callback
* 설명 : 콜백 함수 
***********************************************************************/
this.fn_callback = function(nErrorCode, strErrorMag, sid)
{
	trace("[/commPagingSearch.xfdl][fn_callback()]==> [콜백][TEST_01][sid]"+ sid +"[nErrorCode]"+ nErrorCode +"[strErrorMag]"+ strErrorMag ); 

	switch(sid) 
	{
	case "sid_find" : 
		this.div_Paging.fn_Paging(); // Paging 처리 @@@@ 에러 발생
		// 에러 내용 ==> uxs (22616): SE 21:0:50:315 TypeError: Object [object Object] has no method ''fn_Paging''  
		break; 
	}
}
------------------------------------------------------------------------------------------------------------ 

/commPaging.xfdl 파일에서 ==> include된 페이지
/******************************************************************************
* Desc : 페이징 DIV에 Button을 생성한다. 
********************************************************************************/ 
fn_Paging = function(totalRecordSize)
{ 
	trace("[/commPaging.xfdl][fn_Paging()] ==> [TEST_01]" ); 
} 
--------------------------------------------------------------------------------------------------------------------------------

2. 원인: nexacro에서는 함수 이동 앞에 모조건 this를 붙여야 함
3. 조치:
fn_Paging = function(totalRecordSize)   ==> this.fn_Init = function(totalRecordSize)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.23(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
10:00 기상
10:00 조식(빵)
10:30 TV 시청
12:30 중식 
13:00 낮잠
17:00 기상 
19:30 석식
19:50 TV 시청
24:00 2018 러시아 월드컵(0시, 대한민국 1:2 멕시코)
02:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.24(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 2018 러시아 월드컵(0시, 대한민국 1:2 멕시코), 스웨덴 1:2 독일

▦ 일요일
05:20 기상
05:35 대림역 도착
05:40 대림역 -> 홍대입구역 -> 인천공항역
07:00 인천공항역 도착
07:10 화장실
07:25 인천공항 1터미널 1층 입국장(D)에 도착
07:40 루옌, 수종 도착
08:00 공항버스(6003번) 탑승 ==> 차비: 9천원
09:20 대림역 도착(짐이 많아서 힘듬)
09:40 귀가
11:00 장보기(엘마트)
11:30 낮잠
15:00 기상
15:20 중식(축구 안 감)
19:00 TV 시청
19:30 석식
21:00 취침
00:00 기상 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.25(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00 ==> 예산행(05:43 ~ 07:35, 영등포역 -> 삽교역), 여상무님 지각해서 다른 직원들 걸어서 출근,  화물용 캐리어 가지고 옴
							--> 주민증 심원개발 경비실에 맡기고 임시 출입증 받아옴(철수할 때 찾아갈 것)
							--> 오이사한테 전화와서 이차장 능력 없다고 함(포기의사, 철수 이야기 나옴)

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 페이징 처리
1. 페이지별로 조회(/fsp_addPageSearch.xfdl)
2. 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
==============================================================================================================
 
- parse_int 라는 함수를 만들어서 숫자를 제외한 모든 문자를 제거하고 리턴
 CREATE OR REPLACE FUNCTION  parse_int(    -- 함수이름

  VAR_String VARCHAR2 -- 변수
)

RETURN VARCHAR2 
IS

VAR VARCHAR2(13);  --var 로 리턴한다

BEGIN         
VAR :=TRANSLATE(VAR_String, '1234567890'||VAR_String, '1234567890') ; 

    RETURN VAR;  	--var에 var_String에서 숫자가 아닌 것들을 제외하고 저장
END parse_int; 
==============================================================================================================

- 루옌 적금 찾기(12시, 은행)
1. 기업은행 IBK 사랑나눔 적금[루옌]
 1) 금리: 연 5.1% 수익(기본: 3% + 우대: 2.1%), 구로삼성IT 지점
 2) 계약금액:  
  가. 원금: 9,84,000원, 기본 이자: 545,303원 
  나. 소득세: 76,340원, 지방 소득세: 7,630원  ==> 총금액: 10,301,333원[타행 이제: 수수료 3천원]
2. 신한은행 신한 새희망 적금[루옌]
 1) 금리: 연 6% 수익(기본: 4.5% + 우대: 1.5%), 대림동 지점
 2) 계약금액:  
  가. 원금: 7,200,000원, 기본 이자: 483,728원, 가산 이자: 161,235원, 만기후 이자: 5,305원
  나. 소득세: 91,030원, 지방 소득세: 9,100원  ==> 총금액: 7,750,148원[이제: 수수료 무료]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.26(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 

- 현대제철 AP 품질관리 시스템 구축 Prj [★] 
- FSP 페이징 처리 ==> 완료 @@
1. 페이지별로 조회(/paging_sample.xfdl)
 1) 공통 컴포넌트: Paging 공통 화면(/commPaging.xfdl)
 2) 테스트: 품명 정보 조회 팝업(/pop_good_search_02.xfdl)
 2) 샘플: 공통코드 관리(/CmCodeMng001.xfdl) ==> IBK_ORMS 
http://localhost/APQMS/QuickView.html?formname=sample%3A%3Apaging_sample.xfdl
 ==============================================================================================================

- AP품질관리시스템 도메인 변경
1. 개발 서버 https로만 접근 가능
2. 로컬은 http://localhost/로 접근  
3. 운영 서버는 아직 세팅 안됨
--------------------------------------------------------------------------------------------
 
- AP 품질관리시스템 도메인 명 
IP                                                 도메인명                                 
AP_운영계: 10.10.221.91/APQMS/   --> apqms.hyundai-steel.com 
AP_계발계: 10.10.180.91/APQMS/  --> apqmsdev.hyundai-steel.com

AP_계발계: https://apqmsdev.hyundai-steel.com/APQMS/index.html
AP_운영계: https://apqms.hyundai-steel.com/APQMS/index.html
==============================================================================================================

- https(443포트) 접근 에러
1. 현상: 
VM663:1 OPTIONS http://localhost/NMain 403 (Forbidden)  ==>  403은 인가 실패

 Failed to load http://localhost/NMain: Response to preflight request doesn't pass access control check: No 
 'Access-Control-Allow-Origin' header is present on the requested resource. O
 rigin 'https://apqmsdev.hyundai-steel.com' is therefore not allowed access. The response had HTTP status code 403. 
 
 1. 현상2: 
 Mixed Content: The page at 'https://apqmsdev.hyundai-steel.com/APQMS/index.html' was loaded over HTTPS, 
 but requested an insecure XMLHttpRequest endpoint 'http://apqmsdev.hyundai-steel.com/NMain'. 
 This request has been blocked; the content must be served over HTTPS.
 
 2. 원인: http로 접근해서 일어나는 현상

3. 조치: /APQMS.xadl 파일에서 아래 같이 처리

var strURL = application.xadl; 	 // 접속URL 정보(HTML5 일때)

if(strURL.indexOf("https://apqmsdev.hyundai-steel.com") >= 0)  // 서버가 개발 서버 https 이면
{ 
	application.services["svcurl"].url = "https://apqmsdev.hyundai-steel.com/";	// svcurl 서버 URL(개발 서버)
	this.mainframe.set_titletext("[개발] 현대제철 AP 품질관리 시스템");  // TOP Frame 상단에 회사 로고 아이콘 설정 
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.27(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 엑셀 Export(/excelExport_sample.xfdl) ==> 완료 @@
http://localhost/APQMS/QuickView.html?formname=sample%3A%3AexcelExport_sample.xfdl
==============================================================================================================
 
 - 엑셀 Import/Expor 사용 방법
1. nexacro platform은 투비소프트에서 제공하는 nexacro-xeni.war모듈을 이용하여 엑셀 Import/Export를 구현 
 1) nexacro-xeni는 서버모듈로 제공되며 클라이언트에서 파일 형태로 데이터 처리를 할 때 필요한 기능을 제공합
 2) 파일에 포함된 데이터를 그리드 컴포넌트로 가져오거나 그리드에 연결된 데이터를 파일로 내보내는 기능을 처리 
2. nexacro-xeni-1.1.jar 파일을 TO-TO 지원 사이트에서 다운 받아 압축 풀기
 1) 압축을 푼 nexacro-xeni.war\nexacro-xeni\lib 폴더에서 nexacro-xapi-1.0.jar 파일을 제외한 파일 복사
 2) D:\QMS\APQMS\workspace\APQMS\WebContent\WEB-INF\lib 폴더에 붙여넣기 처리
 3) Excel Export/Import(nexacro-xeni.war.zip) 파일 다운로드  ==> http://support.tobesoft.co.kr/Support/index.html
 
2. Excel Export/Import 설치 확인 ==> http://localhost/XExportImport 
 http://localhost/nexacro-xeni/XExportImport 
 http://www.xplatform.co.kr:8080/nexacro-xeni/XExportImport
==============================================================================================================
 
- ExcelExportObjectEx 모듈
런타임 전용 모듈 입니다. 
특정 고객사를 대상으로 제작 된 모듈로 일반 배포는 하지 않습니다. 
==============================================================================================================

- exporturl
1. exporturl: ExcelExportObject가 Export할 Server URL을 지정하는 속성  
 ExcelExportObject.set_exporturl(serviceUrl);		 // set  
 ExcelExportObject.exporturl;	// get  
--------------------------------------------------------------------------------------------------------------------------------

- Excel Export시 파일명이 한글일 때 다운로드 안되는 현상
1. 한글 파일명 호출시에 문제가 발생이 되는 부분은 URLEncoding 설정이 되어 있지 않을 경우 발생
 1) exportObj.set_exportfilename(sFileName);  	// export할 파일명
==> exportObj.set_exportfilename(encodeURI(sFileName)); 	// export할 파일명(암호화)
==============================================================================================================

- 팝업 메뉴 처리(/popUp_sample.xfdl)
1. 모달(/pop_modal.xfdl) 처리
/***********************************************************************
 * 함수명  	: btn_search_onclick
 * 설명 		: 팝업 버튼 클릭 이벤트 
***********************************************************************/
this.btnPopUp_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{ 
   	trace("[/popUp_sample.xfdl][btn_popUp_onclick()]==> [TEST_01]");   
  
	var fct_nm; // 공장명

	if(!gfn_isNull(this.div_search.edt_fctNm.value))	// 조회조건 공장명이 널이 아니면
	{
		fct_nm = this.div_search.edt_fctNm.value;	// 공장명
	}
	   
	var fct_cd = this.ds_cond.getColumn(0, "FCT_CD");	// 공장코드		
	 
	//popup parameter
		var params = {		
		pDs: this.ds_list
		, "FCT_CD": fct_cd
		, "FCT_NM": fct_nm
		, "popupType": "modal"	 // 팝업 타입 
	}
	trace("[/popUp_sample.xfdl][btn_popUp_onclick()]==> [TEST_02][fct_cd]"+ fct_cd +"[fct_nm]"+ fct_nm +"[02. ds_list,_CNT]"+ this.ds_list.getRowCount() );

	var sOption = "popupType=modal";		// 팝업 타입
	sOption += ", showtitlebar=false";		// 타이틀바 상단 보이기 여부(showtitlebar)
	//sOption += ", titletext=modal TEST";			// 타이틀바에 표시할 문자열 설정 ==> titletext=true, titletext=modal TEST
	sOption += ", resizable=false";		// 팝업 리사이즈 가능 여부 
	sOption += ", width=800";			// 팝업 넓이 ==> top, left
	sOption += ", height=500";			// 팝업 높이
	trace("[/popUp_sample.xfdl][btn_popUp_onclick()]==> [TEST_05][sOption]"+ sOption );   

	this.gfn_openPopup("popUp_sample", "popup::pop_modal.xfdl", params, sOption, "fn_openpopCallback");   
}

2. 모달리스(/pop_modeless.xfdl) 처리 
/***********************************************************************
 * 함수명  	: btn_popUpModeless_onclick
 * 설명 		: 모달리스 팝업 버튼 클릭 이벤트 
***********************************************************************/
this.btnOpenModeless_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/popUp_sample.xfdl][btn_popUpModeless_onclick()]==> [모달리스 팝업][TEST_01]");   
	
	var fct_nm; // 공장명

	if(!gfn_isNull(this.div_search.edt_fctNm.value))	// 조회조건 공장명이 널이 아니면
	{
		fct_nm = this.div_search.edt_fctNm.value;	// 공장명
	}
	   
	var fct_cd = this.ds_cond.getColumn(0, "FCT_CD");	// 공장코드		
	 
	//popup parameter
	var params = {		
		pDs: this.ds_list
		,"FCT_CD": fct_cd	// 공장코드	
		,"FCT_NM": fct_nm	// 공장명
		,"popupType": "modeless"	 // 팝업 타입 
	}
	trace("[/popUp_sample.xfdl][btn_popUpModeless_onclick()]==> [TEST_02][fct_cd]"+ fct_cd +"[fct_nm]"+ fct_nm
	+"[02. ds_list,_CNT]"+ this.ds_list.getRowCount() );
	 
	var sOption = "popupType=modeless";		// 팝업 타입 
	sOption += ",showtitlebar=false";			// 타이틀바 상단 보이기 여부(showtitlebar)  
	//sOption += ", titletext=modeless TEST";		// 타이틀바에 표시할 문자열 설정 ==> showtitlebar=true, titletext=modeless TEST
	sOption += ",resizable=true";		// 팝업 리사이즈 가능 여부
	// sOption += ",width=1200";			// 팝업 넓이 ==> top, left // 팝업 넓이 ==> top, left	--> 모덜리스의 팝업 넓이, 길이는 
	실제 팝업되는 팝업 폼의 넓이, 길이(변경 안됨)
	// sOption += ",height=900";			// 팝업 높이 
	trace("[/popUp_sample.xfdl][btn_popUpModeless_onclick()]==> [TEST_03][sOption]"+ sOption );     

	this.gfn_openPopup("popUpModeless_sample", "popup::pop_modal.xfdl", params, sOption, "fn_openpopCallback");   
}

/***********************************************************************
 * 함수명  	: fn_close
 * 설명 		: 팝업 창 닫기 처리 
***********************************************************************/
this.fn_close = function(obj:Button)
{
	trace("[/pop_modal.xfdl][fn_close()]==> [팝업 창 닫기 처리][TEST_01]" );	
	  
	var fct_cd = this.ds_list.getColumn(obj.currentrow,"FAC_CD");	// 공장코드 칼럼
	var fct_nm = this.ds_list.getColumn(obj.currentrow,"FAC_NM"); 	// 공장명 칼럼
	var v_flag = "S";   // CRUD 플래그

	var params =
	{
		"v_flag":v_flag 	// CRUD 플래그
		, "FCT_CD":fct_cd 	// 공장코드
		, "FCT_NM":fct_nm 	// 공장명
		, "RECV_DS":this.ds_list	// Ds
	};
	trace("[/pop_modal.xfdl][fn_close()]==> [TEST_02][v_flag]"+ v_flag +"[fct_cd]"+ fct_cd +"[fct_nm]"+ fct_nm ); 
	trace("[/pop_modal.xfdl][fn_close()]==> [TEST_03][ds_list,_CNT]"+ this.ds_list.getRowCount() +"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );

	this.gfn_closePopup(params); 	// 팝업 창 닫기
	//this.opener.call_back(v_flag,faccd,facnm,"","");  	// 팝업 창 닫기
}  
==============================================================================================================

- FSP 조회 에러
1. 현상
uxs (105092): SE 19:29:14:529 TypeError: Cannot call method 'clearData' of null
at line 285, in function: fsp_clear in file://D:/QMS/APQMS/workspace/APQMS/WebContent/APQMS/lib/sz_fsp_nx.xjs.js
/***********************************************************************
 * 함수명  	: fn_search_onclick
 * 설명 		: 조회 
***********************************************************************/
this.fn_search_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{    
	trace("[/fsp_addSearch.xfdl][fn_search_onclick()] ==> [조회][TEST_01]" ); 
	 
	this.fsp_clear();	// [FSP 서버] fsp clear(Dataset의 데이터 삭제)

	this.fsp_addSearch("hsteel/test:TEST_S01", false);		// [FSP 서버] 조회를 위해 SQLMAP 정보 추가
	 
	this.fsp_callService(	// [FSP 서버] 서버 호출
		""					// Action 명(without java)
		,""
		,"ds_cond=ds_cond"	// inDs
		,"ds_list=ds_list"	// outDs
		,""	// args
		,"fn_afterSearch"
		,true
	);
}

2. 원인: form_onload() 함수에서 	this.fsp_init(); 호출 안해줘서 fsp_clear() 함수에서 에러가 발생

3. 조치: 
/***********************************************************************
 * 함수명  	: form_onload
 * 설명 		: Form 로딩 
***********************************************************************/
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo) 
{ 
trace("[/popUp_sample.xfdl][form_onload()] ==> [폼 로딩][TEST_01][T: 팝업 샘플 화면]" );

this.fsp_init();	// [FSP 서버] FSP initialization(Dataset 생성) 
}
==============================================================================================================

- 2018 러시아 월드컵 예선(23시, 스웨덴 vs 대한민국)
1. 6경기==> > 2018. 6. 27. 23:00, [카잔], 대한민국 2:0  독일 -> 한국 조 3위(1승 2패: 탈락), 독일 조 4위(1승 2패: 탈락)
2. 5경기 ==> 2018. 6. 27. 23:00, [예카테린부르크], 멕시코 0:3 스웨덴 -> 스웨덴 조 1위(2승 1패), 멕시코 조 2위(2승 1패)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.06.28(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 ==> 창맥 동기 전현노와 카톡(필리핀에 거주)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 팝업 메뉴 처리(/popUp_sample.xfdl)
1. 모달(/pop_modal.xfdl) 처리
==============================================================================================================

- Question(Q) 확인 버튼명 수정
1. 수작업으로 변경 처리함
 his.commConfirm_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	//trace("[/commConfirm.xfdl] [commConfirm_onload()] ==> [Confirm 창] [TEST_01]" ); 
	 
	var msg = this.parent.msg.replace("\\n", "\n");	// 내용
	//trace("[/commConfirm.xfdl] [commConfirm_onload()] ==> [Confirm 창] [TEST_02][msg]"+ msg +"[this.parent.title]"+ this.parent.title ); 

	if(!gfn_isNull(msg) && msg.indexOf("저장하지 않은 데이타가 있습니다.") >= 0)		// msg가 널이 아니면
	{
		this.btn_confirm.set_text("예");		// "확인" 버튼을 "예" 버튼으로 변경
		this.btn_cancel.set_text("아니오");	// "취소" 버튼을 "아니오" 버튼으로 변경
	}

	this.sta_title.set_text(this.parent.title); 	// 제목
	this.sta_msg.set_text(msg);  	// 내용
}
==============================================================================================================

- 메뉴등록(/SY_MenuInput.xadl) 변경[메뉴 수정]
1. TOOL관리(TL) > TOOL관리(TL) > 계측기 > 계측기 등록[TL-01-010, TL_MeasurEquipInput] 화면 변경
 1) 화면명 TL_MeasuringInstrumentInput 에서 TL_MeasurEquipInput로 수정 처리
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.29(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), 김도현 대리 황부장하고 어제 싸웠다고 함, 
							--> 오이사에게 전화: 이차장이 먼저 전화해서 철수 요청 했다고 함(황부장에게 쪼임 당함)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 팝업 메뉴 처리(/popUp_sample.xfdl) ==> 완료 @@
1. 모달(/pop_modal.xfdl) 처리, 모달리스 처리
http://localhost/APQMS/QuickView.html?formname=sample%3A%3ApopUp_sample.xfdl
==============================================================================================================

- 전자정부 프레임에서 excel import 시 타입 변경 문의
1. /ExcelImport_20170605.xfdl,  /exData_20171207_2.xlsx
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.06.30(토 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 주말
08:00 기상
08:35 조식(빵)
11:30 구로리 공원(수종: 비 조금 옴)
12:30 중식(돌솥, 치즈 돈가스, 김밥): 수종, 만 4천원
12:50 엘 마트(수종: 아이스크림) 
13:00 귀가 ==> 루옌 공장 언니들 놀러 옴
13:30 낮잠
17:00 기상 ==> 루옌 공장 언니들 귀가
19:30 석식
21:00 TV 시청
23:00 TV 월드컵 시청(프랑스 2:1 아르헨티나)
01:00 취침 
==============================================================================================================

- 아동수당 신청(10시, 집)
1. 신청 방법: 주민센터, 복지로 사이트 ==> bokjiro.go.kr
2. 신청 기간: 6.20 ~9.30
3. 신청: 2018.06.30 ==> 복지로에서 신청 완료 
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 