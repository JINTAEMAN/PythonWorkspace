

����������������������������������������������������������
+------------------------------------------// 01. �α��� �м� //----------------------/ 2022.10.28(��) /-----+
����������������������������������������������������������


- 01. �α��� �м�   �ܡܡ�
0. ��������Ʈ ���� ��Ʈ ����
- /application.yml ���Ͽ���
server:
port: 8080   ==> 9090���� ���� ����
context-path: /Anyfive_E-Brain		==> context-path ���� 
=============================================================================================================

1. 01. AnyFive E-Brain ����
 1) URL ==> http://localhost:9090/Anyfive_E-Brain/?login=1
 
 http://localhost:9090/Anyfive_E-Brain/viewLogin.do   ---> /viewLogin.do ȣ�� ����
==============================================================================================================
  
- /UserController.java ���Ͽ��� @@@
     /**
     * �α��� ȭ��
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
       	System.out.println("\n\n [@_TM] ���� [/UserController.java] [viewLogin()] ==> [T_01] [�α��� ȭ��(�����) ���� ");
    	
        if (RequestContextUtil.getRequestType() == RequestTypes.AJAX) {
            throw new InvalidSessionException("Invalid Session!");
        }
        logger.debug("METHOD:::"+request.getMethod());
		
        
        System.out.println("[@_TM] ���� [/UserController.java] [viewLogin()] ==> [T_91] ");
        
        return "tiles:/common/user/UserLogin";		 /tiles-definitions.xml ���Ͽ��� �α��� ȭ��(/UserLogin.form.jsp)���� �̵� ����
    }
==============================================================================================================
 
- /tiles-definitions.xml ���Ͽ��� @@@ 
<!--// tiles ����(content) ���� //-->
<definition name="tiles:/**" extends="common.base">
	<put-attribute name="content.script" value="/WEB-INF/views/{1}.script.jsp" />
	<put-attribute name="content.form" value="/WEB-INF/views/{1}.form.jsp" />
</definition>
===========================================================================================================================
�����������������������������������������������������������
 
 
- /UserLogin.form.jsp ���Ͽ��� @@@ --> /views/common/user/UserLogin.form.jsp
<script type="text/javascript">
	function fnLoginBySloTest()
	{
		console.log("[@_TM] ���� [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_01] [�α��� ȭ�鿡�� SLO �α���] ���� [targetUrl]"+ "${targetUrl}" );
		// [@_TM] ���� [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_01] [�α��� ȭ�鿡�� SLO �α���] ���� [targetUrl]http://localhost:8080/tnspms/?login=1

	  var prx = any.proxy();
	  prx.url("/login.do");		// URL: login.do ȣ�� ����
	  prx.header("ssoLoginTestYn", "1");
	  prx.header("ssoLoginYn", "1");
	  prx.header("slo_p_ota", $('#loginNm').val());
	  console.log("[@_TM] ���� [/UserLogin.script.jsp] [fnLoginBySloTest()] ==> [T_20] [�α��� ID]"+ $('#loginNm').val() );

	  prx.on("onSuccess", function() {
		  if (this.result == "OK") {	// �α��� ���� �̸�
			any.location().url("<n:text value="${targetUrl}" escape="js" />").replace();		// target Url(http://localhost:8080/tnspms/?login=1)�� �̵� ����
	 
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
				<input type="text" alt="LOGIN ID" placeholder="���̵� �Է����ּ���." bind="cond" id="loginNm" tabindex="1" />
			</li>
			<li>
				<input type="password" alt="PASSWORD" placeholder="��й�ȣ�� �Է����ּ���." bind="cond" id="loginPassword" tabindex=2 />
			</li>
		</ul>
		<button type="button" class="btn_login" onclick="javascript:fnLoginBySloTest();" tabindex="3">Bypass Login</button>  <!--// Bypass �α��� ��ư[22.09.30, by ���¸�]  ���� //-->
	</div>
</div>		 
===========================================================================================================================

- /UserLoginProvider.java ���Ͽ��� @@@
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException
    {
        System.out.println("\n\n [@_TM] ���� [/UserLoginProvider.java] [authenticate()] ==> [T_01] [�α���]" );

        HttpServletRequest request = RequestContextUtil.getRequest();
        Authentication authenticate = null;

        if ("1".equals(request.getHeader("ssoLoginYn"))) {

            System.out.println("[@_TM] ���� [/UserLoginProvider.java] [authenticate()] ==> [T_02] [loginNm]"+ loginNm );

            UserDetails user = this.userLoginService.loadUserBySso(loginNm);  // USER_ID ��ȸ
            authenticate = super.createSuccessAuthentication(user, authentication, user);
            System.out.println("[@_TM] ���� [/UserLoginProvider.java] [authenticate()] ==> [T_02] [user]"+ user );
		}

        return authenticate;
    }
===========================================================================================================================

- /UserLoginServiceImpl.java ���Ͽ��� @@@
    public LoginUser loadUserBySso(String username)
    {
        System.out.println("\n\n [@_TM] ���� [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_01] [�α���]" );

        if (StringUtils.isEmpty(username)) {
            throw new UsernameEmptyValueException("SSO Username is not found.");
        }
        System.out.println("[@_TM] ���� [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_02] [username]"+ username );

        String userId = userMapper.readUserIdBySsoKey(username);    // USER_ID ��ȸ
        System.out.println("[@_TM] ���� [/UserLoginServiceImpl.java] [loadUserBySso()] ==> [T_51] [userId]"+ userId );

        if (StringUtils.isEmpty(userId)) {
            throw new UsernameNotFoundException("SSO User \"" + StringUtils.defaultIfEmpty(username, "") + "\" is not found.");
        }

        return this.getLoginUser(userId, "SSO");
    }
===========================================================================================================================

- /UserMapper.xml ���Ͽ��� @@@
<!-- USER_ID ��ȸ - SSO Ű(��� ��) -->
<select id="readUserIdBySsoKey" resultType="java.lang.String">
   /* [@_TM] USER_ID ��ȸ ==> [/TbPrjctMasterMapper.xml.readUserIdBySsoKey()] [22.10.28, by ���¸�] */
	<![CDATA[
		SELECT SU.USER_ID
		FROM   TB_SYS_USER SU
		INNER JOIN TB_COM_PERSON_USER CPU ON CPU.USER_ID = SU.USER_ID
		INNER JOIN TB_COM_PERSON CP ON CP.PERSON_ID = CPU.PERSON_ID
		WHERE (CP.EMPL_NO = #{ssoKey} OR SU.LOGIN_NM = #{ssoKey})
	]]>
</select>
===========================================================================================================================

- /MainController.java ���Ͽ��� @@@
// target Url(http://localhost:8080/tnspms/?login=1)�� �̵� ����
    /**
     * ���� ȭ��
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
		
        return "tiles:/common/main/Main";	 // ==> /Main.script.jsp,  /Main.form.jsp ���� ȣ�� ����
    }
===========================================================================================================================
	
- /tiles-definitions.xml ���Ͽ��� @@@
<!--// tiles ����(head, content) ���� //-->
<definition name="tiles:/common/main/*" template="/WEB-INF/views/common/layout/LayoutCommonMain.jsp">
	<put-attribute name="head.meta" value="/WEB-INF/views/common/layout/head/LayoutHtmlHeadMeta.jsp" />
	<put-attribute name="head.script" value="/WEB-INF/views/common/layout/head/LayoutHtmlHeadScript.jsp" />
	<put-attribute name="content.script" value="/WEB-INF/views/common/main/{1}.script.jsp" />
	<put-attribute name="content.form" value="/WEB-INF/views/common/main/{1}.form.jsp" />
</definition>
===========================================================================================================================
�����������������������������������������������������������
 
 
- /Main.form.jsp ���Ͽ��� @@@
<link rel="stylesheet" href="<n:url/>/common/main/Main.css" type="text/css">
<script type="text/javascript" src="<n:url/>/common/main/Main.Menu.js"></script>

<link rel="stylesheet" href="<n:url/>/common/main/Main.css" type="text/css">
<script type="text/javascript" src="<n:url/>/common/main/Main.Menu.js"></script>

<div id="header">
    <div class="gnb_top">
        <h1 title="Ŭ����, ó��ȭ������ �̵��մϴ�." onclick="javascript:any.reloadPage();">
           R&D Portal
        </h1>
        <div class="gnb_info">
            <dl>
                <dt>��ƿ��Ƽ�޴�</dt>
                <dd>
                    <span class="user_info"><sec:authentication property="principal.personNm" htmlEscape="true" /></span>
                </dd>
                <dd>
                    <button type="button" class="btn_logout" onclick="javascript:fnLogout();" title="Ŭ����, �α׾ƿ��մϴ�.">
                        �α׾ƿ�
                    </button>
                </dd>
                <dd><!--����-->
                  <div smartip-langselector></div>
               </dd>
            </dl>
        </div>
        <div class="ipims_topmenu">
            <div id="div_topMenu"></div>    <!--// TOP �޴� div ���� ���� //-->
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
                            <div id="div_leftMenu" style="width:190px;"></div>      <!--// LEFT �޴� div ���� ���� //-->
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align:top; width:100%; height:100%;">
                <div id="div_content" style="width:100%; height:100%;"></div>   <!--// CONTENT �޴� div ���� ���� //-->
            </td>
        </tr>
    </table>
</div>

<div id="bottom">
    <span class="bottom_tail">COPYRIGHT �� HYOSUNG TNS. ALL RIGHTS RESERVED.</span>
</div>
===========================================================================================================================

- /Main.script.jsp ���Ͽ��� @@@
<script type="text/javascript">
	any.pageType("main");

	any.ready(function() {
		Menu.init({
			top         : "div_topMenu",   		// TOP �޴� ����
			left        : "div_leftMenu",			// LEFT �޴� ����
			showHide1   : "td_leftMenuAll",
			showHide2   : "td_leftMenu",
			content     : "div_content"		 // CONTENT �޴� ����
		});

		Menu.goContent("/common/widget/Widget/viewer");  		// content �޴��� ��� ȭ�� ȣ��(/WidgetViewerR.form.jsp ���� ȣ��) ����
	}	
===========================================================================================================================

- /Main.Menu.js ���Ͽ��� @@@
 function load(menuKnd, callback)
    {
		console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.jsp]  [load()] ==> [T_01] [��ü ��� ��ȸ(�޴�)] ����");

        o.ds.init();

        var prx = any.proxy();
        prx.url("/common/menu/MenuLoad/readAllList");   	 // ��ü ��� ��ȸ(�޴�)
        prx.param("menuKnd", menuKnd);
        prx.output(o.ds);

        prx.on("onStart", function() {
            setMessage("Menu Loading...");
        });

        prx.on("onSuccess", function() {
             console.log("[@_TM] ���� [/Main.Menu.js]  [load()] ==> [T_51] [�޴�_��ȸ ����) ����");

            createTop();		// TOP �޴� ����

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
        console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_01] [TOP �޴� ����] ����");

        if (o.area.$top == null) return;

        o.area.$top.html('<table border="0" cellpadding="0" cellspacing="0"><tbody><tr></tr></tbody></table>');

        o.$topMenuTr = o.area.$top.find('tr');
        console.log("[@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_21] [��ü �޴� ��] ����"+ o.ds.rowCount() );

        for (var i = 0; i < o.ds.rowCount(); i++) {
            var rowData = o.ds.rowData(i);

            if (rowData.upperMenuId != null && rowData.upperMenuId != "") break;

            var $td = $('<td>').attr("menuId", rowData.menuId).addClass("ipims_topmenu_off").css("white-space", "nowrap").appendTo(o.$topMenuTr);
            console.log("[@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_51] [TOP �޴� ����] [i_��°]"+ i +"[�޴�ID]"+ rowData.menuId +"[�޴���]"+ rowData.menuNm +"[�޴�Path]"+ rowData.menuPath );

           $('<a>').attr("href", "javascript:void(" + i + ");").data("menuIndex", i)
                .text(rowData.menuNm).attr("title", rowData.menuNm)
                .appendTo($td)
                .click(function() {
                    console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_60] [TOP �޴� Ŭ�� �̺�Ʈ] [�޴���] ����"+ rowData.menuNm );

                    var idx = $(this).data("menuIndex");
                    if (o.ds.value(idx, "menuPath") != "") {
                        // console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_61] [TOP �޴� Ŭ�� �̺�Ʈ] [�޴�_Path] ����"+ o.ds.value(idx, "menuPath").replace("TOP:", "") );

                        go(getIndex(o.ds.value(idx, "menuPath").replace("TOP:", "")));
                    }
                    resetTopMenuOnOff(idx);
                    console.log("[@_TM] ���� [/Main.Menu.js]  [createTop()] ==> [T_62] [sub �޴� ����_ȣ�� ��] ����"  );

                    showTopMenuSubList(idx);   // sub �޴� ����
                });
        }
    }
</select>
------------------------------------------------------------------------------------------------------------------------------------------------

function showTopMenuSubList(idx)
    {
        console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js]  [showTopMenuSubList()] ==> [T_01] [sub �޴� ����] ���� [idx]"+ idx );

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
                     console.log("[@_TM] ���� [/Main.Menu.js] [showTopMenuSubList()] ==> [T_31] [���� �޴� Ŭ�� �̺�Ʈ()] [menuIndex]"+ $(this).data("menuIndex") ); 
                    go($(this).data("menuIndex"));   // go �Լ� ȣ��
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
         console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js] [go()] ==> [T_01] ����");

        var menuIndex = getMenuIndex(val1, val2);

        if (menuIndex != -1 && o.action != null) {
            o.action.apply(this, [menuIndex, o.ds.rowData(menuIndex)]);
        } else {
            go2(val1, val2);
        }
    }
	
	function go2(val1, val2)
    {
        console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js] [go2()] ==> [T_01] ����");

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
            console.log("[@_TM] ���� [/Main.Menu.js] [go2()] ==> [T_21] ���� [LEFT �޴� ���� �� @@@]");
            createLeft(topIndex);	// LEFT �޴� ���� �Լ� ȣ�� ��
        }

        o.topIndex = topIndex;

        if (o.currentIndex == -1) {
            goContent(val2 == null ? val1 : val2);	// �޴� ���� �Լ� ȣ�� ��
        } else {
            if (windowOpenLink != true) {
                expandLeft(o.currentIndex);
            }
            goContent(o.menuPathValue);		// �޴� ���� �Լ� ȣ�� ��
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
        console.log("\n\n\n\n [@_TM] ���� [/Main.Menu.js]  [goContent()] ==> [T_01] [�޴� ����] ���� [src]"+ src );

        if (arguments.length == 0 || src == null) {
            if (getCurrentIndex() == -1) {
                var $iframe = o.area.$content.children('iframe');
                if ($iframe.length > 0) {
                    $iframe.contents().get(0).location.reload();
                }
                console.log("[@_TM] ���� [/Main.Menu.js]  [goContent()] ==> [T_11] [src]"+ src );

                return f;
            }
            src = any.text.replaceAll(o.ds.value(o.currentIndex, "menuPath"), "{#menuId}", o.ds.value(o.currentIndex, "menuId"));
            console.log("[@_TM] ���� [/Main.Menu.js]  [goContent()] ==> [T_21] [URL]"+ src );
        }

        if (o.params != null) {
            for (var name in o.params) {
                src = any.text.replaceAll(src, "{#" + name + "}", o.params[name]);
                console.log("[@_TM] ���� [/Main.Menu.js]  [goContent()] ==> [T_31] [src]"+ src );
            }
        }
        console.log("[@_TM] ���� [/Main.Menu.js]  [goContent()] ==> [T_51] [src]"+ src );

        if (isWindowOpenLink(src) == true) {
            window.open(src);
        } else {
            o.area.$content.empty().append($('<iframe>').attr({ "src":any.url(src), "frameborder":"0", "scrolling":"no" }).css({ "width":"100%", "height":"100%" }));
        }

        return f;
    }
===========================================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������


