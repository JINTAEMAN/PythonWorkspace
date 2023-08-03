

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.03.01(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00~ 21:40  

- 한투 컴플라이언스 Prj
- BPM 작업 
A. 계약의견 등록(/con_offComRegisterN.jsp) 수정: 완료 
1. 등록자 수정(부서/직급/전화번호) BPM17011 테이블에 RTELNO 필드 추가: 완료 
2. 5. 계약검토의뢰검토 및 의견등록에서 반려일 경우 결재 지정 안함으로 수정: 완료 
3. 결재정보 정렬(결재일시 최근 것이 맨앞으로 정렬): 완료 
4. 반려확인 정보를 결재 정보 테이블에 추가 
5. 차수 증가(반려:2, 계약의견 확인 제외) 
==============================================================================================================

 - 다중 파일 등록(/sbm/bpmportal/ap/voc/jsp_genCommon/comFile/comFileGenUploadP.jsp): 완료 
BPM17004(첨부파일 정보) ==> 이전 꺼: bpm14008 , bpm10005 
업무계획등록(업무관리)(/sbm/bpmportal/ap/voc/jsp_gen/genAA1000/milestonePlanN.jsp)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.02(일) 작업 ■■■■■■■■■■■■■■■■ 
---> 06:40~ 21:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
A. 계약의견 등록(/con_offComRegisterN.jsp) 수정: 완료 
1. 반려확인 정보를 결재 정보 테이블에 추가: 완료 
2. 차수 증가(반려:2, 계약의견 확인 제외): 완료 
advDao.insertApprvDetailCopy(rcvno, String.valueOf(bean.getPropLong("ApprStep")+1), "00"); 
advDao.deleteApprvExtDetail(rcvno, apprvstep); //반려시 결재 대기 값 삭제(결재 결과를 폐기(9)로 update) 
==============================================================================================================
    
- 보안등급설정권자 관리 화면은 권한별 사용자 연결 화면과 같이 만들 것: 1차 완료 
(/sbm/bpmportal/ap/voc/jsp_common/sysMgt/userAuthMgtF.jsp)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.03(월) 작업 ■■■■■■■■■■■■■■■■
---> 05:50~ 23:10 

- 한투 컴플라이언스 Prj
- BPM 작업
1. 최종 수정: 완료 
70번 서버 테스트: 유닉스 서버라 안 먹는 경우가 있음 
해결책: 안 먹는 소스 앞에 해당 줄을 넣어 줌 
Logger.warn.println("[/con_MasterRegisterS.jsp]::[TEST_22]");      
==============================================================================================================

2. 계약서 양식 리스트(/con_docUpLoadL.jsp) 수정 
- 검색 
-  새창 띄워서 등록을 하기  
--------------------------------------------------------------------------------------------- 
- page 조회 
SELECT * 
FROM 
(SELECT COUNT(*) OVER() AS cnt, rownum as rnum, total.* 
FROM (   ---//소스 시작 
 SELECT A.SEQNO, A.CONTRTYPE, A.CONCERNCONTENTS, A.ATCHFLSEQ, A.REMPNO, A.REGDT, A.CHGDT, 
(SELECT B.dtlcdnm FROM bpm10008 B WHERE B.maincd = '701' AND A.CONTRTYPE = B.dtlcd) AS CONTRTYPE_NM, 
(SELECT RTRIM(B.FLNM) FROM BPM17004 B WHERE A.ATCHFLSEQ = B.ATCHFLSEQ) AS FILE_NM_NM, A.REMPNM, 
(SUBSTR(A.REGDT, 1, 4)  '-'  SUBSTR(A.REGDT, 5, 2)  '-'  SUBSTR(A.REGDT, 7, 2)  ' '  SUBSTR(A.REGDT, 9, 2)  
 ':'  SUBSTR(A.REGDT, 11, 2)) AS  REGDT2 
FROM BPM17013 A 
WHERE A.SEQNO IS NOT NULL  --//소스 끝 
) total     
) 
WHERE  rnum >=1  AND rnum <= 12 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.04(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:30~ 22:00 

- 한투 컴플라이언스 Prj
-  검수 후 수정 사항 수정: 완료  
1. 계약서의견등록 수정(주무부서 담당자 1개 등록) 
2. 결재 정보 수정(정렬 하기, 재상신 추가) 

//현재날짜 정보 yy-mm-dd  HH:mm 
String today = DateUtil.dtos(DateUtil.sysdate(), "yyyy-MM-dd"); 
//현재날짜 정보(yyyyMMddHHmmss) 
String approvDay = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd HH:mm");   
==============================================================================================================

-- 사용자 별 권한 관리(권한 관리에서 My DesK_전직원(AUTHSEQ:10)을 삭제하고 권한을 설정해야 함) 
SELECT *  
FROM ADBMS.BPM10013       
WHERE AUTHSEQ IN (SELECT AUTHSEQ FROM ADBMS.BPM10012 WHERE TRIM(EMPCD) = '101399')   
--;    
==============================================================================================================

- 진행 상태 수정 
- 임시저장 
- 기안        : 기안자 등록 ~ 중간결재자 승인 이전 
- 대기        : 중간결재자 승인 이후 ~ 부서장 승인 이전 
- 컴부 발송 : 부서장 승인 후 ~ 컴부 담당자 수신기안 이전 
- 컴부 진행 : 컴부 담당자 수신기안 이후 ~ 컴부서장 최종승인 이전 
- 결재 완료 : 컴부서장 최종승인 후   
==============================================================================================================

- 새창 닫으면서 부모창 리로드(새창에서  닫기 클릭시) 
function closeData() {   
opener.location.reload();  //리로드 
self.close(); 
} 
--------------------------------------------------------------------------------------------- 

- 글자수 체크 
function CheckStr(strOriginal, strFind, strChange){ 
    var position, strOri_Length; 
    position = strOriginal.indexOf(strFind);   
     
    while (position != -1){ 
      strOriginal = strOriginal.replace(strFind, strChange); 
      position    = strOriginal.indexOf(strFind); 
    } 
   
    strOri_Length = strOriginal.length; 
    return strOri_Length; 
} 

function save() 
{ 
var val = document.frmlist.content.innerText; 
var len = val.length; 
if (CheckStr(val, " ", "")==0)  
    { 
      alert("한마디도 안 쓰셨군요... 쓰시지요.."); 
      document.frmlist.content.value=""; 
      document.frmlist.content.focus(); 
      return; 
    } 

==============================================================================================================

 -- 직원 정보 
SELECT A.EMPCD, A.EMPNM, A.EMPTELNO, A.USERREGNO,  A.EMPTELNO, 
A.DEPTCD, A.DUTYCD, A.JIKGUBCD, USERCONTACTS, EMAILADR, 
(SELECT DEPTNM FROM ADBMS.BPM10001 WHERE TRIM(DEPTCD) = TRIM(A.DEPTCD)) DEPTNM, 
(SELECT DUTYNM FROM ADBMS.BPM10002 WHERE TRIM(DUTYCD) = TRIM(A.DUTYCD)) DUTYNM, 
(SELECT JIKGUBNM FROM ADBMS.BPM10003 WHERE TRIM(JIKGUBCD) = A.JIKGUBCD) JIKGUBNM 
FROM ADBMS.BPM10004 A   
WHERE A.RETIREDT IS NULL   
AND A.COTPCD = 'C1'  
AND A.DUTYCD = '110'   --직위코드(110:부서장) 
==============================================================================================================

- 추후 일정 
3월 10일(월) 부터 광화문 삼성증권에 투입 
스트러츠+스프링+플랙스, 세스 툴  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.05(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50~ 22:00 

- 한투 컴플라이언스 Prj
-  검수 후 수정 사항 수정: 완료 
1. 임시저장 테스트  
내가 처리한 일 
http://190.190.183.223:8888/sbm/appportal/myhome/tasksDone.jsp#this 
내가 시작한 일 
http://190.190.183.223:8888/sbm/appportal/myhome/status.jsp#this  
2. 법무법인 수정 사항 수정: 완료  
==============================================================================================================

- 3줄 문자 분리하여 다시 붙이기 
받아온 값(empnm: 이광용^^최인규, deptnm: 고객시스템부^^고객시스템부, dutynm: 차장^^부서장) 
결과값(이광용[고객시스템부/차장], 최인규[고객시스템부/부서장]) 
function setUser(empcd, empnm, deptcd, deptnm, dutycd, dutynm, jikgubcd, jikgubnm, emptelno, idx){  
 var f = document.form; 
var str_tot_name= ""; var str_name_sum3;  
arr_empnm = empnm.split("^^"); //이름 
arr_deptnm= deptnm.split("^^"); //부서명 
arr_dutynm= dutynm.split("^^"); //직위명     
for(i=0;i<arr_empnm.length;i++)  // 배열의 수 
{ 
str_name_sum3 = arr_empnm[i] +"["+ arr_deptnm[i] +"/"+ arr_dutynm[i] +"]";   
if( i < arr_empnm.length -1) {   //,를 표시할 수 파악 
str_tot_name += str_name_sum3+", ";   
} else { 
str_tot_name += str_name_sum3;    
}   
}  
} 
--------------------------------------------------------------------------------------------- 

- split 으로 문자 자르기 
<script language="javascript"> 
function insertTable() 
{ 
var retval = "050110,050113,050101,050117,050321,050408"; 
arr = retval.split(",");  
var table_html = "<table>"; 
var row_html;  
for(i=0;i<arr.length;i++) 
{ 
row_html = "<tr><td>" + arr[i] + "</td></tr>"; 
table_html += row_html;  
}  
table_html += "</table>";  
document.getElementById("div_table").innerHTML = table_html; 
} 
</script> 
==============================================================================================================

 - 나모 웹에티터 관련 문제점 처리 
박상혁 부장 *(전화 통화: 환경설정 다큐먼트 수정하라고 함) 
나모에 이메일 문의(*@*.*)  
1. 등록시 엔터키 치면 2칸 떨어짐(Shift + 엔터면 가능하지만 엔터로만 가능하도록 수정 요구): 처리 완료  
해결책: 가. 오른쪽 마우스 누르신다음에 문단과 목록속성(R) 클릭 -> 줄간격: 한줄(문단간격없음) 을 누르시면 해결 
(/NamoWec.cab 파일을 다시 만들어 달라고 요청) 
나.  [Shift]+[Enter]키를 누르시면 됨 
다. 환경변수 파일(/conNamoWec.env)에서 설정(실제 소스 적용) 
[Edit] 
ReturnKeyActionBR = Yes  
2. 조회시 글자 수에 따라서 높이 달라지도록 할 것: 처리 완료 
 int p_character_lens = p_contrcontents.length();     //거래체결 내용 글자수  
if(p_character_lens <200) {   
%> <iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:720;height:100;"></iframe> 
<% } else if(p_character_lens <400) {    
<% } else {%><iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:720;height:600;"></iframe> 
<% } %>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.06(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:30~ 22:30 

- 한투 컴플라이언스 Prj
-  검수 후 수정 사항 수정: 완료 
1. 임시저장 수정(계약의뢰, 계약의견)  
-. 계약검토의뢰 신청에서 가능하도록 수정 
나. 3. 계약의견 확인(/con_offDeptRegisterN.jsp)에서는 결채차수 있어서 수정 안 함 
다. 계약의견 반려확인에서 내용 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.07(금) 작업 ■■■■■■■■■■■■■■■■
---> 05:50~ 18:30  --> 나라정보 기술 회식(문부장), 태용 서울집 방문(짐 갖다줌) 

- 한투. 컴플 Prj
-  2차 검수 테스트(여진수 대리): 실패 
-  검수 후 수정 사항 수정: 완료 
1.  계약의견 반려확인에서 계약 내용 포함하도록 수정  
2.  권한 설정(계약서, 법무법인 의견서): 완료  
 - 계약검토담당자Only 는 보안등급설정권자 관리에서 Comple 총괄관리자로 설정 
 - 컴부 담당자 지정 AP 롤 관리인가에서 해준다고 합니다   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.08(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:00~ 21:30  --> 현용, 임모 낙성대역 만남(고기집, 당구(2등), 술집): 새벽 5시까지 

- 한투. 컴플 Prj
-  수정 요청 사항 
1. 법무법인 사이즈 조절: 완료 
2. 결재 정보 확인(대기도 조회 가능): 완료 
3. 원기안자 테스트: 완료 
4. 결재에 계약취소 만들기: 완료 
5. 검토의견 파일 등록시 에러(삭제됨): 완료 
6. 상세 조회에서 의견 정보 에러: 완료  
7. 나모 에디터 수정 에러(액티브 스퀘어6): 나모 담당자에게 메일 발송 
<P>&nbsp;</P> --> <P>?</P> 
8. 산출물 작성: 완료 
==============================================================================================================

- KTX 예약(취소)  
2008.03.09(일)   서울 -> 동대구 06:10  ~ 08:01  
2008.03.09(일)   동대구 -> 서울 18:10  ~ 08:01  
[KTX 패밀리 체크 카드(철도회원)] 
카드번호: 0550566830/0**9 
www.qubi.com  --> tamario/ta****9 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.09(일) 작업 ■■■■■■■■■■■■■■■■
---> 12:40~ 19:00  --> 화공과 축구부 모임(불참, 회장 물러남): 한투. 컴플 Prj 테스트 때문 

- 한투. 컴플 Prj
- 통합 테스트
- 날짜 타입(날짜 구분자 setting) 
String ds_regdt = isContent ? DateUtil.dtos(DateUtil.strTotimeDate(StrUtil.nullToSpace(drDetail.getString
(1,"REGDT"))),"yyyy-MM-dd") : "";		// 등록일자  
String ds_regdt2 = DateUtil.dtos(DateUtil.strTotimeDate(StrUtil.nullToSpace(drDetail.getString(1,"REGDT"))),"yyyy-MM-dd HH:mm");  
String ds_regdt  = DateUtil.dateChart3(StrUtil.nullToSpace(drDetail.getString(1,"REGDT2")),"-");		// 등록일2   
==============================================================================================================

- 버스 노선
낙성대 -> 봉천동 동아아파트(641번) 
봉천동 동아아파트-> 종각역(501번, 506번) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.10(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 23:20  --> 한투 증권 1차 철수 

- 한투. 컴플 Prj
-  통합 테스트 
1. 나모 에디터 수정 에러(액티브 스퀘어6): 완료 
2. 법무법인 수정 
3. 계약서 양식 등록 수정(팝업), 스캔 양식 수정 

<P>&nbsp;</P> --> <P>?</P> 
액티브 스퀘어6 개발자가이드 : http://www.namo.co.kr/activesquare/techlist/help/devel/  
<%!  
//문자열중 지정한 문자열을 찾아서 새로운 문자열로 바꾸는 함수 
    public String replace(String original, String oldstr, String newstr)    
    { 
        String convert = new String(); 
        int pos = 0; 
        int begin = 0; 
        pos = original.indexOf(oldstr); 
        if(pos == -1) 
            return original; 
        while(pos != -1) 
        { 
            convert = convert + original.substring(begin, pos) + newstr; 
            begin = pos + oldstr.length(); 
            pos = original.indexOf(oldstr, begin); 
        } 
        convert = convert + original.substring(begin); 
        return convert; 
    } 
   // 내용중 HTML 특수기호인 문자를 HTML 특수기호 형식으로 전환 
    public String convertHtmlchars(String htmlstr)   
    { 
        String convert = new String(); 
        convert = replace(htmlstr, "<", "&lt;"); 
        convert = replace(convert, ">", "&gt;"); 
        convert = replace(convert, "\"", "&quot;"); 
        convert = replace(convert, "&nbsp;", "&amp;nbsp;"); 
        return convert; 
    } 
%>　 
==============================================================================================================

- 결재정보에 반려, 재상신 색깔 주기 
if ((int_result_cnt % 2) == 1) {   //1. 반려 갯수(계약검토부서)가 홀수 이면 
if(app_stat.equals("2")) { //결재 결과가 반려 이면  
int_ch_can_color += 1;  
}     
if(app_stat.equals("2")) { //결재 결과가 반려 이면  
if ((int_ch_can_color % 2) == 1) {   //홀수이면 
sclass ="table_brwn02";   
} 
}    
}    
==============================================================================================================

- 결재 차수 테스트(BPM에서 넘어 온 값) --> TEST시 사용 
String p_apprvstep_2  = ""+ bean.getPropLong("ApprStep");   
==============================================================================================================

- 보안등급 
1. 전체공개 
    - 제약 없이 전체 공개 
2. 계약검토담당자Only 
    - 해당 계약건의 등록자, 결재자 모두 
    - 계약검토담당자(윤선영, 김흥관 등 권한 등록된 사람) 
3. 공람권자지정 
    - 해당 계약건의 등록자, 결재자 모두 
    - 공람권자 지정자  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.11(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 21:00  --> 삼성증권 투입(종각역 삼성증권 본사): (투입 기간: 03.11 ~ 07.11) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션 
AML(Anti Money Laundry): 자금세탁방지 
http://www.ddaily.co.kr/news/news_view.php?uid=34888 
CIR(Compliance Information Report):  
스트러츠(Struts), 스프링, SAS AML 솔루션, 플랙스  
----------------------------------------------------------------------------------- 

- 삼성. SAS AML Proj 회의(강유숙 차장) 
1. UI  
 1) KYC(Know Your Customer: 신분 확인): 설계 
 2) Report 
  가. AML 제공(12개): HTML으로 만들어줌 
  나. Dash 보드: 진과영 과장, 유상진 대리(스프링으로 만듬) 
 3) STR(Suspicious Transaction Report: 혐의 거래 보고) 보고서(한국) 
   가. SAR(Suspicious Actity Report: 혐의 활동 보고) 보고(미국)를 참고하여 JSP로 개발(스트러츠, JSTL 태그 사용) 
   나. XML 형식으로 정부기관에 보고 
2. 기타 
 1) 인증(사용자) 문제 
  가. 삼성 그룹에서는 Single(SSO)를 사용하고 있어 SAS AML 솔루션에 적용 불가능 
 2) 관련자 연락처 
  가. PM: 오광섭 차장(SAS 코리아) 나. UI 총괄: 최태수 과장(SAS 코리아) 
  다. ETL Data: 김대후 부장  라. AGP 솔루션 분석: 손요진 
  마. 솔루션 모델링: 전은경  
==============================================================================================================

- 삼성증권 
강유숙 차장 * 
진나영 과장 * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.12(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:20 ~ 16:00  --> 한투 증권 방문(16:40 ~ 07:20): 종각 -> 여의도(160번 버스), 철야 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션 
1. 스트러츠(Struts) 분석 
도서: 럿츠 프레임워크 워크북 박재성 저  한빛미디어  2003년 10월(강유숙 차장이 빌려 줌) 
JSP(Servlet, Action) --> Manager 클래스 --> 도메인 클래스   --> Business Object 클래스 
--> Data Access Object 클래스  --> DB 
-------------------------------------------------------------------------------------------------------- 

- 모델 2 
브라우저(1. 요청)  --> 컨트롤러(서블릿)(2. 인스턴스 생성) --> 모델(자바빈) --> 엔터프라이즈 서버/데이터 소스 
   <--> (뷰) JSP(3. 데이타 전달, 5. 응답) 
-------------------------------------------------------------------------------------------------------- 

1. 프레임워크 정의: 애플리케이션 개발에 바탕이 되는 텔플릿과 같은 역할을 하는 클래스들과 인터페이스의 집합 
2. 프레임워크 특징 
 1) 프레임워크는 특정 개념들의 추상화를 제공하는 여러 클래스나 컴포넌트로 구성 
 2) 프레임워크는 이렇게 추상적인 개념들이 문제를 해결하기 위해 같인 작업하는 밥법을 정의한다. 
 3) 프레임워크 컴포넌트들은 재사용이 가능하다. 
 4) 프레임워크는 좀 더 높은 수준에게 패턴들을 조직화한다. 

3. 스트러츠 정의: 모델 2에서 재사용성이 부족했던 많은 부분들을 재사용이 가능하게 미리 구현해 놓은 프레 
임워크 
 1) 뷰와 모델 사이에 컨트롤러 레이어가 존재(뷰와 모델은 독립된 상태 유지) 
 2) JSP와 Action 클래스 사이의 매핑을 소스가 아닌 xml(struts-config.xml)을 이용하여 해결 
4. Eclipse와 Easy Struts를 이용한 개발 
 1) 초보자에게 용이 
5. Ant와 Xdoclet을 이용한 개발 
 2) EJB와 복잡한 프로그램에 용이(추천) 
==============================================================================================================

- SAS AML Proj 회의(강유숙 차장, SAS 코리아: 최태수 과장) 
1. UI 
 1) KYC(Know Your Customer: 신분 확인): 설계 
 2) Report 
  가. Dash 보드: 진과영 과장쪽에서4월말에 만들면 참고해서 개발하면 됨 
 3) STR() 보고서(한국): 3월 말까지 UI 화면 개발 
 4) Investigation: risk report 작성 
2. 기타 
 1) 소스 분석 정리 
 2) 소스 개발 표준화(디버깅시 .war 파일을 override)   
==============================================================================================================

- 한투. 컴플 Prj
-  수정 사항 수정 
1. 계약서, 법무법인의견서 권한 수정: 완료 
2. 화면 높이 조절, 글귀 수정: 완료  
==============================================================================================================

- 전현노 주소 
경남 양산시 남부동 동원 로얄듀크 102동 106호 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.13(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 22:00  --> 철야(삼성증권 다시 출근)--> 한투 증권 방문(14:20 ~ 22:00) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션 
1. 스트러츠(Struts) 분석  

 - JSTL(JSP Standard Tag Library): 최정예 커스텀태그들을 모아서 이름을 붙여준 것 
 The JSTL Expression Language  
지나간 jsp 페이지의 정보는 JSP 범위안(scoped)의 속성과 요청 인자를 이용해 전달된다.  
EL은 비지니스로직에서 jsp페이지로 정보를 전달하는 일반적인 방법을 증진시켜준다.  
EL은 JSP 의 관점에서 하나의 열쇠(key를 열쇠로 번역할수 밖에 ㅜ.ㅠ) 이긴 하나 일반적인 프로그래밍  
언어의 취지는 아니다.  스크립틀릿 없이 간편하게 어플리케이션 데이터에 접근할수 있는 언어라고 볼수 있다.  

 1) 핵심 태그 라이브러리는 변수 제공 및 설정, 항목 모음 반복, 조건 테스트, 웹 컨텐트 임포트 및 리디렉션 같은  
일상적인 작업을 위한 일반적인 지원을 제공합니다.  
핵심 http://java.sun.com/jstl/core c <c:tagname ...> 
 2) XML 태그 라이브러리에는 구문 분석, XML 노드 반복, XML 데이타에 기반한 조건 평가, XSLT(Extensible Style 
Language Transformations) 수행 등을 비롯한 XML 처리 및 조작을 위한 지원이 포함되어 있습니다.  
XML  http://java.sun.com/jstl/xml  x  <x:tagname ...> 
 3) 국제화 태그 라이브러리는 다국어 애플리케이션을 위한 지원을 제공합니다.  
 국제화 http://java.sun.com/jstl/fmt  fmt  <fmt:tagname ...>  
 4) 데이타베이스 태그 라이브러리는 데이타베이스 데이타를 액세스 및 수정하기 위한 표준화된 지원을 제공합니다. 
데이타베이스 http://java.sun.com/jstl/sql  sql  <sql:tagname ...>  
==============================================================================================================

- 자바 디컴파일러 사용법 
C:\> cdD:\00. TAMA\02. My_Company\03. 나라정보기술\02. 삼성  SAS AML Proj(삼성증권)\91. 소스\aml211 
\web\appl\sasaml\WEB-INF\classes\com\sas\aml\struts\action  
C:\>...\action> jad.exe *.class ===> 전체 폴더 디버깅( jad.exe 해당 폴더에 있을 것)  
C:\>...\action> rename *.jad *.java ===> 전체 파일  형식 전환 
==============================================================================================================

- 한투. 컴플 Prj
-  수정 사항 수정 
1. 임시저장 수정: 완료 
2. 법무법인 수정: 완료 
3. 계약의뢰 확인 수정(결재선 추가): 보류 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.14(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 24:20 

- 한투. 컴플 Prj
- 실서버 적용(20:00  ~ 24:20) 
1. 계약의뢰 확인 수정(결재선 추가): 완료   
2. 주간보고서 작성: 완료 
-------------------------------------------------------------------------------------------------------- 

- 결재차수, 결재순번 
String p_apprvstep_2 = ""+ bean.getPropLong("ApprStep");     //결재차수(TEST) 
String p_apprvseq_2 = ""+ bean.getPropLong("ApprSeq"); //결재순번 

- 결재차수의 취득(NULL 이면 1 이고 안 그러면 MAX값 조회) 
SELECT DECODE(MAX(APPRVSTEP), NULL, 1, MAX(APPRVSTEP)) +1 AS APPRVSTEP 
FROM ADBMS.BPM17002 
WHERE RCVNO ='20080314-013' 
==============================================================================================================

- 호근씨 노트북 
nara/nara123 
==============================================================================================================

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): ====> BPM 테스트 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약의뢰 결재(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토(/con_comPreviewN.jsp): 완료 
4. 계약의뢰 컴부 결재(/con_comSetN.jsp):  완료 
5. 계약의견서 수정(/con_comPreviewM.jsp):  완료 
6. 계약의뢰 확인(/con_deptResultViewReqN.jsp): 완료 
7. 계약의견 확인(/con_deptResultViewD.jsp):완료 
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): ====> BPM 테스트 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료 
4. 계약의뢰 결재(/con_offDeptSetN.jsp): 완료 
5. 계약의뢰 검토(/con_offComRePreviewN.jsp): 완료 
6. 계약의뢰 컴부 결재(/con_offComReSetN.jsp): 완료    
7. 계약의뢰 수정기안/con_offComRePreviewM.jsp): 완료 
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp): 완료 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.17(월) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 22:40 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 웹로직 설치(platform816_win32.exe) 
1) Configuration the Administration Server 
Discard Changes: 
Name: AMLServer 
2) Configuration the Administrative Username and Password 
Discard Changes: 
Username: weblogic 
Password: ssjtm8**  
3) Build Start Menu Entries 
Short link Name: Start AML Server 
4) Create Weblogic Configuration 
Configuration Name: AMLDomain 
5) 설치 완료 

[WebLogic 설정] 
1. 콘솔을 실행합니다. http://localhost:7001/console  (weblogic/tama0339) 
2. Deployments - Web Application Modules -  Deploy a new Web 선택  
3. 소스 위치(C:\AML211\web\appl\sasaml) ROOT 디렉토리를 선택하고 Target Module을 클릭 
4. Default 구성으로 Deploy 버튼을 클릭합니다. 
5. Deploy가 성공적으로 됐다면 아래와 같이 표시됨 
6. Connection Pool 을 설정합니다. 
    Services - JDBC - Connection Pools -Configure a new JDBC Connection Pool... 선택 
7. 오라클 드라이버를 선택하고 Continue 버튼을 클릭 
Name: AML KC Connection Pool 
Database Name: DRISKDEV 
Host Name: 45.1.150.215 amlctr/amlctr1  
==============================================================================================================

- 오전 회의(오광섭 차장, 최태수 과장, 김대후 부장, 송요진, 전은경, 강유숙 차장) 
1. 일정 준수(주간보고서 작성) 
2. 전체 일정 공지(3월 18일(화)) 
3. 업무별 일정 
 1) ETL: 1차 Data 로딩(금주 금요일까지) 
 2) 모델링: 일정 차질 
 3) UI  
  가) KYC지연(일정 체크) -> KPMG와 협의: 질문지 작성(설계: 5월초까지 마무리 예정 
설계 산출물: 화면 레이아웃, 프로그렘 사용서, 테이블 정의서) 
  나) STR: 테이블 별도로 생성 예정 -> 4월초(Task에 포함) 
ERD 수정, Prototype 개발(26일 상세 ERD개발), 개발 표준 작업(Eclipse CVS, ANT) 
  다) Dash Board: 외환은행 사례 분석 -> Flex팀에서 개발(spring으로 레이아웃 설계)  
 4) What's list: KYC와 맵핑 
 5) 시스템: AML 도메인 별도로 생성할 예정(최대 사용자 20명) 
 6) SSO인증: Action servlet 사용할 예정 
==============================================================================================================

- 삼성증권 네트웍(IP 주소)  --------- 
IP: 45.10.4.21 
S.M: 255.255.255.0 G.W: 45.10.8.241 
DNS: 203.241.132.34 
------------------------------------------------------------------------------ 
- 공유 서버 
\\45.10.10.155\rms 산출물관리 rms/rms123 
- 프린터 설정 
삼성증권\Printer Setup\APC4300\XDrivers1.5.exe 더블 클릭 
IP: 45.10.10.156   드라이버명: FX ApeosPort-II C3300 PCL 6 
- FnMessenger 설치 
- V3 설치(V3 IS 7.0) 
http://45.12.20.111:8080/apc/AgentInstall/list_agent.asp  
- 삼성증권 AML TNS DB 
DRISKDEV, HOST = 45.1.150.215 amlctr/amlctr1 
==============================================================================================================

- 메신저 차단 해제 방법 
메신저를 서비스를 차단한 방법은 그 회사의 네트워크관리자가  
라우터에서 ip access list (시스코 라우터의 경우) 라는것을 설정해서  
메신저의 ip port no의 inbound, outbound 서비스를 차단했을꺼구요,  
수퍼 유저가 아닐 경우 차단 해제 불가능 
------------------------------------------------------------------------------ 
- 자바 메신저 소스 
http://www.m2mcomputer.com/project/project3.asp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.18(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:30 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션 
1. SAS 프로그램 설치 
SAS 설치 Pack에서 총 5개의 CD에 명시된 Label을 확인 후 사용하게 됨 

2. 웹로직 설치(platform816_win32.exe) 
1) Configuration the Administration Server 
Discard Changes: 
Name: AMLServer 
Listen Port: 7001 
2) Configuration the Administrative Username and Password 
Discard Changes: 
Username: weblogic 
Password: ssjtm8**  
3) Build Start Menu Entries 
Short link Name: Start AML Server 
4) Create Weblogic Configuration 
Configuration Name: AMLDomain 
5) 설치 완료 

[WebLogic 설정] 
1. 콘솔을 실행합니다. http://localhost:7001/console(weblogic/tama0339) 
2. Deployments - Web Application Modules -  Deploy a new Web 선택  
3. 소스 위치(C:\AML211\web\appl\sasaml) ROOT 디렉토리를 선택하고 Target Module을 클릭 
4. Default 구성으로 Deploy 버튼을 클릭합니다. 
5. Deploy가 성공적으로 됐다면 아래와 같이 표시됨 
6. Connection Pool 을 설정합니다. 
    Services - JDBC - Connection Pools -Configure a new JDBC Connection Pool... 선택 
7. 오라클 드라이버를 선택하고 Continue 버튼  클릭  
- Database type: Oracle 
- Database Driver: Oracle Driver(Thin) Versions 9.0.1.9.2 
8. 다음과 같이 입력하고 Continue 버튼을 클릭 
- Define connection Properties 
Name: AML KC Connection Pool 
- Connection Properties 
Database Name: DRISKDEV 
Host Name: 45.1.150.215 Port: 5121 
Database User name: amlctr Password: amlctr1 
9. 아래와 같이 구성을 확인하고 ‘Test Driver Configuration’을 클릭합니다.  
Driver Class name:  
10. 아래와 같이 테스트가 완료되면 Create and deploy를 클릭합니다. 
11. Connection Pool이 생성되면 아래와 같이 표시됩니다. 
12. Data Source를 설정합니다. 
     Services - JDBC - DataSources - Configure a new ... 선택합니다. 
13. JNDI Name을 아래와 같이(AML’) 입력하고 Continue를 클릭합니다. 
Name: AMLCtrDS 
JNDI Name: AMLCtrDS 
14. Pool Name을 이전단계에서 생성한 Connection Pool(AML’)을 선택하고 
     Continue를 클릭합니다. 
15. Create 버튼을 클릭합니다 
16. Data Source 가 생성되었다면 아래와 같이 표시됩니다.  
17. 설치/설정이 잘 이루어졌는지 확인합니다. (http://localhost:7001/tmpl/ComUsrLogin.jsp) 
==============================================================================================================

3. WTP(Web Tools Platform) 설치 
WTP에서는 Tomcat, WebLogic, WebSaphere, JBoss, JOnAS, Oracle OC4J 등 많은 서버에서 사용할 수 있도록 
다양한 서비스를 제공 
1) apache-tomcat-5.5.15 설치(Port=8081) 
2) Generic BEA weblogic Server v8.1 설치(Port=7001) 
Project name: TestWebProject 
------------------------------------------------------------------------------ 

- 빌드에 의한 생성물 저장되는 곳 
C:\AML211\web\appl2\sasaml\WEB-INF\web.xml  
C:\Program Files\Java 
jdk1.5.0_11, jre1.5.0_11(J2SE 5.0) 
==============================================================================================================

- 8080 포트 에러 
정상작동하는 것이다 
에러 내용: Tomcat5는 http://localhost:8080 페이지가 뜨면서 "XDB의 서버 localhost을(를) 사용하려면 사용자  
이름과 암호가 필요합니다."라는 에러가 발생 
원인:  오라클 서버 9i 이상 설치하면 오라클 클라이언트용이 아닌 서버로 깔면 오라클에서 8080 포트를  
사용하므로 톰캣을 구동하실 수가 없습니다.  
조치: 오라클 XDB의 포트 변경 
C:\Documents and Settings\geenoo> netstat -ano  
Proto  Local Address          Foreign Address        State           PID  
 TCP    dozuq:8080             dozuq:0                LISTENING        500 
 TCP    dozuq:2100             dozuq:0                LISTENING        500  
:  
PID로 프로세스를 찾는다.  

C:\Documents and Settings\geenoo> tasklist /SVC /fi "PID eq 500"  
이미지 이름 PID 서비스 
========================= ====== ============================================= 
TNSLSNR.EXE                  500 OracleOraHome92TNSListener 
  
다음 명령으로 리스너의 서비스 상태를 보자.  
D:\oracle\ora92\bin>lsnrctl status 
 DESCRIPTION=(ADDRESS=(PROTOCOL=ipc)(PIPENAME=\\.\pipe\EXTPROC0ipc))) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=1521))) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=8080))(Presentation=HTTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=2100))(Presentation=FTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=8080))(Presentation=HTTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=2100))(Presentation=FTP)(Session=RAW)) 

Oracle XDB 가 8080(HTTP)와 2100(FTP) 포트를 쓴다는 걸 확인했다.  
이제 포트(Port)를 변경해보자.  
 FTP: 2101, HTTP: 8081   --> 포트 변경 성공  
 ==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.19(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  --> 현용 만남(술집:내가 쏨, 당구: 내가 이김) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션 

1. WTP(Web Tools Platform) 설치 
WTP에서는 Tomcat, WebLogic, WebSaphere, JBoss, JOnAS, Oracle OC4J 등 많은 서버에서 사용할 수 있도록 
다양한 서비스를 제공 
1) Generic BEA weblogic Server v8.1 설치(Port=7001) 
Project name: TestWebProject 
에러내용: server port in use 7001- HTTP  
조치: 1. 서버 Stop    
2. 서버 State가 Synchronized가 아닐 때까지 종료를 하고 안되면 Eclipse 종료 후 재시작 
==============================================================================================================

1. 시작->실행->cmd-> java -version  
: 버전확인 앗!!! 왜 1.3 이지 하고 놀란다.  
  
2. 내컴퓨터->고급->환경설정  
: path 와 java_home을 확인한다. 엇 path에 kenu님 말따라 oracle/jre가 적혀있다. 이런 된장....  
지운다.  
  
1. 자바 환경변수 설정(Java_Home, Path, Classpath) 
 1) Java_Home 
자바가 설치된 경로를 말하며, Java를 여러버전으로 사용한다면, 디폴트로 사용할 자바로 지정한다.  
도스창에서 set Java_Home 실행! 
C:\Program Files\Java\jdk1.5.0_11  
 2) Path 
실행프로그램이 있는 위치를 설정해주는 환경변수.  
- 운영체제가 프로그램을 실행할때 참조하는 디렉토리.   
- 명령프롬프트(cmd)를 실행한 후 set path 실행하면 path환경변수의 값을 볼 수 있음  
 3) Classpath  
자바가상머신이 자바클래스 파일을 찾기 위한 환경 변수. path와는 달리 .; 으로 현재 디렉토리를 지정한다.  
자바를 컴파일 할 때, 기본적인 자바 클래스들(라이브러리)이 필요하다. 위 클래스들이 어디에 위치해 있다는  
것을 자바 프로그램이 알 수 있도록 위치를 지정해주는것.  
==============================================================================================================

다른 프로세스가 파일을 사용 중이기 때문에 프로세스가 액세스 할 수 없습니다. 
   === Debugging === 
This window is necessary for debugging code using WebLogic Workshop 
java version "1.4.2_11" 
Java(TM) 2 Runtime Environment, Standard Edition (build 1.4.2_11-b06) 
Java HotSpot(TM) Client VM (build 1.4.2_11-b06, mixed mode) 
 ==============================================================================================================

 시스템 명령어인 netstat 를 사용하는 방법 
# netstat -n (열려 있는 모든 포트) 
#netstat -nap (열려 있는 모든 포트) 
#netstat -l 또는 netstat -nap  grep LISTEN (LISTEN 되는 모든 포트) 
#netstat -nap  grep ESTABLISHED  wc -l ( 모든 서비스 동시 접속자 수) 
#netstat -nap  grep :80  grep ESTABLISHED  wc -l ( 웹 동시 접속자 수) 
  
- 포트스캔 명령어로 확인 하는 방법  
# TCP 포트 확인 방법 
nmap -sT -p 1-65535 localhost  
# UDP 포트 확인 방법 
nmap -sU -p 1-65535 localhost 
# 네트워크에 열린 포트 확인  
nmap -sX -p 22,53,110 211.239.111.*   
lsof 명령어로 확인 방법  
==============================================================================================================

- 주식 투자(종욱이 아제 추천) 
영인프런티어(036180)   현재가: 4,640원 
http://www.younginfrontier.com 
http://www.kiwoom.com --> 키움 증권 가입 
--> 연계 계좌 개설(국민은행): 344990-60-011040(키움 거래기관 계좌: 3537-9861-11) 
==============================================================================================================

- FN 메신저 설치 
ID: 700178/1234 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.20(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. Generic BEA weblogic Server v8.1 설치(Port=7001) 

<name>redirect</name> 
<tagclass>org.apache.struts.taglib.logic.RedirectTag</tagclass>  
http://localhost:7001/amlProject/index.jsp  
http://localhost:7001/amlProject/SampleTestServlet 
- java 파일 위치 
C:\AML211\web\appl\sasaml\src 
- class 파일 위치 
C:\AML211\web\appl\sasaml\build\classes 
----------------------------------------------------------------------------------------- 

C:\AML211\web_2\appl\sasaml\TestWebProject\WebContent\index.jsp 
Buildfile: D:\00. TAMA\02. My_Company\03. 나라정보기술\02. 삼성  SAS AML Proj(삼성증권) 
\92. 기타 자료\92. 설치 프로그램\51. WTP\wtp-all-in-one-sdk-R-1.5.4-win32 
\eclipse\plugins\org.eclipse.jst.server.generic.weblogic_1.5.1.v200609141504\buildfiles\weblogic.xml 
undeploy.j2ee.web: 
BUILD SUCCESSFUL  
==============================================================================================================

- XML 편집기에 의한 web.xml 편집 
C:\AML211\web\appl\sasaml\WebContent\WEB-INF\web.xml 파일에서 
<!-- Standard Action Servlet Configuration (with debugging) --> 
<servlet> 
<servlet-name>action</servlet-name> 
<servlet-class>org.apache.struts.action.ActionServlet</servlet-class> 

<init-param> 
    <param-name>config</param-name> 
    <param-value>/WEB-INF/struts-config.xml</param-value> 
</init-param> 

  <!-- The Usual Welcome File --> 
<welcome-file-list> 
<welcome-file>index.jsp</welcome-file>  
</welcome-file-list>  

<servlet> 
<servlet-name>SampleTestServlet</servlet-name> 
<display-name>SampleTestServlet</display-name> 
<description></description> 
<servlet-class> 
wtp.test.SampleTestServlet</servlet-class> 
</servlet> 

  <!-- Struts Tag Library Descriptors --> 
<taglib> 
<taglib-uri>/WEB-INF/struts-bean.tld</taglib-uri> 
<taglib-location>/WEB-INF/struts-bean.tld</taglib-location>  
</taglib> 

<taglib> 
<taglib-uri>/WEB-INF/struts-html.tld</taglib-uri> 
<taglib-location>/WEB-INF/struts-html.tld</taglib-location>  
</taglib> 

  <!-- JSTL Descriptors --> 
<taglib> 
<taglib-uri>http://java.sun.com/jstl/core</taglib-uri> 
<taglib-location>/WEB-INF/c.tld</taglib-location>  
</taglib> 

<taglib> 
<taglib-uri>http://java.sun.com/jstl/fmt</taglib-uri> 
<taglib-location>/WEB-INF/fmt.tld</taglib-location>  
</taglib> 
==============================================================================================================

- [주간업무 2008년 3월 3째주] 
★ 금주 업무 실적(03/17 ~ 03/21)  
1. 개발환경 설치 
 1) SAS 프로그램 설치 
 2) 웹로직 설치(Generic BEA weblogic Server v8.1) 
 3) Eclipse WTP(Web Tools Platform) 설치 
2. 개발환경 설치 매뉴얼 문서화 작업 
 1) 웹로직, Eclipse WTP  
3. AML 소스 분석 
 1) 스트러츠(Struts) 분석 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(03/24 ~ 03/28)  
1. STR 1장, 2장 화면 개발 
 1) 단순 프리젠테이션 화면 시연(로컬 PC)   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.21(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00  --> 현용,임모 만남(술집:현용 쏨, 당구:2등(임모 3등 쏨)) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 스트러츠(Struts) 분석 
- 스트러츠는 Action, ActionForm 클래스와 JSP 사이의 매핑 정보를 struts-config.xml 파일에서 관리 
- 클라이언트로부터 요청이 있을 경우 스트러츠 프레임워크가 struts-config.xml 파일을 읽어 Action,  
ActionForm 클래스를 정확하게 찾아 서비스함 
==============================================================================================================

- 조회 
 SELECT * FROM FSK_USER  -->  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.23(일) 작업 ■■■■■■■■■■■■■■■■
---> 11:00 ~ 17:00  --> 점심(최태수 과장(쏨), 김대후 부장) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 스트러츠(Struts) 분석 
==============================================================================================================

- 화면 보호기: 구매 
3M컴퓨터화면보호기DQC13.3w  28,000원 
http://www.cjmall.com/prd/detail_cate.jsp?item_cd=11003872&shop_id=9100000002 
- 노트북 램 추가: 구매 
RAM: 2GB(삼성 램 DDR2 2G PC2-5300S) --> 3GB 
2G 구매하고 1G 판매(총 3G가 됨, 가격: 30,000원)     
- PC 하드 추가: 구매 
삼성 / HD501LJ(500G,16M)-ST2S-ATAII 500GB 7200RPM 16MB 정품 (325094071) , 가격: 99,190원) 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A098563975&frm3=V2  
- LG 마우스(3D-320) 구입 
LG 3D-320 2개 14,040원 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A094895587&frm3=V2  
- USB 포트: 구매 
4포트 USB 허브  가격: 4,000원 
- 연결 케이블: 구매(가격: 1,000원) 
- 주소: 서울시 종로구 종로2가 6번지 종로타워 삼성증권 3층 교육장  
리스크관리 선진화 프로젝트 AML팀(나라정보기술) Tel) 02-2020-6890 
==============================================================================================================

- XP에서 네트워크 공유폴더에 암호 부여하는 방법 
1. 설정: 시작->실행(R) -> cmd(O) ->   
> net user guest tama12 
2. 설정 확인: 제어판(C) -->사용자 계정 --> 사용자 계정(팝업) 
--> Geust(Geust 계정 사용) 클릭 --> 암호 변경 보임(암호 변경 가능해짐) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.24(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 22:10 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 스트러츠(Struts) 분석 
- 스트러츠는 Action, ActionForm 클래스와 JSP 사이의 매핑 정보를 struts-config.xml 파일에서 관리 
- 클라이언트로부터 요청이 있을 경우 스트러츠 프레임워크가 struts-config.xml 파일을 읽어 Action,  
ActionForm 클래스를 정확하게 찾아 서비스함 
==============================================================================================================

1. eclipse WTP 설정 
1) Project 설정 
new --> Other.. --> Web --> Dynamic Web Project --> New Dynamic Web Project 
Project name: AML211 
Directory: D:\Proj_sasaml\sasaml  Default 구성으로 Deploy 버튼을 클릭합니다. 
2) 서버 설정 
new --> Other.. --> Server --> Server: Generic BEA weblogic Server v8.1 선택 
 --> New Server :  
Domain Directory: C:/bea/weblogic81/samples/domains/workshop 
Start Script: C:/bea/weblogic81/samples/domains/workshop/startWeblogic.cmd 
Sop Script: C:/bea/weblogic81/samples/domains/workshop/stopWeblogic.cmd 
Port: 7001 Debug Port: 8453 
 --> Add and Remove Projects 
Available Projects : AML211 ==> Configured Projects: AML211 
 --> Finish   
------------------------------------------------------------------------------------------ 
Name: AML Core Connection Pool Database Name: DRISKDEV 
Host Name: 45.1.150.215 Database User Name: amlctr/amlctr1  
AMLCoreDS 
------------------------------------------------------------------------------------------  
 - Configure mail session 
Name: SAS AML Mail Session 
JNDI Name: SAS AML Mail Session 
==============================================================================================================

- 에러 내용: javax.servlet.UnavailableException 
처음으로 서블릿의 요청이 들어 왔을 때 해당 서블릿은 서블릿 컨테이너에 의해 자동으로 메모리에 로딩 되어  
진다. 메모리로 서블릿 클래스가 로딩 된 후 바로 객체를 생성하게 되며 객체 생성과 동시에 init() 메서드를 호 
출하게 된다. init() 메서드는 서블릿 로딩 시 단 한번 호출하게 되며 문제가 발생했을 때 UnavailableException 
이나 ServletException을 발생 시키게 된다. 서블릿 객체는 메모리를 해제하기 위해서 destroy메서드를 호출하게 된다. 
1. 서블릿의 동작 순서 
- 클라이언트의 요청 
- 서블릿 Handler 8080포트에서 요청 받음 
- 서블릿 컨테이너에서 해당 서블릿 검색 
- 해당 서블릿이 데이터베이스 작업을 해야 한다면 DB연결, 작업 
- 모든 작업이 완료 되었다면 응답으로 결과를 리턴 한다.  
==============================================================================================================

- 에러내용: HTTP 500오류 라면 서버상에서 프로그램이 동작중에 오류가 발생했다는 겁니다. 
이유: 결론적으로 해당 에러 메세지는 해당 처리를 위한 클래스 파일이 없다는 것입니다.  
 - 에러내용: HTTP Status 404 - Servlet action is not available 
현상: 톰캣 & 스트러츠 환경에서  404 - servlet action is not available  
이유: DB 연결이 안되서 데이터를 못가져 오는 경우일수 있음. DB 데이터와 관련된 페이지를 못불러와서 404  
에러가 떨어지기도 한다. 
해결: DB 연결 설정부분 수정 
 - 에러내용: java.io.IOExcetion: Stream closed  
이유: 하등의 입출력 예외의 발생을 통지하는 시그널을 발생시킵니다. 
해결: - 설정되어 있는 configuration이 안 맞아 나는 에러 
- weblogic 콘솔 페이지에서 DB 커넥터 수정(아님) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.25(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:00  --> 점심(삼성SDS 지진팀: 감자탕(2만), 지진팀에서 쏨) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 오라클 10g 설치 에러 
에러 내용: "oraparam.ini 에서 필요 조건 검사를 찾을 수 없어 시스템 필요 조건 검사가 실행되지 않습니다. 
다음에서 Oracle Universal Installer의 시작을 준비하는 중 C:\Documents and Settings\tama2 
\Local Settings\Temp\OraInstall2008-03-25_08-57-55PM 기다리십시오."라며 
universal installer에서 멈추어있는현상... 
------------------------------------------------------------------------------------------  
처음엔.. 저도 최신 버전으로 했었는데요..  
오라클 8.1.7 인스톨러 구동시에..  
jre 바이너리 파일을 찾는데..  
최신 버전에는.. 없더라구요..  
JRE_LOCATION=/usr/local/jre <-- 이놈을 찾더라구요 
------------------------------------------------------------------------------------------ 

- 오라클 삭제 
우선 오라클 시디를 넣어서 Oracle Universal Installer를 실행 합니다   
제품 설치 해제 버튼을 눌러서 오라클을 삭제 합니다.   
이렇게 오라클을 삭제해도 오라클은 완전히 지워지지 않습니다.    
오라클을 완전히 삭제하기 위해서는 Registry를 삭제해야 합니다.    
먼저 오라클 서비스를 멈추어야 합니다.    
NT4의 경우는 제어판 -> 서비스를 보시면 되며   
윈도2000 서버의 경우는 관리도구 -> 서비스 를 보시면 됩니다.   
오라클 관련되어 시작됨 이라고 되어 있는 서비스들을 모두 멈추시구요..   
그후 regedit으로 레지스트리를 편집하시면 됩니다.    
regedit을 실행 시키시고...   
HKEY_LOCAL_MACHINE->SYSTEM->CurrentControlSet->Services    
에 보시면 Oracle 로 시작되는 것들이 있는데요 이부분을 전부 지워주시고요,   
다음은   
HKEY_LOCAL_MACHINE->SOFTWARE->ORACLE   
부분을 전부 지워주세요...    
그런후 컴퓨터를 재부팅 하시고.. 윈도 탐색기를 이용해 물리적으로 존재하던 오라클 디렉토리를 삭제하시면 됩니다.  
C:\Program Files\Oracle  
http://cafe.naver.com/maketruedream.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=110 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.26(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 --> 공형근 차장 만남(스피링 프레임웍 공동 개발 제의) 

- 삼성 AML Prj 
- 삼성증권 SAS AML 솔루션
1. 오라클 10g 설치 에러  
XP에서 오라클 10g를 설치하는 데 아래와 같은 에러가 나면서 
멈춥니다. 
조언 부탁 드립니다.  
(노트북: 삼성 센스 NT-Q70A/A1, (인텔)코어2듀오(산타로사) / T7250 (2.0GHz))  
---------------------------------------------------------------------------------------------  
- 에러 내용: "oraparam.ini 에서 필요 조건 검사를 찾을 수 없어 시스템 필요 조건 검사가 실행되지 않습니다. 
다음에서 Oracle Universal Installer의 시작을 준비하는 중 C:\Documents and Settings\tama2 
\Local Settings\Temp\OraInstall2008-03-25_08-57-55PM 기다리십시오."라며 
universal installer에서 멈추어있는현상...  
해결책: 노트북 OS 포맷하고 XP Pro 다시 깜 
==============================================================================================================

- 2008년 3월 건강보험료 자동이체 신청: 완료 
41,840원 증번호(전자납부번호(11자리)): 21017603269 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.27(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 06:50 ~ 22:30  --> AML팀에서 축구 내기(남 0:0 북) 이김(3만원 범) 

- 삼성 AML Prj 
- SAS AML 메인(user1/user1)  =====> 웹로직 설정 완료 
http://45.10.4.21:7001/sasaml/vxi/AlertListUser   
http://45.10.4.21:7001/sasaml/vxi/Auth 
/tiles/alertTable.jsp  --> 리스트 링크 줄 
  
- SAS AML STR 보고서(팝업) 
http://45.10.4.21:7001/sasaml/vxi/AlertSAR?alertId=15&queryType=user  
System.out.println("[/index.jsp]:[test]"); 
==============================================================================================================

- 1) login.jsp 에서 
<form name="logonForm" method="post" action="/sasaml/vxi/Auth;jsessionid=QnJsHrpKg0DzQzqJJJzC67hVc0QL8h2vvGmYSJBY91ScCq7WVcYf!1276577622"> 
[로그인 보내기] 
</form>  
--------------------------------------------------------------------------------------------- 
  
- 2) struts-config.xml 에서 
<form-beans type="org.apache.struts.action.ActionFormBean">  
        <form-bean name="logonForm" type="com.sas.aml.struts.form.LogonForm" /> 
</form-beans> 

<action 
attribute="logonForm" 
input="/logon.jsp" 
name="logonForm" 
parameter="/index.jsp" 
path="/Auth" 
scope="request" 
type="org.apache.struts.actions.ForwardAction" /> 
==============================================================================================================

- OS 재설치(XP Pro) 
- Video 카드 설치 에러 
1. 삼성 노트북 NT-Q70 XP Geforce 설치시 에러 
 1) 에러내용: 복사 오류 -> "nv4_mini_sys 파일을 복사할 수 없습니다." 
 2) 원인: 호환되지 않는 드라이버 파일 
 3) 조치: 
  - 고객지원센터 1588-3366번으로 상담(원격으로 서비스 받음)   
  - 자이젠 홈(http://www.zaigen.co.kr) --> 자료실 --> 모델 검색: sens r700  --> 그래픽 카드: 클릭 
  - 20080131170052984_Graphics_Driver_6.14.11.5676.zip 다운 받아서 압축 풀고 설치   
==============================================================================================================

- 인캅스 재설치, 재등록 
사용자: 진태만 
자산번호(Serial Number): AV5293BPC0147Y 
모델: NT-Q70A/A1 
==============================================================================================================

 - weblogic 설정 
D:\Proj_sasaml  sasaml.war 
C:\bea\user_projects\domains\AMLDomain\startWebLogic.cmd 파일에서 
CLASSPATH에 D:\Proj_sasaml\config; 추가  
------------------------------------------------------------------------------------------------------- 
  - weblogic 설정 에러 
1) 에러내용: http://localhost:7001/console에서 id/pwd 치면 창이 닫힘 
2) 조치: jre1.6(java) 프로그램 추가/삭제에서 삭제 
==============================================================================================================

 - java 환경 설정(oracle\product\10.2.0\client_1는 오라클 설치시 자동으로 세팅 됨) 
CLASSPATH ==> C:\Program Files\Java\jre1.5.0_11\lib; 
PATH ==> C:\Program Files\Java\jre1.5.0_11\bin;c:\oracle\product\10.2.0\client_1\bin;%SystemRoot%\system32; 
==============================================================================================================

-  [주간업무 2008년 3월 4째주]   
★ 금주 업무 실적(03/24 ~ 03/28)  
1. STR Prototype 화면 개발(1장, 2장) 
2. AML 소스 분석 
 1) 스트러츠(Struts), JSTL 분석 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(03/31 ~ 04/04)
1. STR Prototype 화면 개발 완료 
2. 개발환경 설치 매뉴얼 문서화 작업 
 1) 웹로직, Eclipse WTP 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.28(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:00  --> 현용, 임모 종각 만남(고기집, 당구(3등)): 23시까지 

- 삼성 AML Prj 
- STR Prototype 화면 개발(1장, 2장)  
- SAS AML STR 보고서(팝업) 
http://45.10.4.21:7001/sasaml/displaySTRs.jsp 
http://45.10.4.21:7001/sasaml/displaySTRs_step2.jsp 
==============================================================================================================

- 특수문자(EditPlus 에서: 로마 문자)  
1. ㅁ + 한자: 공표,세모(○, △) 생성,  ㅍ+ 한자: 엑스표(Ｘ)  
(ㅈ+한자키:Ⅶ, Ⅸ,Ⅱ등등 여러가지 로마숫자ㅁ  
Ⅰ, Ⅱ, Ⅲ,  Ⅳ, Ⅴ, Ⅵ, Ⅶ, Ⅷ, Ⅸ, Ⅹ ※ 
윈도우 --> 시작→모든 프로그램→ 보조프로그램→ 시스템 도구→ 문자표 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.29(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:20 ~ 17:00  --> 나눔동기 만남(학동역, 당구(2등, 4등): 4만원, 횟집, 당구(4등):만 천원), 태용 우리집에서 잠 

- 삼성 AML Prj 
- STR Prototype 화면 개발(3장, 4장, 5장) 
http://45.10.4.21:7001/sasaml/displaySTRs_step3.jsp 
displaySTRs_step4.jsp, displaySTRs_step5.jsp 
==============================================================================================================

- 현용이 회사 
클라우드 나인(www.cloud9.co.kr) 
서울시 중구 남산동 3가 34-5 남산BD 101호 
==============================================================================================================

- 도서구입 
파워유저가 알려주는 스트럿츠 프로그래밍 
출판사: 가메출판사 저: 송만균, 신혜원 가격: 23,000원(실제: 17,300원, 25% DC) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.03.31(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:45 ~ 22:30 

- 삼성 AML Prj 
- STR Prototype 화면 개발 소스 분석 
http://45.10.4.21:7001/sasaml/displaySTRs.jsp 
==============================================================================================================

- 혐의거래보고2.0 
ID/PWD: ythan327/star0707 
==============================================================================================================

- 작은 누나 주소(은아 수학여행 선물(운동화) 살 돈 10만원 송금) 
전남 여수시 선원동 남양아파트 202동 1509호 
농협 629-12-277540 진선숙  
==============================================================================================================


   