

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// WS5 Flow 분석 //----------------------------------/ 2020.07.08(수) /-----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


A. 최초 접근 처리(세션이 없을 경우) ●●● 
1. http://localhost:8080
=================================================================================================

2. 최초 파일 설정(/Servers/WORKFLOW-config/web.xml)
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://java.sun.com/xml/ns/javaee"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	id="WebApp_ID" version="2.5">
		<!-- Websquare5 연동 설정 -->
		  <welcome-file-list>
			<welcome-file>index.html</welcome-file>
			<welcome-file>index.htm</welcome-file>
			<welcome-file>index.jsp</welcome-file>    	<!--// index.jsp로 시작 @@@ //-->
		</welcome-file-list>
</web-app>	
=================================================================================================

3. \index.jsp 파일에서(/C:\WS5\workspace\WORKFLOW\WebContent\index.jsp)
<%@page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%> 
<%
	response.sendRedirect("/xtouch.do");
%> 
=================================================================================================

4. http://localhost:8080/xtouch.do
=================================================================================================

5. /InitController.java 파일에서
@RequestMapping(value = "/xtouch.do", method = RequestMethod.GET)
public String workFlow(HttpServletRequest request, Model model) throws Exception {
	System.out.println("\n\n 		[/InitController.java] [workFlow()] ==> [######################### [제주은행 모바일 Admin Start] #########################]  "); 
	System.out.println("[/InitController..java] [workFlow()] ==> [TEST_01] [기본 Root Url 처리]" ); 
 
	model.addAttribute("movePage", "/cm/main/login.xml");		// 로그인 화면으로 이동 @@@@
	
	return "websquare/websquare";
}
=================================================================================================

6. 로그인 화면으로 이동
/cm/main/login.xml
==============================================================================================================

7. 로그인 화면(login.xml)에서 
<script type="javascript" lazy="false"><![CDATA[
	/**
	 * 화면 초기 로딩시 수행 스크립트
	 */
	scwin.onpageload = function() {
		console.log("[/login.xml] [onpageload()] ==> [TEST_01] [로그인 화면 로딩...@@@]" );
		
		ibx_empCd.focus();		// 로그인 아이디 포커스
	};
	-------------------------------------------------------------------------------------------------------

	/**
	 * 로그인 버튼 클릭시 실행 - 로그인 처리 트랜잭션 발생
	 */
	scwin.btn_login_onclick = function() {
		console.log("[/login.xml] [btn_login_onclick()] ==> [TEST_01] [로그인 버튼 클릭 이벤트]" );
	 
		com.exeService(
			{"ServiceID":"WF_LOGIN","URL":"/login.do","CryptoYN":"Y"},							// ServiceID: 서비스 ID, URL: 호출할 URL, CryptoYN: 암호 적용여부
			{"EMP_CD":ibx_empCd.getValue(),"PW_DD":sct_password.getValue()},		// EMP_CD: 로그인 사번, PW_DD: 비밀번호  ==>. INPUT 값
			scwin.sbm_Login_submitdone																// 결과 콜백 함수
		);
	};
	
	/**
	 * 로그인 submitdone 스크립트 - 로그인 성공여부 판단, 성공시 메인페이지 이동, 실패시 메세지 처리
	 */
	scwin.sbm_Login_submitdone = function(rtnJSON) {
		console.log("[/login.xml] [sbm_Login_submitdone()] ==> [TEST_01] [콜백] [결과 코드]"+ rtnJSON.ERR_CODE +"[rtnJSON]"+ rtnJSON );
 
		if (rtnJSON.ERR_CODE == "S") {
			com.goHome();
		} else {
			switch (rtnJSON.ERR_CODE) {
				case "E" :
					com.alert(rtnJSON.RTN_MSG);
					break;
				case "E1" :
					com.alert("알수없는 오류 발생");
					break;
				case "E2" :
					com.alert("서버 통신 도중 오류가 발생하였습니다. 잠시후 다시 시도해주시기 바랍니다.");
					break;
			}
		}
	};
]]></script>
	
<w2:anchor outerDiv="false" id="btn_login" ev:onclick="scwin.btn_login_onclick">
	<xf:label><![CDATA[]]>		<!--// LOGIN 버튼 @@@ //-->
	</xf:label>
</w2:anchor>	
==============================================================================================================

9. /LoginController.java 파일에서
@RequestMapping(value = "/login.do")
public @ResponseBody Map login(@RequestBody Map<String, Object> inMap, HttpServletRequest request, HttpServletResponse response) {
	System.out.println("[/LoginController..java] [login()] ==> [TEST_01] [로그인 처리]" ); 
	
	Result result = new Result();
	
	try {
		String genKeyUUID  = (String)inMap.get("genKeyUUID");
		
		// 암복화 관련 대칭키 정보 조회
		GenKey genKey      = GenKey.getInstance();
		String genKeyStr   = genKey.getGenKeyMap().get(genKeyUUID);
		
		Map rtnInitControllerMap = initController.commonService(inMap, request, response);			// initController commonService 호출 @@@@
		
		String RTN_CODE = (String)rtnInitControllerMap.get("RTN_CODE");
		System.out.println("[/LoginController..java] [login()] ==> [TEST_51] [RTN_CODE]"+ RTN_CODE );
		
		if ("-9999".equals(RTN_CODE)) {
			request.getSession().invalidate();
			result.setResult("");
			result.setError("-9999", "로그인실패", "로그인실패");
			return result.getResult();
		}
		
		//결과값이 암호화 되어있어 복화 후 활용한다.
		String OUT_DATA = (String)rtnInitControllerMap.get("OUT_DATA");
		
		OUT_DATA = Result.AESDecrypt(OUT_DATA, genKeyStr);
		System.out.println("[/LoginController..java] [login()] ==> [TEST_61] [OUT_DATA]"+ OUT_DATA );
		
		//Map 변환
		ObjectMapper oMapper = new ObjectMapper();
		Map OUT_DATA_MAP = oMapper.readValue(OUT_DATA, new TypeReference<HashMap<String, Object>>(){});
		
		userInfo = UserInfo.getInstance();
		
		userInfo.setUserId((String)OUT_DATA_MAP.get("USER_ID"));
		userInfo.setUserName((String)OUT_DATA_MAP.get("USER_NM"));
		userInfo.setUserAllPorc((String)OUT_DATA_MAP.get("USER_ALL_PROC"));
		
		List<Map> userAuthList = (List)OUT_DATA_MAP.get("authInfo");
		userInfo.setAuthInfo(userAuthList);
		
		List<Map> userProList  = (List)OUT_DATA_MAP.get("procInfo");
		userInfo.setProcInfo(userProList);
		
		userInfo.setLogin(true);

		return rtnInitControllerMap; 
	}
	System.out.println("[/LoginController..java] [login()] ==> [TEST_91] [result.getResult()]"+ result.getResult() );
	// [/LoginController..java] [login()] ==> [TEST_90] [rtnInitControllerMap]{RTN_CODE=, ERR_CODE=S, RTN_MSG=, CryptoYN=Y, OUT_DATA_TYPE=String, OUT_DATA=b93d5992e5d0b93ade20ffa171b536e2f44c814ac623aae40c9ad4e8afe952beb75e72cfcaaf8ff47688e52c826f22e6e7c0f51b8f19fbdbdc50b428969b0db587763515c844511dcb4bc2f6f3b5cca0b097961793c1068501083193e0e46c3f6374a9ccae445f83eabb12eb48e46fc5f56c13eb2fe33cd49b030d0f686f2d3ea414548a5d69badcd042d182ba618b55977f419ff3dac542ccc05999054c2ac9eb7510c5157e3fd1f736c3992b401f8da173dedc7f40f130801aa36ce05a6fa870d3e9552bcdeb1184b13a307496051c91dacb0a24430ac98d850a9e249549647dd704c09b21b85cb74cc9fc93d7076e69f4139d182bd5d35db8c4972e3a5ee663fb1aad475851ba57a10d792adac3678443f2345fe792aa3e43acc6c0fafb7e4115164ea65582d95587e5979712b61f9f3c678dc7e6c2a969248877eea0f00cb2a051e70c67399c083f5da95695052bd69e862a1b97a7bf290d1c842b55b9b72511eb55f520c1db2cdc3fe989971a7b79ce17f7773d1150254ead92278f85635a889806fe1725d2dffabc23ace828eed9ec7c3eda047284eadb66666350513aab628a8d74799061a5ebe9396ade4fe2759c228421a87b8482f419db42c4df85752cd65d32564e0bc47482ad9a256b2b455d43b8510b678e95013af2aa913208c208d8d6c2074ec643736515b0d49e492c9d20b029b9ca9469e5c6eb4e1c38057e414e59bf0abd61d6c7e97c244a161be7fbe35455e93d8a6af2d6246190f118fae1860e25b481f3ed6119b21f596649b5044315f2baa9144b228596f6bc94c52ac04275bf489a9ee20b8f72e9f96ecedbed164754459ded5cf92e2dd46edff982e355696719121970d46066ad5fb5afd943f1d20faf0211d855f5ca19726f60d9201f99c622d1922e3e96e7ae507258cf82f2d39421d697dced161d017d6920d20740f7615f1cece42dca7abd6bb51ddf7e37fb6598ceb1fee4e82bbae4497a5fed77b1bc2bf8f252b77c2e94757b3ad5d18a1485ed83ad08119f06ce58e04918c21ebd5be763f9eef9f9f4a6ad91169e22cc990cc2dd53a9bc173200fd50006d4ed3c40a24420a4316250ec311b1a7274c74bb4808590ffe1c6b32e14643231dc230564e25e6dc42f4a401872edb3bd780574ff271d5d67487247fc18d0f0f24050bb95cec218283797fbc017f83077e8966f94ad9b39521af1eb10384bb935fb1cedb09d981c055fe96844e50c8ec75f7f1fab523b23dbd9df41bcc1bdb3f985bbdea7324208e2f57c7be8be31b9947212a79c118084b8eb39e483f0ad02d45769450b5365eedf155e9b4650bcb13c365da9bc04b0e87b91b10b6ba67ab401d2e80c1d71ba9655857287aad974e0f444feef831e889b3e5fd79989a8d8584b08c53dfdf14e159e7a054e9043b1e066b1e2d432aa584ff266f6d83ff941d97437b4cf7c53cf140a6efb8ee85ad75604b86748713241101e8f36a2ee0d81a27b6cc1c6563d24a32902c482b99cc10085e74b38d7edcc674c852ba9724830d72d1e6c69afa8257aae4856f678d7bdcc07d9c4d5794dd6a494131aaebad7b7c111948f60c2922a3fde1126c9f7d5e17db6aff724d0dc442f0f3bed5370dccea60303932d29a00f878f6c71209d9d43bee63d8781b9356b1645fc2627916257b2440ff6f2e86a117eba89dc30748325247b009ced3e981af010c73e5f9b76b1d58c0ae72ed50e0076d1708cdd522341bf9499e2f4860da09f4bd1954b5e3d550c0445277511e81012ac18b17854f5121fee3d2b8322d3fdc17dd2affc96d808dd6d1984c2668ea9e205a9a81aba2da33e5, ERR_MSG=}
	
	return result.getResult();
} 
==============================================================================================================

10. /InitController.java 파일에서
@RequestMapping(value = "/commonService.do", method = RequestMethod.POST)
public @ResponseBody Map commonService(@RequestBody Map inMap, HttpServletRequest request, HttpServletResponse response) {
 
	Result result = null;
	
	//로그인 정보 체크
	try {			
		String genKeyUUID  = (String)inMap.get("genKeyUUID");
		String serviceID   = (String)inMap.get("ServiceID");
		String CryptoYN    = (String)inMap.get("CryptoYN");
		String USER_ID     = (String)inMap.get("USER_ID");
		String USER_NM     = (String)inMap.get("USER_NM");
 
		CommonServiceAbstract commonService = ((CommonServiceAbstract)ctx.getBean(serviceID));
		
		userInfo = UserInfo.getInstance();
   
		//암복화 관련 대칭키 정보 조회
		GenKey genKey    = GenKey.getInstance();
		String genKeyStr = genKey.getGenKeyMap().get(genKeyUUID);
  
		Map IN_DATA = null;
		if ("Y".equals(CryptoYN)) {
			if (inMap.get("IN_DATA") instanceof String) {
				//복화
				String IN_DATA_DESC = (String)inMap.get("IN_DATA");
				IN_DATA_DESC = Result.AESDecrypt(IN_DATA_DESC, genKeyStr);
				//Map 변환
				ObjectMapper oMapper = new ObjectMapper();
				IN_DATA = oMapper.readValue(IN_DATA_DESC, new TypeReference<HashMap<String, Object>>(){}); 
			}
		} else {
			if (inMap.get("IN_DATA") instanceof Map) {
				IN_DATA = (Map)inMap.get("IN_DATA"); 
			}
		}
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("DATA", IN_DATA);
 
		// 서비스 실행(WF_LOGIN_service) @@@
		result = commonService.startService(paramMap);
 
		//서비스 결과값 암화화 필요시 암호화 처리
		if ("Y".equals(commonService.getCrytoYN())) {
			result.setCryptoY();
		}
	
		//결과값 암호화가 필요한경우 암호화 한다.
		result.setResult_AESEncrypt(genKeyStr); 
	}
	System.out.println("[/InitController..java] [commonService()] ==> [TEST_91] [result.getResult()]"+ result.getResult() ); 
	
	return result.getResult();
} 
==============================================================================================================

11. /WF_LOGIN_service.java 파일에서
@Override
/*
 * inData : 화면에서 넘긴 JSON Data
 * */
public Result startService(Map inData) {
	System.out.println("[/WF_LOGIN_service..java] [startService()] ==> [TEST_01] [inData]"+ inData ); 
 
	Result result = new Result();
	
	String PW_DD = (String)((Map)inData.get("DATA")).get("PW_DD");
  
	Map userInfoMap = WF_LOGIN_Dao.selectUserList((Map)inData.get("DATA")); 		// 사용자조회(DB 조회) @@@
 
	userInfoMap.put("USER_PW", "");
	
	List<Map> userAuthList = WF_LOGIN_Dao.selectUserAuthList((Map)inData.get("DATA")); 	// 사용자 권한 조회
  
	List<Map> userProList = WF_LOGIN_Dao.selectUserUseProList((Map)inData.get("DATA")); 	// 사용자 사용 대상 프로세스
 	
	result.setResult(userInfoMap);
	System.out.println("[/WF_LOGIN_service..java] [startService()] ==> [TEST_91] [result]"+ result ); 
	
	return result;
}
==============================================================================================================

12. /WF_LOGIN_mapper.xml 파일에서
<select id="selectUserList" resultType="Map" parameterType="Map">
	/* 로그,인 메인 조회 ==> [/WF_LOGIN_mapper.xml] [selectUserList()] [2020.07.08, by 진태만] */
	SELECT * FROM USER_MAIN 		/* 사용자 메인 TB */
	WHERE USER_ID = #{EMP_CD} AND USE_YN = 'Y'
</select>

<select id="selectUserUseProList" resultType="Map" parameterType="Map">
	/* 사용자 관리 프로세스 정보 조회 ==> [/WF_LOGIN_mapper.xml] [selectUserList()] [2020.07.08, by 진태만] */
	SELECT * FROM USER_USE_PRO 		/* 사용자 관리 프로세스 TB */
	WHERE USER_ID = #{EMP_CD}
</select>

<select id="selectUserAuthList" resultType="Map" parameterType="Map">
	/* 로그,인 권한 조회 ==> [/WF_LOGIN_mapper.xml] [selectUserList()] [2020.07.08, by 진태만] */
	SELECT * FROM USER_AUTH 			/* 사용자 권한 TB */
	WHERE USER_ID = #{EMP_CD}
</select>
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■



B. 최초 접근 처리(세션이 존재할 경우: WFRAME 화면에서) ●●● 
1. http://localhost:8080/main.do
==============================================================================================================

2. /header.xml 에서
scwin.onpageload = function() {
	console.log("[/header.xml] [onpageload()] ==> [TEST_01] [HEAD 화면 로딩...@@@]" );
	
	//직원 정보 및 권한 정보 조회
	com.exeService(
		{"ServiceID":"","URL":"/getUserInfo.do"},		// ServiceID: 서비스 ID, URL: 호출할 URL, CryptoYN: 암호 적용여부
		{"DATA":""},
		function(rtnJSON) {
			if (rtnJSON.ERR_CODE == "S") {
				txt_empNm.setValue(rtnJSON.OUT_DATA.userName);
				gcm._userInfo = rtnJSON.OUT_DATA;
			} else {
				switch (rtnJSON.ERR_CODE) {
					case "E" :
						com.alert(rtnJSON.RTN_MSG, com.logout);
						break;
					case "E1" :
						com.alert("알수없는 오류 발생", com.logout);
						break;
					case "E2" :
						com.alert("서버 통신 도중 오류가 발생하였습니다. 잠시후 다시 시도해주시기 바랍니다.", com.logout);
						break;
				}
			}
		}
	);
};	
==============================================================================================================

3. /LoginController.java 파일에서
@RequestMapping(value = "/getUserInfo.do")
public @ResponseBody Map getUserInfo(@RequestBody Map<String, Object> inMap, HttpServletRequest request, HttpServletResponse response) {
	System.out.println("[/LoginController..java] [getUserInfo()] ==> [TEST_01] [로그인 직원 정보 조회]" ); 
	
	Result result = new Result();
	
	try {
		
		String genKeyUUID  = (String)inMap.get("genKeyUUID");
		
		//암복화 관련 대칭키 정보 조회
		GenKey genKey      = GenKey.getInstance();
		String genKeyStr   = genKey.getGenKeyMap().get(genKeyUUID);
		
		userInfo = UserInfo.getInstance();    // 로그인 세션 체크 @@@@
		
		if (!userInfo.isLogin()) {
			result.setSessionError("-9999", "로그인 정보가 없습니다.", "세션오류");   		 // 로그인 화면으로 이동 @@@@
			return result.getResult();
		} else {
			ObjectMapper oMapper = new ObjectMapper();
			Map<String, Object> userMap = oMapper.convertValue(userInfo, Map.class);
			result.setResult(userMap);
		}
				
		//암호화
		result.setCryptoY();
		
		//결과 암호화
		result.setResult_AESEncrypt(genKeyStr);
		
	} catch (Exception ex) {
		ex.printStackTrace();
		result.setError("-9999", "정보 조회중 오류 발생", ex.getMessage());
	} finally {
	}
	
	return result.getResult();
}
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

