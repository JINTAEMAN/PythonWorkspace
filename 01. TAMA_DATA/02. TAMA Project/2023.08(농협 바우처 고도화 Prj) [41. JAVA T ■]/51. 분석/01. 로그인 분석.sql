

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------// 01. 로그인 분석 //----------------------/ 2022.10.28(금) /-----+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 01. 로그인 분석   ●●●
0. 스프링부트 서버 포트 변경
- /application.yml 파일에서
server:
port: 8080   ==> 9090으로 변경 ■■■
context-path: /Anyfive_E-Brain		==> context-path ■■■ 
=============================================================================================================

1. 01. AnyFive E-Brain 메인
 1) URL ==> http://localhost:9090/Anyfive_E-Brain/?login=1
 
 http://localhost:9090/Anyfive_E-Brain/viewLogin.do   ---> /viewLogin.do 호출 ■■■
==============================================================================================================
  
- /UserController.java 파일에서 @@@
     /**
     * 로그인 화면
     *
     * @param request
     * @param response
     * @param model
     * @return
     * @throws NoSuchAlgorithmException
     * @throws InvalidKeySpecException
     */
    @RequestMapping(value = "/viewLogin.do", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewLogin(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException
    {
       	System.out.println("\n\n [@_TM] ■■■ [/UserController.java] [viewLogin()] ==> [T_01] [로그인 화면(사용자) ■■■ ");
    	
        if (RequestContextUtil.getRequestType() == RequestTypes.AJAX) {
            throw new InvalidSessionException("Invalid Session!");
        }
        logger.debug("METHOD:::"+request.getMethod());
		
        
        System.out.println("[@_TM] ■■■ [/UserController.java] [viewLogin()] ==> [T_91] ");
        
        return "tiles:/common/user/UserLogin";		 /tiles-definitions.xml 파일에서 로그인 화면(/UserLogin.form.jsp)으로 이동 ■■■
    }
==============================================================================================================
 
- /tiles-definitions.xml 파일에서 @@@ 
<!--// tiles 적용(content) ■■■ //-->
<definition name="tiles:/**" extends="common.base">
	<put-attribute name="content.script" value="/WEB-INF/views/{1}.script.jsp" />
	<put-attribute name="content.form" value="/WEB-INF/views/{1}.form.jsp" />
</definition>
===========================================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
 
- /UserLogin.form.jsp 파일에서 @@@ --> /views/common/user/UserLogin.form.jsp
<script type="text/javascript">
	function fnLoginBySloTest()
	{
		console.log("[@_TM] ■■■ [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_01] [로그인 화면에서 SLO 로그인] ■■■ [targetUrl]"+ "${targetUrl}" );
		// [@_TM] ■■■ [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_01] [로그인 화면에서 SLO 로그인] ■■■ [targetUrl]http://localhost:8080/tnspms/?login=1

	  var prx = any.proxy();
	  prx.url("/login.do");		// URL: login.do 호출 ■■■
	  prx.header("ssoLoginTestYn", "1");
	  prx.header("ssoLoginYn", "1");
	  prx.header("slo_p_ota", $('#loginNm').val());
	  console.log("[@_TM] ■■■ [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_20] [로그인 ID]"+ $('#loginNm').val() );

	  prx.on("onSuccess", function() {
		  if (this.result == "OK") {	// 로그인 성공 이면
			any.location().url("<n:text value="${targetUrl}" escape="js" />").replace();		// target Url(http://localhost:8080/tnspms/?login=1)로 이동 ■■■
	 
		  } else if (this.result == "UsernameEmptyValueException") {
			  fnViewLogin();
		  } else if (this.result == "UsernameNotFoundException") {
			  fnViewLogin();
		  } else {
			  fnViewLogin();
		  }
	  });
		prx.on("onError", function() {
		  this.error.show();
	  });

	  prx.execute();
	}
</script>

<div class="loginarea_body">
	<div class="loginbox">
		<ul class="login_input">
			<li>
				<input type="text" alt="LOGIN ID" placeholder="아이디를 입력해주세요." bind="cond" id="loginNm" tabindex="1" />
			</li>
			<li>
				<input type="password" alt="PASSWORD" placeholder="비밀번호를 입력해주세요." bind="cond" id="loginPassword" tabindex=2 />
			</li>
		</ul>
		<button type="button" class="btn_login" onclick="javascript:fnLoginBySloTest();" tabindex="3">Bypass Login</button>  <!--// Bypass 로그인 버튼[22.09.30, by 진태만]  ■■■ //-->
	</div>
</div>		 
===========================================================================================================================

- /UserLoginProvider.java 파일에서 @@@
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException
    {
        System.out.println("\n\n [@_TM] ■■■ [/UserLoginProvider.java] [authenticate()] ==> [T_01] [로그인]" );

        HttpServletRequest request = RequestContextUtil.getRequest();
        Authentication authenticate = null;

        if ("1".equals(request.getHeader("ssoLoginYn"))) {

            System.out.println("[@_TM] ■■■ [/UserLoginProvider.java] [authenticate()] ==> [T_02] [loginNm]"+ loginNm );

            UserDetails user = this.userLoginService.loadUserBySso(loginNm);  // USER_ID 조회
            authenticate = super.createSuccessAuthentication(user, authentication, user);
            System.out.println("[@_TM] ■■■ [/UserLoginProvider.java] [authenticate()] ==> [T_02] [user]"+ user );
		}

        return authenticate;
    }
===========================================================================================================================

- /UserLoginServiceImpl.java 파일에서 @@@
    public LoginUser loadUserBySso(String username)
    {
        System.out.println("\n\n [@_TM] ■■■ [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_01] [로그인]" );

        if (StringUtils.isEmpty(username)) {
            throw new UsernameEmptyValueException("SSO Username is not found.");
        }
        System.out.println("[@_TM] ■■■ [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_02] [username]"+ username );

        String userId = userMapper.readUserIdBySsoKey(username);    // USER_ID 조회
        System.out.println("[@_TM] ■■■ [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_51] [userId]"+ userId );

        if (StringUtils.isEmpty(userId)) {
            throw new UsernameNotFoundException("SSO User \"" + StringUtils.defaultIfEmpty(username, "") + "\" is not found.");
        }

        return this.getLoginUser(userId, "SSO");
    }
===========================================================================================================================

- /UserMapper.xml 파일에서 @@@
<!-- USER_ID 조회 - SSO 키(사번 등) -->
<select id="readUserIdBySsoKey" resultType="java.lang.String">
   /* [@_TM] USER_ID 조회 ==> [/TbPrjctMasterMapper.xml.readUserIdBySsoKey()] [22.10.28, by 진태만] */
	<![CDATA[
		SELECT SU.USER_ID
		FROM   TB_SYS_USER SU
		INNER JOIN TB_COM_PERSON_USER CPU ON CPU.USER_ID = SU.USER_ID
		INNER JOIN TB_COM_PERSON CP ON CP.PERSON_ID = CPU.PERSON_ID
		WHERE (CP.EMPL_NO = #{ssoKey} OR SU.LOGIN_NM = #{ssoKey})
	]]>
</select>
===========================================================================================================================

- /MainController.java 파일에서 @@@
// target Url(http://localhost:8080/tnspms/?login=1)로 이동 ■■■
    /**
     * 메인 화면
     *
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewMain(Model model)
    {
        HttpServletRequest request = RequestContextUtil.getRequest();

        if ("OK".equals(request.getSession().getAttribute("loginCheck"))) {

            userLoginService.updatePasswordError("Success", SessionContextUtil.getLoginUser(LoginUser.class).getUsername());
            userLoginService.createTbSysUserLogin(SessionContextUtil.getLoginUser(LoginUser.class).getUserId(), SessionContextUtil.getLoginUser(LoginUser.class).getUsername());

            if (request.getSession().getAttribute("menu_type") != null) {
                String sloMenuId = "0";
                if (!sloMenuId.equals(request.getSession().getAttribute("menu_type").toString())) {
                    sloMenuId = userService.readSloMovePath(request.getSession().getAttribute("menu_type").toString(), SecurityContextUtil.getUserReachableAuthorities());
                }

                model.addAttribute("sloMenuId", sloMenuId);
            }
            request.getSession().setAttribute("loginCheck", "COMP");
        }

        RequestContextUtil.setLocale((String) SessionContextUtil.getAttribute("userLocale"));
        model.addAttribute("adminYn", adminYn);
		
        return "tiles:/common/main/Main";	 // ==> /Main.script.jsp,  /Main.form.jsp 파일 호출 ■■■
    }
===========================================================================================================================
	
- /tiles-definitions.xml 파일에서 @@@
<!--// tiles 적용(head, content) ■■■ //-->
<definition name="tiles:/common/main/*" template="/WEB-INF/views/common/layout/LayoutCommonMain.jsp">
	<put-attribute name="head.meta" value="/WEB-INF/views/common/layout/head/LayoutHtmlHeadMeta.jsp" />
	<put-attribute name="head.script" value="/WEB-INF/views/common/layout/head/LayoutHtmlHeadScript.jsp" />
	<put-attribute name="content.script" value="/WEB-INF/views/common/main/{1}.script.jsp" />
	<put-attribute name="content.form" value="/WEB-INF/views/common/main/{1}.form.jsp" />
</definition>
===========================================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
 
- /Main.form.jsp 파일에서 @@@
<link rel="stylesheet" href="<n:url/>/common/main/Main.css" type="text/css">
<script type="text/javascript" src="<n:url/>/common/main/Main.Menu.js"></script>

<link rel="stylesheet" href="<n:url/>/common/main/Main.css" type="text/css">
<script type="text/javascript" src="<n:url/>/common/main/Main.Menu.js"></script>

<div id="header">
    <div class="gnb_top">
        <h1 title="클릭시, 처음화면으로 이동합니다." onclick="javascript:any.reloadPage();">
           R&D Portal
        </h1>
        <div class="gnb_info">
            <dl>
                <dt>유틸리티메뉴</dt>
                <dd>
                    <span class="user_info"><sec:authentication property="principal.personNm" htmlEscape="true" /></span>
                </dd>
                <dd>
                    <button type="button" class="btn_logout" onclick="javascript:fnLogout();" title="클릭시, 로그아웃합니다.">
                        로그아웃
                    </button>
                </dd>
                <dd><!--언어선택-->
                  <div smartip-langselector></div>
               </dd>
            </dl>
        </div>
        <div class="ipims_topmenu">
            <div id="div_topMenu"></div>    <!--// TOP 메뉴 div 설정 ■■■ //-->
        </div>
    </div>
</div>

<div style="overflow:hidden;" fullHeight>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
        <tr>
            <td id="td_leftMenuAll" style="vertical-align:top; display:none;" height="100%">
                <table cellpadding="0" cellspacing="0" class="ipims_leftmenubg" height="100%">
                    <tr>
                        <td id="td_leftMenu" valign="top">
                            <div id="div_leftMenuTitle" class="ipims_lefttitle"></div>
                            <div id="div_leftMenu" style="width:190px;"></div>      <!--// LEFT 메뉴 div 설정 ■■■ //-->
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align:top; width:100%; height:100%;">
                <div id="div_content" style="width:100%; height:100%;"></div>   <!--// CONTENT 메뉴 div 설정 ■■■ //-->
            </td>
        </tr>
    </table>
</div>

<div id="bottom">
    <span class="bottom_tail">COPYRIGHT ⓒ HYOSUNG TNS. ALL RIGHTS RESERVED.</span>
</div>
===========================================================================================================================

- /Main.script.jsp 파일에서 @@@
<script type="text/javascript">
	any.pageType("main");

	any.ready(function() {
		Menu.init({
			top         : "div_topMenu",   		// TOP 메뉴 ■■■
			left        : "div_leftMenu",			// LEFT 메뉴 ■■■
			showHide1   : "td_leftMenuAll",
			showHide2   : "td_leftMenu",
			content     : "div_content"		 // CONTENT 메뉴 ■■■
		});

		Menu.goContent("/common/widget/Widget/viewer");  		// content 메뉴에 뷰어 화면 호출(/WidgetViewerR.form.jsp 파일 호출) ■■■
	}	
===========================================================================================================================

- /Main.Menu.js 파일에서 @@@
 function load(menuKnd, callback)
    {
		console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.jsp]  [load()] ==> [T_01] [전체 목록 조회(메뉴)] ■■■");

        o.ds.init();

        var prx = any.proxy();
        prx.url("/common/menu/MenuLoad/readAllList");   	 // 전체 목록 조회(메뉴)
        prx.param("menuKnd", menuKnd);
        prx.output(o.ds);

        prx.on("onStart", function() {
            setMessage("Menu Loading...");
        });

        prx.on("onSuccess", function() {
             console.log("[@_TM] ■■■ [/Main.Menu.js]  [load()] ==> [T_51] [메뉴_조회 성공) ■■■");

            createTop();		// TOP 메뉴 생성

            if (callback != null) {
                callback.apply(Menu);
            }
        });

        prx.on("onError", function() {
            setMessage("Menu Loading Error...");

            this.error.show();
        });

        prx.option({ loadingbar:false });

        prx.execute();

        return f;
    } 		
	
	function createTop()
    {
        console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_01] [TOP 메뉴 생성] ■■■");

        if (o.area.$top == null) return;

        o.area.$top.html('<table border="0" cellpadding="0" cellspacing="0"><tbody><tr></tr></tbody></table>');

        o.$topMenuTr = o.area.$top.find('tr');
        console.log("[@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_21] [전체 메뉴 수] ■■■"+ o.ds.rowCount() );

        for (var i = 0; i < o.ds.rowCount(); i++) {
            var rowData = o.ds.rowData(i);

            if (rowData.upperMenuId != null && rowData.upperMenuId != "") break;

            var $td = $('<td>').attr("menuId", rowData.menuId).addClass("ipims_topmenu_off").css("white-space", "nowrap").appendTo(o.$topMenuTr);
            console.log("[@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_51] [TOP 메뉴 ■■■] [i_번째]"+ i +"[메뉴ID]"+ rowData.menuId +"[메뉴명]"+ rowData.menuNm +"[메뉴Path]"+ rowData.menuPath );

           $('<a>').attr("href", "javascript:void(" + i + ");").data("menuIndex", i)
                .text(rowData.menuNm).attr("title", rowData.menuNm)
                .appendTo($td)
                .click(function() {
                    console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_60] [TOP 메뉴 클릭 이벤트] [메뉴명] ■■■"+ rowData.menuNm );

                    var idx = $(this).data("menuIndex");
                    if (o.ds.value(idx, "menuPath") != "") {
                        // console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_61] [TOP 메뉴 클릭 이벤트] [메뉴_Path] ■■■"+ o.ds.value(idx, "menuPath").replace("TOP:", "") );

                        go(getIndex(o.ds.value(idx, "menuPath").replace("TOP:", "")));
                    }
                    resetTopMenuOnOff(idx);
                    console.log("[@_TM] ■■■ [/Main.Menu.js]  [createTop()] ==> [T_62] [sub 메뉴 생성_호출 전] ■■■"  );

                    showTopMenuSubList(idx);   // sub 메뉴 생성
                });
        }
    }
</select>
------------------------------------------------------------------------------------------------------------------------------------------------

function showTopMenuSubList(idx)
    {
        console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js]  [showTopMenuSubList()] ==> [T_01] [sub 메뉴 생성] ■■■ [idx]"+ idx );

        if (o.area.$top == null) return;

        if (o.$topMenuSubArea == null) {
            o.$topMenuSubArea = $('<div>').attr("id", "topMsub").hide().appendTo('body').html('<table border="0" cellpadding="0" cellspacing="0"><tbody></tbody></table>');
            o.$topMenuSubTbody = o.$topMenuSubArea.find('tbody');

            o.$topMenuSubArea.mouseenter(function() {
                o.autoHideDisabled = true;
            }).mouseleave(function() {
                o.autoHideDisabled = false;
                hideTopMenuSubList();
            });
        }

        o.$topMenuSubArea.css("left", 0);
        o.$topMenuSubTbody.empty();
        var topMenuId = o.ds.value(idx, "menuId");

        for (var i = 0; i < o.ds.rowCount(); i++) {
            if (o.ds.value(i, "upperMenuId") == topMenuId) {
                var $tr = o.$topMenuSubTbody.children('tr:last');
                if ($tr.length == 0 || $tr.children('td').length >= 5) {
                    $tr = $('<tr>').appendTo(o.$topMenuSubTbody);
                }
                var $td = $('<td>').css({ "vertical-align":"top" }).appendTo($tr);
                if (!$tr.is(':first-child')) {
                    $td.css({ "padding-top":"5px" });
                }
                var $table = $('<table border="0" cellpadding="0" cellspacing="0" width="100%"'
                    + '>').addClass("topsub").appendTo($td);
                var $tbody = $('<tbody>').attr("menuId", o.ds.value(i, "menuId")).appendTo($table);
                $('<td>').addClass("topsubon topline").css({ "white-space":"normal" }).text(o.ds.value(i, "menuNm")).appendTo($('<tr>').appendTo($tbody));
            } else {
                var $tbody = o.$topMenuSubTbody.find('tbody[menuId="' + o.ds.value(i, "upperMenuId") + '"]');
                var $upperTd;
                if ($tbody.length > 0) {
                    $upperTd = $('<td>').attr("menuId", o.ds.value(i, "menuId")).addClass("topline").css({ "white-space":"normal" }).appendTo($('<tr>').appendTo($tbody));
                } else {
                    $upperTd = o.$topMenuSubTbody.find('td[menuId="' + o.ds.value(i, "upperMenuId") + '"]');
                }
                var $div = $('<div>').attr("menu-level", o.ds.value(i, "menuLevel")).appendTo($upperTd);
                $('<a>').attr("href", "javascript:void(" + i + ");").data("menuIndex", i).text(o.ds.value(i, "menuNm")).appendTo($div).mouseover(function() {
                    o.autoHideDisabled = true;
                }).mouseout(function() {
                    o.autoHideDisabled = false;
                }).click(function() {
                    o.autoHideDisabled = false;
                     console.log("[@_TM] ■■■ [/Main.Menu.js] [showTopMenuSubList()] ==> [T_31] [하위 메뉴 클릭 이벤트()] [menuIndex]"+ $(this).data("menuIndex") ); 
                    go($(this).data("menuIndex"));   // go 함수 호출
                });
            }
        }

        if (o.$topMenuSubTbody.children('tr').length == 0) {
            return;
        }

        o.$topMenuSubTbody.children('tr').each(function() {
            $(this).children('td:last').find('td').removeClass("topline");
        });

        var left = o.$topMenuTr.children('td[menuId="' + topMenuId + '"]').offset().left;
        var width = o.$topMenuSubArea.outerWidth();
        var winWidth = $(window).width();

        if (left + width > winWidth) {
            left = Math.max(winWidth - width, 0);
        }

        o.$topMenuSubArea.css("left", left).show(250);
    }

    function go(val1, val2)
    {
         console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js] [go()] ==> [T_01] ■■■");

        var menuIndex = getMenuIndex(val1, val2);

        if (menuIndex != -1 && o.action != null) {
            o.action.apply(this, [menuIndex, o.ds.rowData(menuIndex)]);
        } else {
            go2(val1, val2);
        }
    }
	
	function go2(val1, val2)
    {
        console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js] [go2()] ==> [T_01] ■■■");

        if (arguments.length == 0 && o.currentIndex == null || (o.currentIndex == -1 && val1 == null && val2 == null)) return;

        var menuIndex = getMenuIndex(val1, val2);

        if (menuIndex == -1 && (val1 == null || val1.substr(0, 1) != "/") && (val2 == null || val2.substr(0, 1) != "/")) return;

        if (o.$topMenuSubUL != null && o.$topMenuSubUL.find('li[menuId="' + o.ds.value(menuIndex, "menuId") + '"]').children('ul').length > 0) return;

        var orgCurrentIndex = o.currentIndex;
        var orgTopIndex = o.topIndex;

        o.currentIndex = menuIndex;

        var windowOpenLink = isWindowOpenLink(o.ds.value(o.currentIndex, "menuPath"));
        var topIndex = getTopIndex(o.currentIndex);

        if (o.topIndex != topIndex && windowOpenLink != true) {
            console.log("[@_TM] ■■■ [/Main.Menu.js] [go2()] ==> [T_21] ■■■ [LEFT 메뉴 생성 전 @@@]");
            createLeft(topIndex);	// LEFT 메뉴 생성 함수 호출 ■
        }

        o.topIndex = topIndex;

        if (o.currentIndex == -1) {
            goContent(val2 == null ? val1 : val2);	// 메뉴 생성 함수 호출 ■
        } else {
            if (windowOpenLink != true) {
                expandLeft(o.currentIndex);
            }
            goContent(o.menuPathValue);		// 메뉴 생성 함수 호출 ■
        }

        o.autoHideDisabled = false;

        if (windowOpenLink == true) {
            o.currentIndex = orgCurrentIndex;
            o.topIndex = orgTopIndex;
        }

        resetTopMenuOnOff(o.topIndex);
        hideTopMenuSubList();
    }
	
    function goContent(src)
    {
        console.log("\n\n\n\n [@_TM] ■■■ [/Main.Menu.js]  [goContent()] ==> [T_01] [메뉴 생성] ■■■ [src]"+ src );

        if (arguments.length == 0 || src == null) {
            if (getCurrentIndex() == -1) {
                var $iframe = o.area.$content.children('iframe');
                if ($iframe.length > 0) {
                    $iframe.contents().get(0).location.reload();
                }
                console.log("[@_TM] ■■■ [/Main.Menu.js]  [goContent()] ==> [T_11] [src]"+ src );

                return f;
            }
            src = any.text.replaceAll(o.ds.value(o.currentIndex, "menuPath"), "{#menuId}", o.ds.value(o.currentIndex, "menuId"));
            console.log("[@_TM] ■■■ [/Main.Menu.js]  [goContent()] ==> [T_21] [URL]"+ src );
        }

        if (o.params != null) {
            for (var name in o.params) {
                src = any.text.replaceAll(src, "{#" + name + "}", o.params[name]);
                console.log("[@_TM] ■■■ [/Main.Menu.js]  [goContent()] ==> [T_31] [src]"+ src );
            }
        }
        console.log("[@_TM] ■■■ [/Main.Menu.js]  [goContent()] ==> [T_51] [src]"+ src );

        if (isWindowOpenLink(src) == true) {
            window.open(src);
        } else {
            o.area.$content.empty().append($('<iframe>').attr({ "src":any.url(src), "frameborder":"0", "scrolling":"no" }).css({ "width":"100%", "height":"100%" }));
        }

        return f;
    }
===========================================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


