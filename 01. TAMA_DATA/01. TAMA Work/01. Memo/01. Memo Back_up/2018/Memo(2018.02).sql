

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.02) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.02.01(목) 작업 ■■■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 

- 일본 히스콤 H-PLM 전환 Prj[★]  
- No. 99 결함(修理 日報(수리 일보)	SHU::shu_daily_report.xfdl(Menu: T_3-10-2) ==> 수정 완료[▲▲▲]
1. 부품여부(buhinExistsFlg)가 안보임 
this.fn_setBuhinExistsFlgName = function(buhinExistsFlg)  ==> 사용 안함으로 변경
{
	alert("[/shu_daily_report.xfdl] [fn_setBuhinExistsFlgName()] ==> [TEST_01] [buhinExistsFlg]"+ buhinExistsFlg );  
	// 테스트  ==> 修正: 2018.01.31, by JIN TAE MAN  
	
	if ( buhinExistsFlg == 0 ) {
		return "無";
	} else if ( buhinExistsFlg == 1 ) {
		return "有";
	} else {
		return "";
	}
} 
--------------------------------------------------------------------------------------------------------------

2. 처리: SHU::shu_daily_report_tab_meisai.xfdl 파일에서
 1) buhin_exists_flg 칼럼을 expr:comp.parent.parent.parent.parent.fn_setbuhinexistsflgname(BUHIN_EXISTS_FLG)에서
expr:BUHIN_EXISTS_FLG=='0' ?'無': BUHIN_EXISTS_FLG=='1' ?'有' : '無' 
==============================================================================================================
 
- No. 64 결함(故障?容一?(장비 정비 의뢰 등록)] SEI::sei_kiki_irai.xfdl(Menu: T_5-1)	==> 수정 완료[▲▲▲]
1.  divInfo top을 70을 수정
<!-- <Div id="divInfo" positionstep="2" position="absolute" left="8" top="96" width="1008" height="621"/> -->
<!--// 修正: 2018.02.01, by JIN TAE MAN //--> 
<Div id="divInfo" positionstep="2" position="absolute" left="8" top="70" width="1000" height="645"/>
<!--// 修正[top="70"]: 2018.02.01, by JIN TAE MAN //-->
==============================================================================================================

- No. 74 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 수정 완료 [▲▲▲]
1. Ds 데이타 타입이 BIGDECIMAL 일 때 .toString( 추가해서 비교할 것   ==>  No. 89 결함과 같음
this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);
this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);
 this.divList_grdList_oncellclick = function(obj:Grid,e:nexacro.GridClickEventInfo)
{
	//alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_01]" );  
 
	if (application.gvHybridFlg) {   
		//if ( this.SEARCH_FLG == false ) { 	// 修正[コメントアウト]: 2018.02.01, by JIN TAE MAN 
			var listKokiCd = this.dsList.getColumn(this.dsList.rowposition, "KOKI_CD");  
			var headerKokiCd = this.dsHeader.getColumn(this.dsHeader.rowposition, "KOKI_CD"); 
			alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_21] [listKokiCd]"+ listKokiCd 
				+"[headerKokiCd]"+ headerKokiCd );    
			
			//if ( listKokiCd != headerKokiCd ) {	// 修正: 2018.02.01, by JIN TAE MAN
			if ( listKokiCd.toString() != headerKokiCd.toString() ) {  // 修正: 2018.02.01, by JIN TAE MAN
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_41] @@@---> [fn_getDetail()]" );    
	
				this.fn_getDetail();
			} else {
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_42] @@@---> [this.setStepIndex(2)]");    
	
				// 明細ペ?ジを表示
				this.setStepIndex(2);
			}
		//}
	}
}
==============================================================================================================

- No. 92 결함(交換?象設定(교환 대상 설정)) SET::set_koki_koukan_kanri.xfdl(Menu: T_5-5)  ==>  확인 완료[▲▲▲]
1. 1 건도 체크를하지 않지만 예정 월 일괄 설정 버튼을 누르면 팝업 화면이 표시되어 버린다   
this.fn_callback_search = function(strSvcId, nErrorCode, strErrorMsg)
{
		var nRow = this.dsList.addRow();   
		this.dsList.setColumn(nRow, "KOUKAN_TAISHO_KANRI_FLG_NAME", "0");
		this.dsList.setColumn(nRow, "KOUKAN_YOTEI_YM", "201801");
		this.dsList.setColumn(nRow, "KOUKAN_SAKUSEI_SUMI", "1");
		this.dsList.setColumn(nRow, "SUISHO_RIYU_NAME", "SUISHO_RIYU_NAME"); 
		this.dsList.setColumn(nRow, "KOUKAN_YOTEI_YMD", null);  ==> //e xpr:KOUKAN_YOTEI_YMD != null?"none":"checkbox"
		this.dsList.setColumn(nRow, "KSY_NAME", "DICRU3026N*HP"); 
		this.dsList.setColumn(nRow, "KATA_NEN", "2010"); 
		this.dsList.setColumn(nRow, "KOKI_CD", "2074800");  
}
 
// 予定月一括設定ボタン押下時
this.btnF8_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	// ?象選?チェック
	if (!this.fn_checkSelect()) return;

	this.fn_showYoteiYm();
}

// 選?チェック
this.fn_checkSelect = function()
{
	var selRow = this.dsList.findRow("SELECT", Number(true));
	if (selRow < 0) {
		// ?象を選?してください[대상을 선택하십시오]
		this.gfn_message(13, this.gfn_getLang("G_TAISHO"));
		return false;
	}
	
	return true;
}
==============================================================================================================

- No. 93 결함(交換?象設定(교환 대상 설정)) SET::set_koki_koukan_kanri.xfdl(Menu: T_5-5)    ==> 확인 완료 [▲▲▲]
1. 화면 초기 표시시에 "예정 월 일괄 설정"버튼이 활성 상태로되어있다 (본래는 비활성)
==============================================================================================================

- No. 82 결함(据付調査(설치 조사)	SET::set_suetsuke_chosa.xfdl(Menu: T_3-7) ==> 수정 완료 [▲▲▲]
1. 설치 조사 화면의 초기 상태에서 상단의 Div의 높이가 너무 큼 
 1) 조치: top: 102 ==> 70 
 - /set_suetsuke_chosa.xfdl 파일에서
<!-- <Div id="divList" position="absolute" left="8" width="1010" top="102" height="640" positionstep="1"/>-->
        <!--// 修正: 2018.02.01, by JIN TAE MAN //-->
        <Div id="divList" position="absolute" left="8" width="1010" top="6" height="640" positionstep="1"/>
        <!--// 修正: 2018.02.01, by JIN TAE MAN //-->
 <!-- <Div id="divInfo" position="absolute" left="8" width="1010" top="102" height="640" positionstep="2"/>-->
        <!--// 修正: 2018.02.01, by JIN TAE MAN //-->
        <Div id="divInfo" position="absolute" left="8" width="1010" top="6" height="640" positionstep="2"/>
        <!--// 修正: 2018.02.01, by JIN TAE MAN //-->
==============================================================================================================
   
- No. 58 결함(機器整備依?登?(장비 정비 의뢰 등록)) SEI::sei_kiki_irai.xfdl(Menu: T_6-1)    ==> 확인 완료 [▲▲▲]
1. 버튼의 배경색이 설정되어 있지 않다.  ==> 수정 되었음 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.02(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 석식(김치찌게, 통돼지찌개집): 구부장, 이부장

- 일본 히스콤 H-PLM 전환 Prj[★]
- No. 104 결함(設置?撤??移動?玉突?交換?績登?) SET::set_setchi_jisseki.xfdl(Menu: T_3-5) ==> 수정 완료 [▲▲▲]
1, /set_setchi_jisseki.xfdl(파일에서)
1. 태블릿 레이아웃에서 스크롤이 발생 에러 수정
        <!--// 修正[コメントアウト]: 2018.02.02, by JIN TAE MAN
		<Div id="divInfo" position="absolute" left="5" width="1010" top="132" bottom="-7" positionstep="2"/>
        <Div id="divList" position="absolute" left="5" width="1010" top="100px" bottom="25px" positionstep="1"/>
		<Div id="divSearch" position="absolute" left="5" width="1010" top="156" height="420"/>
-->
        <!--// 修正[コメントアウト]: 2018.02.02, by JIN TAE MAN //-->
        <Div id="divInfo" position="absolute" left="5" width="1010" top="102" bottom="-7" positionstep="2" height="604"/>
        <Div id="divList" position="absolute" left="5" width="1010" top="102" bottom="17" positionstep="1"/>
        <Div id="divSearch" position="absolute" left="5" width="1010" top="100" height="420"/>
==============================================================================================================

- No. 74 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 재수정 완료 [▲▲▲]
1.  Ds 데이타 타입이 BIGDECIMAL 일 때 .toString( 추가해서 비교할 것   ==>  No. 89 결함과 같음
 1) 조회를 하면 fn_getDetail 함수를 통해 fn_callback_get_shutcho_hi 호출 ==> this.SEARCH_FLG = false; 설정됨 
this.fn_getDetail = function()   
{	
	this.gfn_comTransaction("searchDetail"
		, "DataSrv::shuri/JissekiS/searchDetail"
		, "dsParam=dsParam"	
		, "dsHeader=dsShuriDenM dsSagDetail=dsShuriDenMSag dsSagyoBu=dsShuriDenMBu 
			dsShuIraiNaiyo=dsShuriIraiNaiyo dsOnlineKoshouNaiyou=dsOnlineKoshouNaiyou"
		, ""
		, "fn_callback_searchDetail");
}

this.fn_callback_searchDetail = function(strSvcId, nErrorCode, strErrorMsg)
{
	this.fn_get_wh_name();
} 
 
this.fn_callback_get_shutcho_hi = function()
{
	try {
		this.SEARCH_FLG = false;		// SEARCH_FLG을 false 처리함  ==> 수정 완료 [★★★]
		alert("[/shu_kosyou_sagyo.xfdl] [fn_callback_get_shutcho_hi()] ==> [TEST_01] [SEARCH_FLG]"+ this.SEARCH_FLG );   
	}
}
--------------------------------------------------------------------------------------------------------------

this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);,  	this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10); 
this.divList_grdList_oncellclick = function(obj:Grid,e:nexacro.GridClickEventInfo)
{ 
	if (application.gvHybridFlg) {   
		if ( this.SEARCH_FLG == false ) { 	// 修正[コメントアウト]: 2018.02.01, by JIN TAE MAN 
			var listKokiCd = this.dsList.getColumn(this.dsList.rowposition, "KOKI_CD");  
			var headerKokiCd = this.dsHeader.getColumn(this.dsHeader.rowposition, "KOKI_CD"); 
			alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_21] [listKokiCd]"+ listKokiCd 
				+"[headerKokiCd]"+ headerKokiCd );    
			
			//if ( listKokiCd != headerKokiCd ) {	// 修正: 2018.02.01, by JIN TAE MAN
			if ( listKokiCd.toString() != headerKokiCd.toString() ) {  // 修正: 2018.02.01, by JIN TAE MAN
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_41] @@@---> [fn_getDetail()]" );    
	
				this.fn_getDetail();
			} else {
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_42] @@@---> [this.setStepIndex(2)]");    
	
				// 明細ペ?ジを表示
				this.setStepIndex(2);
			}
		}
	}
}
==============================================================================================================
 
- No. 58 결함(機器整備依?登?(장비 정비 의뢰 등록)) SEI::sei_kiki_irai.xfdl(Menu: T_6-1)    ==> 재수정 완료 [▲▲▲]
1. 버튼의 배경색이 설정되어 있지 않다.  ==> 배경색 설정(web, ipad) 수정 완료
<!--// 修正[iPad_L_btnF10]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF10" position="absolute" left="748" top="50" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;border:1 solid #ffdeadff ;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,
0% #f5f5f5ff 0%,100% #d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// 修正[iPad_L_btnF02]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF02" position="absolute" left="193" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// 修正[iPad_L_btnF01]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF01" position="absolute" left="8" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
!--// 修正[iPad_L_btnF10]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF10" position="absolute" left="748" top="50" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;border:1 solid #ffdeadff ;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 
0%,0% #f5f5f5ff 0%,100% #d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// 修正[iPad_L_btnF02]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF02" position="absolute" left="193" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<Button id="btnF08" position="absolute" left="378" top="50" width="180" height="40" positionstep="-1" 
style="color:#3e3e3eb3;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% #d5d5d5ff [50% 
#e3e3e3ff][51% #dbdbdbff];"/>
<!--// 修正[iPad_L_btnF01]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF01" position="absolute" left="8" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
==============================================================================================================
  
- No. 82 결함(据付調査(설치 조사)	SET::set_suetsuke_chosa.xfd (Menu: 4-10) ==>  확인 요청[▲]
1. 확인 요청
==============================================================================================================
   
- No. 95 결함(修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> 확인 완료[▲▲▲]
1. 修理?況確認(수리 상태 확인)	SHU::shu_kosyou_irai_jokyo.xfdl 에서 計算機の入力(계산기입력) 누름  
  ==> 修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl 
 
// 明細?索時のcallback。
this.fn_callback_searchDetail = function(strSvcId, nErrorCode, strErrorMsg)
{  
	//this.dsHeader.setColumn(nRow, "STAT_FLG", "1"); 	 	// TEST @@@ ==>
	this.dsHeader.setColumn(nRow, "STAT_FLG", null); 	 	// TEST @@@ ==>
	//his.dsList.setColumn(nRow, "STAT_FLG", "1"); 	 	// TEST @@@ ==>
 	this.dsList.setColumn(nRow, "STAT_FLG",  null);  	// TEST @@@ ==> 
	
	var listStatFlg = this.dsList.getColumn(this.dsList.rowposition, "STAT_FLG"); 
	var headStatFlg = this.dsHeader.getColumn(0, "STAT_FLG");	 
	
	if ((listStatFlg == 1) && (headStatFlg == 1)) {  
				this.btnF3.set_enable(true);  
				this.btnF4.set_enable(true);
				this.btnF5.set_enable(true);
				this.btnF6.set_enable(true);
				this.btnF7.set_enable(false);
				this.btnF8.set_enable(true);
				this.btnF11.set_enable(true);
				
				this.divInfo.Tab.tabPhoto.btnSearch.set_enable(true);
				this.divInfo.Tab.tabPhoto.btnDelete.set_enable(true); 
				
			} else {
				trace("[/shu_kosyou_sagyo.xfdl] [fn_callback_searchDetail()] ==> [callback] [TEST_24]" ); 
			
				this.btnF3.set_enable(false);
				this.btnF4.set_enable(false);
				this.btnF5.set_enable(false);
				this.btnF6.set_enable(false);
				this.btnF7.set_enable(false);
				this.btnF8.set_enable(false);
				this.btnF11.set_enable(false);
				
				this.divInfo.Tab.tabPhoto.btnSearch.set_enable(false);
				this.divInfo.Tab.tabPhoto.btnDelete.set_enable(false); 
			}
			this.divInfo.Tab.tabPhoto.btnDelete.set_enable(false);
		}	
    }		
} 
==============================================================================================================

- No. 96 결함(故障?容一?(고장 내용 목록)) SHU::shu_koshou_list.xfdl(Menu: 5-9)  ==> 수정 완료[▲▲▲]
1.  수리 의뢰 작성 버튼의 동작이 이상하다
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [수리 의뢰 만들기 버튼 CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// 故障?容と個機マスタのロケコ?ドが同じかチェック
	//if ( koshouLocaCd != mKokiLocaCd ) {		// 修正: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// 修正: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// 故障?容のロケコ?ドと個機マスタのロケコ?ドが異なる?、修理依?を作成できません。(故障?容のロケからの撤?日:%0%)
		// 고장 내용의 로케 코드와 조각 기계 마스터 로케 코드가 다르기 때문에 수리 요청을 만들 수 없습니다. (고장 내용의 로케에서 철수 날짜 : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================

- No. 97 결함(借用機返却(차용 기계 반납)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> 수정 중  [▲▲▲]
1. 현상: 공통 팝업 호출 에러(개의 기계를 선택해도 아무런 정보가 설정되지 않음 )
 1) HTML5 버전에서는  공통 팝업(MstSearchKokiCd) 호출을 해서 조회를 하고 선택 후 창닫기[this.close(dsRes);]를
하면 호출한 팝업 함수의 자리[ [팝업_내려받기] [TEST_04]]로 돌아 오지 못 합니다.
그리고 "TEST_53 호출 " 라인을 타지 않고 그냥 멈추어 버립니다.
- HAK::hak_shakuyoki_henkyaku.xfdl 파일에서
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	 race("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// 팝업 처리 ==> @@@@@
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업_내려받기] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST_53 호출  @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd);
	} 
}
-------------------------------------------------------------------------------------------------------

- Search::hak_shakuyoki_henkyaku.xfdl 파일에서
this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [폼 로딩] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 

this.btnOk_onclick = function(obj:Button,  e:ClickEventInfo)
{
	trace("[/MstSearchFree.xfdl] [btnOk_onclick()] ==> [선택 버튼 클릭 이벤트] [TEST_01] =====> @@@@" ); 
 	
	if(this.dsMst.rowcount > 0){
		this.closeOnSelect();
	}
}

// 창닫기
this.closeOnSelect = function(){ 
	var r = this.dsMst.rowposition;

	//返却用デ?タセット作成
	var dsRes=new Dataset();
	dsRes.copyData(this.dsMst);
	dsRes.clearData();
 
	//返却用に１行追加
	dsRes.addRow();
	var bSuccess=dsRes.copyRow(0,this.dsMst,r);
 
	if(bSuccess == true){
	}else{
		dsRes.clearData();
	}
	 
	application.gvMstSearch.retDs = dsRes; 
	trace("[/MstSearchFree.xfdl] [closeOnSelect()] ==> [TEST_91] [dsRes]"+ dsRes ); 
 
	this.close(dsRes);   // 창닫기 후에 divReg_btn_koki_search_onclick() 함수로 못 돌아 감 @@@@@
	trace("[/MstSearchFree.xfdl] [closeOnSelect()] ==> [TEST_92] [dsRes]"+ dsRes ); 
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.03(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>  주말 근무, 히스콤 H-PLM 전환 Prj 미개발 건수: 7건 남음[오늘 목표 3건으로 줄이기]

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 24 결함(修理 日報(수리 일보)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> 수 [▲▲▲]
1. 현상: PDF 버튼이 작동하지 않습니다. 추가 버튼을 누를 때 날짜를 변경할 수 없다
2. 조치: 24 결함은 java단에서 PDFの作成을 하는 과정에서 에러가 발생하는 것으로 추정됩니다.
저희쪽에서 java 서버가 제대로 설치 되지 않아서 나는 에러 같고 아마 일본쪽 서버에서
실행을 하면 정상적으로 수행할 것 같습니다.
추가 버튼을 누를 때 날짜를 변경할 수 없는 문제는 소스 확인 결과 이상이 없는 것으로 판단됩니다.
- /shu_daily_report.xfdl 파일에서
this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow;
	var keySagyoYmd2 = keySagyoYmd.toString();  // 修正: 2018.02.03, by JIN TAE MAN 
	var keySagyoYmd3 = keySagyoYmd2.substr(0, 4) + "/" + keySagyoYmd2.substr(4, 2) + "/" + keySagyoYmd2.substr(6, 2);	
	// 修正: 2018.02.03, by JIN TAE MAN 
	
	//targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");	// 修正: 2018.02.03, by JIN TAE MAN 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd3 + "' && STAT_FLG == 1");	// 修正: 2018.02.03, by JIN TAE MAN 
}

// PDF ボタンをクリック
this.btnF8_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/shu_daily_report.xfdl] [btnF8_onclick()] ==> [PDF ボタンをクリック] [TEST_01]" );
 
	var row = ds.addRow();
	ds.setColumn(row, "SAGYOSHA_CD", this.dsDailyReportList.getColumn(tarRow, "SAGYOSHA_CD"));
	ds.setColumn(row, "SAGYO_YMD_FROM", this.dsDailyReportList.getColumn(tarRow, "SAGYO_YMD"));
	ds.setColumn(row, "SAGYO_YMD_TO", this.dsDailyReportList.getColumn(tarRow, "SAGYO_YMD"));
	ds.setColumn(row, "LANG_NO", application.gvLanguage);

	this.gfn_comTransaction("shuriDailyReportPDF" 
		, "DataSrv::shuri/ShuriDailyReportS/shuriDailyReportPDF"
		, "dsParam=dsParam"
		, "dsPdf=dsPdfResult"
		, ""
		, "fn_callback_shuriDailyReportPDF");
}

// PDF出力のcallback
this.fn_callback_shuriDailyReportPDF = function(strSvcId, nErrorCode, strErrorMsg)
{
	trace("[/shu_daily_report.xfdl] [fn_callback_shuriDailyReportPDF()] ==> [PDF出力 콜백] [TEST_01] [strSvcId]"+ 
	strSvcId +"[nErrorCode]"+ nErrorCode +"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) {
		if (this.dsPdf.rowcount > 0) { 
			this.gfn_fileDataSave(this.dsPdf);
		}
	} else {
		trace("失敗:" + strErrorMsg);
		//エラ?メッセ?ジ表示
		this.gfn_callbackError(nErrorCode);
	}
}
---------------------------------------------------------------------- 

- nexacro エラ?追加
SystemBase_HTML5.js:44 [/shu_daily_report.xfdl] [fn_callback_shuriDailyReportPDF()] ==> [PDF出力 콜백] [TEST_01] 
[strSvcId]shuriDailyReportPDF[nErrorCode]-3[strErrorMsg]Internal Error
SystemBase_HTML5.js:44 失敗:Internal Error 
------------------------------------------------------------------------------------------------------------------------

// ?索一?グリッド選?セル?更イベント ==> 
this.divList_grdList_onselectchanged = function(obj:Grid,e:nexacro.GridEditEventInfo)
{
	trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [?索リストグリッド選?セル?更イベント] [TEST_01]" );
	
	if (e.row < 0) return;
	
	var listRow = this.dsDailyReportList.rowposition;
	trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_02] [listRow]"+ listRow 
	+"[this.dsDailyReportList.getRowType(listRow)]"+ this.dsDailyReportList.getRowType(listRow) );
	
	// 登??みの作業日報の作業日?作業者の?更は不可[등록된 작업 일보 작업 일· 작업자의 변경은 불가]
	if (this.dsDailyReportList.getRowType(listRow) == 2) {  	// getRowTypeが2の場合(保存Type[getRowType 2의 경우 (저장 Type)]
		trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_11] [作業日（?更可能]");
		
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_readonly(false);
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_cssclass("");
		this.divInfo.tabInfo.tabMeisai.btn_sagyosha_cd_search.set_enable(true);
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_readonly(false);   // 作業日(?更不可]
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_cssclass("");
		
	} else { 
		trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_12] [作業日(?更不可]");
	
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_readonly(true);
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_cssclass(this.READ_ONLY_CLASS);
		this.divInfo.tabInfo.tabMeisai.btn_sagyosha_cd_search.set_enable(false);
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_readonly(true);	 // 作業日(?更不可]
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_cssclass(this.READ_ONLY_CLASS);
	} 
}
==============================================================================================================

- No. 25 결함(故障?容一?(고장 내용 목록)) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> 수정 완료 [▲▲▲]
1. 현상: 수리 의뢰 버튼을 눌렀을 때의 동작이 이상하다. 탭 이름의 할당이 이루어지고 있지 않다
2. 조치: 
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [수리 의뢰 만들기 버튼 CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// 故障?容と個機マスタのロケコ?ドが同じかチェック
	//if ( koshouLocaCd != mKokiLocaCd ) {		// 修正: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// 修正: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// 故障?容のロケコ?ドと個機マスタのロケコ?ドが異なる?、修理依?を作成できません。(故障?容のロケからの撤?日:%0%)
		// 고장 내용의 로케 코드와 조각 기계 마스터 로케 코드가 다르기 때문에 수리 요청을 만들 수 없습니다. (고장 내용의 로케에서 철수 날짜 : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================
 
- No. 45 결함(設置?撤??移動?玉突?交換?績登?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> 확인 완료 [▲▲▲]
1. 현상: Grid에서 금액 계산되지 않는다.  ==> 이미 해결된 것으로 추정됨
trace("[/set_setchi_jisseki.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: 설치·철수·이동·玉突 교환 실적 등록] [폼 로딩]  [TEST_01]" );  
10 grid 속성(:shu_kosyou_sagyo_tab_sag.xfdl  파일에서)
1. autoenter: none
2. autofittype: none
3. autoziebandtype: allband
4. autosizingtype: col
==============================================================================================================

- No. 52 결함(故障?容一?(고장 내용 목록) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> 문의할 것 [▲▲▲]
1. 현상: 캡쳐 버튼이 작동하지 않습니다.  ==> 엑셀다운로드: Runtime 버전에서는 캡처 버튼은 정상적으로 작동하지만 HTML5 버전에서 작동 안함
2. 현상2:  엑셀다운로드 안됨 ==> TO-BE 고객 선터에 문의할 것
2017/12/27　from Korea
캡쳐버튼은 엑셀업로드(Excelimport) 버튼으로 확인되었으며 엑셀 다운로드(ExcelDown)함수는 있으나 엑셀 업로드(Excelimport) 함수는 존재하지 않아서
공통 스크립트에서 엑셀 업로드 기능을 만들어 주셔야 할것같습니

본 문제는 HTML5로 파일 대화 기능을 Nexa가 제공하지 않은 것이 원인이라고 생각됩니다.
 원래 캡처 버튼 클릭시 공통 함수는 호출하지 않습니다.
① 파일 대화 상자 열기
② 파일을 선택
③ 선택된 파일 내용을 읽기 서버로 전송하고 있을 뿐입니다. 
HTML5로 위와 같은 처리가 가능한지 검토하십시오. 
==============================================================================================================
  
this.btnF11_onclick = function(obj:Button,e:nexacro.ClickEventInfo)	// Excel 출력 클릭
{ 
	// Excel出力
	this.fn_searchExcel();
}

// Excelデ?タ?索?理
this.fn_searchExcel = function()
{
	trace("[/shu_koshou_list.xfdl] [fn_searchExcel()] ==> [Excel 출력 처리] [TEST_01]" ); 
 
	this.dsExcelSearch.setColumn(this.dsExcelSearch.rowposition, "EXIST_KENRYOU_KOSHOU", 1);

	this.gfn_comTransaction("searchKoshouList" 
		, "DataSrv::shuri/KoshouListS/searchKoshouList"
		, "dsParam=dsExcelSearch"
		, "dsExcel=dsKoshouList"
		, ""
		, "fn_callback_searchExcel");
}

// 一?の?索時のcallback
this.fn_callback_searchExcel = function(strSvcId, nErrorCode, strErrorMsg)
{
	trace("[/shu_koshou_list.xfdl] [fn_callback()] ==> [콜백] [TEST_01] [strSvcId]"+ strSvcId +"[nErrorCode]"+ nErrorCode 
	+"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) { 
		this.grdExcel.setBindDataset(null);
		var dsExcelOut = new Dataset();
		dsExcelOut.copyData(this.dsExcel); // カラム定義をコピ?するため[컬럼 정의를 복사하기 위해]
		dsExcelOut.clearData(); // デ?タはクリア
 
		// デ?タの件?分ル?プ[데이터 건수만큼 루프]
		for(var i=0;i < this.dsExcel.rowcount;i++) {
			var key = this.dsExcel.getColumn(i, "KAISYA_ID")
					+ "," + this.dsExcel.getColumn(i, "LOCA_CD")
					+ "," + this.dsExcel.getColumn(i, "MAC_CD")
					+ "," + this.dsExcel.getColumn(i, "KEN_TIME");
			if (key != bkKey) {
				tarRow = dsExcelOut.addRow();
				dsExcelOut.copyRow(tarRow, this.dsExcel, i);
				tarCol = 0;
			}
			bkKey = key;
			
			// デ?タがあれば設定[데이터가 있으면 설정]
			if (!this.gfn_isEmpty(this.dsExcel.getColumn(i, "KOSHOU_CD"))) {
				// ?展開用のカラムが無ければ追加
				tarCol++;
				if (maxCol < tarCol) {
					dsExcelOut.addColumn("KOSHOU_CD" + tarCol, "String");
					dsExcelOut.addColumn("KOSHOU_NAME" + tarCol, "String");
					maxCol++;
				}
				
				// 故障情報設定
				dsExcelOut.setColumn(tarRow, "KOSHOU_CD" + tarCol, this.dsExcel.getColumn(i, "KOSHOU_CD"));
				dsExcelOut.setColumn(tarRow, "KOSHOU_NAME" + tarCol, this.dsExcel.getColumn(i, "KOSHOU_NAME"));
			}
		} 
 
		// グリッドの設定[그리드 설정]
		var startCol = 0;
		for(var i=0;i < maxCol;i++) { 
			this.grdExcel.setCellProperty("head", tarCol, "text", this.gfn_getLang("T_KOSHOU_CD"));
			this.grdExcel.setCellProperty("body", tarCol, "text", "bind:KOSHOU_CD" + (i + 1));

			tarCol = this.grdExcel.appendContentsCol();
			this.grdExcel.setCellProperty("head", tarCol, "text", this.gfn_getLang("T_KOSHOU_NAME"));
			this.grdExcel.setCellProperty("body", tarCol, "text", "bind:KOSHOU_NAME" + (i + 1));
		}
		this.grdExcel.setBindDataset(dsExcelOut); 
		trace("[/set_setchi_jisseki.xfdl] [fn_callback_searchDetail()] ==> [콜백] [TEST_04_1] [this.grdExcel]"+ this.grdExcel );

		// Excel出力[Excel 출력] ==> 공통 함수 호출 @@@@
		this.gfn_exel_export(this.grdExcel);  
	}
	trace("[/set_setchi_jisseki.xfdl] [fn_callback_searchDetail()] ==> [콜백] [TEST_end]" );
}
 
this.gfn_exel_export = function(gridObj, headFlg, outDate, outTitle){
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_01] [gridObj"+ gridObj +"[headFlg]"+ headFlg +"[outDate]"+ outDate +"[outTitle]"+ outTitle );
	
	var objExport = this._fn_get_ExcelExportObject();
 
	if (headFlg) { 
		var objGrid = new Grid();
		objGrid.init("gridOut", "absolute", 0, 0, 0, 0, null, null);
		this.addChild("gridOut", objGrid); 
		objGrid.createFormat();
		objGrid.show();

		if (!outDate) {
			outDate = new Array();
			outDate.push(this.gfn_nowDate());
			outTitle = new Array();
			outTitle.push(this.gfn_getLang("G_OUTPUT_DATE"));
		}

		var objDs = new Dataset();
		for(var i=0; i < outDate.length; i++) {
			objDs.addColumn("OUTPUT_DATE" + i, "String");
		}
		var nRow = objDs.addRow();
		for(var i=0; i < outDate.length; i++) {
			objDs.setColumn(nRow, "OUTPUT_DATE" + i, outDate[i]);
		}

		objGrid.set_binddataset(objDs);
		objGrid.appendContentsRow("head");
		objGrid.appendContentsRow("body");

		for (var r = 1; r < objDs.getColCount(); r++) {
			objGrid.appendContentsCol();
		}

		for (var r = 0; r < objDs.getColCount(); r++) {
			var colinfo = objDs.getColumnInfo(r);
			
			objGrid.setCellProperty("head", r, "text", outTitle[r]);
			
			objGrid.setCellProperty("body", r, "text", "bind:" + colinfo.name);
			objGrid.setCellProperty("body", r, "displaytype", "date");
			objGrid.setCellProperty("body", r, "calendardisplaynulltype", "none");
		}

		objExport.addExportItem(nexacro.ExportItemTypes.GRID, objGrid, "Sheet1!A1", "allband");
		objExport.addExportItem(nexacro.ExportItemTypes.GRID, gridObj, "Sheet1!A3", "allband");
	} else {
		objExport.addExportItem(nexacro.ExportItemTypes.GRID, gridObj, "Sheet1!A1", "allband");
	}
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_71]" );
	
	objExport.exportData();								// 실제 엑셀 출력 완료 @@@
  
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_end]" );
}
==============================================================================================================

- No. 79 결함(業者用 ル?トスケジュ?ル登?(돌아 가기 루트 일정 등록)) SET::set_wh_setchi_rt.xfdl(Menu: 4-2) ==> 수정 완료 [▲▲▲]
1. 현상: 영업소의 중복 검사가 새고있다.
this.dsTaishoWhSearch_onvaluechanged = function(obj:Dataset,e:nexacro.DSColChangeEventInfo)
{
	trace("[/set_wh_setchi_rt.xfdl] dsTaishoWhSearch_onvaluechanged()] ==> [TEST_01] [e.columnid]"+ e.columnid ); 
	
	//?象?業所コ?ドの重複チェック[대상 영업소 코드 중복 체크]
	if (e.columnid != 'WH_CD') {
		this.dsTaishoWhSearch_onrowsetchanged();
		return;
	}

	var wh_cd = this.dsTaishoWhSearch.getColumn(e.row, 'WH_CD'); 			// 대상 영업소 코드
	var sagyo_ymd = this.dsTaishoWhSearch.getColumn(e.row, 'SAGYO_YMD');	// 작업일
		
	for(var i = 0; i < this.dsTaishoWhSearch.rowcount; i++){
		//stat_flg=1で、かつ、i != rowposition、かつ、wh_cdが同じレコ?ドがあればNG。
		if (e.row == i) {
			continue;
		}

		var stat_flg = this.dsTaishoWhSearch.getColumn(i, 'STAT_FLG');
		if (stat_flg == 3) {
			continue;
		}

		var wh_cd_ds = this.dsTaishoWhSearch.getColumn(i, 'WH_CD');			// 대상 영업소 코드(Ds)
		var sagyo_ymd_ds = this.dsTaishoWhSearch.getColumn(i, 'SAGYO_YMD');	// 작업일(Ds)
 
		//if (wh_cd_ds == wh_cd && sagyo_ymd_ds == sagyo_ymd) {
		if (wh_cd_ds.toString() == wh_cd.toString() && sagyo_ymd_ds.toString() == sagyo_ymd.toString()) {  // 修正: 2018.02.03, by JIN TAE MAN 
			obj.setColumn(e.row, 'WH_CD', '');
			this.gfn_message(4032);		// ?象?業店が重複しています。[대상 영업점이 중복 되어 있습니다.]
			return;
		}
	} 
}
==============================================================================================================

- No. 97 결함(借用機返却(차용 기계 반납)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> 문의할  것 [▲▲▲]
1. 현상: 개의 기계를 선택해도 아무런 정보가 설정되지 않음 
1. 현상2: 
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// 팝업 처리 ==> ?索?象は、資産?分：借用機のみ 	 
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업_내려받기] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd)
	}
}

this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [폼 로딩] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.04(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 ==> 주말 근무, 히스콤 H-PLM 전환 Prj 미개발 건수: 2건 남음[오늘 목표 0건으로 줄이기: 실패]

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 77 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4) ==> 문의할 것 [▲▲▲] 
1. 현상: 첨부한 그림(No. 77_06.png)처럼 저장을 누르면 gfn_message(5058); 후 return을 하면 중간 지점에
멈춥니다. TEST_50번처럼 작업일(SAGYO_YMD)을 널로 넣고 테스트 해보면	this.gfn_message(5005);
후 return을 하면 역시 중간 지점에 멈춥니다.  
1.   	// 作業?況が「修理完了」かつ作業日が締め?理後の日付なら?更不可 
SHU::shu_kosyou_sagyo_tab_header.xfdl
cal_sagyo_ymd_ondayclick
trace("[/shu_kosyou_sagyo_tab_header.xfdl] [cal_sagyo_ymd_ondayclick()] ==> [버튼 클릭 Event] [TEST_01]" );  
this.gfn_message(

this.fn_save = function()
{
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 처리 실행] [TEST_01]" );  
	
	// 作業?況?連のチェック
	var sagyoJokyo = this.dsHeader.getColumn(0, "SHURI_IRAI_JOKYO_FLG"); 
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_03]" );  
	alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [sagyoJokyo]"+ sagyoJokyo +"[this.JyoukyoKbn.shuri_kanryo]"+ this.JyoukyoKbn.shuri_kanryo 
		+"[SAGYO_KANRYO_YMD]"+ this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD") );  // 작업 완료 날짜가

	// 修理完了ではないが作業完了日が入力されている場合[수리 완료는 아니지만 작업 완료 날짜가 입력되는 경우]
	if (sagyoJokyo != this.JyoukyoKbn.shuri_kanryo
		&& !this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD"))) {
		alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_41] [this.gfn_message(5058): 수리가 완료되지 않기 때문에 작업 완료 날짜를 입력 할 수 없습니다.] " );  
		
		this.divInfo.Tab.tabSagDen.cal_sagyo_kanryo_ymd.setFocus();
		// 修理が完了していないため、作業完了日の入力はできません。[수리가 완료되지 않기 때문에 작업 완료 날짜를 입력 할 수 없습니다.] 
		this.gfn_message(5058);  // TEST @@@ ===>
		this.btnF6.set_enable(true);
		return;
	}
	
	// 作業日チェック[작업일 확인]
		if (this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_YMD"))) { //작업일
			//alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_61]" );
			alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_41] [작업일 확인] " );  
			
			this.divInfo.Tab.set_tabindex(0);
			this.divInfo.Tab.tabSagDen.cal_sagyo_ymd.setFocus();
			// 作業日が選?されていません[작업 날짜가 선택되어 있지 않습니다]
			this.gfn_message(5005);
			this.btnF6.set_enable(true);
			return;
		}	  // TEST @@@ ===>
}
---------------------------------------------------------------------------------------------------------------------------------

function divInfo_Tab_tabSagDen_cal_sagyo_ymd_ondayclick(obj:Calendar, e:CalendarDayClickEventInfo)
{
	// 作業日カレンダ?の日付クリック時、作業?況へ移動[작업일 달력 날짜 클릭시 작업 상황에 이동]
	//  Tablet版の場合、oncanged が誤動作する?[Tablet 버전의 경우 oncanged이 오작동하기 위해]
	this.divInfo.Tab.tabSagDen.cmb_sagyo_jokyo.setFocus();
}
==============================================================================================================

- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 문의할 것 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
- SHU::shu_kosyou_sagyo.xfdl 파일에서
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [카메라 버튼 클릭 Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheightを元に??比が自動設定される[imageheight를 바탕으로 ?? 비가 자동 설정되는]
	this.camera.gettype = 1;
	this.camera.takePicture();  // 에러 발생  ==> 까만 화면 잠깐 나온 후 프로그램이 종료됨 @@@
}

// 撮影時[촬영시]
this.camera_oncapture = function(obj:Camera,e:nexacro.CameraEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [촬영시] [TEST_01]" );    // 호출 안됨

	try { 
		if (obj.gettype==0) {  
			this.fn_addNewImage(e.url);
		} else { 
			this.fn_addNewImage(null, e.imagedata);
		}
	} catch(e){
		this.alert(e);
	}
	this.setWaitCursor(false);
}
----------------------------------------------------------------------------------------------

ここに??のサムネイルが表示されます[여기에 사진의 썸네일이 표시됩니다]
??を撮影後、「??を使用」を選?[사진 촬영 후 "사진을 사용"을 선택] 
-------------------------------------------------------------------------------------------------------------------------

- SHU::shu_kosyou_sagyo_tab_photo.xfdl 파일에서 
function btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo_tab_photo.xfdl] [btnCamera_onclick()] ==> [카메라 버튼 클릭] [TEST_01] =====> @@@@" );  
	
	this.parent.parent.parent.divInfo_Tab_tabPhoto_btnCamera_onclick(obj, e); 
} 
==============================================================================================================

- 일본 히스콤 H-PLM 전환 Prj 미해결 건수 ==> 오이사, 이사장에게 메일로 보냄(20시)
1. 투비소프트 문의한 건수: 4건
No. 52 결함 문의 ==> 엑셀 다운로드에러 문의
No. 97 결함 문의 ==> 공통 팝업 호출 에러 문의
No. 77 결함 문의 ==> mac용 ipad에서 alert 후 return 에러 문의
No. 90 결함 문의 ==> mac용 ipad에서 oncapture 이벤트가 콜백 안됨 문의  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.05(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==>  

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 77 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4)  ==> 문의할 것2 [▲▲▲]
1. 현상: 첨부한 그림(No. 77_06.png)처럼 저장을 누르면 gfn_message(5058); 후 return을 하면 중간 지점에
멈춥니다. TEST_50번처럼 작업일(SAGYO_YMD)을 널로 넣고 테스트 해보면	this.gfn_message(5005);
후 return을 하면 역시 중간 지점에 멈춥니다. 
2. 조치: nexacro14_iOS_20180123_1.zip 파일에서 압축을 푼 후 nexacro14_iOSLauncher/nexacro14.framework 
폴더에 "덮어쓰기" 한 후 Mac OS에서 nexacro14_iOSLauncher 폴더를 삭제하고 다시 새로운 것으로 붙여넣기 할 것
    </context-param>	
 ==============================================================================================================
 
- No. 97 결함(借用機返却(차용 기계 반납)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> 수정 완료[▲▲▲]
1. 현상: 공통 팝업 호출 에러(개의 기계를 선택해도 아무런 정보가 설정되지 않음 )
 1) HTML5 버전에서는  공통 팝업(MstSearchKokiCd) 호출을 해서 조회를 하고 선택 후 창닫기[this.close(dsRes);]를
하면 호출한 팝업 함수의 자리[ [팝업_내려받기] [TEST_04]]로 돌아 오지 못 합니다.
그리고 "TEST_53 호출 " 라인을 타지 않고 그냥 멈추어 버립니다.

showModal: 동적으로 생성한 ChildFrame을 모달 창으로 보여주는 메소드입니다.
showModalSync: showModal의 Sync 동작 ==> Windows Runtime 만 지원
---------------------------------------------------------------------------------------------------

- HAK::hak_shakuyoki_henkyaku.xfdl 파일에서
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	var kokiCdOld = this.divReg.edt_koki_cd.value;
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value);
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");//?索?象は、資産?分：借用機のみ 
}
-------------------------------------------------------------------------------------------------------

- Search::MstSearchFree.xfdl 파일에서
this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [폼 로딩] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 

this.btnOk_onclick = function(obj:Button,  e:ClickEventInfo)
{
	trace("[/MstSearchFree.xfdl] [btnOk_onclick()] ==> [선택 버튼 클릭 이벤트] [TEST_01] =====> @@@@" ); 
 	
	if(this.dsMst.rowcount > 0){
		this.closeOnSelect();
	}
}

// 창닫기
this.closeOnSelect = function(){ 
	var r = this.dsMst.rowposition;
 
	this.close();  // 修正: 2018.02.05, by JIN TAE MAN 
}

//?索popup?面を表示
this._parentReturnColumn;
this._resultColumn;
this._returnColumn;
this.gfn_showSearchFormFree = function(form, ......returnColumn) {  
	kokiCdOld = this.parent.form.divReg.edt_koki_cd.value;	// 修正: 2018.02.05, by JIN TAE MAN  
}

this.gfn_getModalDataset = function(ret)
{   
	if(this.parent.form.name == "hak_shakuyoki_henkyaku")	// 修正: 2018.02.05, by JIN TAE MAN 
	{ 
		var kokiCdNew = dsMst.getColumn(0, "Column1");  
		if (kokiCdOld.toString() != kokiCdNew.toString()) {  
			this.parent.form.divReg_edt_koki_cd_canchange(this.parent.form.divReg.edt_koki_cd);
		} 		
	}
	
	return dsMst;
}
==============================================================================================================

- No. 52 결함(故障?容一?(고장 내용 목록) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> 문의할 것 [▲▲▲]
1. 현상: 캡쳐 버튼이 작동하지 않습니다.  ==> 엑셀다운로드: Runtime 버전에서는 캡처 버튼은 정상적으로 작동하지만 HTML5 버전에서 작동 안함
2. 현상2: 엑셀다운로드 안됨 ==> TO-BE 고객 선터에 문의할 것
2017/12/27　from Korea
캡쳐버튼은 엑셀업로드(Excelimport) 버튼으로 확인되었으며 엑셀 다운로드(ExcelDown)함수는 있으나 엑셀 업로드(Excelimport) 함수는 존재하지 않아서
공통 스크립트에서 엑셀 업로드 기능을 만들어 주셔야 할것 같습니다.
http://192.168.0.30:8080/moms_Nexa/XExportImport 
http://192.168.0.30:8080/moms_Nexa/export/261D18D7F326A3161CECC26ADA9ABC6A_1517817795710/exData.xls
C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa\export\261D18D7F326A3161CECC26ADA9ABC6A_1517817795710/exData.xls
- /FormCommon.xjs
this._fn_get_ExcelExportObject = function()
{
	var objExport = new ExcelExportObject("Export00", this);
	objExport.set_exporttype(nexacro.ExportTypes.EXCEL);
	var xeni = objExport.set_exporturl(application.services["Excel"].url + "XExportImport");// Excelサ?バ?モジュ?ルへのURLを設定
	objExport.set_exportfilename("exData");                                      // サ?バ?で一時使用するexcelファイル名
	objExport.set_exportactivemode("active"); 
	alert("[/FormCommon.xjs] [_fn_get_ExcelExportObject()] ==> [xcelサ?バ?モジュ?ルへのURLを設定_URL] [xeni]"+ xeni );

	return objExport;
}

this.gfn_exel_export = function(gridObj, headFlg, outDate, outTitle){
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_01] [gridObj"+ gridObj +"[headFlg]"+ headFlg +"[outDate]"+ outDate +"[outTitle]"+ outTitle );
	
	var objExport = this._fn_get_ExcelExportObject();
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_02]" );
 
	if (headFlg) {
		trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_11]" );
	
		var objGrid = new Grid();
		objGrid.init("gridOut", "absolute", 0, 0, 0, 0, null, null);
		this.addChild("gridOut", objGrid); 
		objGrid.createFormat();
		objGrid.show();

		if (!outDate) {
			outDate = new Array();
			outDate.push(this.gfn_nowDate());
			outTitle = new Array();
			outTitle.push(this.gfn_getLang("G_OUTPUT_DATE"));
		}

		var objDs = new Dataset();
		for(var i=0; i < outDate.length; i++) {
			objDs.addColumn("OUTPUT_DATE" + i, "String");
		}
		var nRow = objDs.addRow();
		for(var i=0; i < outDate.length; i++) {
			objDs.setColumn(nRow, "OUTPUT_DATE" + i, outDate[i]);
		}

		objGrid.set_binddataset(objDs);
		objGrid.appendContentsRow("head");
		objGrid.appendContentsRow("body");

		for (var r = 1; r < objDs.getColCount(); r++) {
			objGrid.appendContentsCol();
		}

		for (var r = 0; r < objDs.getColCount(); r++) {
			var colinfo = objDs.getColumnInfo(r);
			
			objGrid.setCellProperty("head", r, "text", outTitle[r]);
			
			objGrid.setCellProperty("body", r, "text", "bind:" + colinfo.name);
			objGrid.setCellProperty("body", r, "displaytype", "date");
			objGrid.setCellProperty("body", r, "calendardisplaynulltype", "none");
		}

		objExport.addExportItem(nexacro.ExportItemTypes.GRID, objGrid, "Sheet1!A1", "allband");
		objExport.addExportItem(nexacro.ExportItemTypes.GRID, gridObj, "Sheet1!A3", "allband");
	} else {
		objExport.addExportItem(nexacro.ExportItemTypes.GRID, gridObj, "Sheet1!A1", "allband");
	}
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_71]" );
	
	//event추가
	objExport.addEventHandler("onsuccess", this.Export00_onerror, this);
	objExport.addEventHandler("onerror", this.Export00_onerror, this);
	
	objExport.exportData();								// ?際のエクスポ?ト
	objExport = null;									// ガベ?ジコレクション?策
 
	if (objGrid) {
		this.removeChild("gridOut"); 
		objGrid.destroy();
		objGrid = null;
	}
	//alert("[/FormCommon.xjs] [gfn_exel_export()] ==> [엑셀 출력] [TEST_end]" );
}

this.Export00_onsuccess = function(obj:ExcelExportObject,  e:nexacro.ExcelExportEventInfo)
{
	alert("[/FormCommon.xjs] [Export00_onsuccess()] ==> [엑셀 출력_성공] [TEST_01] [e.url]"+ e.url );
	
	//trace(e.url);
}

this.Export00_onerror = function(obj:ExportObject, e:nexacro.ExportEventInfo)
{
	alert("[/FormCommon.xjs] [Export00_onerror()] ==> [엑셀 출력_실패] [TEST_01] [e.erromsg]"+ e.erromsg );
	
	trace("error!!>>>" + e.erromsg);
}
==============================================================================================================

- No. 95 결함(修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> 확인 완료[▲▲▲]
1. 修理?況確認(수리 상태 확인)	SHU::shu_kosyou_irai_jokyo.xfdl 에서 計算機の入力(계산기입력) 누름  
  ==> 修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl  
장애 관리 표"장애 대응 상황"시트의 히스 컴 코멘트에도 기재했습니다만 
InternetExploer가 정상적으로 동작하지만 Chrome을 사용하면 No95의 현상이 발생합니다. 
==> 문제 없음
==============================================================================================================

- No. 102 결함(?業所 設置スケジュ?ル登?(영업소 설치 일정 등록)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> 수정 요청[▲▲▲]
1. 현상: 종료 시간을 시작 시간 이전하면 차트가 표시되지 않습니다 
==============================================================================================================

- No. 103 결함(?業所 設置スケジュ?ル登?(영업소 설치 일정 등록)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> 수정 완료[▲▲▲]
1. 현상: 간트 차트에 배경색이 없음
==============================================================================================================

- Session expired 에러
1. 현상: 서버 URL(http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/index.html)에서 404번 에러가 안떨어지고 Session expired 에러 떨어짐
2. 조치: ecclipse 서버에서
- / SessionFilter 파일에서
@Component("SessionFilter")
public class SessionFilter implements Filter {

   public SessionFilter() {
        super();  // 사용 해야 함 @@@
		System.out.println(">>> SessionFilter~~~!!!");
    }
} 
==============================================================================================================

- TOBESOFT Online Document Library (Technical Documents)
http://docs.tobesoft.com/index
------------------------------------------------------------------------------------------------------

- 넥사크로플랫폼 14 / 관리자 가이드
http://docs.tobesoft.com/admin_guide_nexacro_14_ko
------------------------------------------------------------------------------------------------------

- 엑스플랫폼 9.2 / 관리자 가이드
http://docs.tobesoft.com/admin_guide_xplatform_ko
1. Runtime  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#2ec043c41935e4cc
2. HTML5  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#076504d90043cbb5
3. Hybrid  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#9e669ef019d09106 
==============================================================================================================

- 델 모니터(P2217H) 구입 ==> (주)지아이데이타 이석부 사장이 구입해줌(회사 소유: 영수증 청구할 것)
1. DELL P2217H 22인치 모니터 16:9 IPS 델 피벗스텐드, 가격:189,500원
==> http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1559467948&xfrom=&xzone=
2. 델 모니터 케이블: VGA 케이블, 파워 케이블 2개만 필요함(하지만 보니터에 있는 USB 이용시 USB 케이블 연결해야 함) 
3. 드라이버 없이도 조립 가능, 피벗, 엘리베이트 가능 ==> 상태 좋음 
4. USB 케이블(HDMI 2.0 Basic 1.5M), 가격: 8천원에 구입
5. 사운드 안됨 ==> 1. 헤드폰은 가능 ==> 콜센터에 전화(노트북 문제라 우김) ==> HDMI 케이블 빼고 DVI 케이블 연결하니
사운드 정상적으로 들림
-------------------------------------------------------------------------------------------------------

- 델 모니터(P2217H) 정보
1. 시리얼 넘버(S/N): CN-0NJR01-QDC00-7CP-4KAU-A02
2. 익스프레스 서비스 코드(Express SVC Code): 7210256582
3. ServiceService Tag): 3B8STL2
4. 주문번호: 950936522[전화(T): 080-854-0066]
-------------------------------------------------------------------------------------------------------

- 11번가 증빙서류발급(경리에게 전달함: 회사 지출로 처리함)
1. 신용카드 영수증 인쇄 ==> http://buy.11st.co.kr/remittance/documentaryEvidence.tmall?method=displayDocumentaryEvidenceIssue
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.06(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 ==> 델 모니터(P2217H) 도착(16시, 회사), 석식(순대국, 선릉순대국: 이사장, 구부장, 이부장)

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 69 결함(設置業者-部品使用ル?ト設定(설치 업체 - 부품 사용 경로 설정)) SHU::set_setchigyo_buhin_wh_rt.xfdl(Menu: T_3-5) ==> 확인 완료[▲▲▲]
1 현상: 태블릿에서 작업 날짜를 달력에서 값을 변경해도 반영되지 않음
==============================================================================================================

- No. 89 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdll(Menu: T_5-5) ==> 확인 완료[▲▲▲]
1 현상: 2 단계 번째 화면의 그리드 행을 선택 (탭)도 3 단계 번째로 전환하지 않음
==============================================================================================================

- No. 25 결함(故障?容一?(고장 내용 목록)) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> 확인 완료 [▲▲▲]  
1. 현상: 수리 의뢰 버튼을 눌렀을 때의 동작이 이상하다. 탭 이름의 할당이 이루어지고 있지 않다
2. 조치: 
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [수리 의뢰 만들기 버튼 CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// 故障?容と個機マスタのロケコ?ドが同じかチェック
	//if ( koshouLocaCd != mKokiLocaCd ) {		// 修正: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// 修正: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// 故障?容のロケコ?ドと個機マスタのロケコ?ドが異なる?、修理依?を作成できません。(故障?容のロケからの撤?日:%0%)
		// 고장 내용의 로케 코드와 조각 기계 마스터 로케 코드가 다르기 때문에 수리 요청을 만들 수 없습니다. (고장 내용의 로케에서 철수 날짜 : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================
 
- No. 45 결함(設置?撤??移動?玉突?交換?績登?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> 확인 완료 [▲▲▲] 
1. 현상: Grid에서 금액 계산되지 않는다.  ==> 이미 해결된 것으로 추정됨
trace("[/set_setchi_jisseki.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: 설치·철수·이동·玉突 교환 실적 등록] [폼 로딩]  [TEST_01]" );  
10 grid 속성(:shu_kosyou_sagyo_tab_sag.xfdl  파일에서)
1. autoenter: none
2. autofittype: none
3. autoziebandtype: allband
4. autosizingtype: col
==============================================================================================================

- No. 82 결함(据付調査(설치 조사)	SET::set_suetsuke_chosa.xfdl(Menu: 4-10) ==> 수정 완료 [▲▲▲]
1. 설치 조사 화면의 초기 상태에서 상단의 Div의 높이가 너무 큼 
<!--// 修正[divSearch height="211" ==> height="59"]: 2018.02.06, by JIN TAE MAN //-->
<!-- <Div id="divSearch" taborder="11" position="absolute" left="8" width="1004" top="37" height="211" scrollbars="none" cssclass="line_standard">-->
<Div id="divSearch" taborder="11" position="absolute" left="8" width="1004" top="37" height="59" scrollbars="none" cssclass="line_standard"> 
==============================================================================================================
 
- No. 52 결함(故障?容一?(고장 내용 목록) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> 확인 완료 [▲▲▲] 
1. 현상: 엑셀다운로드 안됨 
2. 조치:  [월 6일(화) FormCommon.xjs 파일 엑셀 alert 추가 후 다시 확인 요청
==============================================================================================================

- No. 94 결함(交換予定登?(교환 예정 등록)) SET::set_koki_koukan.xfdl(Menu: T_ 4-10-2)  ==> 수정 완료 [▲▲▲]
1. 교환 예정 등록 화면(SET::set_koki_koukan.xfdl)에서 설치 일정 상황 화면(SET::set_schedule_jokyo.xfdl)으로 전환 할 때 검색 처리가 실행되지 않음 
==> 폼 로딩시 PC의 경우 만 자동 조회 가능 
- 1. /set_koki_koukan.xfdl 파일에서 
this.btnF3_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	//alert("[/set_koki_koukan.xfdl] [btnF3_onclick()] ==> [설치 일정 상황 버튼 클릭 Event] [TEST_01]" );  
 
	application.gvKokiKoukan = {};
	application.gvKokiKoukan.dsSearch = new Dataset();
	application.gvKokiKoukan.dsSearch.copyData(this.dsSearched);
	application.gvKokiKoukan.wh_cd = this.dsSearched.getColumn(0, "WH_CD");
	application.gvKokiKoukan.wh_name = this.dsSearched.getColumn(0, "WH_NAME");
	application.gvKokiKoukan.kibou_ymd_from = this.dsSearched.getColumn(0, "TAISHO_YM_FROM") + "01";
	application.gvKokiKoukan.kibou_ymd_to = this.gfn_addDate(this.gfn_addMonth(this.dsSearched.getColumn(0, "TAISHO_YM_TO") + "01", 1), -1);
	application.gvKokiKoukan.url = "SET::set_koki_koukan.xfdl";
	//alert("[/set_koki_koukan.xfdl] [btnF3_onclick()] ==> [설치 일정 상황 버튼 클릭 Event] [TEST_02] [wh_cd]"+ application.gvKokiKoukan.wh_cd
		+"[wh_name]"+ application.gvKokiKoukan.wh_name +"[kibou_ymd_from]"+ application.gvKokiKoukan.kibou_ymd_from 
		+"[kibou_ymd_to]"+ application.gvKokiKoukan.kibou_ymd_to );  
	
	this.go("SET::set_schedule_jokyo.xfdl");		// 설치 일정 상황 화면(SET::set_schedule_jokyo.xfdl)으로  URL 전환
}

- 2. /set_schedule_jokyo.xfdl 파일에서 
this.set_shedule_jokyo_onload = function(obj:Form,e:nexacro.LoadEventInfo)
{
	//alert("[/set_schedule_jokyo.xfdl] [set_shedule_jokyo_onload()] ==> [T: 일정 상황 화면] [폼 로딩] [TEST_01]" ); 
 
 	//if (!application.gvHybridFlg) { // PCの場合(タブレットは?面レイアウト?更時) 	 // 修正: 2018.02.06, by JIN TAE MAN  
		// ?面遷移判定
		this.fn_judgeTransition();
	//} 	// 修正: 2018.02.06, by JIN TAE MAN   
}  

this.fn_callback_search = function(strSvcId, nErrorCode, strErrorMsg)
{
	alert("[/set_schedule_jokyo.xfdl] [fn_callback_search()] ==> [검색 결과 callback] [TEST_01] [strSvcId]"+ strSvcId +"[nErrorCode]"+ nErrorCode +"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) { 
		if (this.dsListOrg.rowcount > 0) {
			if (application.gvHybridFlg) {
				// 一?ペ?ジ表示
				this.setStepIndex(1);   //  ===> this.setStepIndex(1);  に携?電話の?面
			} else {
				if (this.openFlg["search"] == 1) {
					// ?索エリアは閉じる
					this.divSearch_imgAction_onclick();
				}
			}
		} 
	}
}
==============================================================================================================

- JAVA에서 DB 쿼리 찾기 @@@
/SheduleJokyoS.java ==> /SheduleJokyo.java
/SheduleJokyoMapper.java   ===> /SheduleJokyoMapper.xml

- 1. /set_schedule_jokyo.xfdl 파일에서 
this.fn_search = function()
{  
	trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [콜백] [02. dsSearch, 결과]"+ this.dsSearch.getRowCount() 
	+"[dsSearch.saveXML()]  \n"+ this.dsSearch.saveXML() );
	//<Col id="KIBOU_YMD_FROM">20180201</Col>   ==> 조회 조건(설치 예정일) @@@
	//<Col id="KIBOU_YMD_TO">20180228</Col>		==> 조회 조건(설치 예정일) @@@
	//<Col id="LANG_NO">0</Col>								==> 조회 조건(언어 코드) @@
		
	this.gfn_comTransaction("search"
		, "DataSrv::setchi/SheduleJokyoS/search"
		, "dsParam=dsSearch"
		, "dsListOrg=dsList"
		, ""
		, "fn_callback_search");
}
---------------------------------------------------------------------------

- 2. /SheduleJokyoS.java 파일에서 
@Command(value = "search")
    public void search() {
    	System.out.println("[/SheduleJokyoS.java] [search()] ==> [TEST_01]" );
		
		sqlSession.select(SheduleJokyoMapper.SEARCH, param, handler);
		System.out.println("[/SheduleJokyoS.java] [search()] ==> [SheduleJokyoMapper.SEARCH]"+ SheduleJokyoMapper.SEARCH );
		System.out.println("[/SheduleJokyoS.java] [search()] ==> [PROC_NAME]"+ PROC_NAME +"[51. 설치 일정 상황 조회 결과]"+ dsList.getRowCount() );
	}
}		

- 3. /SheduleJokyoMapper.java 파일에서 
<select id="search"
	parameterType="jp.co.hiscom.web.moms.dto.setchi.SheduleJokyoSearch" resultMap="SheduleJokyoListMap">
	select
		A.SETCHI_WH_RT
		, A.KIBOU_YMD
		, B.DENPYO_COUNT
		, B.SEKISAI_SU
	from
	(/* ?索?象のル?トを抽出 */
		select distinct
			S.SETCHI_WH_RT
			, S.SETCHI_WH
			, S.SETCHI_RT
			, S.KIBOU_YMD
		<include refid="search_table" />
		<include refid="search_condition" />
	) A,
	(/* ?日の積載?を抽出 */
		select
			S.SETCHI_WH_RT
			, S.SETCHI_WH
			, S.SETCHI_RT
			, S.KIBOU_YMD
			, SUM(S.DENPYO_COUNT) DENPYO_COUNT
			, NVL(RS.SEKISAI_SU, NVL(RT.DEF_SEKISAI_SU, 0)) as SEKISAI_SU
		<include refid="search_table" />
		group by
			S.SETCHI_WH_RT
			, S.SETCHI_WH
			, S.SETCHI_RT
			, S.KIBOU_YMD
			, NVL(RS.SEKISAI_SU, NVL(RT.DEF_SEKISAI_SU, 0))
	) B
	where A.SETCHI_WH = B.SETCHI_WH
	  and A.SETCHI_RT = B.SETCHI_RT
	  and A.KIBOU_YMD = B.KIBOU_YMD
	order by
		A.SETCHI_WH
		, A.SETCHI_RT
		, A.KIBOU_YMD
</select> 
==============================================================================================================

- nexacro 버전 확인 방법
1. nexacro studio에서 
1) Help > aboout nexacro studio(새창)
==> 현재 Nexa 버전 :14,0,1,1300(File Version: 2017, 4, 25,1
2. 소스에서 확인
 1) C:\projects\workspace\moms_Nexa\src\moms_Nexa\nexacro14lib\component/Accessibility.json
 {
	"name": "Accessibility",
	"version": "14.0.1.1900",   	// ===> 버전 확인 @@@
	"description": "nexacro platform 14 Unified Framework Library",
	"license": "",
	"scripts": [
			"CompBase/Accessibility.js",
	]
}
//@ sourceURL=Accessibility.json
----------------------------------------------------------------------------------------------------------------------------------

- nexacro Client 라이센스 입력
1. nexacro studio에서 
1) moms_Nexa.xadl: 마우스 우 클릭 > Properties(새창)
 가. Miscl > licenseurl: nexacro14_client_license.xml
 ==> nexacro14_client_license.xml파일 복사해서 C:\projects\workspace\moms_Nexa\WebContent\WEB-INF\lib 폴더에 넣어 둘 것
==============================================================================================================
 
- Notepad++에서 스타일 설정 
0. 상단 메뉴 > 설정(T) > 스타일 설정(새창)
1. 언어: Global Styles
2. 타일: Global override
3. 색상 스타일 
 1) 글자색: black ==> 전역 글자색 사용
 2) 배경색: 73, 176, 194 ==> 전역 배경색 사용(72, 225, 194) --> (76, 78, 194)
4: 글꼴 스타일(글꼴 변경)
 1) 글꼴 이름: 함초롬돋움      ==> 전역 글꼴 사용
 2) 크기: 10 ==> 전역  글꼭 크기 사용
 ==>  저장 후 닫기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.07(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 예비소집(19시, 대동초유치원), 미해결: 7건(3 + 3 + 1)

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 95 결함(修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> 확인 완료[▲▲▲]
1. 修理?況確認(수리 상태 확인)	SHU::shu_kosyou_irai_jokyo.xfdl 에서 計算機の入力(계산기입력) 누름  
  ==> 修理?績登?(수리 실적 등록) SHU::shu_kosyou_sagyo.xfdl  
장애 관리 표"장애 대응 상황"시트의 히스 컴 코멘트에도 기재했습니다만 
InternetExploer가 정상적으로 동작하지만 Chrome을 사용하면 No95의 현상이 발생합니다. ==> 문제 없음 
이쪽에서는 Chrome에서 실행했을 때는 정상으로 동작하면 동작하지 않는 경우가 있습니다. 
(주로 첫회 실시 시는 정상적으로 동작하지만 2차, 3차 실시할 때 비정상적인 동작을 합니다.) 
==> Ds 요청할 것 @@@@@@@@@

- / SHU::shu_kosyou_sagyo.xfdl
this.shu_kosyou_sagyo_onload = function(obj:Form,e:nexacro.LoadEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [폼 로딩] [T: 수리 실적 등록 화면][TEST_01]" ); 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [폼 로딩] [T: 수리 실적 등록 화면][TEST_01]" ); 
 
	this.fn_initMstSearch();
 }
 
this.fn_initMstSearch = function()
{
 	this.gfn_comTransaction("getKakuteiYm"
 				, "DataSrv::shuri/JissekiS/getKakuteiYm"
 				, ""	
 				, "dsSeikyuKakutei=dsSeikyuKakutei"
 				, ""
 				, "fn_initMstSearch_Callback");
}

 this.fn_initMstSearch_Callback = function(strSvcId, nErrorCode, strErrorMsg)
{
	this.fn_search();
}

this.fn_search = function()
{ 
	this.gfn_comTransaction("search" 
		, "DataSrv::shuri/JissekiS/searchList"
		, "dsParam=dsParam"	
		, "dsList=dsList"
		, ""
		, "fn_callback_search");
}

this.fn_callback_search = function(strSvcId, nErrorCode, strErrorMsg)
{
	if (nErrorCode == 0) { 
		// 테스트 데이타 생성 시작 =============================>  @@@@ 
		this.dsList.clearData();		// 테스트 데이타 생성 ==> 修正: 2018.02.01, by JIN TAE MAN  
	 
		var nRow = this.dsList.addRow(); 
		this.dsList.setColumn(nRow, "KOKI_CD", "1760246"); 
		this.dsList.setColumn(nRow, "SAGYO_DEN_NO", "1900033471");   		// 작업전표번호  
		this.dsList.setColumn(nRow, "UKETSUKE_YMD", "2018011");  
		this.dsList.setColumn(nRow, "SHURI_IRAI_JOKYO_NAME", " TEST_NAM");		 
		this.dsList.setColumn(nRow, "SAGYO_YMD", "20180201"); 
		this.dsList.setColumn(nRow, "SAGYO_KANRYO_YMD", "20180101"); 
		this.dsList.setColumn(nRow, "SHURI_IRAI_JOKYO_FLG", "1"); 
		this.dsList.setColumn(nRow, "LOCA_KANJI", "LOCA_KANJI"); 
		this.dsList.setColumn(nRow, "MIKAN_KBN", "MIKAN_KBN");  
		this.dsList.setColumn(nRow, "SAGYOSHA_NAME", "SAGYOSHA_NAME-800200");    // ============>
		this.dsList.setColumn(nRow, "SHURI_IRAI_NO", "170001938");		// 수리의뢰번호 
		this.dsList.setColumn(nRow, "MIKAN_NAME", "");
		this.dsList.setColumn(nRow, "HANBAI_KASHO_KANJI", " HANBAI_KASHO_KANJI");
		this.dsList.setColumn(nRow, "KSY_NAME", "SDM-SRC100"); 
		this.dsList.setColumn(nRow, "SENPO_TANTO_NAME", "SENPO_TANTO_NAME"); 
		//alert("[/shu_kosyou_sagyo.xfdl] [fn_callback_search()] ==> [콜백] [02. dsList, 결과]"+ this.dsList.getRowCount() 
		//	+"[dsList.saveXML()]  \n"+ this.dsList.saveXML() ); 
		// 테스트 데이타 생성 끝 ====================================================================================>  @@@@ 
	 
		if (this.dsList.rowcount > 0) {   
			this.fn_getDetail();
			return;
		}
	}
}

this.fn_getDetail = function()
{	  
	this.fn_clearSearchData();
	trace("[/shu_kosyou_sagyo.xfdl] [fn_getDetail()] ==> [fn_getDetail] [TEST_02]"); 
	
	this.dsHeader.clear();		// 修正: 2018.02.07, by JIN TAE MAN
	
	this.gfn_comTransaction("searchDetail"
		, "DataSrv::shuri/JissekiS/searchDetail"
		, "dsParam=dsParam"	
		, "dsHeader=dsShuriDenM dsSagDetail=dsShuriDenMSag dsSagyoBu=dsShuriDenMBu dsShuIraiNaiyo=dsShuriIraiNaiyo 
		dsOnlineKoshouNaiyou=dsOnlineKoshouNaiyou"
		, ""
		, "fn_callback_searchDetail");
}

this.fn_clearSearchData = function()
{
	trace("[/shu_kosyou_sagyo.xfdl] [fn_clearSearchData()] ==> [callback] [TEST_01]"); 

	// 請求額計クリア
	this.divInfo.Tab.tabSagDen.edt_seikyu_gaku_kei.set_value("");
	trace("[/shu_kosyou_sagyo.xfdl] [fn_clearSearchData()] ==> [callback] [TEST_02] [이미지 데이터의 삭제] ===> "); 
	
	// ?像デ?タの削除[이미지 데이터의 삭제]
	this.divInfo.Tab.tabPhoto.divImageList.fn_resetImage();
	trace("[/shu_kosyou_sagyo.xfdl] [fn_clearSearchData()] ==> [callback] [TEST_03]"); 
}

this.fn_callback_searchDetail = function(strSvcId, nErrorCode, strErrorMsg)
{ 
	//this.dsHeader.setColumn(nRow, "STAT_FLG", "1"); 	 	// TEST @@@ ==>
	this.dsHeader.setColumn(nRow, "STAT_FLG", null); 	 	// TEST @@@ ==>
	//his.dsList.setColumn(nRow, "STAT_FLG", "1"); 	 	// TEST @@@ ==>
 	this.dsList.setColumn(nRow, "STAT_FLG",  null);  	// TEST @@@ ==> 
	
	var listStatFlg = this.dsList.getColumn(this.dsList.rowposition, "STAT_FLG"); 
	var headStatFlg = this.dsHeader.getColumn(0, "STAT_FLG");	 
	
	if ((listStatFlg == 1) && (headStatFlg == 1)) {  	// Case 1
			this.btnF3.set_enable(true);  
			this.btnF4.set_enable(true);
			this.btnF5.set_enable(true);
			this.btnF6.set_enable(true);
			this.btnF7.set_enable(false);
			this.btnF8.set_enable(true);
			this.btnF11.set_enable(true);
			
			this.divInfo.Tab.tabPhoto.btnSearch.set_enable(true);
			this.divInfo.Tab.tabPhoto.btnDelete.set_enable(true); 
				
		} else {	// Case 4
			trace("[/shu_kosyou_sagyo.xfdl] [fn_callback_searchDetail()] ==> [callback] [TEST_24]" ); 
		
			this.btnF3.set_enable(false);
			this.btnF4.set_enable(false);
			this.btnF5.set_enable(false);
			this.btnF6.set_enable(false);
			this.btnF7.set_enable(false);
			this.btnF8.set_enable(false);
			this.btnF11.set_enable(false);
			
			this.divInfo.Tab.tabPhoto.btnSearch.set_enable(false);
			this.divInfo.Tab.tabPhoto.btnDelete.set_enable(false); 
		}
		this.divInfo.Tab.tabPhoto.btnDelete.set_enable(false); 
    }		
} 
----------------------------------------------------------------------------------------------------

- / CameraSIForm.xfdl
this.fn_resetImage = function()
{
	trace("[/CameraSIForm.xfdl] [fn_resetImage()] ==> [TEST_01]");   
 
	for (var i = this.components.length - 1; i >= 0; i--) {
		trace("[/CameraSIForm.xfdl] [fn_resetImage()] ==> [TEST_11]");  
		if (this.components[i].name.indexOf('divImage') >= 0) { sork
			trace("[/CameraSIForm.xfdl] [fn_resetImage()] ==> [TEST_12");  
			this.removeChild(this.components[i].name).destroy();
		}
	}
 
	this.divs = [];
	this.imageParams = [];
	trace("[/CameraSIForm.xfdl] [fn_resetImage()] ==> [TEST_end]");  
}
==============================================================================================================

- No. 52 결함(簿?取り?み(장부 가액 캡처) SET::set_import_boka.xfdl(Menu: 4-17-3) ==> 문의할 것 [▲▲▲]
1. 현상: 엑셀 업로드가 안됨 ==> TO-BE 고객 선터에 문의함 
- /set_import_boka.xfdl 파일에서
this.btnF1_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 버튼 누름] [TEST_01]" ); 

	this.fn_importExcel();
}

this.fn_importExcel = function()
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 처리] [TEST_01]" ); 

	var file = this.fdlSelect.open("取り?みファイル選?", FileDialog.LOAD); // 캡처 파일 선택

	if (this.gfn_isNull(file)) { 
		trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 처리] [TEST_41]" ); 
		return;
	}
	trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 처리] [TEST_end]" ); // 여기서 그냥 멈춥니다. @@@@@
}
==============================================================================================================

- 령경이 노트북 주문(큰 누나가 함) ==> 성능 안 좋음(반품할 것)
1. 령경이 노트북 택배로 도착하면 OS, 프로그램 설치할 것 ==> 설날에 포항집으로 가져갈 것. 
- LG 울트라PC 15UD370-LX1TK [SSD 512G (교체)], 가격: 698,200원
http://www.enuri.com/detail.jsp?modelno=17693975&condiDelivery=N
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.08(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 ==> 미해결: 7건(3 + 3 + 1), 일본측에서 함부로 소스 고쳐 달라고 해서 서로  짜증남

- 일본 히스콤 H-PLM 전환 Prj[★]
- No. 95 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1) ==> 확인 요청[▲▲▲]
1. 修理?況確認(수리 상태 확인) SHU::shu_kosyou_irai_jokyo.xfdl 에서 計算機の入力(계산기입력) 누름
2. 현상: 수리 상황 조회 화면 계산서 입력 버튼에서 화면 전환 된 경우 입력 항목이 비활성화됨
이쪽에서는 Chrome에서 실행했을 때는 정상으로 동작하면 동작하지 않는 경우가 있습니다. 
(주로 첫회 실시 시는 정상적으로 동작하지만 2차, 3차 실시할 때 비정상적인 동작을 합니다.) 
==============================================================================================================

- No. 45 결함(設置?撤??移動?玉突?交換?績登?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> 확인 완료 [▲▲▲]
1. 현상: Grid에서 금액 계산되지 않는다.  ==> 이미 해결된 것으로 추정됨  ==> 설명 메일 보냄
==============================================================================================================

- No. 24 결함(修理 日報(수리 일보)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> 수정 완료 [▲▲▲]
1. 현상1: PDF 버튼이 작동하지 않습니다. 
2. 조치: 24 결함은 java단에서 PDFの作成을 하는 과정에서 에러가 발생하는 것으로 추정됩니다. ==> 완료
3. 현상2: 일보를 추가하고 작업 날짜를 변경한 경우 별 작업 날짜이지만 동일 작업 날짜가 존재하고 있는 에러가 나올 것이라는 장애입니다.
- /SHU::shu_daily_report.xfdl
this.divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged = function(obj:Calendar, e:ChangeEventInfo)
{ 
	var listRow = this.dsDailyReportList.rowposition;
	trace("[/shu_kosyou_sagyo.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [dsDailyReportList_SAGYO_YMD]"+ 
	this.dsDailyReportList.getColumn(listRow, "SAGYO_YMD") );  
	
	//if (this.fn_checkDailyReportKey(this.dsDailyReportList.getColumn(listRow, "SAGYOSHA_CD"), e.postvalue) >= 0) {
	if (this.fn_checkDailyReportKey(this.dsDailyReportList.getColumn(listRow, "SAGYOSHA_CD"), e.postvalue) >= 0) {   
	//  修正: 2018.02.08, by JIN TAE MAN ==> 동일한 작업 날짜 이면]  
		trace("[/shu_daily_report.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [TEST_41] [동일한 작업 날짜 이면]" );
 
		this.gfn_message(5041);		//동일한 작업 날짜는 입력 할 수 없습니다.
		obj.set_value(e.prevalue);
		return;
	} 
	trace("[/shu_daily_report.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [TEST_end]" );
}

this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow; 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");		// 修正[원상복구]: 2018.02.08, by JIN TAE MAN 
  
	return targetRow;
}
==============================================================================================================

- No. 52 결함(簿?取り?み(장부 가액 캡처) SET::set_import_boka.xfdl(Menu: 4-17-3) ==> 확인 완료[▲▲▲]
1. 현상: 엑셀 업로드가 안됨 ==> TO-BE 고객 선터에 문의함 
 1) 넥사크로에서 구현하는 엑셀 Import / Export 기능 ==> http://tobetong.com/?p=3961
 2) Excel Export/Import 샘플 ==> http://www.xplatform.co.kr:8080/Next_JSP/NC_Excel/index.html
 3) Excel Export/Import war 파일 다운로드: http://support.tobesoft.co.kr/Support/index.html
  > nexacro platform14 > Server > Excel Export/Import  ==>  nexacro-xeni.war_2017.12.15_01.zip : 다운로드
--------------------------------------------------------------------------------------------------------------

- 현재 프로그램에서는  엑셀 업로드가 안됨
1. 현재 소스는 Xplatform용으로 개발되어 있음
2. nexacro에서는  FileDialog.open를 지원 안함 
 1) FileDialog.open(strTitle,constOpenMode,strInitialPath,strFileName)
3. nexacro에서는 구현하는 엑셀 Import 기능을 새로 개발 해야 함
  1) war 경로 ==> C:\00. Back_up\2018.02\02. Sample_Excel\nexacro-xeni.war_2017.12.15_01\nexacro-xeni\WEB-INF\lib
  2) poi-3.1*.jar을 이용해서 nexacro-xeni-1.1.jar가 엑셀 import를 함(주의: poi-3.1*.jar 버전이 안 맞으면 충돌이 날 수도 있음)
--------------------------------------------------------------------------------------------------------------

- /set_import_boka.xfdl 파일에서
this.btnF1_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처(Import Excel) 버튼 누름] [TEST_01]" ); 

	this.fn_importExcel();
}

this.fn_importExcel = function()
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처(Import Excel) 처리] [TEST_01]" ); 

	var file = this.fdlSelect.open("取り?みファイル選?", FileDialog.LOAD); // 캡처 파일 선택  ==> FileDialog.open 에러

	if (this.gfn_isNull(file)) { 
		trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 처리] [TEST_41]" ); 
		return;
	}
	trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [캡처 처리] [TEST_end]" ); // 여기서 그냥 멈춥니다. @@@@@
}
==============================================================================================================

- MS Office 2013 패치
1. K.J_130306.exe 실행
2. Advanced Mode > Office 2013 Activator > Forever Office KMS Activation > 관리자: KJ-KMS Activator(새창뜸) > 
Press any key to exit...: 키 누름(완료됨)
3. 결과 확인
 1) MS word: 열기 > 파일 메뉴(맨위): 클릭 > 계정(왼쪽 메뉴): 클릭 > 계정(메인) > 제품정보 > 제품 인증됨 
==============================================================================================================
 
- OS X 버전 및 빌드 번호 확인하기(Mac에서)
1. Apple(?) 메뉴에서 '이 Mac에 관하여'를 클릭
macOS Sierra 버전: 10.12.6
maxBook Pro(Retina, 13-inch, Early 2015)
일련번호: C02TL4WNFVH3
-------------------------------------------------------------------------------------------------

2. Mac에 관하여' 창에서 '시스템 리포트...' 버튼 클릭 후 '소프트웨어' 항목을 클릭
하드웨어 개요:
 
모델명: MacBook Pro
모델 식별자: MacBookPro12,1
프로세서 이름: Intel Core i5
프로세서 속도: 2.7 GHz
프로세서 개수: 1
총 코어 개수: 
L2 캐시(코어당): 256 KB
L3 캐시: 3 MB
메모리: 8 GB
Boot ROM 버전: MBP121.0171.B00
SMC 버전(시스템): 2.28f7
일련 번호(시스템): C02TL4WNFVH3
하드웨어 UUID: 25A89CC4-F525-5F68-9EBD-564D5BD00E6E 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.09(금) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 22:30 ==> 미해결: 7건(3 + 3 + 1), 세븐일레븐 대림역점에서 생수(6개: 2천 5백원) 사가지고 회사로 출근
								이석부 사장이 일본 히스콤 Prj 완료 했다고 아이얏트 호텔 숙박비(25만원) 줌
								석식(짜장면, 볶음밥, 탕수육: 청운각, 이사장, 오이사, 구부장, 이부장), 평창동계올림픽 개막식(20시, 평창)

- 일본 히스콤 H-PLM 전환 Prj[★]
- No. 95 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1) ==> 완료[▲▲▲]
1. 修理?況確認(수리 상태 확인) SHU::shu_kosyou_irai_jokyo.xfdl 에서 計算機の入力(계산기입력) 누름
2. 현상: 수리 상황 조회 화면 계산서 입력 버튼에서 화면 전환 된 경우 입력 항목이 비활성화됨
이쪽에서는 Chrome에서 실행했을 때는 정상으로 동작하면 동작하지 않는 경우가 있습니다. 
(주로 첫회 실시 시는 정상적으로 동작하지만 2차, 3차 실시할 때 비정상적인 동작을 합니다.) 
==> 일본쪽에서 브라우저로 인한 문제 같아서 한국 대응은 완료 처리하라고 함.
==============================================================================================================
 
- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 문의할 것 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
- SHU::shu_kosyou_sagyo.xfdl 파일에서
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [카메라 버튼 클릭 Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheightを元に??比が自動設定される[imageheight를 바탕으로 ?? 비가 자동 설정되는]
	this.camera.gettype = 1;
	this.camera.takePicture();  // 에러 발생  ==> 까만 화면 잠깐 나온 후 프로그램이 종료됨 @@@
}
------------------------------------------------------------------------------------------------------

3. TO-BE 기술 지원: 
xcode 에서 앱 빌드시에 카메라에 대한 권한 설정을 해주셔야 합니다. 권한 설정에 의해 camera 사용시 종료가 발생이 되는것으로 
보여 집니다. 
xcode -> Supporting Files -> info.plist 
Privacy-Camera Usage Description 설정을 해주시기 바랍니다. 
------------------------------------------------------------------

- info.plist 파일에서(카메라 접근)
Camera :
Key : Privacy - Camera Usage Description
Value : $(PRODUCT_NAME) camera use
출처: http://trycatching.tistory.com/42  ==> http://kka7.tistory.com/40
NSCameraUsageDescription
==============================================================================================================

- No. 77 결함(修理?績登?(수리 실적 등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4) ==> 수정 완료 [▲▲▲]
==> TO-BE 원격 지원: 2440-1721
1. 현상: 첨부한 그림(No. 77_06.png)처럼 저장을 누르면 gfn_message(5058); 후 return을 하면 중간 지점에
멈춥니다. TEST_50번처럼 작업일(SAGYO_YMD)을 널로 넣고 테스트 해보면	this.gfn_message(5005);
후 return을 하면 역시 중간 지점에 멈춥니다.  
2. 조치: nexacro14lib.zip 파일 업그레이드할 것
==> C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa_tab
1.  / 作業?況が「修理完了」かつ作業日が締め?理後の日付なら?更不可 
{
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 처리 실행] [TEST_01]" );  
	
	// 作業?況?連のチェック
	var sagyoJokyo = this.dsHeader.getColumn(0, "SHURI_IRAI_JOKYO_FLG"); 
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_03]" );  
	alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [sagyoJokyo]"+ sagyoJokyo 
	+"[this.JyoukyoKbn.shuri_kanryo]"+ this.JyoukyoKbn.shuri_kanryo 
		+"[SAGYO_KANRYO_YMD]"+ this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD") );  // 작업 완료 날짜가

	// 修理完了ではないが作業完了日が入力されている場合[수리 완료는 아니지만 작업 완료 날짜가 입력되는 경우]
	if (sagyoJokyo != this.JyoukyoKbn.shuri_kanryo
		&& !this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD"))) {
		alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_41] [this.gfn_message(5058): 
		수리가 완료되지 않기 때문에 작업 완료 날짜를 입력 할 수 없습니다.] " );  
		
		this.divInfo.Tab.tabSagDen.cal_sagyo_kanryo_ymd.setFocus();
		// 修理が完了していないため、作業完了日の入力はできません。[수리가 완료되지 않기 때문에 작업 완료 날짜를 입력 할 수 없습니다.] 
		this.gfn_message(5058);  // TEST @@@ ===>
		this.btnF6.set_enable(true);
		return;
	}
	
	// 作業日チェック[작업일 확인]
		if (this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_YMD"))) { //작업일
			//alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_61]" );
			alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [저장 클릭 Event] [TEST_41] [작업일 확인] " );  
			
			this.divInfo.Tab.set_tabindex(0);
			this.divInfo.Tab.tabSagDen.cal_sagyo_ymd.setFocus();
			// 作業日が選?されていません[작업 날짜가 선택되어 있지 않습니다]
			this.gfn_message(5005);
			this.btnF6.set_enable(true);
			return;
		}	  // TEST @@@ ===>
}
---------------------------------------------------------------------------------------------------------------------------------

function divInfo_Tab_tabSagDen_cal_sagyo_ymd_ondayclick(obj:Calendar, e:CalendarDayClickEventInfo)
{
	// 作業日カレンダ?の日付クリック時、作業?況へ移動[작업일 달력 날짜 클릭시 작업 상황에 이동]
	//  Tablet版の場合、oncanged が誤動作する?[Tablet 버전의 경우 oncanged이 오작동하기 위해]
	this.divInfo.Tab.tabSagDen.cmb_sagyo_jokyo.setFocus();
}
==============================================================================================================

- No. 24 결함(修理 日報(수리 일보)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> 재수정 완료 [▲▲▲]
1. 현상: 작업일(달력)을 선택하면 "동일한 작업 날짜는 입력 할 수 없습니다."라는 에러 발생
2. 조치:
this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow; 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");
	
	// Hybrid ??
	//if (application.gvHybridFlg) { // 修正: 2018.02.05, by JIN TAE MAN 
		if (targetRow == this.dsDailyReportList.rowposition) {
		targetRow = -1;
		}
	//}
	
	return targetRow;
}
==============================================================================================================

- No. 45 결함(設置?撤??移動?玉突?交換?績登?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> 재수정 완료 [▲▲▲]
1. 현상 :
 1) 합계  셀에 금액이 표시 되지않는문제
 2) 그리드의 금액표시가 짤려 표현되는 문제 ==> 2번은 아직 미해결 
SET::set_setchi_jisseki_tab_kiki_shin_sag.xfdl 
- Grid 속성 변경: none, allband, col --> col , allband, none
- Grid 속성 변경: none, allband, col --> col , allband, none
<!--// 修正: 2018.02.09, by JIN TAE MAN //-->
<!--// <Grid id="grdKikiShinMSag" cssclass="head_standard" taborder="0" binddataset="dsKikiShinMSag" u
seinputpanel="false" autosizingtype="col" autosizebandtype="allband" oncellclick="divInfo_tabInfo_tabHeader_grdKikiShinMSag_oncellclick" 
ontextchange="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchange" ontextchanged="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchanged" 
position="absolute" left="0" width="936" top="105px" bottom="5px" autofittype="none" formatid="default" onheadclick="grdKikiShinMSag_onheadclick">  //-->
<Grid id="grdKikiShinMSag" cssclass="head_standard" taborder="0" binddataset="dsKikiShinMSag" 
useinputpanel="false" autosizingtype="none" autosizebandtype="allband" oncellclick="divInfo_tabInfo_tabHeader_grdKikiShinMSag_oncellclick" 
ontextchange="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchange" ontextchanged="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchanged" 
position="absolute" left="0" width="936" top="105px" bottom="5px" autofittype="col" formatid="default" onheadclick="grdKikiShinMSag_onheadclick">
==============================================================================================================

- No. 97 결함(借用機返却(차용 기계 반납)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> 수정 중  [▲▲▲]
1. 현상: 공통 팝업 호출 에러(개의 기계를 선택해도 아무런 정보가 설정되지 않음 )
 1) HTML5 버전에서는  공통 팝업(MstSearchKokiCd) 호출을 해서 조회를 하고 선택 후 창닫기[this.close(dsRes);]를
하면 호출한 팝업 함수의 자리[ [팝업_내려받기] [TEST_04]]로 돌아 오지 못 합니다.
그리고 "TEST_53 호출 " 라인을 타지 않고 그냥 멈추어 버립니다.
2. 현상: No.97의 대응으로 전 화면 검색용 아이 화면이 표시되지 않게 되어 있으므로 처리를 부탁 드립니다.   ==> 추가 요구 사항
- HAK::hak_shakuyoki_henkyaku.xfdl 파일에서
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// 팝업 처리 ==> @@@@@
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업_내려받기] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST_53 호출  @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [팝업] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd);
	} 
}
==============================================================================================================

- tomcat 서버 실행 에러
1. 현상: 
SE 13:29:31:302 TypeError: Cannot read property 'all' of undefined
at line 151, in function: nexacro.Form.fn_callback_props in http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/Base/menu.xfdl.js
at line 1, in function: eval in eval at gfn_comTransactionCallBack (http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/Common/FormCommon.xjs.js)

C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa2 폴더 삭제
다시 빌드시

- tomcat 서버 실행 에러
VM3700:1 GET http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/moms_Nexa_tab.xadl.js 404 (Not Found)
(anonymous) @ VM3700:1
nexacro.__startCommunication @ SystemBase_HTML5.js:7820
nexacro._startCommunication @ SystemBase.js:4713
nexacro._loadJSModule @ SystemBase.js:4510
_pLoadManager.loadMainModule @ Platform.js:897
_pApplication.loadADL @ Platform.js:7828
_pApplication.load @ Platform.js:7781
oninitframework @ index.html:143
onload @ index.html:137
Platform_HTML5.js:3909 SE 13:32:23:281 로딩하는 중에 에러가 발생하였습니다. 주소가 정확한지 확인하고 다시 시도하십시오.
 [http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/moms_Nexa_tab.xadl.js]
==============================================================================================================

- 령경이 노트북 주문(내가 주문 함 ==>  큰 누나에한테 90만원 받으면 됨)
1. 령경이 노트북 택배로 도착하면 OS, 프로그램 설치할 것 ==> 설날에 포항집으로 가져갈 것. 
2. 2018 NEW LG 노트북 13UD580-GX50K, 가격: 787,550원(쿠폰적용가)
http://www.ticketmonster.co.kr/deal/710268718
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==>  주말 근무, 히스콤 H-PLM 전환 Prj 미개발 건수: 2건 남음[오늘 목표 1건으로 줄이기]

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 문의할 것 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
- SHU::shu_kosyou_sagyo.xfdl 파일에서
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [카메라 버튼 클릭 Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheightを元に??比が自動設定される[imageheight를 바탕으로 ?? 비가 자동 설정되는]
	this.camera.gettype = 1;
	this.camera.takePicture();  // 에러 발생  ==> 까만 화면 잠깐 나온 후 프로그램이 종료됨 @@@
}
==============================================================================================================

- No. 102 결함(?業所 設置スケジュ?ル登?(영업소 설치 일정 등록)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> 수정 포기[▲▲▲]
1. 현상: 종료 시간을 시작 시간 이전하면 차트가 표시되지 않습니다 
2. 테스트 작업일: -> 2016-12-29, 2016-11-21, 2016-03-03 ==> 2017-12-22[조회 안됨: 일본쪽 데이타]
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 ==>  주말 근무, 히스콤 H-PLM 전환 Prj 미개발 건수: 2건 남음[오늘 목표 1건으로 줄이기]

- 일본 히스콤 H-PLM 전환 Prj[★] 
- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 문의할 것 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
- SHU::shu_kosyou_sagyo.xfdl 파일에서
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [카메라 버튼 클릭 Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheightを元に??比が自動設定される[imageheight를 바탕으로 ?? 비가 자동 설정되는]
	this.camera.gettype = 1;
	this.camera.takePicture();  // 에러 발생  ==> 까만 화면 잠깐 나온 후 프로그램이 종료됨 @@@
}
------------------------------------------------------------------------------------------------------

3. TO-BE 기술 지원: 
xcode 에서 앱 빌드시에 카메라에 대한 권한 설정을 해주셔야 합니다. 권한 설정에 의해 camera 사용시 종료가 발생이 되는것으로 
보여 집니다. 
xcode -> Supporting Files -> info.plist파일에서(파일 열어서 추가할 것)
Camera :
Key : Privacy - Camera Usage Description
Value : $(PRODUCT_NAME) camera use
Photo :
Key    :  Privacy - Photo Library Usage Description    
Value :  $(PRODUCT_NAME) photo use
==============================================================================================================

- Thread 4: signal SIGABRT 에러 발생
1. 원인: 해당 메인 라인에서 SIGABRT를 얻으면 프로그램에서 예외가 발생했음을 의미합니다. 스택 추적은 어디에서 예외가 
잡히는 지 보여줍니다. 보통 이것은 도움이되지 않습니다.

2. 원인2: SIGABRT (신호 중단) 오류는 시작 순서 중 런타임 오류 또는 읽을 수없는 불량한 사용자 인터페이스 파일과 같이 
정말로 나쁜 문제로 인해 응용 프로그램이 의도적으로 손상된 것을 의미합니다. 클래스 선언에 대한 명령어 포인터를 보는 
이유는 문제가 직접 작성한 코드 행과 관련이 없으므로 Xcode는 표시와 관련이 없습니다. 대신 Cocoa 소프트웨어 내에서 
오류가 발생하고 있습니다. 즉, 앱 정보에 구성 문제가 있거나 스토리 보드 관련 문제가있을 수 있습니다.
==============================================================================================================

- H-PLM 로컬 구동 설정(9시, 회사)
1. 히스콤 moms_Nexa_OffLine ==> http://192.168.0.30:8080/moms_Nexa2/moms_Nexa_OffLine/
2. 로컬 IP로 변경 안되는 문제 문의 할 것
http://192.168.0.30:8080/moms_Nexa/dispatcher/ ==> http://127.0.0.1:8080/moms_Nexa/dispatcher/  
==============================================================================================================

- 령경이 노트북 OS 설치
1. 현상: USB를 인식 못함
 1) F2 > BIOS 진입 > Booting Configuration(화면) ==> Boot Order 메뉴에서 
USB HDD: 맨 위로 끌어올려주기가 안됨 ==> C 드라이브에 HDD가 먼저 인식됨
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.02.12(월) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 20:30 ==> 식권 환불할 것(완료), 령경 노트북 셋팅완료), 중식(부페): 이부장, 구부장 ==> 내가 쏨

- 일본 히스콤 H-PLM 전환 Prj[★]
- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 문의할 것 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
==> 관련 내용 오이사에게 메일로 보냄 --> 오이사가 TO-BE에 기술 요청 한다고 함
==============================================================================================================

- H-PLM 로컬 구동 설정(9시, 회사)  ==> 완료[▲▲▲]
1. moms_Nexa_OffLine(ipad용은 기존 URL 사용) ==> http://192.168.0.30:8080/moms_Nexa_tab/ 
 1) /moms_Nexa.xprj로 사용할 것(moms_Nexa_OffLine.xprj 사용하면 URL이 이전 소스로 감)
 2) /moms_Nexa.xprj로 사용할 것(moms_Nexa_OffLine.xprj 사용하면 URL이 이전 소스로 감)
2. moms_Nexa_OffLine(nexacro-Runtime, nexacro-HTML5]) ==> http://192.168.0.30:8080/moms_Nexa2/moms_Nexa_OffLine/
 1) /moms_Nexa_OffLine.xprj로 사용할 것 
 2) DataSrv를 수정 가능: http://192.168.0.30:8080/moms_Nexa_tab/  ==> http://127.0.0.1:8080/moms_Nexa/dispatcher/
==============================================================================================================

- 령경이 노트북 OS 설치(10시)  ==> 완료[▲▲▲]
1. 현상: USB를 인식 못함
 1) F2 > BIOS 진입 > Booting Configuration(화면) ==> Boot Order 메뉴에서 
USB HDD: 꽃아 놓은 USB명(SANDISK Z50 Blade 16GB DISK)이 표시 되어야 함
==> Security Disabled 됨: 설치용 USB OS가 NTFS 방식이라서 안됨 ==> FAT32 방식으로 변경해서 설치용 USB OS를 다시 만들라고 함
==> UEFI 모드로 USB 부팅하기 위해서는 FAT32 방식 이여야 설치된다고 함
(이경일 부장이 USB로 만들어 줌)
  2) Rufus 윈도우 UEFI 설치 디스크 USB 만들기 ==> http://prolite.tistory.com/571
2. 드라이버 설치
 1) D: 드라이브에 깔려 있는 LG DnA Center Plus로 드라이버를 설치(Autoplay 더블 클릭)
3. 2018 NEW LG 노트북 13UD580-GX50K, 가격: 787,550원(쿠폰적용가) 
http://www.ticketmonster.co.kr/deal/710268718 
==============================================================================================================

- Team Viewer[옆 HP 노트북(GI/GI)]
원격제어 ID: 592 642 267(592642267)
비밀번호: 4515
https://www.teamviewer.com/ko/?pid=google.tv.kr_sn_desk_brand_teamviewermisspeling_ex_tv12.s.kr&gclid=CjwKCAiA8P_TBRA9EiwAJrpHM99XbLsjDejqofreaGtQ8-ZuoHxtd8zqalPoKyAhuy5Hq16NeDiylxoC5JEQAvD_BwE
http://comterman.tistory.com/548
-------------------------------------------------------------------------------------------------------

- Team Viewer[회사에 있는 내 노트북]
원격제어 ID:592 773 019(592773019)
비밀번호: 4427 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.13(화) 작업 ■■■■■■■■■■■■■■■■■■
----> 09:00 ~ 18:20 ==> 은행연합회 Prj 투입(9시, 명동), 중식(정식: 카톨릭 회관 식당 -> 정차장, 박대리, 강전관 과장이 사 줌)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 프로젝트 인력
1. (주) 지아이데이타 ==> 박일경 부장(PL: 프리랜서), 정현수 차장(인수 인계자: 지아이데이타), 강전관 과장, 박건유 대리
2. (주) LG NCS ==> 이철우 선임(PM), 이준복 책임(팀장)
3. 프리랜서 ==> 이윤석 차장(AA), 김범준 차장(공인인증서)
4. (주) 서화 ==> 최 과장, 이 대리
5. 은형연합회 고객 ==> 최상욱 과장, 김지영 대리
==============================================================================================================

- 은행연합회 인터넷서비스 시스템 고도화 프로젝트 정보
1. 프로젝트명: 인터넷서비스 시스템 고도화 및 신규 서비스 구축 프로젝트
2. 기간: 2017.10.31 ~ 2018.03.31
3. 장소: 은행연합회 15층  6회의실(을지로입구역 5번 출구) ==> 주소: 서울시 중구 명동11길 19(명동1가) 15층 6회의실
4. 기타
 1) ProWeb[소스 분석 어려움, 난이도↓] (티맥스 소프트) --> Nexacro 전환
 2) 투입 인력 업무 전문성↓, 공통Ⅹ, 업체간 불협화음 ↑
==============================================================================================================

- 엑셀에서 한글명 깨짐
1. 로컬 서버에서는 잘됨
2. JEUS 서버에서 한글 깨짐 ==> 서버 문제로 추정됨
 1) kO_KR_EUCKR ==> UTF-8
==============================================================================================================

- JAVA에서 에러 수정 @@@
1. abc.equals("");	==> "".equals("abc");
2. try ~ catch()에서 Exception의 구체적 사용
} catch (Exception re) 
	re.printStackTrace(s);Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
}
==>
} catch (RuntimeException re) 
	Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
}

3. printStackTrace는 Logger.getLogger로 변경 사용
re.printStackTrace(s);
==>
Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
==============================================================================================================

- 특수 문자
★▲☎◆▲■▣▣← →↓↑
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.14(수) 작업 ■■■■■■■■■■■■■■■■■■
----> 06:40 ~ 18:20 ==> 집에서 델 모니터(P2217H) 가져옴

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 세금우대 내역조회 및 관리 분석(BIZTX_T0101) 
- 로그(Nexa에서)
trace("[/BIZTX_T0101.xfdl] [BIZTB_T0101_onload()] ==> [폼 로딩] [TEST_01]");
 
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_61] [요청 Param] [ds_search.getRowCount()]"+ this.ds_search.getRowCount() 
+"[ds_search.saveXML()]"+ this.ds_search.saveXML() );

alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_70_검색 결과] [this.errorcode]"+ this.errorcode );
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_71_검색 결과] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );
----------------------------------------------------------------------------------------------------------------------------------

- 로그(JAVA에서)
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [조회] [TEST_01]"); 
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [조회] [TEST_03] [요청 Param] [reqMap]"+ reqMap );

returnMap = biztxS0101Service.selectTaxDetailHistManageList(reqMap);   // 조회 결과 함수 호출
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [조회] [TEST_71] [조회 결과] [returnMap]"+ returnMap );
==============================================================================================================

- 로그2(Nexa에서)
this.div_search.edt_req_jumin_pre.set_value("1111111"); 	// 주민번호1(7자리)  	// TEST @@@ ===>
this.div_search.edt_req_jumin_mask.set_value("111111");  	// 주민번호2(6자리)		// TEST @@@ ===>
this.div_search.edt_req_jumin.set_value("1111111111111"); 	// 주민번호(13자리)  // TEST @@@ ===>
this.div_search.edt_sav_knd_cd.set_value("63");  // 저축종류코드  	// TEST @@@ ===> 
//alert("[/BIZTX_S0101.xfdl] [BIZTX_S0101_onload()] ==> [폼 로딩] [TEST_91] [edt_req_jumin_pre]"+ this.div_search.edt_req_jumin_pre.value
 +"[edt_req_jumin_mask]"+ this.div_search.edt_req_jumin_mask.value );
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_71] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );
alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_71] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );  
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [조회] [TEST_61] [gds_menu.getRowCount()]"+ application.gds_menu.getRowCount() 
+"[gds_menu.saveXML()]"+ application.gds_menu.saveXML() );
==============================================================================================================

- 글자 선택 에러(BIZSM_R0401: 메뉴관리)
1. 현상: text 입력시 글자 더블 클릭하면 글자 선택이 이상하게 됨
2. 원인: Iject 형식 ==> show Modal에서 문제가 있을 것으로 추정  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.15(목) 작업 ■■■■■■■■■■■■■■■■■■
----> 09:00 ~ 18:20 ==> 설날 연휴

- 설날 연휴  
03:00 기상
03:30 인터넷 서핑 ==> 유아학비 지원 자격 신청(9시)
11:00 중식
11:40 이발(스카이 미용실, 8천원)
13:20 귀가
13:30 염색(루옌이 해줌)
14:20 집출발(루옌, 수종)
14:30 대림역 출발
14:50 용산역 도착
15:10 포항행(15:10, 용산역, KTX)
17:35 포항역 도착
17:40 택시(포항역 -> 신항망 -> 남송교차로 -> 도미노 피자 장량점(두산 위브 아파트 근처)
18:05 나고미(참치전문점) 도착 ==> 승표, 봉춘, 진철, 주남이형 참석(참치 인당: 4만 4천원 주문)
		==> 승표(총무)가 상품권(5만 원), 선물 셋트 준비함
20:00 종료
20:00 중식(승표차)
23:50 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.16(금) 작업 ■■■■■■■■■■■■■■■■■■
----> 09:00 ~ 18:20 ==> 설날

- 설날  
09:00 기상
10:00 차례 지내기(수종이와 루옌이 도와줘서 편했음)
10:30 종료
10:50 조식
16:00 큰누나네 방문(매형, 령경) 
17:00 석식(떡국)
23:50 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.17(토) 작업 ■■■■■■■■■■■■■■■■■■
----> 09:00 ~ 18:20 ==> 설날 연휴

- 설날 연휴
09:00 기상
10:00 조식
10:30 령경이에게 노트북 사용법 설명해주고 LG 노트북 전달함
13:00 친구(태용) 만남
13:50 귀가
17:30 석식 
17:20 집출발 ==> 령경이에게 용돈 5만원 줌
17:45 포항역 도착
18:00 포항 출발(KTX)
20:30 용산역 도착
21:00 귀가
23:50 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.18(일) 작업 ■■■■■■■■■■■■■■■■■■
----> 09:00 ~ 18:20 ==> 설날 연휴

- 설날 연휴 
09:00 기상
12:00 중식 
12:30 집출발
13:00 구로리 공원(수종) 
15:30 종료
15:40 귀가
19:00 석식
20:00 수종 돌봄
00:00 OS 백업 툴 고스트 툴 설정 작업
==============================================================================================================
 
- OS 백업 툴 고스트(OS 백업) 툴(18시, 회사)
1. 부팅 USB 만들기 (RUFUS의 활용) - USB 메모리로 윈도우를 설치하는 방법 ===> http://nmain.tistory.com/71  
 1) 준비물
	1. USB메모리 (대략 4GB 이상)
	2. 설치할 윈도우의 iso 이미지
	3. RUFUS V1.3.3 (부팅가능한 USB를 만들어주는 프로그램)
2. 노튼 고스트(OS 최적화 툴) 설치 및 백업
 1) SGR3x64(win7_x64용).exe ==> http://the3.tistory.com/13
2. Shirt + F10 누르고요 DISKPART 라는 명령어로 찾아서 고스트 파일을 찾아서 실행  
-----------------------------------------------------------------------------------------------

- Rufus(부팅가능한 USB 드라이버를 쉬운방법) ==> https://rufus.akeo.ie/
1. ISO 이미지 파일로만 부팅용 USB 제작이 가능

- GPT파티션을 이용한 윈도우 10설치 : 네이버 블로그
https://m.blog.naver.com/PostView.nhn?blogId=loowi&logNo=220972771349&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
-------------------------------------------------------------------------------------------------------

1. 노튼 고스트  ==> http://the3.tistory.com/13  
---------------------------------------------------------------------------

- Snoopy Ghost R3 프로그램을 이용한 Windows7 32/64bit 고스트 만들기
1. http://kimkhye428.tistory.com/95 
 
- 고스트 자동 복구 시스템 설치하기 - 윈도우 7, 윈도우 비스타 공통(설명용)

- 귀찮게 윈도우 재설치 않고 고스트로 복원하기
https://www.youtube.com/watch?v=zDDCuOw_LSg

- 노턴 고스트15 설치 복구 백업 사용법
https://www.youtube.com/watch?v=JorKzNRtA-s&t=156s
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.19(월) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 21:30 ==> 정현수 차장 철수(18시), 석식(짜장면, 탕수육 -> 정차장, 강과장, 박대리[3만 4천원: 청구할 것])

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 로그 분석
1. fidder 사용법
==============================================================================================================

- Iject 분석(/Iject.js 파일에서)
Iject.formOnload(ojb): 	// 기본 공통 함수 초기화 ==> 투비 공통에서 제공해는 것이 아님(지원 안 해줌)

Iject.showModal(this, oData, function()) {		// 팝업 ==> showModal : function(o,  oData, callback)

Iject.open(this, "StringReturnBiztxD0111", "BIZTX:BIZTX_D0101.xfdl",  args);		==> open : function(o, sId, url, oArg, sOption, fncCllback)

Iject.alert("검색결과가 없습니다");  	==> alert : function(sMsg, sCaption)

Iject.getPopArgu(this, "orgNm");	  	==> getPopArgu : function(o, variable)

Iject.transaction(this, oData, function() {		  	==> transaction : function(oo,  oData, callback)
==============================================================================================================

- trackPopup
1. trackPopup: 주어진 메뉴의 하위 메뉴를 설정한 위치에 팝업시키는 메소드
==============================================================================================================

- license 에러
1. 세금우대등록(소급) ==> http://localhost:8090/tax/index.html, tester01 / tester01@
2. 현상: 2018-02-19 09:
19:44,107 TRACE [com.nexacro.spring.view.NexacroView] Rendering view with name 'nexacroView' 
with model {NexacroPlatformData=com.nexacro.xapi.data.PlatformData@3d012bb6, org.springframework.validation.
BindingResult.NexacroPlatformData=org.springframework.validation.BeanPropertyBindingResult: 0 errors} and static attributes {}
com.nexacro.xapi.license.InvalidLicenseException: License has expired: expireDate=2016-05-01, currentDate=2018-02-19
	at com.nexacro.xapi.license.A.H.I(Unknown Source)
	at com.nexacro.xapi.license.A.H.B(Unknown Source)
	at com.nexacro.xapi.license.A.E.A(Unknown Source)
	at com.nexacro.xapi.license.A.E.A(Unknown Source)
	at com.nexacro.xapi.license.A.E.A(Unknown Source)
	at com.nexacro.xapi.license.A.E.B(Unknown Source)
	at com.nexacro.xapi.license.License.getInstance(License.java:197)
	at com.nexacro.xapi.tx.PlatformTransaction.checkLicense(PlatformTransaction.java:431)
	at com.nexacro.xapi.tx.PlatformResponse.sendData(PlatformResponse.java:186)
==============================================================================================================

- OS 백업 툴 고스트(OS 백업) 툴(00:00 ~ 05:00, 집)
1. 부팅 USB 만들기 (RUFUS의 활용) - USB 메모리로 윈도우를 설치하는 방법 ===> http://nmain.tistory.com/71  
 1) 준비물
	1. USB메모리 (대략 4GB 이상)
	2. 설치할 윈도우의 iso 이미지
	3. RUFUS V1.3.3 (부팅가능한 USB를 만들어주는 프로그램)
2. 노튼 고스트(OS 최적화 툴) 설치 및 백업
 1) SGR3x64(win7_x64용).exe ==> http://the3.tistory.com/13
2. Shirt + F10 누르고요 DISKPART 라는 명령어로 찾아서 고스트 파일을 찾아서 실행  
==> Win7_MSI_180219.GHO 파일 생성
==> Win7_HP_180220.GHO 파일 생성
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.20(화) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 21:30 ==> 석식(18시, 정식(4천 5백원) -> 남대문세무서 지하 식당: 첫 방문)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- Iject 분석(/Iject.js 파일에서)
1. /Iject.js 파일에서 소스 수정  ==>  Genarate Application 처리 ==> eclipse에서 /WebContent를 Refresh(F5)할 것
==============================================================================================================

- 팝업 크기 증가 축소 수정(/Iject.js 파일에서)
if(sId =="MENU02-1_BIZTX_T0101.xfdl" || sId =="MENU02-5_BIZTX_T0401.xfdl")		// 메뉴명이 "세금우대 내역조회" 또는 "저축상품 관라: 이면
{
	bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, 1160, 840, pThis);	// 수정[Width(1160), Height(840) 추가]" 2018.02.20, by 진태만
} else {
	bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, null,null840, pThis);	// modaless 화면 팝업
}
==============================================================================================================

- 글자 선택 에러(BIZSM_R0401: 메뉴관리)
1. 현상: Edit에서 글자 입력 후 글자를 더물 클릭하면 전체 선택이 안됨(비정상)
 1) BIZBB_S0301 ==> 더블 클릭해서 전체 선택 안됨
2. 원인: Iject 형식 문제? ==> 퀵 뷰에서는 정석적으로 보임 --> css 문제가 아닐까 추측
==============================================================================================================

- 권한 회의(10시 ~ 11시)
1. 사용자(KFB_LEAD_INFO), 권한(GTP_AUTH_LIST: 기존), 메뉴(GTP_MENU)
 1) 사용자 권한(GTP_USER_AUTH), 메뉴 권한(GTP_ROLE_MENU)
==============================================================================================================

- OS 백업 툴 고스트(OS 백업) 툴(01:00 ~ 05:00, 집)
1. 부팅 USB 만들기 (RUFUS의 활용) - USB 메모리로 윈도우를 설치하는 방법 ===> http://nmain.tistory.com/71  
 1) 준비물
	1. USB메모리 (대략 4GB 이상)
	2. 설치할 윈도우의 iso 이미지
	3. RUFUS V1.3.3 (부팅가능한 USB를 만들어주는 프로그램)
2. 노튼 고스트(OS 최적화 툴) 설치 및 백업
 1) SGR3x64(win7_x64용).exe ==> http://the3.tistory.com/13
2. Shirt + F10 누르고요 DISKPART 라는 명령어로 찾아서 고스트 파일을 찾아서 실행  
==> Win7x64_HP_180220.GHO
==> Win7x64_MSI_180221.GHO
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.21(수) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 21:00 ==> 중식(부페 , 선릉역 근처 호프 식당 -> 구부장, 이부장)
								, (주)투비소스트 방문(15시): Info.plist 권한 문제 해결[집에서 회사 노트북 가져옴]

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 권한 설정
1. 전체 권한: ywkwon73/1
2. S 권한: kimh88/1
// gds_menu에서 PAGE_ID에 해당하는  MENU_AUTH값 출력
this.gfn_getMenuAuth = function(page_id)
{
	var strPageID = this.gfn_toUpper(page_id) +".xfdl);
	var menu_auth = this.gfn_strNull(application.gds_menu.lookup("PAGE_ID", strPageID, "MENU_AUTH");
	
	return menu_auth
}

// 내부사용자 권한 처리
this.fn_setAuth = function()
{ 
	// 내부사용자 권한 처리
	//Boolean isInUser = AuthManager.isInUser(context);
	//var isInUser = AuthManager.isInUser(context);  // TEST @@@ ==>
	var isInUser = false;  // TEST @@@ ==> 
	alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [내부사용자 권한 처리] [TEST_02_11] [isInUser]"+ isInUser ); 
	
	if (isInUser == true) {  // 내부사용자(A) 이면   ==> if(this.isAdmin() == true) {    //var pThis = this.fobj; 
		alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [내부사용자 권한 처리] [내부사용자(A) 이면] [TEST_11] [isInUser]"+ isInUser );
		this.div_grid.btn_register_manage.set_visible(true);		// 세부내역 관리 버튼 View 처리 
		this.div_grid.btn_register_detail.set_visible(true);		// 한도 등록 버튼 inView 처리
		this.div_grid.btn_update.set_visible(true);		// 정정 버튼 inView 처리
		this.div_grid.btn_cancel.set_visible(true);		// 해지 버튼 inView 처리
		this.div_grid.btn_delete.set_visible(true);		// 삭제 버튼 inView 처리
		
	} else {	 // 내부사용자(S)가 아니면
		this.div_grid.btn_register_manage.set_visible(false);		// 세부내역 관리 버튼 inView 처리 
		this.div_grid.btn_register_detail.set_visible(false);		// 한도 등록 버튼 inView 처리  
		this.div_grid.btn_update.set_visible(false);		// 정정 버튼 inView 처리
		this.div_grid.btn_cancel.set_visible(false);		// 해지 버튼 inView 처리
		this.div_grid.btn_delete.set_visible(false);		// 삭제 버튼 inView 처리   
		alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [내부사용자 권한 처리] [내부사용자(S)가 아니면] [TEST_44] [btn_register_manage]"+ this.div_grid.btn_register_manage.visible 
			+"[btn_register_detail]"+ this.div_grid.btn_register_detail.visible +"[btn_update]"+ this.div_grid.btn_update.visible ); 
	}
}
==============================================================================================================

- 카메라 기능 처리
11:40 퇴근(은행연합회 Prj)
11:50 을지로3가역 
12:30 선릉약
12:40 중식(부페: 구부장, 이부장) --> 구부장이 쏨
13:30 커피?(HP 노트북이 와이파이 5G를 인식 못해서 카메라 기능 테스트 실패)
14:00 본사(대충 테스트)
14:20 버스(146번): 구부장
14:50 (주)투비소프트 본사 3층
15:00 조성래 그룹장 만남 ==> 카메라 기능 테스트(박종웅 수석[001-4506-1423])
15:10 카메라 권한 설정
        ==> Mac에서 첨부한 파일(Info.plist)을 아래 경로로 붙여넣기하면 수정
		/nexacro14_iOSLauncher/nexacro14_iOSLauncher/SampleProject/Info.plist 
15:30 종료
15:40 도보( (주)투비소프트 본사 ==> (주)지아이데이타)
16:00 본사 복귀
16:40 카메라 권한 설정 메일로 정리
19:00 중식(김밥나라)
19:40 카메라 권한 설정 메일로 정리하여 일본으로 보냄
22:40 퇴근( (주)지아이데이타)
23:50 귀가
23:50 취침
==============================================================================================================
  
- 일본 히스콤 H-PLM 전환 Prj[★]
- No. 90 결함(修理?績登?)(수리실적등록)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> 확인 완료 [▲▲▲]
1. 현상: 카메라 촬영 후 이미지를 사용하여 썸네일 이미지가 표시되지 않음] 
2. 현상2: takePicture() 함수 호출 후, oncapture 이벤트가 콜백되지 않습니다.  
------------------------------------------------------------------------------------------------------------------------

- ios 10 에서 필요한 권한
1. ios10 부터는 권한을 plist에 추가하고 그게 대한 팝업창을 띄워서 사용자에게 확인을 받을 수 있도록 개발해야한다.
2. 기본적으로 권한은 새로 파라미터가 추가되었습니다.
  1) 카메라 권한 : Privacy - Camera Usage Description ==> <key>NSCameraUsageDescription<key>
  2) 포토 라이브러리 권한 : Privacy - Photo Library Usage Description ==> <key>NSPhotoLibraryUsageDescription<key>
  3) 포토 라이브러리 추가 권한 : Privacy - Photo Library Add Usage Description ==> <key>NSPhotoLibraryAddUsageDescription<key>
  ==>  Info.plist 파일 위치: /nexacro14_iOSLauncher/nexacro14_iOSLauncher/SampleProject/Info.plist
==============================================================================================================

- 회사 노트북(HP ProBook 450 G3) 노턴 고스트 복원 방법(회사에서 정리)
1. 현재 OS로 프로젝트에 사용
2. 프로젝트 종료 후 포맷(C:, D: 드라이브는 데이타 포맷됨
 1) USB로 OS를 설치하려고 하면 USB 드라이브 인식 못함(USB에 노턴 고스트  백업 데이타가 담겨 있음)
3. USB로 OS를 설치 후 D: 드라이브에 USB에 있는 노턴 고스트  백업 데이타를 복사
4. USB에 노턴 고스트  백업 수행
==============================================================================================================

- 특수 문자 수[Memo(2018.02).txt]
1. 회사 노트북(HP ProBook 450 G3)
	1) [Memo 줄] --> 57개(■), [50개(-), 50개(-)], 57개(■).....34개(■), 110개(=)
	2) [End 줄] --> 57개(■), [56개(-), 56개(-)], 57개(■)
2. 은행연합회 단말 PC 
	1) [Memo 줄] --> 57개(■), [52개(-), 520개(-), 57개(■).....49개(■), 85개(=)
	2) [End 줄] --> 57개(■), [56개(-), 56개(-)], 57개(■)
=========================================================================================================

- 탐색기 즐겨찾기 자동으로 현재 폴더 확장 제거 방법(즐겨찾기 폴더 펄쳐짐)
1. 탐색기 > 구성 > 폴더 및 검색 옵션 > 폴더 옵션(새창) 탐색창 > 자동으로 현재 폴더 확장(×): 체크 제거 ==> 확인
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.22(목) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 18:30 ==> 피자(주) 서화에서 쏨), 본사 전략 회의(19:30 ~ 22:30)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 화면 해상도 설정 수정
Iject.$["framesize"]      = "0,120,*,40";  	 //defualt seperatesize   ==> "0,120,740,40"
Iject.$["framesize"]      = "0,120,800,40";	//defualt seperatesize
- /Iject.js 파일에서
appOnload : function(o)
{
	//alert("[/Iject.js] [appOnload()] ==> [ADL 로딩시 초기 설정구성] [TEST_01_08]" );
	
	//adl Frame
	Iject.$["vFrameSet"]      = o.mainframe.VFrameSet;                                	//VFrameSet
	Iject.$["loginFrame"]     = o.mainframe.VFrameSet.LoginFrame; 				   		//LoginFrame
	Iject.$["topFrame"]       = o.mainframe.VFrameSet.TopFrame;  						//TopFrame
	Iject.$["middleFrame"]    = o.mainframe.VFrameSet.MiddleFrame;  					//MiddleFrame
	Iject.$["bottomFrame"]    = o.mainframe.VFrameSet.BottomFrame;  					//BottomFrame
	
	Iject.$["svcurl"]         = o.services["svcurl"].url;							  	//trnasaction service url
	Iject.$["framesize"]      = "0,120,*,40";  	// "0,110,740,40";			//defualt seperatesize  // TEST @@@ ===>
	//Iject.$["framesize"]      = "0,*,800,40";  		// "0,15,800,40";			// defualt seperatesize  // TEST @@@ ===> 
	Iject.$["loginSize"]      = {width:800,height:620};										
	Iject.$["mainframeSize"]  = {width:o.mainframe.width, height:o.mainframe.height};	 // TEST @@@ ===> height:o.mainframe.height => 900 가지고 옴(960이여야 함)
	Iject.$["gds_menu"]       = o.gds_menu;													
	alert("[/Iject.js] [appOnload()] ==> [ADL 프레임 설정] [TEST_77_17] [Iject.framesize]"+ Iject.$["framesize"] +"[Iject.mainframeSize.height]"+ o.mainframe.height ); 
},
------------------------------------------------------------------------------------------------------

 전체 높이	TOP 프레임	메인 프레임	BOTTOM 프레임
900	120	740	40
960	120	800	40
-----------------------------------------------------------------------------------------------------------------------

set_separatesize

<style>
		html , body { margin:0; padding:0; border:none; }
		iframe {min-height:960px; min-width:1280px; width:100%; margin:0; padding:0;  border:none; height:100%; position:absolute; top:0; bottom:0; }
	</style>
	
<style>
		html , body { margin:0; padding:0; border:none; }
		iframe {min-height:800px; min-width:1280px; width:100%; margin:0; padding:0;  border:none; height:100%; position:absolute; top:0; bottom:0; } 
	</style>	
==============================================================================================================

- 공지사항 수정
1. 상세에서 첨부파일 일부 안 보임
2. 파일업로드 ==> 삭제시 alert 창 이상함
==============================================================================================================

- modaless 창에서 세션 종료 후 창 안 닫힘
1. 추후 수정
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.23(금) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 23:00 ==> 주간보고(17:3)0), 오이사한테 일본어 사이트 종료 했다고 문자옴(17:51)
									여자 컬링 준결승전[20시 ~ 23시] (한국 8:7 일본): 은메달 확보

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 게시판[공지사항(/BIZBB_S0101.xadl), 자료실(/BIZBB_S0201.xadl), 자주묻는 질문(/BIZBB_S0301.xadl)] 수정
1. 공지사항 조회(/BIZBB_S0101.xadl)에서 Grid 필드에 cusor 삽입  
2. 공지사항 상세(/BIZBB_R0102.xadl)에서 첨부파일 일부가 안 보임 ==> 이상현상 발생한 것으로 추정(해당 건 삭제 처리)
2. 공지사항 상세(/BIZBB_R0102.xadl)에서 삭제시 alert 창이 이상함 
==============================================================================================================

- [SVN] 'cleanup' 에러
1. 현상: 업데이트 또는 싱크 시 다음 에러 발생
org.tigris.subversion.javahl.ClientException: svn: Working copy 'C:\Dev\workspace\pjt\webapps\WEB-INF\io' locked; try performing 'cleanup' 
2. 원인: 형상관리 이력정보가 꼬이는 경우가 있음.
3. 해결:
1-1. 해당 프로젝트를 선택하고 우클릭 > team > cleanup 실행
1-2. cleanup 성공 후 다시 업데이트
클린업 도중 에러가 발생하거나 위 방법으로 해결이 안되면 다음과 같이 처리
2-1. 탐색기에서 콘솔로그에 출력된 폴더 내에 있는 .svn 폴더로 이동
2-2. 폴더 내에 locked 파일이 있으면 삭제
2-3. 이클립스에서 다시 업데이트
출처: http://leetaehoon.tistory.com/10 [메모장]
==============================================================================================================

- 2017년 귀속 연말정산 환급
1. 소득세: 519,880원, 지방소득세: 51,940원 	 
 ==> 총 환급액: 571,820원
==============================================================================================================

- 구굴 크롬에서 홈텍스 사용하기 - YUKSI.COM
https://www.hometax.go.kr/websquare/websquare.wq?w2xPath=/ui/pp/index_pp.xml 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.24(토) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 18:40 ==> 주말 출근, 중식(김치찌개: 예지식당), 석식(된장찌개: 예지식당)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- Iject 분석
1. http://www.playnexacro.com/#show:article에서 devNexaBase.zip 파일 다운로드 받음(ecclipse 없음 ==> Runtime만 가능)
2. C:\eduBaseMdi 압축파일을 C:: 에 압축해제  ==> C:\eduNexaBase/
==============================================================================================================

- 메인 화면에 Scroll이 안 생기게  ==> 수정 완료[▲▲▲]
1. /index_biz.html 파일에서 min-height:800px; 으로 수정 ==>  Mid: 740[정확]
<style>
	html , body { margin:0; padding:0; border:none; }
	iframe {min-height:900px; min-width:1280px; width:100%; margin:0; padding:0;  border:none; height:100%; position:absolute; top:0; bottom:0; }
</style>

2. 메인-MIDDLE(BIZLI_S0114.xfdl) 화면에서 height:800px울 height:740px으로 수정
==============================================================================================================

- 은혜교회 집사 영만이형과 전화
1. 은혜교회팀에 입단하려면 입회비 없음(회비 월 만원)
==> 교회는 가끔 다녀야 함
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.02.25(일) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 18:40 ==> 평창동계올림픽 폐막식(20시, 평창)
 
▦ 축구
06:00 기상
07:00 2017년 귀속 연말정산(2018.01) 정리
09:30 종료
09:40 여자 컬링 결승전 시청 (한국 3:8 스웨덴): 은메달 획득 ==> 경험의 차이, 김은정(스킵)가 못 했음
11:30 중식
12:10 루옌, 수종 언니네집에 놀러감
13:00 2017년 귀속 연말정산(2018.01) 정리 => 완료
15:00 TV 시청
15:50 집출발(자전거)
16:00 대림운동장
16:10 최상용 장로님 만남(은혜교회팀, 대림3동 조기회)
16:30 게임(은혜교회팀:어울림FC) ==> 2달만에 처음 운동(4쿼터까지 함): 피곤, 내가 장기적으로 운동하기에 적당하다고 판단됨
19:00 종료
19:20 귀가
19:50 석식
21:00 취침
==============================================================================================================
 
- 크롬 브라우저 스크롤 캡쳐 하는 방법
http://blog.iroot.kr/195
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.02.26(월) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 23:00 ==> 

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 게시판[공지사항(/BIZBB_S0101.xadl), 자료실(/BIZBB_S0201.xadl), 자주묻는 질문(/BIZBB_S0301.xadl)] 수정
1. 공지사항 조회(/BIZBB_S0101.xadl)에서 Grid 필드에 cusor 삽입  
2. 공지사항 상세(/BIZBB_R0102.xadl)에서 첨부파일 일부가 안 보임 ==> 이상현상 발생한 것으로 추정(해당 건 삭제 처리)
2. 공지사항 상세(/BIZBB_R0102.xadl)에서 삭제시 alert 창이 이상함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.27(화) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 23:00 ==> 석식(김치찌개, 예지분식 -> 강과장, 박대리: 2만 2천원: 청구할 것)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 게시판[공지사항(/BIZBB_S0101.xfdl), 자료실(/BIZBB_S0201.xfdl), 자주묻는 질문(/BIZBB_S0301.xfdl)] 수정
1. 파일 첨부 에러
 1) 최초 등록 후 수정시 파일 첨부하며 에러 발생
public NexacroResult update(HttpServletRequest request, @ParamDataSet(name = "ds_files") List<Map> listFiles, @ParamDataSet(name = "ds_input") Map map) {
	  	//System.out.println("[/BizbbController.java] [insert()] ==> [수정 처리] [TEST_01]" );
    	
    	HttpSession session = request.getSession(true);	// 세션정보
    	String bbsPostCode = map.get("BBS_POST_CODE").toString();	// Post 코드(파일번호)  
    	String fileMastCd = map.get("FILE_MAST_CODE").toString();		// 파일 마스터 코드(고정값: 20180227_550) 
    	String adminRight = map.get("ADMIN_RIGHT").toString();			// 관리자 권한 추가
    	String fileMasterGb = map.get("FILE_MAST_GB").toString();			// 파일출처 추가
    	String fileSeq = "";	
    	//System.out.println("[/BizbbController.java] [update()] ==> [수정] [TEST_21] [Post 코드(파일번호)]"+ bbsPostCode 
		+"[파일 마스터 코드]"+ fileMastCd +"[adminRight]"+ adminRight +"[fileMasterGb]"+ fileMasterGb );
    	
    	if (bbsPostCode != "" ||  bbsPostCode != null){	// Post 코드(파일번호)가 존재하면     		
			if ( listFiles.size() > 0 ) { 		// 첨부파일이 존재하면 
				map.put("FILE_MAST_CD",fileMastCd); 
	    		fileService.deleteFile(map);	//파일 삭제		 
	    	 
		    	for ( int i=0; i<listFiles.size(); i++ ){
		    		Map mapFile = (Map)listFiles.get(i); 
 	    		
 	    			if ( i==0 ) {   // 0번째 이면
 		    			fileMastCd = (String)listFiles.get(0).get("FILE_MAST_CD");		// 파일 마스터 코드(고정값: 20180227_550) 
 		    		}	  
 	    			
 	    			fileSeq = (String)listFiles.get(i).get("FILE_SEQ");		// 파일번호
  
		    		List<Map> listSeq = fileService.selectFileSeq(mapFile);
		    		mapFile.put("SEQ", listSeq.get(0).get("SEQ"));  	// 파일번호 
		    		mapFile.put("FILE_MAST_GB", fileMasterGb);		// 파일출처
		    		mapFile.put("FILE_MAST_CD", fileMastCd);		// 파일 마스터 코드
		    		mapFile.put("ADMIN_RIGHT", adminRight);		 	// 관리자 권한 추가
			    	mapFile.put("REG_USER", (String)session.getAttribute("sessinUserId"));
			    	mapFile.put("MOD_USER", (String)session.getAttribute("sessinUserId")); 
			    	//System.out.println("[/BizbbController.java] [update()] ==> [수정] [listFiles.size()]"+ listFiles.size() +"[I_번째]"+ i 
					+"[파일번호]"+ bbsPostCode +"[파일출처]"+ fileMasterGb +"[파일 마스터 코드]"+ fileMastCd );
			    	
			    	fileService.insertFile(mapFile);   // 파일 등록
		    	}  // end of for()
		    	
		    	fileMastCd = (String)listFiles.get(0).get("FILE_MAST_CD");		// 파일 마스터 코드 
				map.put("FILE_MAST_CODE", fileMastCd);		// 파일 마스터 코드 삽입
			} // end of if ==> //첨부파일이 존재하면 
    	}
  	
    	bizbbService.update(map);		 // 게시판 수정
   
        NexacroResult result = new NexacroResult();
        
        return result;
    } 
 }
==============================================================================================================
 
- svn 에러
1. 현상
Some of selected resources were not committed.
svn: E200030: There are unfinished transactions detected in 'C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\bizinfo_branch'
2. 조치:
 1) bizinfo_branch 폴더 삭제
 2) SVN Repository ==>  svn > branches > bizinfo_branch ==> CheckOut
==> commit할 때 Nexacro 화면 모두 닫고할 것
 3) Nexacro에서 generate Application할 것
==============================================================================================================

- 은행연합회 Prj 수정 사항[박일경 PL이 보냄)
1. 메인공지 링크 ==> 수정 완료[▲▲▲]
2. 메뉴얼 링크  ==> 수정 완료[▲▲▲]
3. 게시판 링크  ==> 수정 완료[▲▲▲]
4.  작은 화면에서 큰화면으로 되면 모달의 검은색창이 안늘어난다 
5.  validation 체크함수(원도우10에서 안됨)
==============================================================================================================

- Iject 분석
1. HTML5 환경 설정
 1) eclipse 설정
  가. eclipse-jee-mars-2-win32-x86_64.zip  다운로드 ==>
http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-win32-x86_64.zip
==============================================================================================================

- Windows 7/8.1/10에서 블루투스를 활성화하는 방법
https://support.lenovo.com/fr/ko/solutions/ht037001

방법2: 제어판
1. Start(시작) --> Devices and Printers(장치 및 프린터)를 클릭하십시오.
2. 장치 목록에서 귀하의 컴퓨터를 오른쪽 클릭하고 Bluetooth 설정을 선택하십시오. 
3. Bluetooth 설정창에서 Bluetooth 장치가 이 컴퓨터를 찾을 수 있도록 허용 체크 박스를 선택하십시오. 그다음, 확인을 클릭하십시오.
4. 장치를 페어링하려면 Start(시작) --> Devices and Printers(장치 및 프린터) --> Add a device(장치 추가)로 가십시오. 

- 노트북 블루투스 이어폰 스피커 연결 5일 전
https://blog.naver.com/studio_pan/221213577124

- 장치관리자 바로가기
1. 실행 > devmgmt.msc
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.02.28(수) 작업 ■■■■■■■■■■■■■■■■■■
----> 07:00 ~ 18:00 ==> 회식(은행연합회 Prj), 수종 어린이집 퇴원(2015.03.16 ~ 2018.02.28)

- 은행연합회 인터넷서비스 시스템 고도화 Prj[★]
- 메인(BIZLI_S0114.xfdl) 화면 수정 
==============================================================================================================

- 은행연합회 Prj 속도 문제
1. 키보드 보안
2. iject 문제
==> fiddler로 분석할 것
==============================================================================================================

- 회사 노트북(HP ProBook 450 G3)에 블루투스 드라이버 설치
1. https://h30491.www3.hp.com/t5/noteubug/beullutuseu-deulaibeo-seolchi-andoem/m-p/81168#M18973
==============================================================================================================

- 은행연합회 Prj 회식
18:00 퇴근(은행연합회 Prj)
18:20 구이누리(삼겹살): PM, 팀장, 박부장, 강과장, 박대리(총 8명)
		==> PM이 오이사때문에 힘들다고 (괜찮은 사람)
21:30 종료
21:50 당구 ==> 갠빼이 -> 승리
23:40 당구
24:05 을지로입구역 출발
24:40 귀가
01:00 취침
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

