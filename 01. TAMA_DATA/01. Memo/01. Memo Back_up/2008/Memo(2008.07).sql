

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.07) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.07.01(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:00   --> 대규 교보B/D 방문(음료수, 선 제안) 

- 교보 홈 리뉴얼 Prj
- 간편조회 
메인(로그인 화면) 
http://127.0.0.1:8080/KBLCM/cy/SI_login.action 

1. 보험계약조회 
 1) 보험계약사항  
http://127.0.0.1:8080/KBLCM/cy/SI_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
import kblcm.cy.in.cm.vo.CYINCM_securityVO 
--> kblcm.cy.pi.ti.ti.vo.CYPITITI_securityVO 
 2) 계약심사조회  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cy.si.ii.action.CYSIII_newcontractAction.java --> YC122usCall 
CYSIII_newcontract_tab02.jsp 
 3) 휴면보험금조회  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java --> YC122usCall 
CYSIII_cancelDorm_tab03.jsp    
==============================================================================================================

1. 파일 변경 사항 
1) import com.kyobo.kblcm.cyber.action.CMStringUtil; 
==> import kblcm.common.util.CMStringUtil;   //   
2) import com.kyobo.kblcm.cyber.action.CY_baseAction; 
==> import kblcm.common.base.action.CyberBaseAction;   //사이버창구 master action 
3) import com.kyobo.kblcm.common.util.CMDateCheck;  //CMDateUtil에 통합 됨(CMDateCheck 삭제) 
CMDateCheck.checkHoliday() -> CMDateUtil.checkHoliday() 
4) import com.kyobo.kblcm.common.util.CMDateUtil;  
==> import kblcm.common.util.CMDateUtil;    //날짜(공통 함수) 
4-1) import com.kyobo.kblcm.common.utill.CMMoneyUtil; 
==> import kblcm.common.util.CMMoneyUtil;  //통화(공통 함수) 
5) import kblcm.common.util.CMUmsUtil;   //NO  
==> import kblcm.common.service.CommonServiceImpl; 
CMUmsUtil umsUtil = new CMUmsUtil(); -> CommonServiceImpl umsUtil = new CommonServiceImpl(); 
6) import kblcm.common.util.CMCommonCodeHandler; 
==> import kblcm.common.util.CMEtcUtil;  
resultVO.setBankName(CMCommonCodeHandler.getSmallCdNm("CY","BANK",result_call.getYC105US_O_BANK_CODE()));//입출금은행명 
-> resultVO.setBankName(CMEtcUtil.getCode("CY","BANK",bankCode).getName());//입출금은행명 

7) import kblcm.framework.util.PropertyUtil; 
==> import kblcm.common.util.CMConfig; 
if(PropertyUtil.getString("SERVER_TYPE").equals("DEVELOP")) {} 
-> CMConfig config = CMConfig.instance();  
if(config.getString("Property.SERVER_TYPE").equals("DEVELOP")) {)  
- KBLCM/WebContent/WEB-INF/conf/kblcm-property.xml 에서 
<config>   
<Property> 
<SERVER_TYPE>TEST</SERVER_TYPE>  
  </Property> 
</config> 

8) import com.kyobo.kblcm.cyber.util; 
==> import kblcm.cy.util; 
9) 
import kblcm.company.util.CO_Util;  
==>import kblcm.cy.ci.util.CO_Util;   ---> 기업보험 util 

99) 기타  
- Action에서 받기(request에서 온 경우) 
String isChg  = CMStringUtil.strTrim(para.getParameter("isChg"));    // Y : 예약 이체 N : 즉시 수령 
-> String isChg  = CMStringUtil.strTrim(request.getParameter("isChg"));  

- Action에서 받기(VO에서 온 경우) 
private CYPITITI_cancelDormAmtVO cancelDormAmtVO = new CYPITITI_cancelDormAmtVO();  
String payDdate =  cancelDormAmtVO.setPayDDate(cancelDormAmtVO.getPayDDate() + 10); 
    if(payDdate.length()>=10) { 
payDdate = CMStringUtil.replace(payDdate,"-","."); 
   }   
    
 - location 전체 메뉴 만들기(jsp파일에서)  ==> 사용 안 함 
<%@ page import="com.kyobo.kblcm.common.util.CMLocationFactory" %> 

- radio 박스 세팅 
<td><input type="radio" name="p_account_state" value="00" <s:if test="%{resultMap.accountState.equals('00')}">checked</s:if>>전체</td> 

<a href="/KBLCM/cy/CYSIII_dormantInsu_ins.do?p_cmd=ins">[휴면보험금 받기신청]</a>   

- 증서번호  * 앞에서 6자리부터 4자리를 * 처리 
cysiii_accountVO.setInsuPolicy(call.getSEC_NUMBER());       // 증권번호 
--> cysiii_accountVO.setInsuPolicyNew(CY_commonUtil.getInsuNumberForFront(call.getSEC_NUMBER()));  // 증권번호 

- DB 연결 
//import kblcm.framework.util.DBUtil; 
//import kblcm.framework.util.KBLCMSysException; 
//import kblcm.framework.util.QueryFactory;  
//import kblcm.framework.util.MessageFactory; 
import kblcm.common.util.DBUtil; 
import kblcm.common.util.QueryFactory; 
import kblcm.common.exception.KBLCMSysException;   
import kblcm.common.message.MessageFactory;  

- 신규 Project에 존재하지 않는 클래스 
import kblcm.framework.util.LogUtil;  
===>  private static Logger LOG = Logger.getLogger(BaseDAO.class); 
import org.apache.xmlrpc.*;   ===> NO  
package com.kyobo.kblcm.framework.util.PropertyUtil  ===> NO  

import kblcm.common.util.CMParameter; ==> 제외 
String szProcType = ut.getDefault(para.getParameter("proc_type"), "S"); 
-> String szProcType = ut.getDefault(request.getParameter("proc_type"), "S"); 
------------------------------------------------------------------------------------------------ 

2. VO 정리 
1) import kblcm.cy.in.cm.vo.CYINCM_accountVO; 
==> import kblcm.cy.si.ii.vo.CYSIII_accountVO; //계약사항 VO 
CYINCM_specialVO --> CYSIII_specialVO //특약내역 VO 
CYMYNC_retractVO --> CYSIII_retractVO //계약철회 VO 

2) import com.kyobo.kblcm.cyber.in.dm.vo.CYINDM_accidentVO;   
==> import kblcm.cy.pi.ti.ti.vo.CYPITITI_accidentVO;   //사고보험금 VO 
CYINDM_addInsuFeeVO --> CYPITITI_addInsuFeeVO //추가납입보험료 VO 
CYINDM_bankVO --> CYPITITI_bankVO //은행 VO 
CYINDM_cancelDormAmtVO --> CYPITITI_cancelDormAmtVO //해약환급금,휴면보험금 VO 
CYINDM_depositVO --> CYPITITI_depositVO //입출금서비스 VO  
CYADMA_searchVO --> CYPITITI_searchVO //검색 VO   
CYINDM_diviInsuAmtVO --> CYPITITI_diviInsuAmtVO //분할만기보험금 VO 
CYINDM_insuVO --> CYPITITI_insuVO //보험 VO  
CYINDM_lapseAllotVO --> CYPITITI_lapseAllotVO //소멸자산재평가배당금 VO 
CYINDM_mailContentVO --> CYPITITI_mailContentVO // 입출금 서비스 메일 내용 만드는 VO 
CYINDM_nonLoginDepositLogVO  --> CYPITITI_nonLoginDepositLogVO //비로그인 입출금 신청Log VO  
CYINDM_premiumVO --> CYPITITI_premiumVO //보험료입금 VO 
CYINDM_resultVO --> CYPITITI_resultVO //입출금 결과 VO 
CYINDM_shareVO --> CYPITITI_shareVO //배당금 VO  
CYINDM_premiumVO --> CYPITITI_premiumVO //사고보험금 VO 
CYINDM_resultVO --> CYPITITI_resultVO //입출금 결과 VO 

3) import com.kyobo.kblcm.common.ad.mo.vo.CYADMO_statVO;  
==> import kblcm.cy.ad.as.vo.CYADAS_statVO;    //인증서관리 VO 

4) import kblcm.ir.ko.ku.vo.IRKOKU_reportViewFileVO;  
==> import kblcm.ir.common.IR_irFileVO; 
IRKOKU_reportViewFileVO  fileVO = new IRKOKU_reportViewFileVO();   
-> IR_irFileVO  fileVO = new IR_irFileVO();  

5)  import com.kyobo.kblcm.common.util.CMListVO; 
==> import kblcm.common.vo.CMListVO; 

6)  import com.kyobo.kblcm.cyber.in.cm.vo.CYINCM_accountVO; 
==> import kblcm.cy.si.ii.vo.CYSIII_varamtVO;  //변액보험 VO  
  
7)  import com.kyobo.kblcm.company.cy.wf.is.vo.COCYWFIS_theInsuredVO; 
==> import kblcm.cy.ci.ri.is.vo.CYCIRIIS_theInsuredVO;  //피보험자조회 VO 

8)  import com.kyobo.kblcm.company.cy.wf.is.vo.COCYWFIS_comComItemPopVO; 
==> import kblcm.cy.ci.ri.is.vo.CYCIRIIS_comComItemPopVO;  //공동인수정보 VO(계약사항)  

9)  import com.kyobo.kblcm.company.vo.CO_loginVO; 
==> import kblcm.common.web.login.context.CorpLoginContext;  //기업고객 로그인 세션 
 //CYCI_loginVO sessionVO = this.getSession(request, CO_ssNm); 
-> CorpLoginContext sessionVO = getCyberSessionContext2();   //기업고객 로그인 세션  
10) import com.kyobo.kblcm.cyber.co.lo.vo.CYCOLO_loginVO; 
==> import kblcm.cy.co.lo.vo.CYCOLO_loginVO; //로그인 VO 
CYCOLO_loginVO cyberSession = getCyberSession();   
getSession(request.getJuminNo() -->  cyberSession.getJuminNo()  //로그인 VO   
(CYCOLO_loginVO)request.getSession().getAttribute("cybersession"); 
==============================================================================================================

 - struts tags 분석(스트럿츠 태그) 
<s:if test="%{resultMap.simpleLoginYn.equals('Y')}"> <!-- 간편조회 이면 --> 
<td height="27" valign="bottom" align="right" class="navi"></td> 
</s:if> 
<s:else> 
<td height="27" valign="bottom" align="right" class="navi"></td><!-- 간편조회 --> 
</s:else> 

<!-- LIST 조회 --> 
<s:iterator id="row" value="%{resultMap.cancelDormAmtVO.getBankList}" status="inq_stat"> 
<input type="Hidden" name="bankName" value="<s:property value="%{#row.bankName}"/>"> 
<input type="Hidden" name="depositor" value="<s:property value="%{#row.depositor}"/>">  
</s:iterator>   

<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count+1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>  
<td><s:property value="resultMap.bankbookList2"/><!-- 고객번호 --> -</td> 
- 비 문자열 속성에 이스케이프 기호 "%{}"를 사용하면 그 기호는 무시되고 내용만을 처리 
<s:if test = "%{age>19}">...</s:if> 
------------------------------------------------------------------------------------ 

- value 값, 결과값  
<input type="hidden" name="p_insuName" value="<s:property value='%{resultMap.cysiii_accountVO.insuName}'/>"><!--// 보험상품명 //--> 
<input type="hidden" name="p_varamtYn" value="<s:property value='%{resultMap.varamtYn}'/>"><!--// 변액보험여부 //--> 

- include 
<s:include value="/WEB-INF/jsp/cy/CY_progress_viw.jsp" />   
==============================================================================================================

- 간편조회 
나의 보험 조회 
http://100.1.131.106/cyber/cyincm_account.do 
계약심사조회 
http://100.1.131.106/cyber/cymync_newcontract.do 
대출현황조회 
http://100.1.131.106/loan/lnmspt_payed.do 
휴면보험금조회 
http://100.1.131.106/cyber/cyindm_cancelDorm.do  
==============================================================================================================

- layer 테스트 
http://127.0.0.1:8080/KBLCM/cy/login.action 
http://127.0.0.1:8080/KBLCM/pilot/login.action   
http://127.0.0.1:8080/KBLCM/ir/configure.action ==> 이사회 
http://127.0.0.1:8080/KBLCM/ci/main.action ===> 고객센터 
http://127.0.0.1:8080/KBLCM/html/codingTest/layer/layer.jsp ==>코딩 테스트(레이어) 
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\layer 
http://127.0.0.1:8080/KBLCM/html/codingTest/tab/tab.jsp ==>코딩 테스트(탭)  
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\tab 
==============================================================================================================

- 간편조회 로그인(테스트 서버)(http://100.1.131.106) 
주민등록번호 670503 - 20  --> 간편조회  
------------------------------------------------------------------------------ 
- 사이버창구 로그인(테스트 서버) 
http://100.1.131.106/cyber/cy_index.do  
==============================================================================================================

 <a href="javascript:kbl.main.go.funcGoPage('1')">[계약심사조회]</a> 
  
<script>  
	// Ajax 호출 스크립트 함수(계약상세내용 조회) 
	kbl.extJS.initializeApplication(kbl.main.go.do_requestAggrementList, kbl.main.go);   
</script> 
 
<a href="javascript:kbl.main.go.do_requestAggrementList('1')">[보험계약사항]</a> 
<a href="javascript:kbl.main.go.do_requestAggrementList('2')">[계약심사조회]</a> 
<a href="javascript:kbl.main.go.do_requestAggrementList('3')">[휴면보험금조회]</a> 

<div id="main01Div"></div> 
------------------------------------------------------------ 

[kblcm.cy.si.ii.action.CYSIII_newcontractAction 

<div> 
	<span tabGroup="1" tabSeq="1" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="true" class="activeTab"><b>[나의 보험 조회(<span><s:property value="%{resultMap.accountList.totalCnt}"/></span>건)]</b></span> 
	<span tabGroup="1" tabSeq="1" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="false">[나의 보험 조회]</span> 
	<span tabGroup="1" tabSeq="2" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/LayerMain01.action" 
	activeTab="true" class="activeTab">[계약심사조회]</span> 
	<span tabGroup="1" tabSeq="2" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/LayerMain01.action" 
	activeTab="false">[계약심사조회]</span> 
	<span tabGroup="1" tabSeq="3" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="true" class="activeTab">[휴면보험금조회]</span> 
	<span tabGroup="1" tabSeq="3" contentType="singleIframe" contentId="ifrm_content" contentSrc="/KBLCM/cy/SI_account.action" 
	activeTab="false">[휴면보험금조회]</span> 
</div> 

<div> 
	<iframe id="ifrm_content"></iframe> 
</div>   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:30 

- 교보 홈 리뉴얼 Prj
- DB 연결(DB 저장(ejb -> spring으로 변경)  
1) kblcm.cy.si.ii.action.CYSIII_newContractAction.java 에서 
//import kblcm.cyber.my.nc.ejb.CYMYNC_newContractCtl;  //ejb 
//import kblcm.cyber.my.nc.ejb.CYMYNC_newContractCtlHome; //ejb  
import kblcm.cy.si.ii.service.CYSIII_newContractService;   //service 

//CYSIII_newContractCtl ctl = getRemoteObejct(); 
//CYPITITI_retractVO cymync_retractVO = new CYPITITI_retractVO();  
CYSIII_newContractService ctl = (CYSIII_newContractService)ContextLoader.getCurrentWebApplicationContext().getBean("CYSIII_newContractServiceBean"); 
CYPITITI_retractVO cypititi_retractVO = new CYPITITI_retractVO(); 

ctl.setRetract(cypititi_retractVO);  // DB 저장(ejb -> spring으로 변경) 

2) kblcm.cy.si.ii.service.CYSIII_newContractService.java 에서 
public interface CYSIII_newContractService {  
public void setRetract(CYPITITI_retractVO serviceVO) throws KBLCMSysException;   
} 

3) kblcm.cy.si.ii.service.CYSIII_newContractServicelmpl.java 에서 
public void setRetract(CYPITITI_retractVO serviceVO) throws KBLCMSysException {  
Connection con = null; 
try { 
con = DBUtil.getConnection(); 
CYSIII_newContractDAO.setRetract(con, serviceVO);   //DB 저장 
} 
catch (KBLCMSysException kble) { 
throw kble; 
} 
catch (Exception e) { 
throw new KBLCMSysException(e, "SVM00003"); 
} 
finally { 
DBUtil.close(con); 
} 
}   

4) kblcm.cy.si.ii.service.CYSIII_newContractDAO.java 에서 
public void setRetract(Connection con, CYPITITI_retractVO cymync_retractVO) throws KBLCMSysException {  
PreparedStatement pstmt = null; 
CYPITITI_retractVO serviceVO2 = null; 

try { 
pstmt = new LoggablePreparedStatement(con, QueryFactory.getInstance().getQuery("CYPITITI_001")); 
String dateTime = CMDateUtil.currentDateTime(); 
pstmt.setString(1, dateTime); 
pstmt.setString(2, cymync_retractVO.getInsuPolicy()); 
pstmt.setString(3, cymync_retractVO.getName()); 
pstmt.setString(4, cymync_retractVO.getJuminNo()); 
pstmt.setString(5, cymync_retractVO.getBankName()); 
pstmt.setString(6, cymync_retractVO.getAccount()); 
pstmt.setDouble(7, CMStringUtil.parseDouble(CMStringUtil.replace(cymync_retractVO.getPreminum(), ",", ""))); 
pstmt.setString(8, cymync_retractVO.getDivSmlCd()); 
pstmt.setString(9, cymync_retractVO.getProcCd()); 
pstmt.setString(10, cymync_retractVO.getAccessType()); 
pstmt.setString(11, cymync_retractVO.getAccessIp());  

if (pstmt.executeUpdate() != 1)  //저장 에러이면 
{ 
throw new KBLCMSysException("CYM00001"); 
}  

 } 
catch (KBLCMSysException kble) 
{ 
    throw kble; 
} 
catch (Exception e) 
{ 
    throw new KBLCMSysException(e, "CYM00001"); 
} 
finally //[필수] 
    { 
    DBUtil.close(pstmt); 
} 
}  
} 

5) KBLCM/WebContent/WEB-INF/conf/context/cyContext.xml 에서 
<bean id="CYSIII_newContractServiceBean" class="kblcm.cy.si.ii.service.CYSIII_newContractServicelmpl"> 
<property name="CYSIII_newContractDAO" ref="CYSIII_newContractDAO"/> 
</bean>  
<bean id="CYSIII_newContractDAO" class="kblcm.cy.si.ii.dao.CYSIII_newContractDAO"> 
</bean>  
6) /KBLCM/sqlMap/queries-db2/kblcm-query-cy.xml 에서 
<!-- 청약철회 저장 --> 
<query id="CYPITITI_001" type="pstmt" class="com.kyobo.kblcm.cyber.my.nc.dao.CYMYNC_newContractDAO"><![CDATA[ 
INSERT INTO TB_CYCML100 
(ACCESS_DM, POLICY_NO, NAME, RESD_NO, BANK_NM, ACCOUNT_NO, AMT, DIV_SML_CD, PROC_CD,  
ACCESS_TYP, ACCESS_IP) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) 
]]></query>  
---------------------------------------------------------------------------------------------- 

1. 보험계약조회 
 1) 보험계약사항  
http://127.0.0.1:8080/KBLCM/cy/SI_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java(I/F: YC122usCall)  
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
import kblcm.cy.in.cm.vo.CYINCM_securityVO 
--> kblcm.cy.pi.ti.ti.vo.CYPITITI_securityVO  

 2) 계약심사조회  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cy.si.ii.action.CYSIII_newcontractAction.java 
--> kblcm.cy.si.ii.action.CYSIII_newcontractAction.java(I/F: N205A009odCall) 
CYSIII_newcontract_tab02.jsp 

- DB 연결 
//import kblcm.framework.util.DBUtil; 
//import kblcm.framework.util.KBLCMSysException; 
//import kblcm.framework.util.QueryFactory;  
//import kblcm.framework.util.MessageFactory; 
import kblcm.common.util.DBUtil; 
import kblcm.common.util.QueryFactory; 
import kblcm.common.exception.KBLCMSysException;   
import kblcm.common.message.MessageFactory;  

- 신규Project에 존재하지 않는 클래스 
import kblcm.framework.util.LogUtil;  
===>  private static Logger LOG = Logger.getLogger(BaseDAO.class); 
import org.apache.xmlrpc.*;   ===> NO  
package com.kyobo.kblcm.framework.util.PropertyUtil  ===> NO 
-->   
---------------------------------------------------------------------------------------------- 

 - 간편조회 
나의 보험 조회 
http://100.1.131.106/cyber/cyincm_account.do 
계약심사조회 
http://100.1.131.106/cyber/cymync_newcontract.do 
대출현황조회 
http://100.1.131.106/loan/lnmspt_payed.do 
휴면보험금조회 
http://100.1.131.106/cyber/cyindm_cancelDorm.do  
==============================================================================================================

- [주간업무 2008년 7월 1째주] 
★ 금주 업무 실적(06.30 ~ 07.04) 
1. 보험계약조회 
 1) 보험계약사항  
 2) 계약심사조회  
 3) 휴면보험금조회 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획07.07 ~ 07.114) 
1. 펀드계좌현황조회  
2. 증명서발급 
3. 출금이체동의 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.03(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:20  --> 저녁(메밀묵밥: 변지환, 임지연, 정영란, 최벽현, 이나희, 배상범, 주문현) 

- 교보 홈 리뉴얼 Prj
 2) 계약심사조회  
http://127.0.0.1:8080/KBLCM/cy/S_newcontract.do 
kblcm.cyber.my.nc.action.CYSIII_newcontractAction.java 
--> kblcm.cy.si.ii.action.CYSIII_newcontractAction.java(I/F: N205A009odCall) 
CYSIII_newcontract_tab02.jsp 

String cmd =(request.getParameter("p_cmd")== null)? "": request.getParameter("p_cmd"); 
System.out.println("[/CYMYNC_newContractAction.java]:[service()]:[simpleLoginYn]"+ simpleLoginYn);  
  
[07/03 11:39:20] [ERROR] - Could not find action or result 
No result defined for action kblcm.cy.si.ii.action.CYSIII_newContractAction and result error - action 

에러내용: Struts has detected an unhandled exception:  
원인: java소스 디버깅 에러 

YC122usCall call = new YC122usCall(); 

[07/03 11:06:52] [DEBUG] - Entering getProperty (ognl.OgnlContext@839aa387,{tsInd=393675875, hostMessage=정상적으로 
처리가 완료되었습니다., accountList=kblcm.common.vo.CMListVO@179688d[ 
  resultList=[kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@1bf404f, kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@11733a5, 
  kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@3f983f, kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@1246bec,
  kblcm.cy.pi.ti.ti.vo.CYPITITI_accountVO@2957a4] 
  totalCnt=11 
  values=<null> 
  map=<null> 
  cpage=1 
  pageSize=5 
  link=<null> 
  result=<null> 
  cpage=0 
  pageSize=0 
], focus=null},accountList) 
---------------------------------------------------------------------------------- 
    
 3) 휴면보험금조회  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
com.kyobo.kblcm.cyber.in.dm.action.CYINDM_cancelDormAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp   
==============================================================================================================

- 이클립스 실행 빨리 하기 
1. 이클립스 실행 아이콘에 오른쪽 마우스 눌러서 바로가기 아이콘 만듬 
2. 바로가기 아이콘에 역시 오른쪽 마우스를 눌러서 속성을 클릭 
대상(T)==> D:\eclipse\eclipse.exe -vmargs -Xverify:none -XX:+UseParallelGC -XX:PermSize=128M -XX:MaxNewSize=64M
-XX:NewSize=64M -Xmx512m -Xms512m 
대상(T)==> C:\DevEnv\Tools\eclipse\eclipse.exe -vmargs -Xverify:none -XX:+UseParallelGC -XX:PermSize=64M
-XX:MaxNewSize=64M -XX:NewSize=32M -Xmx512m -Xms512m 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 18:00  --> 점심(청빈(T:734-4774):영란,나희,지환,벽현,문현) => 쏨, 잠실역-> 한강,맥주(서현주씨)   

- 교보 홈 리뉴얼 Prj
 3) 휴면보험금조회  
http://127.0.0.1:8080/KBLCM/cy/SI_cancelDorm.do  
com.kyobo.kblcm.cyber.in.dm.action.CYINDM_cancelDormAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp   
==============================================================================================================

- 여신 인터페이스 회의(16:00 ~ 17:30, 교보B/D 2층 회의실) 
1. 참석자 
교보생명 오경미 과장, 박해일 SM 
김형철 차장, 이종석 과장 
2. 내용 
 1) 자동이체 여신, 보험 분리  
 2) 상환확인증 
 3) 로그 패킷 보관(1일) -> 연장에 대해서 협의 
 4) 메세지 코드 관리(관리자 메뉴에서) 
==============================================================================================================

 - 빔 프로젝트 안 나오는 문제 
조치: 디스플레이 등록 정보 -> 설정 -> 여기서 2번 모니터 선택 -> 내 Windows를 이 모니터에 맞게 확장(클릭) 
Fn + F4 --> 프로젝트 연결 됨  
=----------------------------------------------------------------------------------------------------------------------

 - 빔 프로젝트 듀얼을  단일(S)로 수정하는 방법 
조치: 디스플레이 등록 정보 -> 설정 ->  여기서 2번 모니터 선택 -> 고급(V) 
-> 플러그 앤 플레이 모니터 및 NVIDA GeForce 8400M G 등록 정보 
GeForce 8400M G(Tab) --> NVIDA 제어판 시작(S) --> 디스플레이 -> 다중 디스플레이 설정  
1. 사용하는 nView 디스플레이 모두 설정 -> 단일(S) 체크 
==============================================================================================================

- 노트북 램 추가 검토 
RAM: 2GB(삼성 램 DDR2 2G PC2-5300S) --> 3GB 
2G 구매하고 1G 판매(총 3G가 됨, 가격: 30,000원)     
1. 삼성 DDR 2G PC2-6400  가격: 48,000원 
 1) 서현컴: 나진 19동 3층 316호  T) 6733-3266 
http://iseohyun.com/product/productView.php?nProdCode=641713&service_id=pcdn  
 2) 브레인컴: 나진 19동 3층 가 326호  T) 6733-1327 
 3) 디드컴: 나진 18동 3층 나 특1-2(300호)  T) 6733-0720 
 4) e-pc: 선인 21동 4층 104호  T) 2120-2778  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.05(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 19:00  --> 조기축구, 백부장 교체 

- 교보 홈 리뉴얼 Prj
- 메뉴구조정의 작성(jsp, action, vo) 
(메뉴구조정의_080630.xls) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 개발팀 회식(1차: 고기집, 2차: 맥주집, 3차:맥주집(내가 쏨)) 

- 교보 홈 리뉴얼 Prj
 3) 휴면보험금조회  
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_lst.do  
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: P2200216odCall) 
CYSIII_cancelDorm_tab03.jsp 
 msg_code : 1004 
------------------------------------------------------------------------------------------------ 

- 대출정보 조회(디자인) 
http://localhost:8080/KBLCM/mm/mmlnMain.do  
- 대출정보 조회(디자인2) 
http://localhost:8080/KBLCM/htmlCode/mm/ln/UI_ML_3002.html 
- 테스트(로그인, xecure) 
http://127.0.0.1:8080/KBLCM/examples/certLogin.do 
==============================================================================================================

- 호스트 통신 
N205A009odCall call = new N205A009odCall(); 
call.getMSG_CODE()  
0000 : 정상종료 
0001 : 주민번호가 입력되지 않았습니다. 
0002 : 한달전 일자 오류입니다. 
0003 : 계약건이 없습니다. 
0004 : 주피보험자가 없습니다 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:20  --> 점심(유대리, 수원: 중국집(내가쏨)) 

- 교보 홈 리뉴얼 Prj
 3) 휴면보험금 수령신청 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
http://127.0.0.1:8080/KBLCM/examples/certLogin.do 
------------------------------------------------------------------------------------ 

- 조회수(숫자 빼기) 
<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count-1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:50 

- 교보 홈 리뉴얼 Prj
 3) 휴면보험금 수령신청 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
   
logger.debug("[/CYSIII_dormantInsu_lst_tab03.jsp]:[START] ================> "); 
----------------------------------------------------------------------------------------------------------------- 

 - struts tags 분석(스트럿츠 태그) 
<s:if test="%{resultMap.simpleLoginYn.equals('Y')}"> <!-- 간편조회 이면 --> 
<td height="27" valign="bottom" align="right" class="navi"></td> 
</s:if> 
<s:else> 
<td height="27" valign="bottom" align="right" class="navi"></td><!-- 간편조회 --> 
</s:else> 

<!-- LIST 조회 --> 
<s:iterator id="row" value="%{resultMap.cancelDormAmtVO.getBankList}" status="inq_stat"> 
<input type="Hidden" name="bankName" value="<s:property value="%{#row.bankName}"/>"> 
<input type="Hidden" name="depositor" value="<s:property value="%{#row.depositor}"/>">  
</s:iterator>   

<td class="table_text02"><input type="checkbox" name="ck_box"  
onclick="javascript:checkAmt(<s:property value="%{#inq_stat.count+1}"/>); 
checkMaxCnt(<s:property value="%{#inq_stat.count}"/>);"></td>   
==============================================================================================================

- [주간업무 2008년 7월 2째주]  
★ 금주 업무 실적(07.07 ~ 07.14)  
1. 간편조회 
 1) 보험계약조회 
   가. 보험계약사항 
   나. 계약심사조회 
   다. 휴면보험금조회 
 2) 펀드계좌현황조회 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(07.14 ~ 07.18)  
1. 기업보험(퇴직보험) 
 1) 대상계약선택 
 2) 업무진행사항 
   가. 처리중인 업무  
   나. 진행중인 업무 
    가) 계약일반사항 변경 진행상황조회 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:10 

- 교보 홈 리뉴얼 Prj
 3) 휴면보험금 수령신청 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_dormantInsu_ins.do 
com.kyobo.kblcm.cyber.in.dm.action.CYSIII_dormantInsuAction.java 
--> kblcm.cy.si.ii.action.CYSIII_cancelDormAction.java(I/F: YC122usCall) 
CYSIII_cancelDorm_tab03.jsp  
==============================================================================================================

http://127.0.0.1:8080/cy/CYSIFI_rest_lst.do 

1. 펀드계좌현황조회 
 1) 잔고조회   
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_rest_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_rest_lst.jsp 

- arary -> string 변경(어레이(array) 형전환) 
String[] insuPolicyNumFront = CY_commonUtil.getInsuNumberForFront(request.getParameterValues("insuPolicyNum")); 
--> String[] test = request.getParameterValues("insuPolicyNum"); 
String[] insuPolicyNumFront = new String [100]; 
for (int i=0; i<test.length;i++) { 
insuPolicyNumFront[i] = CY_commonUtil.getInsuNumberForFront(test[i]); 
} 
------------------------------------------------------------------------------------------ 
  
- radio 박스 세팅 
<td><input type="radio" name="p_account_state" value="00" <s:if test="%{resultMap.accountState.equals('00')}">checked</s:if>>전체</td> 

<form name="form1" method="post" action="/KBLCM/cy/CYSIFI_rest_lst.do" onsubmit="javascript:goSearch();return false;"> 
<td align="right"><input type="Image" src="/images/kblcm/all/btn/search04.gif">[조회]</td> 
</form> 
<a href="/KBLCM/cy/CYSIII_dormantInsu_ins.do?p_cmd=ins">[휴면보험금 받기신청]</a>   
------------------------------------------------------------------------------------------ 
  
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
 3) 수익률조회 
 http://127.0.0.1:8080/KBLCM/cy/CYSIFI_priceEarnings_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServlet) 
CYSIFI_priceEarnings_lst.jsp  

logger.debug("[/CYSIFI_dormantInsu_lst_tab03.jsp]:[START] ================> ");  
==============================================================================================================

- 교보생명 개발팀 
김형철 차장(사이버창구) H) * 
배상범 과장(사이버창구) H) * 
최벽현 대리(사이버창구) H) * 
남궁명희 대리(금융상품) H) * 
정영란(금융상품) H) *   
임지연(금융상품) H) *    
주문현 과장(회사소개) H) * 
변지환 대리(회사소개) H) * 
이나희(회사소개) H) *  
박인경 대리(DBA) H)  
김윤상 차장(공통) H)  * 
선동호 차장(PL) H) * 
최동훈 차장(PM) H) * 
황광엽 부장(사업관리) H) * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 21:10  --> 점심(뷔페: 개발팀(SK PM이 쏨)), 맥주(현용, 임모) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(I/F: YC122usCall) 
CYSIFI_myTrade_lst.jsp 

logger.debug("[/CYSIFI_fundAction.java]:[service()]:[bankHM]"+ bankHM);   //Hash map 데이타 
--> [/CYSIFI_fundAction.java]:[service()]:[bankHM]{CUST_NO=2000008, bankBookList=[{NO=001}, {NO=002}] 

- include  변경 
<%@ include file="/jsp/kblcm/common/CM_page_bottom_lst.jsp" %> 
--> <s:include value="/WEB-INF/jsp/kblcm/common/CM_page_bottom_lst.jsp" />  
    cf) <s:include value="/js/include.jsp" /> 
   
<a href="/KBLCM/cy/CYSIFI_myTrade_lst.do?p_cmd=myTrade_prelst">  [휴면보험금 받기신청]</a>    
==============================================================================================================

 - HashMap 
HashMap은 키나 값에 Null을 허용 합니다.  
HashMap 출력방법은 다음 한가지 이네요.(Enumeration 지원 안함)  

<% 
HashMap hashmap = new HashMap();  

hashmap.put("park77", "박세리");  
hashmap.put("chanTexas", "박찬호");  
hashmap.put("kim123", "김병헌");  

Set set = hashmap.entrySet();  
Iterator keys = set.iterator(); 

while (keys.hasNext()) {  
   key = (String)keys.next();  
   System.out.println(hashmap.get(key));  
}  
%> 

결과: 
박세리 
박찬호 
김병헌 

아이디가 pak77인 사람: <%=hashmap.get("pakr77")%>인 사람 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.12(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 20:00  --> 조기축구(비와서 못하고 돌아옴), 토요 근무 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회[사이버창구>간편조회] 
 1) 보험계약사항  
http://127.0.0.1:8080/KBLCM/cy/CYSIII_account.action 
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall  
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
 1-1) 계약상세내용 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_account_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 
  
 1-2) 가입특약조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accountSpec_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp 
  
 1-3) 보장내역조회  ==> (jsp에 Hash Map 사용) 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accSecurity_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> NF640UMCall 
CYSIII_accSecurity_viw_pop.jsp 

 1-4) 납입내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_accPayment_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC120usCall 
CYSIII_accPayment_viw_pop.jsp 
  
 1-5) 보험계약대출내역 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_applyLoan_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> PJ451usCall 
CYSIII_applyLoan_viw_pop.jsp 

 1-6) 적립금조회(변액보험관련조회) ======> CYSIII_varamtDet_viw.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtDet_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtDet_viw_pop.jsp 

 1-7) 수익률조회(변액보험관련조회) 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtEarnRt_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtEarnRt_viw_pop.jsp 
  
 1-8) 사망보험금조회(변액보험관련조회)  -->  varamt_death, Det04_viw.jsp 
http://127.0.0.1:8080/KBLCM/cy/CYSIII_varamtMort_viw.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -->   
CYSIII_varamtMort_viw._pop.jsp  
==============================================================================================================

- 에러 내용 
[07/12 10:35:07] [DEBUG] - Error while retrieving generic property class for property=resultMap 
java.lang.NullPointerException 
원인: resultMap을 잘못 적어줘서 생김 
조치: resultMap에 Null값이 오지 않도록 강제로 세팅할 것 
resultMap.put("accountList", "NO DATA");   // 계약사항 리스트 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.14(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:00  --> 개발팀 퇴근(개발자 수급 문제로 마찰) 

- 교보 홈 리뉴얼 Prj
1. 대상계약선택[기업보험>퇴직보험] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 
==============================================================================================================

1. 업무진행사항[기업보험>퇴직보험] 
 1) 처리중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_notProcess.action    
com.kyobo.kblcm.company.cy.ri.yu.action.COCYRIYU_notProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_notProcessAction.java --> EW00W140odCall  
CYCIRISP_main01.jsp, CYCIRISP_notProcess_lst.jsp  
==============================================================================================================

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_businessProcessAction.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_businessProcessAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_businessProcessAction.java --> EW10EW22odCall 
CYCIRISP_businessProcess_lst.jsp 
------------------------------------------------------------------------------------------ 

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-1) 계약일반사항 변경 진행상황 조회 
 http://127.0.0.1:8080/KBLCM/cy/CYCIRISP_generalContractRslt.action 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_generalContractRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_generalContractRsltAction.java --> EW10EW24odCall 
CYCIRISP_generalContractRslt.jsp 
==============================================================================================================

- 프린터 설정(교보생명 리뉴얼 Proj) 
01. 흑백프린터 
“ 20050705102745015_ML-2550S_Print_Common.exe” 설치  
1. 20050705102745015_ML-2550S_Print_Common.exe 프로그램 설치 
2. 프린터 및 팩스 
   Samsung ML-2550S Series 오른쪽 버튼 클릭 -> 속성 -> 포트  
   포트추가 -> Standard TCP/IP -> 새포트  
3. 프린터 이름 또는 IP주소 : 10.33.160.135 -> 적용 
------------------------------------------------------------------------------------------------------ 
 02. 컬러프린터(Xerox 8400DP)  
1. "프린터 및 팩스" --> 프린터 추가 
2. "이컴퓨터에 연결된 로컬프린터" 
   "플러그 앤 프레이프린터를 자동으로 검색 및 설치" --> 채크 해제  
3. "새포트 만들기" --> "Standard TCP/IP Port" 선택 
4. "프린터 이름 또는 IP주소" : 10.33.160.134 -> 적용 
5. "디스크 있음" -> 8400winxp_2kpcl --> "Xerox Phaser 8400DP PCL 5C" 
   --> 다음 --> 기본 프린터 사용 "아니오" --> "공유안함" --> 테스트인쇄 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.15(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:30 

- 교보 홈 리뉴얼 Prj
 1-6) 적립금조회(변액보험관련조회) ==> (jsp에 Hash Map 사용) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V2020803odCall 
   
 1-7) 수익률조회(변액보험관련조회) ==> (jsp에 Hash Map 사용) 
action name="CYSIII_varamt", p_cmd: earnrate 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V7030805odCall 

 1-8) 사망보험금조회(변액보험관련조회) ==> (jsp에 Hash Map 사용) 
action name="CYSIII_varamt", p_cmd: death 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_varamtAction.java -> V2010802odCall  
CYSIII_varamtMort_viw_pop.jsp 
==============================================================================================================

- DB2 연결 
IP: 10.33.160.178 데이터베이스명: KYOBOWWW 
ID/PWD: inst01/inst01www CATALOG TCPIP NODE: renewdev 
REMOTE: 10.33.160.178 SERVER PORT: 50000 
REMOTE_INSTANCE: inst01 OSTYPE AIX;  

CATALOG DATABASE KYOBOWWW AS WWW 
  AT NODE: renewde AUTHENTICATION: SERVER; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.16(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:10 

- 교보 홈 리뉴얼 Prj
1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-1) 보험금청구 진행상황 조회 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_insuReqRsltAction.java --> EW10EW23odCall  
CYCIRISP_insuReqRslt_lst.jsp 
  
 1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-1) 청구서 입력결과(새창) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_insuReqDetailAction.java 
--> kblcm.cy.si.ii.action.CYCIRISP_insuReqDetailAction.java -> EW10EWA1odCall 
CYCIRISP_insuReqDetail_viw_pop.jsp 

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-2) 무급부퇴직 진행상황 조회 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appUnpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_appUnpaidRetireAction.java -->   EW30EW36odCall 
CYCIRISP_appUnpaidRetire_lst.jsp 

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-3) 가입취소 진행상황 조회 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRISP_unpaidRetire_lst.jsp 
  
1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-4) 사용자 변경 진행상황 조회 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_userChangeRsltAction.java  
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_userChangeRsltAction.java --> EW10EWA4odCall 
COCYRISP_userChangeRslt_viw.jsp 

1. 업무진행사항[기업보험>퇴직보험] 
 1) 진행중인 업무 
  1-5) 전출신청 진행상황 조회 
com.kyobo.kblcm.company.cy.ri.ap.action.COCYRIAP_transferReqApprovalAction.java 
--> kblcm.cy.ci.ri.sp.action.CYCIRISP_transferReqApprovalAction.java --> EW10EW154odCall 
CYCIRISP_transferReqApproval_lst.jsp 
==============================================================================================================

1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 계약일반사항(Tab) 
  1-1) 기본계약사항 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_comComItemAction.java --> EW10EW16odCall 
CYCIRIIS_insuReqRslt_lst.jsp 

1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 계약일반사항 
  1-2) 변경사항 입력 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_generalContractAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp 
  
1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 계약일반사항 
  1-2) 결재신청완료(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.sp.action.COCYRISP_insuReqRsltAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_generalContractAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp 
---------------------------------------------------------------------------------------- 

1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 계약일반사항 
  2-1) 보험대상자대표자변경-변경사항입력 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_generalContract_upd.jsp 

1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 계약일반사항 
  2-2) 보험대상자대표자변경-결재신청완료(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java  
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
==============================================================================================================

1. 계약사항조회(IS)[기업보험>퇴직보험] 
 1) 보험대상자 조회  
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.wf.is.action.COCYWFIS_theInsuredAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_theInsuredAction.java --> NU415usCall 
CYCIRIIS_theInsured_lst.jsp 
  
 1) 보험대상자 
 1-1) 보험대상자 정보변경-변경사항 입력(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
  
 1) 보험대상자 
 1-2) 보험대상자 정보변경-변경사항 입력(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.ad.cy.ri.ra.action.COADCYRIRA_appInsuredAltAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
  
 1) 보험대상자 
 1-3) 보험대상자 정보변경-정보변경-결재신청완료(Layer) 
action name="CYSIII_varamt", p_cmd: detail 
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
 -------------------------------------------------------------------------------- 

 1) 보험대상자 
 1-4) 무급부퇴직/가입취소 내용 입력(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRIIS_unpaidRetire_lst_pop.jsp   
  
 1) 보험대상자 
 1-5) 무급부퇴직/가입취소 결재신청(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_unpaidRetireAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_unpaidRetireAction.java --> EW10EW17odCall 
CYCIRIIS_unpaidRetire_viw_pop.jsp   

 1) 보험대상자 
 1-6) 무급부퇴직/가입취소 결재신청완료(Layer)  
com.kyobo.kblcm.company.cy.ri.ms.action.COCYRIMS_representAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_representActionAction.java --> EW10EW16odCall 
CYCIRIIS_apprvlok_viw.jsp   
 -------------------------------------------------------------------------------- 

 1) 보험대상자 
 1-1) 책임준비금(Layer)  
com.kyobo.kblcm.company.cy.ri.cr.action.COCYRICR_dutyPrepareAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EW00EW02odCall 
CYCIRIIS_dutyPrepare_lst_pop.jsp   
 -------------------------------------------------------------------------------- 

 1) 보험대상자 
 1-1) 구간별적립금조회(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_appSectionAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EU00W148odCall   
CYCIRIIS_appSection_viw_pop.jsp   
   
 1) 보험대상자 
 1-1) 보험료 납입내역(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paidParticularAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_dutyPrepareAction.java --> EW00EW03odCall   
CYCIRIIS_paymentParticular_lst_pop.jsp   
  
  1) 보험대상자 
 1-1) 보험금 지급내역(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paymentParticularAction.java 
--> kblcm.cy.ci.ri.is.action.COCYRIIS_paymentParticularAction.java --> EW00EW04odCall 
CYCIRIIS_paymentParticular_lst_pop.jsp   

  1) 보험대상자 
 1-1) 지급세부내역 조회(Layer)  
"com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paymentParticularActio.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_paymentParticularActio.java --> EW00EW04odCall 
COCYRIIS_paymentParticular_lst.jsp  

  1) 보험대상자 
 1-1) 지급중지건 조회(Layer)  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_attachmmentAction.java 
--> kblcm.cy.ci.ri.is.action.CYCIRIIS_attachmmentAction.java --> EW00W141odCall 
CYCIRIIS_attachmment_lst_pop.jsp   
==============================================================================================================

- [주간업무 2008년 7월 3째주]
★ 금주 업무 실적(07.14 ~ 07.18)
1. HOST 인터페이스 수정 
 1) 간편조회  
 2) 기업보험(퇴직보험) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(07.21 ~ 07.25)
1. 개발작업(화면) 
 1) 간편조회 
 2) 기업보험(퇴직보험) 
   가. 대상계약선택 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.17(목) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 22:10  --> 최동훈 부장 복귀, 현용 기획팀 투입 

- 교보 홈 리뉴얼 Prj
1. 보험금 청구(RS)[기업보험>퇴직보험] 
 1)  퇴직보험개별청구(Tab) 
 1-1) 청구대상자 추가 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivInsuReqAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_indivInsuReqAction.java --> EW10EW11odCall    
CYCIRIRS_indivInsuReq_lst.jsp 

 1)  퇴직보험개별청구(Tab) 
 1-2) 청구서입력 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqRsltAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_indivReqRsltAction.java --> EW10EW15odCall 
COCYRIRS_indivReqRslt_viw.jsp 

 1)  퇴직보험개별청구(Tab) 
 1-1) 청구내역 확인  
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_paidParticularAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_insuReqDetailAction.java -->   
CYCIRIRS_insuReqDetail_viw.jsp 
  
 1)  퇴직보험개별청구(Tab) 
 1-1) 지급예정일 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqReserveAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqReserveAction.java -->   
CYCIRIRS_indivReqReserve_viw.jsp 

 1)  퇴직보험개별청구(Tab) 
 1-1) 지급 예정일 예약  
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqSelectAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqSelectAction.java --> EW10EW13odCall 
CYCIRIRS_indivReqSelect_lst.jsp 

 1)  퇴직보험개별청구(Tab) 
 1-1) 지급 예정일 예약  
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqRsltAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqSelectAction.java --> EW10EW13odCall 
CYCIRIRS_indivReqSelect_lst.jsp 

 1)  퇴직보험개별청구(Tab) 
 1-1) 청구서 출력 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_indivReqPrintAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIIS_indivReqPrintAction.java --> EW10EW14odCall 
CYCIRIRS_indivPrint_pop.jsp 
------------------------------------------------------------------------------------------ 
  
 1)  퇴직보험일괄청구(Tab) 
 2-1) 일괄청구 대상자 엑셀파일 전송 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendInitAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendInitAction.java -->   
CYCIRIRS_bundleSend_ins.jsp 

 2-2) 전송결과 확인/수정 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java --> EW10EW15odCall 
CYCIRIRS_bundleSendOK_viw.jsp 

 2-3) 청구내역확인 및 일괄계산 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java --> EW10EW15odCall 
CYCIRIRS_bundleSendOK_viw.jsp 

 2-4) 지급 예정일 예약 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp 

 2-5) 청구서 출력 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp  
------------------------------------------------------------------------------------------ 

 1)  전출신청(Tab) 
 2-1) 청구대상자 추가 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferReqAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleReqSelectAction.java --> EW10EW150odCall  
CYCIRIRS_transferReq_lst.jsp 
  
 2-2) 전출신청리스트 확인 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferReqSelectedAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_transferReqSelectedAction.java --> EW10EW151odCall   
CYCIRIRS_transferReqSelected_lst.jsp 

 2-3) 전출사항 입력 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_transferInsertedAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_transferInsertedAction.java --> EW10EW152odCall  
CYCIRIRS_transferInserted_ins.jsp 

 2-4) 전출일 예약 
com.kyobo.kblcm.company.cy.ri.rs.action.COCYRIRS_bundleSendAction.java 
--> kblcm.cy.ci.ri.rs.action.CYCIRIRS_bundleSendAction.java -->   
CYCIRIRS_bundleSendOK_viw.jsp 
==============================================================================================================

- ERWIN 정리 
사이버창구_기업(진태만).erwin 
종업원복지 제외 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.18(금) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 20:50  --> 현용, 태용 만남(종각 소주집 1, 2차) 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 

 1-1) 계약상세내용  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 
  
 1-2) 가입특약조회 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp 
------------------------------------------------------------------------------------------ 

- 자바 스크립트 오류 
에러 내용: 개체가 필요합니다.(위치: 1번 줄) 
원인: 정상적인 스크립트 호출을 못 함(보통 호출한 함수가 소스 보기에서 안 보임) 
==============================================================================================================

- myLG070 전화 요금 조회 
http://hi.lgdacom.net 
고객번호: 9002461346 
==============================================================================================================

- 퇴직보험 인터페이스 회의(15:30 ~ 16:20) 
1. 퇴직보험 인터페이스 개발 사항 정리 
 1) 신규 개발 건 
보험대상자 명부정리(엑셀 업로드, 다운로드) 
 2) 변경(추가) 건 
  가. 퇴직보험 결재 등록 
   - 추계액 변경 
  나. 사용자 등록 
   - 휴대폰 번호 추가 
  다. 가입취소 세부내역 
   -  추가가입자의 경우 계약일자를 신보험의 제도일자로 가져올 것 
2. 향후 개발 방향 
 1) K-ONE 이창용 과장님이 인터페이스 개발 업무를 파악하고  
     신규 업무에 대해서는 상호 긴밀한 협의를 통해서 진행   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.19(토) 작업 ■■■■■■■■■■■■■■■
---> 08:50 ~ 12:00  --> 토요 근무, 대규애 돌잔치(서울 강수사)

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
<a href="javascript:account_view('<s:property value="%{#inq_stat.count+1}"/>', '<s:property value="%{#row.varamtYn}"/>')"> 
<a href="javascript:" onclick="top.layers.create({id:'layer_apply', src:'/KBLCM/cy/CYSIII_account.do',width:600});">[새창 띄우기_iframe TEST]</a> 
  
 1-1) 계약상세내용  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 

 - CYSIII_accountAction.java 파일에서 
hostMessage = "N"; 
varamtYn = "N"; 
contractDate = ""; 

//계약사항 상세조회(resultMap) 
//resultMap.put("cysiii_accountVO", "NO DATA");   // 계약사항 리스트 
resultMap.put("cysiii_accountVO", cysiii_accountVO);   // 계약사항상세 
resultMap.put("hostMessage", hostMessage);              // 에러메시지 
resultMap.put("varamtYn", varamtYn);      // 변액보험여부 
resultMap.put("contractDate", contractDate);   // 계약일자  

- 에러 내용 제어 
if (call.getMSG_CODE().equals("0000")) { 
} else { 
throw new KBLCMSysException("SVM00003");  
} 

 1-2) 가입특약조회 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y224A005odCall 
CYSIII_accountSpec_viw_pop.jsp  
==============================================================================================================

- 자동차 정기 검사(태용이 한테 시킴 ==>55,000원) 
1. 기간: 2008.07.16 ~ 09.12  
2. 구비서류: 자동차등록증(신청서 없음) 
책임보험영수증(검사를 받는 당일까지 유효한 증명서) 
3. 사전예약: 50,800원(총: 53,000원)   
-> 정기검사(20,000원), 부하검사(33,000원)  
4. 검사소: 현대자동차관악정비센터(02-877-0024): 봉천역 근처  
5. 참조: 교통안전공단(http://www.ts2020.kr 
검사유효기간: 2년 
------------------------------------------------------------------------ 
- 정밀검사 결과표 
접수번호: 제 A019-20080719-0020 호 
주행거리: 100.981 km 
종합판정: 적합 
유효기간: 2008-08-14 ~ 2010-08-13 
상신정비공업(주) 
검사원: 
 1) 관능 및 기능(권성훈) 
 2) 배출가스(김지석) 
 3) 책임자(송영국)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.20(일) 작업 ■■■■■■■■■■■■■■■■
---> 10:40 ~ 19:40  --> 일요 근무 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp 
  
 YC122usCall call = new YC122usCall(); 
  
 1-1) 계약상세내용  
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.si.ii.action.CYSIII_accountAction.java --> Y2010102odCall 
CYSIII_account_viw_pop.jsp 

Y2010102odCall call = new Y2010102odCall();  ==> 에러  
==============================================================================================================

1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
  - 콤보 박스 만들기 에러 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
==============================================================================================================

- 뱃살, 주식(LG전자, 우리금융) 
- 선(대규 처(*)) 
오소연 H.P) * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.21(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00   --> 김정재 과장 투입(사이버 창구) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
  
  - 콤보 박스 만들기 에러 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
:[bankHM_hm]{NO2=002, NO1=001} 

[bankbookList2][2000008] 
==============================================================================================================

 //계약사항조회(resultMap) 
resultMap.put("tsInd", tsInd);               // CWAG-MICROSEC 
resultMap.put("focus", focus);               // 페이지 이동시 화면의 포커스 설정 
resultMap.put("accountList", cmlistvo);      // 계약사항 리스트 VO 
resultMap.put("hostMessage", hostMessage);   // 에러메시지  
==============================================================================================================

 - 팬택 SKY IM-U300K (번호이동-신규)  
http://www.hmall.com/front/shItemDetailR.do?ReferCode=250&ItemCode=2008j40981&service_id=elecdn  
 - 팬택 SKY IM-U300K (번호이동-약정)  
WCDMA(3G) / 지상파DMB / 폴더형 / 2.2형 / 26만컬러 / 200만화소 / MP3 / 전자사전기능 / SKY Icon / 글로벌로밍  
/ 투폰기능 / 네온사인폰<...   135,000원 ~ 180,538원 
http://www.gmarket.co.kr/challenge/neo_goods/goods.asp?goodscode=133830277&GoodsSale=Y&jaehuid=200002657&service_id=elecdn  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.22(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 선동호 차장 철수, 개발팀 회식 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 

  //통장조회 
HashMap bankHM = getBankBook(url, "6909301041614"); --> 이전꺼 
bankHM_H = new HashMap<String,String>(); 
bankHM_H = getBankBook_H(url, "6909301041614");  //통장조회(resultMap)  --> combox 용 

 - 콤보 박스 만들기 에러 
:[mapCourseEx2]{C2=Spring, C3=iBatis, C1=Struts2, C4=Acegi} 
:[bankHM_H]{bankBookList=[{NO=001}, {NO=002}]} 
:[bankHM_hm]{NO2=002, NO1=001}  
[bankHM_New]{NO2=002, NO1=001} 
==============================================================================================================

- 교보생명 개발샘플 
http://127.0.0.1:8080/KBLCM/examples/certLogin.do  
http://127.0.0.1:8080/KBLCM/examples/ajaxSample.do   
http://127.0.0.1:8080/KBLCM/ir/subMain.do  
http://127.0.0.1:8080/KBLCM/ir/irkokuauAuditReport.do?docDiv=0 
==============================================================================================================

 - 퇴직보험 로그인 관련 회의(14:00 ~ 14:50): 임형성 차장, 서지희씨, 최현진 과장 
1. 퇴직보험, 기업복지 ==> 결재시 로그인 
2. 단체보험 ==> 통합? -> 추후 결정 
==============================================================================================================

- 생애설계 회의(14:00 ~ 14:50) 
1. 선동호 차장 대신으로 참석 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.23(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 교보 홈 리뉴얼 Prj
1. 대상계약선택[기업보험>퇴직보험] 
http://127.0.0.1:8080/KBLCM/cy/CYCIRITC_selTrgCon.action 
com.kyobo.kblcm.cyber.in.cm.action.CYFU_fundAction.java 
--> kblcm.cy.ci.ri.tc.action.CYCIRITC_selTrgConAction.java --> YC122usCall 
CYCIRITC_selTrgCon_lst.jsp 

- import com.kyobo.kblcm.company.vo.CO_loginVO; 
==> import kblcm.common.web.login.context.CorpLoginContext;  //기업고객 로그인 세션 
 //CYCI_loginVO sessionVO = this.getSession(request, CO_ssNm); 
-> CorpLoginContext sessionVO = getCyberSessionContext2();   //기업고객 로그인 세션  
==============================================================================================================

 - 기업보험(사이버창구) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_login.do 
 - 간편조회(사이버창구) 
http://127.0.0.1:8080/KBLCM/cy/CYCOLO_simple_login.do 
 - CEO 관련뉴스 
http://127.0.0.1:8080/KBLCM/in/ceoNewslist.do 
==============================================================================================================

 - 칼럼명 변경 
 1. TB_COWFM001기업복지 업무 진행현황() 
단체(CORP_NM --> ORG_NM) 
결재(STTL  --> APPLV)  
접수 구분 코드(RCT_TYP_CD --> RCT_GB_CD)  
---------------------------------------------------------- 
settlement: 결제(신용카드 결제) 
approval: 결재(승인) 
==============================================================================================================

- [주간업무 2008년 7월 4째주]  
★ 금주 업무 실적(07.21 ~ 07.25)
1. HOST 인터페이스 작업 
 1) 간편조회  
 2) 기업보험(퇴직보험) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(07.28 ~ 08.01)
1. 개발작업(화면) 
 1) 간편조회 
==============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2008.07.24(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ---> 맥주(개발팀: 변지환 대리 <-> 김재정 과장) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
==============================================================================================================

http://127.0.0.1:8080/KBLCM/cy/cypifufiFundRestLst.do 
http://127.0.0.1:8080/KBLCM/ir/irkokuauAuditReport.do?docDiv=0 
==============================================================================================================

- JCF taglib 설명(struts) 
http://ammoguy.springnote.com/pages/1113614#toc_16 
http://struts.apache.org/2.x/docs/tag-reference.html 
==============================================================================================================

- 기업보험 기획자 변경 
김태영 과장 *   메일: *@*.* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.25(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 21:00   --> 현용, 임모 만남(정 이사 조언) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
------------------------------------------------------------------------------------------------------------------ 

- 콤보박스 선택(계좌번호) 
<tr> 
	<td background="/images/kblcm/common/search_boxbg02.gif"><b>계좌번호7</b>&nbsp;&nbsp;  
	<s:property value="resultMap.bankbookList2"/><!-- 고객번호 --> -</td> 
	<td><s:select onchange="javascript:getAccountNo(this);" headerKey="" headerValue="- 선택 -"  
	name="checkedEx2" list="bankHM_H"/><!-- 계좌번호 --> </td> 
	<td><s:select headerKey="" headerValue="- 선택2 -"  
	name="checkedEx3" list="bankHM_H"/><!-- 계좌번호2 --> </td> 
</tr>   
------------------------------------------------------------------------------------------------------------------ 

[JSON]{"code":null,"message":null,"outputMessage":{"codelist":[{"NO":"00","NO_NM":"(1000) 예수금"}, 
{"NO":"01","NO_NM":"(8012) 한국삼성그룹.."},{"NO":"02","NO_NM":"(8019) 미래에셋 아.."}, 
{"NO":"03","NO_NM":"(8020) 하나UBS일.."},{"NO":"04","NO_NM":"(9003) 교보Morn.."}, 
{"NO":"05","NO_NM":"(3013) 교보Tomo.."},{"NO":"06","NO_NM":"(8020) 하나UBS일.."} 
,{"NO":"07","NO_NM":"(5018) KTB에버스.."}],"bankHM_H":{"NO2":"002","NO1":"001"}}}  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.28(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:10   --> 술(현용, 손과장), 노래방, (주)요비스 철수 결정(최부장) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회 
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp 
--------------------------------------------------------------------------------------------------------- 

<script type="text/javascript" src="/KBLCM/js/service/cy/ajaxCombo.js"></script> 
&nbsp;<script defer="true" language="javascript">   
// Ajax 호출 스크립트 함수 
kbl.extJS.initializeApplication(kbl.ajaxCombo.list.do_change_AccountNo, kbl.ajaxCombo.list); 
</script> 

- 콤보박스 선택(계좌번호) 
<tr> 
<td background="/images/kblcm/common/search_boxbg02.gif"><b>계좌번호</b>&nbsp;&nbsp;  
<s:property value="resultMap.str_CUST_NO"/><!-- 고객번호 --> -</td>   
<td><select name="cmbAccountNo" style="width:180" onChange="kbl.ajaxCombo.list.do_change_lar();"> 
<!-- 계좌번호 -->   
<option value="">- 선택 -</option> 
</select> -</td>  
<td><select name="cmbAccountNo2" style="width:180"><!-- 계좌번호2 -->   
<option value="">- 선택 -</option> 
</select></td> 
</tr> 
------------------------------------------------------------------------------ 
  
[JSON]{"code":null,"message":null,"outputMessage": 
{"str_CUST_NO":"2000008","codelist":[{"NO":"001","NO_NM":""},{"NO":"002","NO_NM":""}]}}  

[JSON]{"code":null,"message":null,"outputMessage":{"codelist":[{"NO":"00","NO_NM":"(1000) 예수금"}, 
{"NO":"01","NO_NM":"(8012) 한국삼성그룹.."},{"NO":"02","NO_NM":"(8019) 미래에셋 아.."}, 
{"NO":"03","NO_NM":"(8020) 하나UBS일.."},{"NO":"04","NO_NM":"(9003) 교보Morn.."}, 
{"NO":"05","NO_NM":"(3013) 교보Tomo.."},{"NO":"06","NO_NM":"(8020) 하나UBS일.."} 
,{"NO":"07","NO_NM":"(5018) KTB에버스.."}],"bankHM_H":{"NO2":"002","NO1":"001"}}}   
==============================================================================================================

-- 테이블 칼럼 네임 조회(DB2) 
SELECT a.colno, a.tabname, b.remarks, a.colname, a.remarks,  
a.typename'('rtrim(char(a.length))')' AS DATA_TYPE   
FROM syscat.columns a, syscat.tables b                                                          
WHERE a.tabschema='INST01'  
  and a.tabname=b.tabname 
  and a.tabname like 'TB_CO%' 
ORDER BY 2,1 
==============================================================================================================

\\10.33.165.171\01.개발\인터페이스 정리\인터페이스 정리_사이버창구.xls 
==============================================================================================================

- 개인 일정 면담 
SK 김승철 과장(품질관리:QAO) ==> 총 44본 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.29(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:50   --> 이은화 과장 투입(사이버창구), 맥주(기획팀, 현용, 이은화 과장) 

- 교보 홈 리뉴얼 Prj
1. 인터페이스 정리_사이버창구.xls 작업 
2. 사이버창구_기업(진태만).erwin 수정 
==============================================================================================================

- GPass 사용법(무료 메신저 프로그램) 
GPass.zip 압축을 풀고 --> GPass-3.4.4.exe 더블 클릭  --> GPass 창이 뜸 
빈창의 마우스 오른쪽 클릭 --> Add Application to GPass 
Application name: 01. 네이트온 
Program Path: C:\Program Files\NATEON\BIN\NATEON.exe 
Working Directory: C:\Program Files\NATEON 
-----------------------------------------------------------------------  
연결이 안 될시.. 
u.exe 실행 후 다시 실행 하면 됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.30(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:10   --> 1차 술집, 2차 맥주집, 3차 횟집(현용 생일:태용, 임모, 정이사) 

- 교보 홈 리뉴얼 Prj
1. 펀드계좌현황조회
 2) 거래내역조회 
http://127.0.0.1:8080/KBLCM/cy/CYSIFI_myTrade_lst.do 
com.kyobo.kblcm.cyber.fu.action.CYFU_fundAction.java 
--> kblcm.cy.si.fi.action.CYSIFI_fundAction.java(KBFMCallCenterServletl) 
CYSIFI_myTrade_lst.jsp   

<kbl:formatDate value="%{resultMap.outdata}" outfmt="yyyy.MM"/> </k:codeSelect>   
  
- /Servers/Tomcat v6.0 Server at localhost-config/server.xml 파일에서 
<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443" URIEncoding="UTF-8"/> 

http://127.0.0.1:8080/KBLCM/htmlCode/사이버창구/01간편조회/UI_CY_0001_home_사이버창구_간편조회_보험계약조회_container.html 
http://10.33.165.191/KBLCM/  

http://10.33.165.191/KBLCM/0_%ec%82%ac%ec%9d%b4%eb%b2%84%ec%b0%bd%ea%b5%ac_cy/01%ea%b0%84%ed%8e%b8%ec%a1%b0%ed%9a%8c/ 
==============================================================================================================

- 사이버창구 HTML 도착(15:00) 
1. 메인 프레임 세팅 
==============================================================================================================

- tiles-cy.xml 추가 
/KBLCM/WebContent/WEB-INF/web.xml 파일에서 추가 함 
<context-param> 
<param-name> 
org.apache.tiles.impl.BasicTilesContainer.DEFINITIONS_CONFIG 
</param-name> 
<param-value> 
/WEB-INF/conf/tiles/tiles.xml,   
/WEB-INF/conf/tiles/tiles-cy.xml,    ========>  tiles-cy.xml 파일 추가 
/WEB-INF/conf/tiles/tiles-rm.xml 
</param-value> 
</context-param> 
==============================================================================================================

- 김은아 휴대폰(조카): 상환이 한테서 구입(24개월 할부) 
자동이체 계좌: (농협)632-02-044472 예금주: 진선숙 
주소: 전남 여수시 학동 신동아 파밀리에 107동 405호 
희망번호: * 
조건: 2년 약정 
요금제: 청소년 요금(만 7천원) 
------------------------------------------------------------------------------ 
총 50,000원(가입비 분납을 원할 경우 20,000원)m 
가입비 송금 계좌: (신한은행)459-13-034957 홍상환(가입비 5만원 송금) 
팩스번호: 055-754-1183~4 
------------------------------------------------------------------------------ 
 - 팬택 SKY IM-U300K (신규) 
http://www.hmall.com/front/shItemDetailR.do?ReferCode=250&ItemCode=2008j40981&service_id=elecdn 
==============================================================================================================

- 개인 일정 면담 
정이사, SK 김승철 과장(품질관리:QAO) ==> 8월 28일(금) 종료 
개발자 13명 투입 예정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.07.31(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 22:30   --> 교보 홈 리뉴얼 Proj 전체 회식(고기집, 노래방, 룸) 

- 교보 홈 리뉴얼 Prj
1. 보험계약조회(II)[간편조회] 
 1) 보험계약사항(Tab)   
com.kyobo.kblcm.cyber.in.cm.action.CYINAM_accountAction.java 
kblcm.cy.si.ii.action.CYSIII_accountAction.java --> YC122usCall 
CYSIII_main01.jsp, CYSIII_account_tab01.jsp  
==============================================================================================================

- java script 에러 
에러 내용: "kbl"이(가) 정의되지 않았습니다. 
원인:  
1. 실제 js 테그 경로를 못 찾음(파일 경로 확인) 
2. 파일 추가 
<s:include value="/js/include.jsp" /> 
<script type="text/javascript" src="/KBLCM/js/service/cy/CYSIII_account_lst.js"></script> 
3. kbl 테그 추가 
<%@ taglib prefix="kbl" uri="/kbl-tag" %> 
4. include 일 경우 안 먹음(직접 등록 하거나 인식하는 것을 확인할 것) 
<s:include value="/js/include.jsp"/> 
<script type="text/javascript" src="/KBLCM/js/service/cy/CYSIII_account_lst.js"></script> 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
