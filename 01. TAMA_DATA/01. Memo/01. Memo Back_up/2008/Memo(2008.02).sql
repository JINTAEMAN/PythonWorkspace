

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.02) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.02.01(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 02:00 --> 철야(한투 증권) 

- 한투. 컴플 Prj
- 계약검토의뢰 신청(/con_deptRegisterN.jsp) 
결재선, 공람가능인 저장 
/src/com/cmp/cnt/bean 
BPM17011.java(계약검토의뢰 정보),  BPM17015.java계약(공람가능인 정보)  
/src/com/cmp/cnt/bean 
ComplianceDAO.java(계약검토의뢰 정보 처리 작업) 
- 계약서 목록(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
- 계약의견 수정기안(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_comPreviewM.jsp) 

http://190.190.183.223:8888/sbm/bpmportal/cp/TrueFriend/ulogin.jsp  
- 내가 처리한 일 
http://190.190.183.223:8888/sbm/appportal/myhome/tasksDone.jsp    
- 내가 할 일 
http://190.190.183.223:8888/sbm/appportal/myhome/tasks.jsp  
- 업무등록 
http://190.190.183.223:8888/sbm/BizSolo/TF_GEN_AA_1200_Milestone/MilestoneStep.jsp?deptcd=010920&bizno=200801-00019&frominfo=plan  

Logger.debug.println("[/CERDAO.java/insertRSCInfo()]:[rcvno]"+ rcvno +"[BPM17012.getSave_gubun()]"+ BPM17012.getSave_gubun());  
Logger.err.println("[/CERDAO.java/insertRSCInfo()]:[rcvno]"+ rcvno +"[BPM17012.getSave_gubun()]"+ BPM17012.getSave_gubun()); 

Logger.debug.println("[========>] VALUES ('"+ rcvno +"', '"+ BPM17011.getSave_gubun() +"' ,'"+ BPM17011.getContr_type() +"', '
"+ BPM17011.getContr_nm() +"', '"+ BPM17011.getConcearn_legal() +"',"); 
Logger.debug.println("    '"+ BPM17011.getContr_partner() +"', '"+ BPM17011.getContr_expect_dt() +"', '"+ BPM17011
.getContr_return_dt() +"', '"+ BPM17011.getContr_contents() +"', '"+ BPM17011.getPreserve_grade() +"',"); 
Logger.debug.println("    '"+ display_regno +"', '"+ BPM17011.getApprvstep() +"', '"+ BPM17011.getPiNo() +"', '"+ 
BPM17011.getRempno() +"', '"+ BPM17011.getRempnm() +"',"); 
Logger.debug.println("    '"+ BPM17011.getRdeptcd() +"', '"+ BPM17011.getRdeptnm() +"', '"+ BPM17011.getDutyCd() +"', '"+
BPM17011.getDutyNm() +"')");  
---------------------------------------------------------------------------------------------  
시스템의 채번 정보(BPM10099):  
ORDCD(채번종류): (10:IT수요관리, 11:홍보물, 12:계약서, 14:법무법인) 
결재정보 마스터 정보(BPM17002) --> 결재정보 마스터(BPM14006) 
결재정보 상세 정보(BPM17003) --> 결재정보 상세(BPM14007) 
첨부파일 정보(BPM17007) --> 첨부파일 정보(BPM10005) 
-- 결재정보 마스터 정보 조회 
SELECT * FROM BPM14006 ORDER BY REGDT DESC;  
-- 결재정보 상세 정보 조회 
SELECT * FROM BPM14007; 
-- 첨부파일 정보 조회 
SELECT * FROM BPM10005 ORDER BY RGTDT DESC;  
==============================================================================================================

- 오라클 에러 
ORA-00904: 열명이 부적합합니다 
ORA-01400: Null 값이 들어가지 말아야 할 자리에 Null 값이 들어가서 나는 에러입니다.  
ORA-01401: Inserted value too large for column 
ORA-00936: 누락된 표현식이란 에러 
ORA-00933: SQL 명령어가 올바르게 종료되지 않았습니다 
==============================================================================================================

- 일일 업무 보고(2008.02.01(금)) 
□ 금일 실적  
 1. 계약검토의뢰 신청(/con_deptRegisterN.jsp) 개발 중(진척도 80%) 
   
□  다음날 계획  
 1. 계약검토의뢰 신청(/con_deptRegisterN.jsp) 개발: 완료 예정 
 2. 계약서 목록(/con_listL.jsp) 개발 
 여진수 대리(*@*.*), 이광영 차장(*@*.*) 
==============================================================================================================

- 고속버스 예약: 완료 
2008.02.05(화) 23:45  서울 -> 동대구  심야 우등: 23,800원 
2008.02.08(금) 24:00  포항 -> 서울     심야 우등: 30,500원(일반:18,600원, 우등: 27,700원) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.02(토) 작업 ■■■■■■■■■■■■■■■■
---> 04:00~ 09:00 --> 철야(한투 증권) 

- 한투. 컴플 Prj
- 계약서 목록(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
==============================================================================================================

- LG파워콤 설치 
오전 10시 기사가 와서 설치 완료 
3년 약정: 월 26,500원(장애인 30% 할인) 
==============================================================================================================

- 이미지 작업(포토샵) 
/sbm/bpmportal/ap/voc/images/milestone01.gif --> 업무계획수립 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> 결재지정 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> 업무계획보기 
-------------------------------------------------------------------------------- 
/sbm/bpmportal/ap/voc/images/compliance01.gif --> 결재지정 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> 결재지정 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> 결재지정 

결재자 의견(compliance01.gif), 계약의뢰 검토내역(compliance02.gif), 컴부 의견(compliance02.gif)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.04(월) 작업 ■■■■■■■■■■■■■■■■
---> 05:30 ~ 00:00 --> 철야(한투 증권) 

- 한투. 컴플 Prj
- 계약검토의뢰 신청(/con_deptRegisterN.jsp) 
첨부파일 저장 
- 계약서 목록(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
- 계약의견 수정기안(/con_comPreviewM.jsp)  
--------------------------------------------------------------------------------------- 
- 직원의 소리 등록(/sbm/ebmsapps/TF_VOC_AB_1000/jsp/EmpEntryStart.jsp) 
3. 파일등록(팝업) 
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/jsp_common/comFile/comFileUploadP.jsp?fromPage=CPL&atchFlSeq= 
3. 파일등록 
http://190.190.183.223:8888/sbm/ebmsapps/TF_VOC_AB_1000/jsp/EmpEntryStart.jsp 
==============================================================================================================

- 농협 포항계비 정산 
1. 2008.01.26   290,000 원 출금(자동차 범퍼 수리비로 사용) 
2. 2008.02.04(월) 34만원 입금(29만원 + 5만원 포함)  
==============================================================================================================

- 포토샵 작업(글자 지우기: 도장 기능) 
1. Mage--> Mode-->RGB color로 모드 전환 
2. 바탕 레이어 복사 
3. 도장 기능으로 글자 지우기 
4. 새로운 글자 쓰기 
==============================================================================================================

- 2008년 1월 건강보험료: 완료 
46,900원 증번호(전자납부번호(11자리)): 21017603269 
==============================================================================================================

- 태용 대여금 완납 
천 5백 만원 
==============================================================================================================

- 노트북 하드 추가 검토 
삼성 SATA2 500G (7200/16M) HD501LJ 정품  100,000원 
HDD (PC용) / S-ATA 2 / 500GB / 7,200RPM / 16MB / 8.9cm (3.5)  
㈜컴하이피크 용산구 한강로2가 선인상가 21동 182호 Tel) 706-7342 
http://balacom.co.kr/product/productView.php?nProdCode=396255&service_id=pcdn 
==============================================================================================================

 - 일일 업무 보고(2008.02.04(월)): 계약서(진태만) 
□ 금일 실적  
 1. 계약검토의뢰 신청(/con_deptRegisterN.jsp) 개발: 완료 
 2. 계약서 목록(/con_listL.jsp) 개발: 완료 
   
□  다음날 계획  
 1. 계약의견 수정기안(/con_comPreviewM.jsp) 개발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.05(화) 작업 ■■■■■■■■■■■■■■■■
---> 04:00 ~ 22:00 --> 철야(한투 증권) 

- 한투. 컴플 Prj
- 계약의견 수정기안(/con_comPreviewM.jsp) 
- 계약검토 상세조회 및 정정안(/con_comPreviewM.jsp) 
- 1. 계약검토의뢰 부서승인(/con_deptSetN.jsp) 
- 2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp) 
- 3. 계약검토의뢰확인 및 의견등록(/con_comPreviewN.jsp) 

- 계약검토의뢰 및 의견결재(/con_comSetN.jsp) 
- 계약의견 수정기안(/con_comPreviewM.jsp) 
==============================================================================================================

- 버스 노선 
여의도역 -> 강남터미널(362번) 
==============================================================================================================

 - 일일 업무 보고(2008.02.05(화)): 계약서(진태만) 
□ 금일 실적  
 1. 계약검토의뢰 신청(/con_deptRegisterN.jsp) 개발: 완료 
 2. 계약서 목록(/con_listL.jsp) 개발: 완료 
   
□  다음날 계획  
 1. 계약의견 수정기안(/con_comPreviewM.jsp) 개발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.09(토) 작업 ■■■■■■■■■■■■■■■■
---> 12:30 ~ 13:30 

- 한투. 컴플 Prj
- 고속버스 수하물 
1. 접수센터 : 서울고속버스터미날(주) 신관1층(본관 부산 승차장 우측위치) Tel) 535-2591  
2. 도착화물 : 02-535-2592, 2593 
http://www.exterminal.co.kr/07/baggage/baggage_01.asp  
3. 큰누나 주소: 경주시 현곡면 금장리 새한 센시빌APT 101동 307호  
4. 대한통운택배(GS25와 연계): GS25 경주평화점  745-6867 
==============================================================================================================

- 거리 재기 
낙성대역 -> 이수역 -> 이수교차로 -> 신구초등학교: 10.7km 
낙성대역 -> 남부순환로 -> 서초IC -> 한남IC -> 신구초등학교: 12.5km 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.11(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:40 ~ 23:00 

- 한투 컴플라이언스 Prj
- 1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
- 2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
- 3. 계약검토의뢰확인 및 의견등록(/con_comPreviewN.jsp): 완료 
==============================================================================================================

- null String 제거 
String p_apprvstep = StrUtil.toUTF8(StrUtil.nullToSpace(p_apprvstep)); 
if(request.getAttribute("rtnCode") == null  "0".equals(request.getAttribute("rtnCode"))){ 
==============================================================================================================

- 농협 포항계비 정산 
1. 2008.02.11   161,000원 동양 CMA로 송금(설 모임 남은 돈) 
==============================================================================================================

- Source Safe(소스 세이프 설정 방법) 
1. 수정 파일 추가: 팀(T) --> Add to VSS 
2. 새 파일 받기: 팀(T) --> Get Latest Version 
==============================================================================================================

- BPM 작업 
경로: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000  
/con_deptRegisterN.jsp 파일이면 
html 다음부터 삭제해서 코딩줄을 복사(텍스트 파일 인코딩: UTF-8) 
TF_CMP_AB_1000: 계약서(온라인), TF_CMP_AB_1100: 계약서(의견 등록), TF_CMP_AB_1200: 계약서(현황조회) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> 참조 

- 계약검토의뢰 신청(/con_deptRegisterN.jsp)  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp  
==============================================================================================================

 - 일일 업무 보고(2008.02.11(월)): 계약서(진태만) 
□ 금일 실적  
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약검토의뢰확인 및 의견등록(/con_comPreviewN.jsp): 완료 
   
□  다음날 계획  
 1. 계약의견 수정기안(/con_comPreviewM.jsp) 개발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.12(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp): 완료 
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):   
5. 계약의견서 수정(/con_comPreviewM.jsp):   
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp):  
7. 계약의견 확인(/con_deptResultViewD.jsp):    
----------------------------------------------------------------------------------- 

- BPM 작업 
경로: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000  
/con_deptRegisterN.jsp 파일이면 
html 다음부터 삭제해서 코딩줄을 복사(텍스트 파일 인코딩: UTF-8) 
TF_CMP_AB_1000: 계약서(온라인), TF_CMP_AB_2000: 계약서(의견 등록) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> 참조 
String p_pcv_no2  = bean.getPropString("PT_NO");   //접수번호(프로세스 데이타 값 가져오기) 
==============================================================================================================

- 인클루드 데이타 넘기기 
<jsp:include page="include/include_generalForm.jsp" flush="true">  
<jsp:param name="p_title_nm" value="<%=p_title_nm%>"/> 
<jsp:param name="p_save_sort" value="<%=p_save_sort%>"/> 
</jsp:include> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.13(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 23:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp): 완료 
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp): 완료 
5. 계약의견서 수정(/con_comPreviewM.jsp): 완료 
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp): 완료  
7. 계약의견 확인(/con_deptResultViewD.jsp): 완료    
------------------------------------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 의견등록건 계약검토의뢰 신청(/con_offLoadOnComRegisterN.jsp):    
------------------------------------------------------------------------------------------------------------ 
  
- BPM 작업 
경로: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000 
/con_deptRegisterN.jsp 파일이면 
html 다음부터 삭제해서 코딩줄을 복사(텍스트 파일 인코딩: UTF-8) 
TF_CMP_AB_1000: 계약서(온라인), TF_CMP_AB_2000: 계약서(의견 등록) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> 참조 
String p_pcv_no2  = bean.getPropString("PT_NO");   //접수번호(프로세스 데이타 값 가져오기) 
==============================================================================================================

- BPM 설정(jsp 파일에서) 
 <bizsolo:when test="<%=request.getParameter(\"bizsite_saveTask\") !=null %>" >  
<bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKUpdateDS" perfMethod="commit" mode="BizSite" dsi="ApprStep,SetGbn"/> 
</bizsolo:when> 
<bizsolo:otherwise >  
 <jsp:include page="include/con_MasterRegisterS.jsp"/>  
  
</script> 
<%bean.setPropString("ApprStep",  "1");%> <!--// 결재차수 //---> 
<%bean.setPropString("SetGbn", request.getParameter("damgubun"));%> <!--// 결재구분 //---> 
   <script language=javascript>   
alert("[/con_deptRegisterM.jsp]:[TEST_DONE_2]");  
</script>  
<bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKSetDS" perfMethod="commit" > 
</bizsolo:otherwise> 
</bizsolo:choose> 
<% /* Workaround, retAddr will disappear in the future */ %> 
<% String retAddr = bean.getPropString("returnPage"); %> 
<% if(retAddr != null) { %> 
  <bizsolo:redirectURL page="<%= retAddr %>" /> 
<% } %>  
</bizsolo:if> 
==============================================================================================================

- 날짜 설정(JSP) 
ds_regdt = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd 17:00"); 
String Sday = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd"); 
String ds_contrexpectdt = (request.getParameter("CONTREXPECTDT")!=null) ? request.getParameter("CONTREXPECTDT"):Sday; /* 거래체결 예정일 */ 
String ds_contrreturndt = (request.getParameter("CONTRRETURNDT")!=null) ? request.getParameter("CONTRRETURNDT"):Sday; /* 회신요청일 
-----------------------------------------------------------------------------------  
Calendar calendar = Calendar.getInstance();  
String tmpYY = String.valueOf( calendar.get(Calendar.YEAR) );  
String tmpMM = String.valueOf( calendar.get(Calendar.MONTH) + 1 ); 
String tmpDD = String.valueOf( calendar.get(Calendar.DAY_OF_MONTH));  
if( tmpMM.length() < 2 ) tmpMM = "0" + tmpMM;  
if( tmpDD.length() < 2 ) tmpDD = "0" + tmpDD;  
ds_regdt = tmpYY +"."+ tmpMM +"."+ tmpDD;//등록일  
==============================================================================================================

- 형전환(jsp에서): long -> String 
String str_ApprSeq = ""+ p_ApprSeq; 
argValue.add(str_ApprSeq); /* 결재 순번  */ 
p_ApprSeq  = bean.getPropLong("ApprSeq");   //결재순번(BPM에서 가져 오기) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.14(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 23:00 

- 한투 컴플라이언스 Prj
- BPM 작업 
0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp):  
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp):   
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):   
5. 계약의견서 수정(/con_comPreviewM.jsp):   
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp):    
7. 계약의견 확인(/con_deptResultViewD.jsp):    
==============================================================================================================

- 컴플 Prj 중간 시연(화면 구성만 됨) 
1. 검토 의견 크게 보이기 
2. 하단 탭으로 구성 
3. 다단 글자 자르기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.15(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp):   
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):   
5. 계약의견서 수정(/con_comPreviewM.jsp):   
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp):    
7. 계약의견 확인(/con_deptResultViewD.jsp):     
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_deptRegisterM.jsp):  
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료 
4. 계약의뢰 결재(/con_offDeptSetN.jsp):   
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp):   
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp):    
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp):     
8. 계약의뢰 및 반려 확인(/con_offComRePreviewM.jsp) 
==============================================================================================================

- 컴플라이언스 TEST 담당자 
계약 의뢰자(현업): 박경남 
부서 승인자:  차진규 부서장, 이병성 부장 
컴부 담당자: 박흥관, 윤선영 
컴부 승인자: 설광호 
==============================================================================================================

- BPM 넘기기 
<%-- AP 처리 및 프로세스 인스턴스 생성 --%> 
<bizsolo:otherwise > 
<jsp:include page="include/con_MasterRegisterS.jsp"/>   
<%bean.setPropLong("ApprStep", new Long(request.getAttribute("p_apprvstep").toString()));%> <!--// 결재차수 //---> 
<%bean.setPropString("SetGbn", request.getParameter("opinapprogubun"));%> <!--// 결재구분 //---> 
<%bean.setPropString("COM_PERFORMER", bean.getPropString("COM_PERFORMER"));%> <!--// 컴부승인자 //---> 
  <script language=javascript>   
alert("[/con_comPreviewN.jsp]:[계약검토의뢰확인 및 의견등록]:[저장 성공]"); 
</script> 
==============================================================================================================

- 추후 일정 
2월 25일(월) 부터 광화문 삼성증권에 투입 
SAS(ETL2)로 개발.. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.16(토) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:00  --> 출근 

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 계약의견 화면 작성(화면 8개) 
----------------------------------------------------------------------------------------------------------- 

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp):   
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):   
5. 계약의견서 수정(/con_comPreviewM.jsp):   
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp):    
7. 계약의견 확인(/con_deptResultViewD.jsp):     
----------------------------------------------------------------------------------------------------------- 
0. 계약의견 등록(/con_offComRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료 
4. 계약의뢰 결재(/con_offDeptSetN.jsp):  완료 
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp):  완료 
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp):     
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp):      
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp) 
==============================================================================================================

2. 직원검색(팝업): 선택 여부 확인 
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/jsp_genCommon/deptSearch/userDeptSearchP.jsp?fromPop=APPR&deptCd=010920 
 --직원 사번: (박경남, 100375) (차진규, 087079) (윤선영, 101399) (설광호, 100818) (892213: 이광영) (001170: 여진수)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.17(일) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:30  --> 출근 

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 임시저장 작업 --> 완료 
2. 계약검토 상세조회 및 정정(/con_detailD.jsp):  
3. 계약서 양식 등록(/con_docUpLoad.jsp): 완료 
4. 계약서 양식 다운로드(/con_docDownLoad.jsp): 완료 
5. 계약서 스캔 등록(/con_docImageN.jsp): 완료 
6. 계약서 스캔 목록(/con_docImagelistL.jsp): 완료 
----------------------------------------------------------------------------------- 

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp):   
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):   
5. 계약의견서 수정(/con_comPreviewM.jsp):   
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp):    
7. 계약의견 확인(/con_deptResultViewD.jsp):     
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료 
4. 계약의뢰 결재(/con_offDeptSetN.jsp):  완료 
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp):  완료 
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp):     
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp):      
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.18(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 00:00  --> 철야(3시간 잠) 

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 계약검토의뢰 신청(/con_deptRegisterN.jsp): 임시저장 작업 --> 완료 
2. 계약검토 상세조회 및 정정(/con_detailD.jsp):  
3. 계약서 양식 등록(/con_docUpLoad.jsp): 완료 
4. 계약서 양식 다운로드(/con_docDownLoad.jsp): 완료 
5. 계약서 스캔 등록(/con_docImageN.jsp): 완료 
6. 계약서 스캔 목록(/con_docImagelistL.jsp): 완료 
----------------------------------------------------------------------------------- 

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): ====> BPM 테스트 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp): 완료  
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):  완료 
5. 계약의견서 수정(/con_comPreviewM.jsp):  완료 
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp): 완료    
7. 계약의견 확인(/con_deptResultViewD.jsp):완료     
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): ====> BPM 테스트 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료  
4. 계약의뢰 결재(/con_offDeptSetN.jsp): 완료  
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp): 완료    
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp): 완료     
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp): 완료    
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp): 완료  
==============================================================================================================

- 결재차수 설정 
<%bean.setPropLong("ApprStep", new Long(bean.getPropLong("ApprStep") + 1));%> <!--// 결재차수 //---> 
==============================================================================================================

tab01_off.gif tab01_on.gif<!-- 담당자 개요 Tab  -->tab02_off.gif tab02_on.gif<!-- 결재 이력 Tab -->  
tab03_off.gif tab03_on.gif   <!-- 검토내역 Tab  -->  tab04_off.gif tab04_on.gif<!-- 결재 지정 Tab -->   
/tab_approval_o.gif" name="Image22"  height="32" border="0"></td><!-- 결재 정보 Tab -->    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.19(화) 작업 ■■■■■■■■■■■■■■■■
---> 04:30 ~ 22:30 

- 한투 컴플라이언스 Prj
- BPM 작업
1. 계약검토 상세조회 및 정정(/con_detailD.jsp):   
----------------------------------------------------------------------------------- 

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): ====> BPM 테스트 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료 
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료 
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp): 완료  
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):  완료 
5. 계약의견서 수정(/con_comPreviewM.jsp):  완료 
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp): 완료    
7. 계약의견 확인(/con_deptResultViewD.jsp):완료     
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): ====> BPM 테스트 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료  
4. 계약의뢰 결재(/con_offDeptSetN.jsp): 완료  
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp): 완료    
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp): 완료     
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp): 완료    
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp): 완료  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.20(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 23:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
----------------------------------------------------------------------------------- 

- 협업 오픈(테스트): 2일 늦어짐 
1차 테스트 완료 
----------------------------------------------------------------------------------- 

1. 계약검토 상세조회 및 정정(/con_detailD.jsp):    
0. 계약검토의뢰 신청(/con_deptRegisterN.jsp) 에서 
 가) 임시저장: 채번(접수번호)을 땀, BPM 프로세스 안 탐 
0. 계약의견 등록(/con_offComRegisterN.jsp) 에서 
 나) 계약의견: 채번(접수번호)을 땀, BPM 프로세스 탐(계속의뢰 건으로 변경될 때는 프로세스 안 탐)  
----------------------------------------------------------------------------------- 

2. 계약검토 상세조회 및 정정(/con_detailD.jsp):  
3. 계약서 양식 등록(/con_docUpLoad.jsp): 완료 
4. 계약서 양식 다운로드(/con_docDownLoad.jsp): 완료  
5. 계약서 스캔 등록(/con_docImageN.jsp): 완료   
6. 계약서 스캔 목록(/con_docImagelistL.jsp): 완료 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_docUpLoad.jsp 
 ==============================================================================================================

- 공통코드 양식 조회 
SELECT a.dtlcd AS DTL_CD, a.dtlcdnm AS DTL_NM FROM bpm10008 a WHERE a.maincd = '701' 
==============================================================================================================

- long형 설정 
 long p_apprstep_lng  = bean.getPropLong("ApprStep");   //결재차수(프로세스 데이타 값 가져오기)   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.21(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:30 ~ 23:30 

- 한투 컴플라이언스 Prj
- BPM 작업 
2. 계약검토 상세조회 및 정정(/con_detailD.jsp): 완료 
==============================================================================================================

- 계약서양식 다운로드 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_docDownLoad.jsp 에서 
<td>&nbsp;<a href="/sbm/bpmportal/ap/voc/jsp_cmp/cnt/include/comFileDownload.jsp?atchFlSeq=<%=p_atchflseq%>&subSeq=1"><%=p_file_nm_nm%></a> 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/include/comFileDownload.jsp 
==============================================================================================================

-  2차 수정 사항 수정 
1. 직원 검색 전체 가능, 부서별 조회 가능: 완료 
/sbm/bpmportal/ap/voc/jsp_genCommon/deptSearch/userDeptSearchAllP.jsp 
2. 워드 기본 도구 사용(Active X 프로그램 설치) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.22(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:00 ~ 23:10 

- 한투 컴플라이언스 Prj
- BPM 작업
1. 법무법인 등록(/raw_deptRegisterOrgN.jsp): 
2. 법무법인 의견서 등록(/raw_deptRegisterN.jsp): 진행중(완료) 
2.1 법무법인 의견서 조회(/raw_deptResultL.jsp): 
2.2 법무법인 의견서 상세(/raw_deptResultD.jsp): 
2.3 법무법인 의견서 수정(/raw_comResultM.jsp): 
3. 보안등급설정권자 관리(/raw_authConfigN.jsp): 
==============================================================================================================

- 우편번호 설정 
sbm/bpmportal/ap/voc/jsp_common/comCode/ZipCodeSearch_info.jsp?dongnm=%EC%9A%B0%ED%98%84  
==============================================================================================================

-  마임데이타 넘기(워드 기본 도구 사용)  
1. 등록시  
<script>  
checkCntr_contents();   //저장 클릭시 ===> 계약 내용 확인 함수 호출 
</script>  
<script>  
function checkCntr_contents(){   
var f = document.fm;  
f.contr_contents.value =  f.Wec.MimeValue;    //워드 기본에 저장값에 넣으면서 저장 됨 
}  
</script>  

<script language="javascript" src="/sbm/bpmportal/ap/voc/js/conNamoWec.js"></script>  
<input type="hidden" name="contr_contents" style="width:600;" value="testdddd">< !-- 계약 내용(넘길 데이타) --> 
<script>  
----------------------------------------------------------------------------------- 

2. 수정시 
<body topmargin='0' leftmargin='20' onload='setFilLoadValue'> < !-- 자동 로딩 -->   
<script>  
function setFilLoadValue(){   
showTxt();  
} 
</script>  
   

function showTxt(){   
var fm2 = document.form;   
fm2.Wec.Value = fm2.contr_contents.value;     //계약 내용(DB에서 넘온 값 Active콤퍼넌트에 넣기)  
//모든 데이타는 반드시 Form 으로 submit 할 것 
}     
</script>  
----------------------------------------------------------------------------------- 
   
3. 저장시 
import com.sbm.common.namo.*;   // 워드 기본 도구 콤퍼턴트 

  String uploadDir = "/sbm/bpmportal/ap/voc/images_namo"; 
  String p_html = null;' 

  try { 
 p_html = NamoMime.decodeMime(BPM17011.getContr_contents(), uploadDir);  
  } catch (Exception e) { 
   e.printStackTrace(); 
  } 
----------------------------------------------------------------------------------- 

4. 조회시 
<body topmargin='0' leftmargin='20' onload='setFilLoadValue'> < !-- 자동 로딩 -->  

function setFilLoadValue(){  
var f = document.htmlForm;   //htmlForm 폼을 action URL로 보내줌 
f.submit();  
}  

<form name="htmlForm" action="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" target="htmlFrame"> 
<textarea name="htmlContents" style="display:none"><%=ds_contrcontents_off%></textarea> 
</form> 

<iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:600;height:300;"> 
</iframe> < !-- 계약 내용(iframe) -->  
==============================================================================================================

- 한투 TEST서버(70번) 
http://190.190.155.70:8888/sbm/appportal/ulogin.jsp  
190.190.155.70  weblogic/bpms01  
cd bpm_bin 
tail -f portal.out 
------------------------------------------------ 
EV_UNIX = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 190.190.151.102)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = INFODEV) 
    ) 
  )  
adbms/adbms2007 or adbms2006 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.23(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00 

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 법무법인 등록(/raw_deptRegisterOrgN.jsp): 완료 
2. 법무법인 의견서 등록(/raw_deptRegisterN.jsp): 완료 
2.1 법무법인 의견서 조회(/raw_deptResultL.jsp): 완료 
2.2 법무법인 의견서 상세(/raw_deptResultD.jsp): 완료 
2.3 법무법인 의견서 수정(/raw_comResultM.jsp): 완료 
3. 보안등급설정권자 관리(/raw_authConfigN.jsp):  
- 70서버 에러 코드 
 <%@ include file="/bpmportal/common"%>  ==> 사용 안함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.24(일) 작업 ■■■■■■■■■■■■■■■■
---> 11:30~ 22:00 

- 한투 컴플라이언스 Prj
- BPM 작업
1. 보안등급설정권자 관리(/raw_authConfigN.jsp): 완료 
2. 엑셀 다운 로드 추가: 완료 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.25(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:30~ 23:30  --> 이명박 대통령 취임식(여의도: 대한투자증권 파견) 

- 한투 컴플라이언스 Prj
- BPM 작업
1. 최종 점검 및 에러 수정 
조회 수정, 보안등급 정보 권한 주기 수정 
==============================================================================================================

 - 날짜 조회(날짜 타입 아님( REGDT VARCHAR2(14)))  
SELECT  A.REGDT  
FROM BPM17011 A   
WHERE A.REGDT >=  TO_CHAR(TO_DATE('08-02-22'), 'YYYYMMDDHH24MISS')  
AND A.REGDT <=  TO_CHAR(TO_DATE('08-02-25'), 'YYYYMMDDHH24MISS')    
==============================================================================================================

- 왼쪽 메뉴 권한 주기 
/sbm/appportal/frame/left.jsp?BizPassUserPassword=knpark77&BizPassUserID=100375 
==============================================================================================================

- 한투 TEST서버(70번) 
/inetadm/weblogic/sbm65/applications/sbm/ebmsapps  
==============================================================================================================

-- 메뉴좌측구성 조회 
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE  ('372') in ( select '372' AS SECRGUBUN_1 from BPM17018 B WHERE B.SECRGUBUN ='1' 
AND B.SEQNO ='1' AND B.EMPNO ='100375' ) 
      AND a.mnuseq IN ('372', '373', '389', '390', '391', '392')  
UNION ALL  
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE  ('377') in ( select '377' AS SECRGUBUN_1 from BPM17018 B WHERE B.SECRGUBUN ='2' 
AND B.SEQNO ='2' AND B.EMPNO ='100375' ) 
AND a.mnuseq IN ('377', '378', '379', '380', '393') 
UNION ALL  
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE a.mnuseq in (select mnuseq from adbms.bpm10015 
where authseq in ( select authseq from adbms.bpm10012 where empcd ='100375')) 
AND a.mnuseq NOT IN ('377', '378', '379', '380', '393','372', '373', '389', '390', '391', '392') 
-- AND a.mnunm LIKE '%계약서%' 
ORDER BY imgPthNm   
==============================================================================================================

- 보안등급 설정 여부 조회 
SELECT  '1'  AS SEQNO,  
( SELECT  MAX(A.EMPNO)   FROM BPM17018 A  
WHERE  A.SECRGUBUN ='1' /* 보안구분(1:계약서, 2:법무법인) */  
    AND A.SEQNO ='1' 
AND A.EMPNO ='101016' ) AS SECRGUBUN_1,  
  ( SELECT MAX(B.EMPNO) FROM BPM17018 B 
WHERE  B.SECRGUBUN ='2' /* 보안구분(1:계약서, 2:법무법인) */  
    AND B.SEQNO ='2' 
AND B.EMPNO ='101016'  
)  AS  SECRGUBUN_2 
FROM DUAL 
----------------------------------------------------------------------------------------- 

- 보안등급 설정 여부(메뉴좌측구성) 조회 
SELECT M.SEQNO, MAX(M.SECRGUBUN_1),  MAXM.SECRGUBUN_2) 
FROM( SELECT A.SEQNO, A.EMPNO AS SECRGUBUN_1, '' AS SECRGUBUN_2  FROM BPM17018 A  
WHERE  A.SECRGUBUN ='1' /* 보안구분(1:계약서, 2:법무법인) */  
    AND A.SEQNO ='1' 
AND A.EMPNO ='101016'  
GROUP BY A.SEQNO 
UNION ALL  
SELECT B.SEQNO, '' AS SECRGUBUN_1, B.EMPNO AS SECRGUBUN_2 FROM BPM17018 B 
WHERE  B.SECRGUBUN ='2' /* 보안구분(1:계약서, 2:법무법인) */  
    AND B.SEQNO ='2' 
AND B.EMPNO ='101016'  
GROUP BY B.SEQNO 
) M GROUP BY M.SEQNO 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.26(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 06:50~ 23:20  

- 한투 컴플라이언스 Prj
- BPM 작업
1. 최종 점검 및 에러 수정 
  메뉴좌측구성 
2. 계약서 양식 등록(/con_docUpLoad.jsp) 
공통코드 관리(포탈관리 -> 데이터 관리 -> 공통코드 관리)에서 등록 
(/sbm/bpmportal/ap/voc/jsp_common/comCode/ComCodeF.jsp) 
701  계약서구분(01: 매매계약서 02: 인수계약서) 
-- SELECT a.dtlcd AS DTL_CD, a.dtlcdnm AS DTL_NM FROM bpm10008 a WHERE a.maincd = '701' 
------------------------------------------------------------------------------------------------------------------------

- null값 제거(Unix 서버에서 특히 주의 할 것) 
 if(p_right == null  p_right.equals("")) {} 
==============================================================================================================

- 우편번호 정보 
SELECT * FROM adbms.BPM10039 
==============================================================================================================

- 1차  검수 지적 사항(고객시스템부: 이광영 차장, 여진수 대리, 컴부: 김흥관 대리, 윤선영씨) 
A. 계약서 
 1) 계약 내용 화면은 따로 탭을 빼서 계약 내용 다음에 나오도록 할 것: 완료  
 2) 계약 내용 칼럼(나모 편집 툴)은 화면 통합해서 넓게 보이도록 할 것: 완료  
 3) 계약 주관부서는 제목 다음에 넣고 등록일 포함할 것: 완료 
 4) 계약서 목록에 진행상태 상세하게 표시할 것: 완료  
 5) 첨부 파일 등록은 복수로 등록 가능 하도록 할 것 

B. 법무법인 
 1) 등록 화면은 등록, 조회 화면으로 분개할 것: 완료  
 2) 리스트 화면은 페이지 처리할 것: 완료 
 3) 조회 화면 조회 조건 표준화할 것(고객의 소리 기준): 완료  
 4) 법무법인 의견서 키워드는 카테고리로 조회 가능하도록 할 것: 완료  
 (김흥관 대리에게 관련 자료 받을 것)  
 5) 스캔 등록화면 왼쪽 메뉴에서 뺄 것: 완료 
 6) 보안등급설정권자 관리 화면은 권한별 사용자 연결 화면과 같이 만들 것  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.27(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:40~ 21:00  

- 한투 컴플라이언스 Prj
- BPM 작업
1. 처리단계 생성 
결재정보 마스터 정보 TB에 처리단계(APPRVPROCSTEP) 생성 
(101: 계약검토의뢰 부서승인, 102: 계약의견 반려확인, 201: 계약의견 결재)  
==============================================================================================================

- 서버 재시작 
190.190.155.70  weblogic/bpms01   
rsbpmdev /inetadm/weblogic/bpm_bin> ./startup.sh Start_PORTAL.sh* 
EJB Start, SMB Start 
==============================================================================================================

 - 메신저 발송 에러(원인: 과거 Class 사용) 
com.cmp.app.dao.CMPMsg.msgSend(CMPMsg.java:78) 
----------------------------------------------------------------------------------------- 
  
- 나모 웹에티터 관련 
박상혁 부장 * 
나라 정보 통신 류상진 과장: * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.02.28(목) 작업 ■■■■■■■■■■■■■■■■
---> 05:20~ 22:30  

- 한투 컴플라이언스 Prj
- BPM 작업
1. 처리단계 생성 
결재정보 마스터 정보 TB에 처리단계(APPRVPROCSTEP) 생성 
(101: 계약검토의뢰 부서승인, 102: 계약의견 반려확인, 201: 계약의견 결재) 
 <input type='hidden' name='apprvresult'>   <!-- 결재구분 --> 
<input type='hidden' name='apprvmemo'>   <!-- 결재메모 -->  
2. 결재 새창으로 띄워서 하기 

2. 법무법인 의견서(raw_deptRegisterN.jsp) 수정   
- 법무법인 분류 추가 
(* 기업금융 * 투자금융 * 해외사업 * 소송 * 기타)  
//날짜 구분자 setting 
 gs_ordStartDt = DateUtil.dtos(DateUtil.strTotimeDate(gs_ordStartDt),"yyyy-MM-dd HH:mm");  
 ------------------------------------------------------------------------------------------------------------------- 
  
 - 나모 텍스트 에디터 에러 
 엔터 치면 글자가 폭이 넒은거는. --> Shift +엔터를 치면  
<textarea name="contr_contents" style="display:none"> 
<html> 
<link rel="stylesheet" href="<%=cssPath%>/style.css" type="text/css"><%=ds_contrcontents%> 
</html> 
</textarea> 
 ------------------------------------------------------------------------------------------------------------------- 
  
- BMP 에러 로그 분석  
\\190.190.183.223\sbm65\logs/sbm.log 파일 확인 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.0229(금)) 작업 ■■■■■■■■■■■■■■■■ 
---> 05:40~ 23:10  

- 한투 컴플라이언스 Prj
- BPM 작업 
1. 검토의견 파일 첨부 수정(단일): 완료 
2. 게시판 페이지 설정: 완료 
3. 법무법인 최종 수정: 완료 
4. 계약의견 등록(/con_offComRegisterN.jsp) 수정: 완료  
==============================================================================================================

- 글자수 길이제한 
 int p_title_lens = ds_contrnm.length();    //글자수 제한 
 if(p_title_lens >20) {  ds_contrnm = ds_contrnm.substring(0,20) +"..."; }  else { ds_contrnm = ds_contrnm; }   
==============================================================================================================

- 기안        : 기안자 등록 ~ 중간결재자 승인 이전 
- 대기        : 중간결재자 승인 이후 ~ 부서장 승인 이전 
- 컴부 발송 : 부서장 승인 후 ~ 컴부 담당자 수신기안 이전 
- 컴부 진행 : 컴부 담당자 수신기안 이후 ~ 컴부서장 최종승인 이전 
- 결재 완료 : 컴부서장 최종승인 후  
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/images/btn_img/btn_list.gif 
==============================================================================================================

0. 계약검토의뢰 신청(/con_deptRegisterN.jsp): ====> BPM 테스트 완료 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. 계약검토의뢰 부서승인(/con_deptSetN.jsp): 완료  
2. 계약검토의뢰 반려확인(/con_deptRegisterM.jsp): 완료  
3. 계약의뢰검토 및 의견서등록(/con_comPreviewN.jsp): 완료  
4. 계약의뢰서 및 의견서 승인(/con_comSetN.jsp):  완료 
5. 계약의견서 수정(/con_comPreviewM.jsp):  완료 
6. 계약검토의뢰 의견확인(/con_deptResultViewReqN.jsp): 완료    
7. 계약의견 확인(/con_deptResultViewD.jsp):완료     
-----------------------------------------------------------------------------------  
0. 계약의견 등록(/con_offComRegisterN.jsp): ====> BPM 테스트 완료  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. 계약의견 결재(/con_offComSetN.jsp): 완료 
2. 계약의견 반려확인(/con_offComRegisterM.jsp): 완료 
3. 계약의견 확인(/con_offDeptRegisterN.jsp): 완료  
4. 계약의뢰 결재(/con_offDeptSetN.jsp): 완료  
5. 계약검토의뢰검토 및 의견등록(/con_offComRePreviewN.jsp): 완료    
6. 계약의뢰 및 의견 결재(/con_offComReSetN.jsp): 완료     
7. 계약의뢰 및 의견반려 확인(/con_offComRePreviewM.jsp): 완료    
8. 계약의뢰 반려확인(/con_offDeptRegisterM.jsp): 완료  
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■