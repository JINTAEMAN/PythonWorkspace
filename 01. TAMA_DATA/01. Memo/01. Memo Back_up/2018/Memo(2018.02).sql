

����������������������������������������������������������
+----------------------------------------------// Memo(2018.02) //----------------------------------------------+
����������������������������������������������������������


������������������� 2018.02.01(��) �۾� ���������������������
---> 07:00 ~ 23:00 ==> 

- �Ϻ� ������ H-PLM ��ȯ Prj[��]  
- No. 99 ����(���� ����(���� �Ϻ�)	SHU::shu_daily_report.xfdl(Menu: T_3-10-2) ==> ���� �Ϸ�[����]
1. ��ǰ����(buhinExistsFlg)�� �Ⱥ��� 
this.fn_setBuhinExistsFlgName = function(buhinExistsFlg)  ==> ��� �������� ����
{
	alert("[/shu_daily_report.xfdl] [fn_setBuhinExistsFlgName()] ==> [TEST_01] [buhinExistsFlg]"+ buhinExistsFlg );  
	// �׽�Ʈ  ==> ����: 2018.01.31, by JIN TAE MAN  
	
	if ( buhinExistsFlg == 0 ) {
		return "��";
	} else if ( buhinExistsFlg == 1 ) {
		return "��";
	} else {
		return "";
	}
} 
--------------------------------------------------------------------------------------------------------------

2. ó��: SHU::shu_daily_report_tab_meisai.xfdl ���Ͽ���
 1) buhin_exists_flg Į���� expr:comp.parent.parent.parent.parent.fn_setbuhinexistsflgname(BUHIN_EXISTS_FLG)����
expr:BUHIN_EXISTS_FLG=='0' ?'��': BUHIN_EXISTS_FLG=='1' ?'��' : '��' 
==============================================================================================================
 
- No. 64 ����(ͺ�?���?(��� ���� �Ƿ� ���)] SEI::sei_kiki_irai.xfdl(Menu: T_5-1)	==> ���� �Ϸ�[����]
1.  divInfo top�� 70�� ����
<!-- <Div id="divInfo" positionstep="2" position="absolute" left="8" top="96" width="1008" height="621"/> -->
<!--// ����: 2018.02.01, by JIN TAE MAN //--> 
<Div id="divInfo" positionstep="2" position="absolute" left="8" top="70" width="1000" height="645"/>
<!--// ����[top="70"]: 2018.02.01, by JIN TAE MAN //-->
==============================================================================================================

- No. 74 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ���� �Ϸ� [����]
1. Ds ����Ÿ Ÿ���� BIGDECIMAL �� �� .toString( �߰��ؼ� ���� ��   ==>  No. 89 ���԰� ����
this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);
this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);
 this.divList_grdList_oncellclick = function(obj:Grid,e:nexacro.GridClickEventInfo)
{
	//alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_01]" );  
 
	if (application.gvHybridFlg) {   
		//if ( this.SEARCH_FLG == false ) { 	// ����[�����ȫ�����]: 2018.02.01, by JIN TAE MAN 
			var listKokiCd = this.dsList.getColumn(this.dsList.rowposition, "KOKI_CD");  
			var headerKokiCd = this.dsHeader.getColumn(this.dsHeader.rowposition, "KOKI_CD"); 
			alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_21] [listKokiCd]"+ listKokiCd 
				+"[headerKokiCd]"+ headerKokiCd );    
			
			//if ( listKokiCd != headerKokiCd ) {	// ����: 2018.02.01, by JIN TAE MAN
			if ( listKokiCd.toString() != headerKokiCd.toString() ) {  // ����: 2018.02.01, by JIN TAE MAN
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_41] @@@---> [fn_getDetail()]" );    
	
				this.fn_getDetail();
			} else {
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_42] @@@---> [this.setStepIndex(2)]");    
	
				// ٥ᬫ�?��������
				this.setStepIndex(2);
			}
		//}
	}
}
==============================================================================================================

- No. 92 ����(����?������(��ȯ ��� ����)) SET::set_koki_koukan_kanri.xfdl(Menu: T_5-5)  ==>  Ȯ�� �Ϸ�[����]
1. 1 �ǵ� üũ������ ������ ���� �� �ϰ� ���� ��ư�� ������ �˾� ȭ���� ǥ�õǾ� ������   
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
 
// �������������ҫܫ���������
this.btnF8_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	// ?����?�����ë�
	if (!this.fn_checkSelect()) return;

	this.fn_showYoteiYm();
}

// ��?�����ë�
this.fn_checkSelect = function()
{
	var selRow = this.dsList.findRow("SELECT", Number(true));
	if (selRow < 0) {
		// ?�ڪ���?���ƪ�������[����� �����Ͻʽÿ�]
		this.gfn_message(13, this.gfn_getLang("G_TAISHO"));
		return false;
	}
	
	return true;
}
==============================================================================================================

- No. 93 ����(����?������(��ȯ ��� ����)) SET::set_koki_koukan_kanri.xfdl(Menu: T_5-5)    ==> Ȯ�� �Ϸ� [����]
1. ȭ�� �ʱ� ǥ�ýÿ� "���� �� �ϰ� ����"��ư�� Ȱ�� ���·εǾ��ִ� (������ ��Ȱ��)
==============================================================================================================

- No. 82 ����(��������(��ġ ����)	SET::set_suetsuke_chosa.xfdl(Menu: T_3-7) ==> ���� �Ϸ� [����]
1. ��ġ ���� ȭ���� �ʱ� ���¿��� ����� Div�� ���̰� �ʹ� ŭ 
 1) ��ġ: top: 102 ==> 70 
 - /set_suetsuke_chosa.xfdl ���Ͽ���
<!-- <Div id="divList" position="absolute" left="8" width="1010" top="102" height="640" positionstep="1"/>-->
        <!--// ����: 2018.02.01, by JIN TAE MAN //-->
        <Div id="divList" position="absolute" left="8" width="1010" top="6" height="640" positionstep="1"/>
        <!--// ����: 2018.02.01, by JIN TAE MAN //-->
 <!-- <Div id="divInfo" position="absolute" left="8" width="1010" top="102" height="640" positionstep="2"/>-->
        <!--// ����: 2018.02.01, by JIN TAE MAN //-->
        <Div id="divInfo" position="absolute" left="8" width="1010" top="6" height="640" positionstep="2"/>
        <!--// ����: 2018.02.01, by JIN TAE MAN //-->
==============================================================================================================
   
- No. 58 ����(Ѧ��������?��?(��� ���� �Ƿ� ���)) SEI::sei_kiki_irai.xfdl(Menu: T_6-1)    ==> Ȯ�� �Ϸ� [����]
1. ��ư�� ������ �����Ǿ� ���� �ʴ�.  ==> ���� �Ǿ��� 
==============================================================================================================
 
������������������� 2018.02.02(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ����(��ġ���, ��������): ������, �̺���

- �Ϻ� ������ H-PLM ��ȯ Prj[��]
- No. 104 ����(����?��??���?���?����?����?) SET::set_setchi_jisseki.xfdl(Menu: T_3-5) ==> ���� �Ϸ� [����]
1, /set_setchi_jisseki.xfdl(���Ͽ���)
1. �º� ���̾ƿ����� ��ũ���� �߻� ���� ����
        <!--// ����[�����ȫ�����]: 2018.02.02, by JIN TAE MAN
		<Div id="divInfo" position="absolute" left="5" width="1010" top="132" bottom="-7" positionstep="2"/>
        <Div id="divList" position="absolute" left="5" width="1010" top="100px" bottom="25px" positionstep="1"/>
		<Div id="divSearch" position="absolute" left="5" width="1010" top="156" height="420"/>
-->
        <!--// ����[�����ȫ�����]: 2018.02.02, by JIN TAE MAN //-->
        <Div id="divInfo" position="absolute" left="5" width="1010" top="102" bottom="-7" positionstep="2" height="604"/>
        <Div id="divList" position="absolute" left="5" width="1010" top="102" bottom="17" positionstep="1"/>
        <Div id="divSearch" position="absolute" left="5" width="1010" top="100" height="420"/>
==============================================================================================================

- No. 74 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ����� �Ϸ� [����]
1.  Ds ����Ÿ Ÿ���� BIGDECIMAL �� �� .toString( �߰��ؼ� ���� ��   ==>  No. 89 ���԰� ����
 1) ��ȸ�� �ϸ� fn_getDetail �Լ��� ���� fn_callback_get_shutcho_hi ȣ�� ==> this.SEARCH_FLG = false; ������ 
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
		this.SEARCH_FLG = false;		// SEARCH_FLG�� false ó����  ==> ���� �Ϸ� [�ڡڡ�]
		alert("[/shu_kosyou_sagyo.xfdl] [fn_callback_get_shutcho_hi()] ==> [TEST_01] [SEARCH_FLG]"+ this.SEARCH_FLG );   
	}
}
--------------------------------------------------------------------------------------------------------------

this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10);,  	this.dsHeader.addColumn("KOKI_CD", "BIGDECIMAL", 10); 
this.divList_grdList_oncellclick = function(obj:Grid,e:nexacro.GridClickEventInfo)
{ 
	if (application.gvHybridFlg) {   
		if ( this.SEARCH_FLG == false ) { 	// ����[�����ȫ�����]: 2018.02.01, by JIN TAE MAN 
			var listKokiCd = this.dsList.getColumn(this.dsList.rowposition, "KOKI_CD");  
			var headerKokiCd = this.dsHeader.getColumn(this.dsHeader.rowposition, "KOKI_CD"); 
			alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_21] [listKokiCd]"+ listKokiCd 
				+"[headerKokiCd]"+ headerKokiCd );    
			
			//if ( listKokiCd != headerKokiCd ) {	// ����: 2018.02.01, by JIN TAE MAN
			if ( listKokiCd.toString() != headerKokiCd.toString() ) {  // ����: 2018.02.01, by JIN TAE MAN
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_41] @@@---> [fn_getDetail()]" );    
	
				this.fn_getDetail();
			} else {
				alert("[/shu_kosyou_sagyo.xfdl] [divList_grdList_oncellclick()] ==> [Grid Click Event] [TEST_42] @@@---> [this.setStepIndex(2)]");    
	
				// ٥ᬫ�?��������
				this.setStepIndex(2);
			}
		}
	}
}
==============================================================================================================
 
- No. 58 ����(Ѧ��������?��?(��� ���� �Ƿ� ���)) SEI::sei_kiki_irai.xfdl(Menu: T_6-1)    ==> ����� �Ϸ� [����]
1. ��ư�� ������ �����Ǿ� ���� �ʴ�.  ==> ���� ����(web, ipad) ���� �Ϸ�
<!--// ����[iPad_L_btnF10]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF10" position="absolute" left="748" top="50" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;border:1 solid #ffdeadff ;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,
0% #f5f5f5ff 0%,100% #d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// ����[iPad_L_btnF02]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF02" position="absolute" left="193" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// ����[iPad_L_btnF01]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF01" position="absolute" left="8" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
!--// ����[iPad_L_btnF10]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF10" position="absolute" left="748" top="50" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;border:1 solid #ffdeadff ;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 
0%,0% #f5f5f5ff 0%,100% #d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<!--// ����[iPad_L_btnF02]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF02" position="absolute" left="193" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
<Button id="btnF08" position="absolute" left="378" top="50" width="180" height="40" positionstep="-1" 
style="color:#3e3e3eb3;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% #d5d5d5ff [50% 
#e3e3e3ff][51% #dbdbdbff];"/>
<!--// ����[iPad_L_btnF01]: 2018.02.02, by JIN TAE MAN //-->
<Button id="btnF01" position="absolute" left="8" top="2" width="180" height="40" positionstep="-1" 
style="background:#ffdeadff;color:#f24a00ff;font:bold antialias 16 Verdana;gradation:linear 0%,0% #f5f5f5ff 0%,100% 
#d5d5d5ff [50% #e3e3e3ff][51% #dbdbdbff];"/>
==============================================================================================================
  
- No. 82 ����(��������(��ġ ����)	SET::set_suetsuke_chosa.xfd (Menu: 4-10) ==>  Ȯ�� ��û[��]
1. Ȯ�� ��û
==============================================================================================================
   
- No. 95 ����(����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> Ȯ�� �Ϸ�[����]
1. ����?������(���� ���� Ȯ��)	SHU::shu_kosyou_irai_jokyo.xfdl ���� ͪߩѦ������(�����Է�) ����  
  ==> ����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl 
 
// ٥�?������callback��
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

- No. 96 ����(ͺ�?���?(���� ���� ���)) SHU::shu_koshou_list.xfdl(Menu: 5-9)  ==> ���� �Ϸ�[����]
1.  ���� �Ƿ� �ۼ� ��ư�� ������ �̻��ϴ�
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [���� �Ƿ� ����� ��ư CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// ͺ�?黪���Ѧ�ޫ����Ϋ���?�ɪ��Ҫ��������ë�
	//if ( koshouLocaCd != mKokiLocaCd ) {		// ����: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// ����: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// ͺ�?黪Ϋ���?�ɪ���Ѧ�ޫ����Ϋ���?�ɪ�춪ʪ�?��������?�������Ǫ��ު���(ͺ�?黪Ϋ��������?��:%0%)
		// ���� ������ ���� �ڵ�� ���� ��� ������ ���� �ڵ尡 �ٸ��� ������ ���� ��û�� ���� �� �����ϴ�. (���� ������ ���ɿ��� ö�� ��¥ : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================

- No. 97 ����(���Ѧ��ʿ(���� ��� �ݳ�)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> ���� ��  [����]
1. ����: ���� �˾� ȣ�� ����(���� ��踦 �����ص� �ƹ��� ������ �������� ���� )
 1) HTML5 ����������  ���� �˾�(MstSearchKokiCd) ȣ���� �ؼ� ��ȸ�� �ϰ� ���� �� â�ݱ�[this.close(dsRes);]��
�ϸ� ȣ���� �˾� �Լ��� �ڸ�[ [�˾�_�����ޱ�] [TEST_04]]�� ���� ���� �� �մϴ�.
�׸��� "TEST_53 ȣ�� " ������ Ÿ�� �ʰ� �׳� ���߾� �����ϴ�.
- HAK::hak_shakuyoki_henkyaku.xfdl ���Ͽ���
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	 race("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// �˾� ó�� ==> @@@@@
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�_�����ޱ�] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST_53 ȣ��  @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd);
	} 
}
-------------------------------------------------------------------------------------------------------

- Search::hak_shakuyoki_henkyaku.xfdl ���Ͽ���
this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [�� �ε�] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 

this.btnOk_onclick = function(obj:Button,  e:ClickEventInfo)
{
	trace("[/MstSearchFree.xfdl] [btnOk_onclick()] ==> [���� ��ư Ŭ�� �̺�Ʈ] [TEST_01] =====> @@@@" ); 
 	
	if(this.dsMst.rowcount > 0){
		this.closeOnSelect();
	}
}

// â�ݱ�
this.closeOnSelect = function(){ 
	var r = this.dsMst.rowposition;

	//��ʿ�ī�?�����ë�����
	var dsRes=new Dataset();
	dsRes.copyData(this.dsMst);
	dsRes.clearData();
 
	//��ʿ�Īˣ�����ʥ
	dsRes.addRow();
	var bSuccess=dsRes.copyRow(0,this.dsMst,r);
 
	if(bSuccess == true){
	}else{
		dsRes.clearData();
	}
	 
	application.gvMstSearch.retDs = dsRes; 
	trace("[/MstSearchFree.xfdl] [closeOnSelect()] ==> [TEST_91] [dsRes]"+ dsRes ); 
 
	this.close(dsRes);   // â�ݱ� �Ŀ� divReg_btn_koki_search_onclick() �Լ��� �� ���� �� @@@@@
	trace("[/MstSearchFree.xfdl] [closeOnSelect()] ==> [TEST_92] [dsRes]"+ dsRes ); 
}
==============================================================================================================

������������������� 2018.02.03(��) �۾� �������������������
---> 07:00 ~ 21:00 ==>  �ָ� �ٹ�, ������ H-PLM ��ȯ Prj �̰��� �Ǽ�: 7�� ����[���� ��ǥ 3������ ���̱�]

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 24 ����(���� ����(���� �Ϻ�)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> �� [����]
1. ����: PDF ��ư�� �۵����� �ʽ��ϴ�. �߰� ��ư�� ���� �� ��¥�� ������ �� ����
2. ��ġ: 24 ������ java�ܿ��� PDF�������� �ϴ� �������� ������ �߻��ϴ� ������ �����˴ϴ�.
�����ʿ��� java ������ ����� ��ġ ���� �ʾƼ� ���� ���� ���� �Ƹ� �Ϻ��� ��������
������ �ϸ� ���������� ������ �� �����ϴ�.
�߰� ��ư�� ���� �� ��¥�� ������ �� ���� ������ �ҽ� Ȯ�� ��� �̻��� ���� ������ �Ǵܵ˴ϴ�.
- /shu_daily_report.xfdl ���Ͽ���
this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow;
	var keySagyoYmd2 = keySagyoYmd.toString();  // ����: 2018.02.03, by JIN TAE MAN 
	var keySagyoYmd3 = keySagyoYmd2.substr(0, 4) + "/" + keySagyoYmd2.substr(4, 2) + "/" + keySagyoYmd2.substr(6, 2);	
	// ����: 2018.02.03, by JIN TAE MAN 
	
	//targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");	// ����: 2018.02.03, by JIN TAE MAN 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd3 + "' && STAT_FLG == 1");	// ����: 2018.02.03, by JIN TAE MAN 
}

// PDF �ܫ���򫯫�ë�
this.btnF8_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/shu_daily_report.xfdl] [btnF8_onclick()] ==> [PDF �ܫ���򫯫�ë�] [TEST_01]" );
 
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

// PDF������callback
this.fn_callback_shuriDailyReportPDF = function(strSvcId, nErrorCode, strErrorMsg)
{
	trace("[/shu_daily_report.xfdl] [fn_callback_shuriDailyReportPDF()] ==> [PDF���� �ݹ�] [TEST_01] [strSvcId]"+ 
	strSvcId +"[nErrorCode]"+ nErrorCode +"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) {
		if (this.dsPdf.rowcount > 0) { 
			this.gfn_fileDataSave(this.dsPdf);
		}
	} else {
		trace("����:" + strErrorMsg);
		//����?��ë�?������
		this.gfn_callbackError(nErrorCode);
	}
}
---------------------------------------------------------------------- 

- nexacro ����?��ʥ
SystemBase_HTML5.js:44 [/shu_daily_report.xfdl] [fn_callback_shuriDailyReportPDF()] ==> [PDF���� �ݹ�] [TEST_01] 
[strSvcId]shuriDailyReportPDF[nErrorCode]-3[strErrorMsg]Internal Error
SystemBase_HTML5.js:44 ����:Internal Error 
------------------------------------------------------------------------------------------------------------------------

// ?����?����ë���?����?�ګ��٫�� ==> 
this.divList_grdList_onselectchanged = function(obj:Grid,e:nexacro.GridEditEventInfo)
{
	trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [?��꫹�ȫ���ë���?����?�ګ��٫��] [TEST_01]" );
	
	if (e.row < 0) return;
	
	var listRow = this.dsDailyReportList.rowposition;
	trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_02] [listRow]"+ listRow 
	+"[this.dsDailyReportList.getRowType(listRow)]"+ this.dsDailyReportList.getRowType(listRow) );
	
	// ��??�ߪ��������ê�������?������?�ڪ���ʦ[��ϵ� �۾� �Ϻ� �۾� �ϡ� �۾����� ������ �Ұ�]
	if (this.dsDailyReportList.getRowType(listRow) == 2) {  	// getRowType��2������(����Type[getRowType 2�� ��� (���� Type)]
		trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_11] [������?��ʦ��]");
		
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_readonly(false);
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_cssclass("");
		this.divInfo.tabInfo.tabMeisai.btn_sagyosha_cd_search.set_enable(true);
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_readonly(false);   // ������(?����ʦ]
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_cssclass("");
		
	} else { 
		trace("[/shu_daily_report.xfdl] [divList_grdList_onselectchanged()] ==> [TEST_12] [������(?����ʦ]");
	
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_readonly(true);
		this.divInfo.tabInfo.tabMeisai.edt_sagyosha_cd.set_cssclass(this.READ_ONLY_CLASS);
		this.divInfo.tabInfo.tabMeisai.btn_sagyosha_cd_search.set_enable(false);
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_readonly(true);	 // ������(?����ʦ]
		this.divInfo.tabInfo.tabMeisai.cal_sagyo_ymd.set_cssclass(this.READ_ONLY_CLASS);
	} 
}
==============================================================================================================

- No. 25 ����(ͺ�?���?(���� ���� ���)) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> ���� �Ϸ� [����]
1. ����: ���� �Ƿ� ��ư�� ������ ���� ������ �̻��ϴ�. �� �̸��� �Ҵ��� �̷������ ���� �ʴ�
2. ��ġ: 
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [���� �Ƿ� ����� ��ư CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// ͺ�?黪���Ѧ�ޫ����Ϋ���?�ɪ��Ҫ��������ë�
	//if ( koshouLocaCd != mKokiLocaCd ) {		// ����: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// ����: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// ͺ�?黪Ϋ���?�ɪ���Ѧ�ޫ����Ϋ���?�ɪ�춪ʪ�?��������?�������Ǫ��ު���(ͺ�?黪Ϋ��������?��:%0%)
		// ���� ������ ���� �ڵ�� ���� ��� ������ ���� �ڵ尡 �ٸ��� ������ ���� ��û�� ���� �� �����ϴ�. (���� ������ ���ɿ��� ö�� ��¥ : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================
 
- No. 45 ����(����?��??���?���?����?����?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> Ȯ�� �Ϸ� [����]
1. ����: Grid���� �ݾ� ������ �ʴ´�.  ==> �̹� �ذ�� ������ ������
trace("[/set_setchi_jisseki.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: ��ġ��ö�����̵������ ��ȯ ���� ���] [�� �ε�]  [TEST_01]" );  
10 grid �Ӽ�(:shu_kosyou_sagyo_tab_sag.xfdl  ���Ͽ���)
1. autoenter: none
2. autofittype: none
3. autoziebandtype: allband
4. autosizingtype: col
==============================================================================================================

- No. 52 ����(ͺ�?���?(���� ���� ���) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> ������ �� [����]
1. ����: ĸ�� ��ư�� �۵����� �ʽ��ϴ�.  ==> �����ٿ�ε�: Runtime ���������� ĸó ��ư�� ���������� �۵������� HTML5 �������� �۵� ����
2. ����2:  �����ٿ�ε� �ȵ� ==> TO-BE �� ���Ϳ� ������ ��
2017/12/27��from Korea
ĸ�Ĺ�ư�� �������ε�(Excelimport) ��ư���� Ȯ�εǾ����� ���� �ٿ�ε�(ExcelDown)�Լ��� ������ ���� ���ε�(Excelimport) �Լ��� �������� �ʾƼ�
���� ��ũ��Ʈ���� ���� ���ε� ����� ����� �ּž� �ҰͰ�����

�� ������ HTML5�� ���� ��ȭ ����� Nexa�� �������� ���� ���� �����̶�� �����˴ϴ�.
 ���� ĸó ��ư Ŭ���� ���� �Լ��� ȣ������ �ʽ��ϴ�.
�� ���� ��ȭ ���� ����
�� ������ ����
�� ���õ� ���� ������ �б� ������ �����ϰ� ���� ���Դϴ�. 
HTML5�� ���� ���� ó���� �������� �����Ͻʽÿ�. 
==============================================================================================================
  
this.btnF11_onclick = function(obj:Button,e:nexacro.ClickEventInfo)	// Excel ��� Ŭ��
{ 
	// Excel����
	this.fn_searchExcel();
}

// Excel��?��?��?��
this.fn_searchExcel = function()
{
	trace("[/shu_koshou_list.xfdl] [fn_searchExcel()] ==> [Excel ��� ó��] [TEST_01]" ); 
 
	this.dsExcelSearch.setColumn(this.dsExcelSearch.rowposition, "EXIST_KENRYOU_KOSHOU", 1);

	this.gfn_comTransaction("searchKoshouList" 
		, "DataSrv::shuri/KoshouListS/searchKoshouList"
		, "dsParam=dsExcelSearch"
		, "dsExcel=dsKoshouList"
		, ""
		, "fn_callback_searchExcel");
}

// ��?��?������callback
this.fn_callback_searchExcel = function(strSvcId, nErrorCode, strErrorMsg)
{
	trace("[/shu_koshou_list.xfdl] [fn_callback()] ==> [�ݹ�] [TEST_01] [strSvcId]"+ strSvcId +"[nErrorCode]"+ nErrorCode 
	+"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) { 
		this.grdExcel.setBindDataset(null);
		var dsExcelOut = new Dataset();
		dsExcelOut.copyData(this.dsExcel); // ����������򫳫�?���몿��[�÷� ���Ǹ� �����ϱ� ����]
		dsExcelOut.clearData(); // ��?���ϫ��ꫢ
 
		// ��?������?�«�?��[������ �Ǽ���ŭ ����]
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
			
			// ��?�������������[�����Ͱ� ������ ����]
			if (!this.gfn_isEmpty(this.dsExcel.getColumn(i, "KOSHOU_CD"))) {
				// ?�����ĪΫ���બ�������ʥ
				tarCol++;
				if (maxCol < tarCol) {
					dsExcelOut.addColumn("KOSHOU_CD" + tarCol, "String");
					dsExcelOut.addColumn("KOSHOU_NAME" + tarCol, "String");
					maxCol++;
				}
				
				// ͺ���������
				dsExcelOut.setColumn(tarRow, "KOSHOU_CD" + tarCol, this.dsExcel.getColumn(i, "KOSHOU_CD"));
				dsExcelOut.setColumn(tarRow, "KOSHOU_NAME" + tarCol, this.dsExcel.getColumn(i, "KOSHOU_NAME"));
			}
		} 
 
		// ����ëɪ�����[�׸��� ����]
		var startCol = 0;
		for(var i=0;i < maxCol;i++) { 
			this.grdExcel.setCellProperty("head", tarCol, "text", this.gfn_getLang("T_KOSHOU_CD"));
			this.grdExcel.setCellProperty("body", tarCol, "text", "bind:KOSHOU_CD" + (i + 1));

			tarCol = this.grdExcel.appendContentsCol();
			this.grdExcel.setCellProperty("head", tarCol, "text", this.gfn_getLang("T_KOSHOU_NAME"));
			this.grdExcel.setCellProperty("body", tarCol, "text", "bind:KOSHOU_NAME" + (i + 1));
		}
		this.grdExcel.setBindDataset(dsExcelOut); 
		trace("[/set_setchi_jisseki.xfdl] [fn_callback_searchDetail()] ==> [�ݹ�] [TEST_04_1] [this.grdExcel]"+ this.grdExcel );

		// Excel����[Excel ���] ==> ���� �Լ� ȣ�� @@@@
		this.gfn_exel_export(this.grdExcel);  
	}
	trace("[/set_setchi_jisseki.xfdl] [fn_callback_searchDetail()] ==> [�ݹ�] [TEST_end]" );
}
 
this.gfn_exel_export = function(gridObj, headFlg, outDate, outTitle){
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_01] [gridObj"+ gridObj +"[headFlg]"+ headFlg +"[outDate]"+ outDate +"[outTitle]"+ outTitle );
	
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
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_71]" );
	
	objExport.exportData();								// ���� ���� ��� �Ϸ� @@@
  
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_end]" );
}
==============================================================================================================

- No. 79 ����(����� ��?�ȫ�������?����?(���� ���� ��Ʈ ���� ���)) SET::set_wh_setchi_rt.xfdl(Menu: 4-2) ==> ���� �Ϸ� [����]
1. ����: �������� �ߺ� �˻簡 �����ִ�.
this.dsTaishoWhSearch_onvaluechanged = function(obj:Dataset,e:nexacro.DSColChangeEventInfo)
{
	trace("[/set_wh_setchi_rt.xfdl] dsTaishoWhSearch_onvaluechanged()] ==> [TEST_01] [e.columnid]"+ e.columnid ); 
	
	//?��?��ᶫ�?�ɪ����ܫ����ë�[��� ������ �ڵ� �ߺ� üũ]
	if (e.columnid != 'WH_CD') {
		this.dsTaishoWhSearch_onrowsetchanged();
		return;
	}

	var wh_cd = this.dsTaishoWhSearch.getColumn(e.row, 'WH_CD'); 			// ��� ������ �ڵ�
	var sagyo_ymd = this.dsTaishoWhSearch.getColumn(e.row, 'SAGYO_YMD');	// �۾���
		
	for(var i = 0; i < this.dsTaishoWhSearch.rowcount; i++){
		//stat_flg=1�ǡ����ġ�i != rowposition�����ġ�wh_cd���Ҫ��쫳?�ɪ������NG��
		if (e.row == i) {
			continue;
		}

		var stat_flg = this.dsTaishoWhSearch.getColumn(i, 'STAT_FLG');
		if (stat_flg == 3) {
			continue;
		}

		var wh_cd_ds = this.dsTaishoWhSearch.getColumn(i, 'WH_CD');			// ��� ������ �ڵ�(Ds)
		var sagyo_ymd_ds = this.dsTaishoWhSearch.getColumn(i, 'SAGYO_YMD');	// �۾���(Ds)
 
		//if (wh_cd_ds == wh_cd && sagyo_ymd_ds == sagyo_ymd) {
		if (wh_cd_ds.toString() == wh_cd.toString() && sagyo_ymd_ds.toString() == sagyo_ymd.toString()) {  // ����: 2018.02.03, by JIN TAE MAN 
			obj.setColumn(e.row, 'WH_CD', '');
			this.gfn_message(4032);		// ?��?���������ܪ��ƪ��ު���[��� �������� �ߺ� �Ǿ� �ֽ��ϴ�.]
			return;
		}
	} 
}
==============================================================================================================

- No. 97 ����(���Ѧ��ʿ(���� ��� �ݳ�)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> ������  �� [����]
1. ����: ���� ��踦 �����ص� �ƹ��� ������ �������� ���� 
1. ����2: 
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// �˾� ó�� ==> ?��?�ڪϡ���ߧ?�£����Ѧ�Ϊ� 	 
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�_�����ޱ�] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd)
	}
}

this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [�� �ε�] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 
==============================================================================================================

������������������� 2018.02.04(��) �۾� �������������������
---> 07:30 ~ 23:00 ==> �ָ� �ٹ�, ������ H-PLM ��ȯ Prj �̰��� �Ǽ�: 2�� ����[���� ��ǥ 0������ ���̱�: ����]

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 77 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4) ==> ������ �� [����] 
1. ����: ÷���� �׸�(No. 77_06.png)ó�� ������ ������ gfn_message(5058); �� return�� �ϸ� �߰� ������
����ϴ�. TEST_50��ó�� �۾���(SAGYO_YMD)�� �η� �ְ� �׽�Ʈ �غ���	this.gfn_message(5005);
�� return�� �ϸ� ���� �߰� ������ ����ϴ�.  
1.   	// ����?�Ϫ��������������������������?�����������ʪ�?����ʦ 
SHU::shu_kosyou_sagyo_tab_header.xfdl
cal_sagyo_ymd_ondayclick
trace("[/shu_kosyou_sagyo_tab_header.xfdl] [cal_sagyo_ymd_ondayclick()] ==> [��ư Ŭ�� Event] [TEST_01]" );  
this.gfn_message(

this.fn_save = function()
{
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� ó�� ����] [TEST_01]" );  
	
	// ����?��?֧�Ϋ����ë�
	var sagyoJokyo = this.dsHeader.getColumn(0, "SHURI_IRAI_JOKYO_FLG"); 
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_03]" );  
	alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [sagyoJokyo]"+ sagyoJokyo +"[this.JyoukyoKbn.shuri_kanryo]"+ this.JyoukyoKbn.shuri_kanryo 
		+"[SAGYO_KANRYO_YMD]"+ this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD") );  // �۾� �Ϸ� ��¥��

	// ���������ǪϪʪ���������������������ƪ�������[���� �Ϸ�� �ƴ����� �۾� �Ϸ� ��¥�� �ԷµǴ� ���]
	if (sagyoJokyo != this.JyoukyoKbn.shuri_kanryo
		&& !this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD"))) {
		alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_41] [this.gfn_message(5058): ������ �Ϸ���� �ʱ� ������ �۾� �Ϸ� ��¥�� �Է� �� �� �����ϴ�.] " );  
		
		this.divInfo.Tab.tabSagDen.cal_sagyo_kanryo_ymd.setFocus();
		// ���⪬�������ƪ��ʪ����ᡢ����������������ϪǪ��ު���[������ �Ϸ���� �ʱ� ������ �۾� �Ϸ� ��¥�� �Է� �� �� �����ϴ�.] 
		this.gfn_message(5058);  // TEST @@@ ===>
		this.btnF6.set_enable(true);
		return;
	}
	
	// ����������ë�[�۾��� Ȯ��]
		if (this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_YMD"))) { //�۾���
			//alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_61]" );
			alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_41] [�۾��� Ȯ��] " );  
			
			this.divInfo.Tab.set_tabindex(0);
			this.divInfo.Tab.tabSagDen.cal_sagyo_ymd.setFocus();
			// ��������?����ƪ��ު���[�۾� ��¥�� ���õǾ� ���� �ʽ��ϴ�]
			this.gfn_message(5005);
			this.btnF6.set_enable(true);
			return;
		}	  // TEST @@@ ===>
}
---------------------------------------------------------------------------------------------------------------------------------

function divInfo_Tab_tabSagDen_cal_sagyo_ymd_ondayclick(obj:Calendar, e:CalendarDayClickEventInfo)
{
	// ����������?����������ë���������?�Ϫ����[�۾��� �޷� ��¥ Ŭ���� �۾� ��Ȳ�� �̵�]
	//  Tablet�������ꡢoncanged ������ª���?[Tablet ������ ��� oncanged�� ���۵��ϱ� ����]
	this.divInfo.Tab.tabSagDen.cmb_sagyo_jokyo.setFocus();
}
==============================================================================================================

- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ������ �� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
- SHU::shu_kosyou_sagyo.xfdl ���Ͽ���
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [ī�޶� ��ư Ŭ�� Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheight��ꪪ�??�窱������Ҫ����[imageheight�� �������� ?? �� �ڵ� �����Ǵ�]
	this.camera.gettype = 1;
	this.camera.takePicture();  // ���� �߻�  ==> � ȭ�� ��� ���� �� ���α׷��� ����� @@@
}

// �����[�Կ���]
this.camera_oncapture = function(obj:Camera,e:nexacro.CameraEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [�Կ���] [TEST_01]" );    // ȣ�� �ȵ�

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

������??�Ϋ���ͫ��몬���ƪ���ު�[���⿡ ������ ������� ǥ�õ˴ϴ�]
??�����������??�����ġ�����?[���� �Կ� �� "������ ���"�� ����] 
-------------------------------------------------------------------------------------------------------------------------

- SHU::shu_kosyou_sagyo_tab_photo.xfdl ���Ͽ��� 
function btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo_tab_photo.xfdl] [btnCamera_onclick()] ==> [ī�޶� ��ư Ŭ��] [TEST_01] =====> @@@@" );  
	
	this.parent.parent.parent.divInfo_Tab_tabPhoto_btnCamera_onclick(obj, e); 
} 
==============================================================================================================

- �Ϻ� ������ H-PLM ��ȯ Prj ���ذ� �Ǽ� ==> ���̻�, �̻��忡�� ���Ϸ� ����(20��)
1. �������Ʈ ������ �Ǽ�: 4��
No. 52 ���� ���� ==> ���� �ٿ�ε忡�� ����
No. 97 ���� ���� ==> ���� �˾� ȣ�� ���� ����
No. 77 ���� ���� ==> mac�� ipad���� alert �� return ���� ����
No. 90 ���� ���� ==> mac�� ipad���� oncapture �̺�Ʈ�� �ݹ� �ȵ� ����  
==============================================================================================================

������������������� 2018.02.05(��) �۾� �������������������
---> 07:00 ~ 23:00 ==>  

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 77 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4)  ==> ������ ��2 [����]
1. ����: ÷���� �׸�(No. 77_06.png)ó�� ������ ������ gfn_message(5058); �� return�� �ϸ� �߰� ������
����ϴ�. TEST_50��ó�� �۾���(SAGYO_YMD)�� �η� �ְ� �׽�Ʈ �غ���	this.gfn_message(5005);
�� return�� �ϸ� ���� �߰� ������ ����ϴ�. 
2. ��ġ: nexacro14_iOS_20180123_1.zip ���Ͽ��� ������ Ǭ �� nexacro14_iOSLauncher/nexacro14.framework 
������ "�����" �� �� Mac OS���� nexacro14_iOSLauncher ������ �����ϰ� �ٽ� ���ο� ������ �ٿ��ֱ� �� ��
    </context-param>	
 ==============================================================================================================
 
- No. 97 ����(���Ѧ��ʿ(���� ��� �ݳ�)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> ���� �Ϸ�[����]
1. ����: ���� �˾� ȣ�� ����(���� ��踦 �����ص� �ƹ��� ������ �������� ���� )
 1) HTML5 ����������  ���� �˾�(MstSearchKokiCd) ȣ���� �ؼ� ��ȸ�� �ϰ� ���� �� â�ݱ�[this.close(dsRes);]��
�ϸ� ȣ���� �˾� �Լ��� �ڸ�[ [�˾�_�����ޱ�] [TEST_04]]�� ���� ���� �� �մϴ�.
�׸��� "TEST_53 ȣ�� " ������ Ÿ�� �ʰ� �׳� ���߾� �����ϴ�.

showModal: �������� ������ ChildFrame�� ��� â���� �����ִ� �޼ҵ��Դϴ�.
showModalSync: showModal�� Sync ���� ==> Windows Runtime �� ����
---------------------------------------------------------------------------------------------------

- HAK::hak_shakuyoki_henkyaku.xfdl ���Ͽ���
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	var kokiCdOld = this.divReg.edt_koki_cd.value;
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value);
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");//?��?�ڪϡ���ߧ?�£����Ѧ�Ϊ� 
}
-------------------------------------------------------------------------------------------------------

- Search::MstSearchFree.xfdl ���Ͽ���
this.MstSearchFree_onload = function(obj:Form, e:LoadEventInfo)
{
	trace("[/MstSearchFree.xfdl] [MstSearchFree_onload()] ==> [�� �ε�] [TEST_01]" ); 
	
	this.edtInput1.setFocus();
} 

this.btnOk_onclick = function(obj:Button,  e:ClickEventInfo)
{
	trace("[/MstSearchFree.xfdl] [btnOk_onclick()] ==> [���� ��ư Ŭ�� �̺�Ʈ] [TEST_01] =====> @@@@" ); 
 	
	if(this.dsMst.rowcount > 0){
		this.closeOnSelect();
	}
}

// â�ݱ�
this.closeOnSelect = function(){ 
	var r = this.dsMst.rowposition;
 
	this.close();  // ����: 2018.02.05, by JIN TAE MAN 
}

//?��popup?��������
this._parentReturnColumn;
this._resultColumn;
this._returnColumn;
this.gfn_showSearchFormFree = function(form, ......returnColumn) {  
	kokiCdOld = this.parent.form.divReg.edt_koki_cd.value;	// ����: 2018.02.05, by JIN TAE MAN  
}

this.gfn_getModalDataset = function(ret)
{   
	if(this.parent.form.name == "hak_shakuyoki_henkyaku")	// ����: 2018.02.05, by JIN TAE MAN 
	{ 
		var kokiCdNew = dsMst.getColumn(0, "Column1");  
		if (kokiCdOld.toString() != kokiCdNew.toString()) {  
			this.parent.form.divReg_edt_koki_cd_canchange(this.parent.form.divReg.edt_koki_cd);
		} 		
	}
	
	return dsMst;
}
==============================================================================================================

- No. 52 ����(ͺ�?���?(���� ���� ���) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> ������ �� [����]
1. ����: ĸ�� ��ư�� �۵����� �ʽ��ϴ�.  ==> �����ٿ�ε�: Runtime ���������� ĸó ��ư�� ���������� �۵������� HTML5 �������� �۵� ����
2. ����2: �����ٿ�ε� �ȵ� ==> TO-BE �� ���Ϳ� ������ ��
2017/12/27��from Korea
ĸ�Ĺ�ư�� �������ε�(Excelimport) ��ư���� Ȯ�εǾ����� ���� �ٿ�ε�(ExcelDown)�Լ��� ������ ���� ���ε�(Excelimport) �Լ��� �������� �ʾƼ�
���� ��ũ��Ʈ���� ���� ���ε� ����� ����� �ּž� �Ұ� �����ϴ�.
http://192.168.0.30:8080/moms_Nexa/XExportImport 
http://192.168.0.30:8080/moms_Nexa/export/261D18D7F326A3161CECC26ADA9ABC6A_1517817795710/exData.xls
C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa\export\261D18D7F326A3161CECC26ADA9ABC6A_1517817795710/exData.xls
- /FormCommon.xjs
this._fn_get_ExcelExportObject = function()
{
	var objExport = new ExcelExportObject("Export00", this);
	objExport.set_exporttype(nexacro.ExportTypes.EXCEL);
	var xeni = objExport.set_exporturl(application.services["Excel"].url + "XExportImport");// Excel��?��?�⫸��?��ت�URL������
	objExport.set_exportfilename("exData");                                      // ��?��?���������Ī���excel�ի�����٣
	objExport.set_exportactivemode("active"); 
	alert("[/FormCommon.xjs] [_fn_get_ExcelExportObject()] ==> [xcel��?��?�⫸��?��ت�URL������_URL] [xeni]"+ xeni );

	return objExport;
}

this.gfn_exel_export = function(gridObj, headFlg, outDate, outTitle){
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_01] [gridObj"+ gridObj +"[headFlg]"+ headFlg +"[outDate]"+ outDate +"[outTitle]"+ outTitle );
	
	var objExport = this._fn_get_ExcelExportObject();
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_02]" );
 
	if (headFlg) {
		trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_11]" );
	
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
	trace("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_71]" );
	
	//event�߰�
	objExport.addEventHandler("onsuccess", this.Export00_onerror, this);
	objExport.addEventHandler("onerror", this.Export00_onerror, this);
	
	objExport.exportData();								// ?�Ϋ�������?��
	objExport = null;									// ����?�����쫯�����?��
 
	if (objGrid) {
		this.removeChild("gridOut"); 
		objGrid.destroy();
		objGrid = null;
	}
	//alert("[/FormCommon.xjs] [gfn_exel_export()] ==> [���� ���] [TEST_end]" );
}

this.Export00_onsuccess = function(obj:ExcelExportObject,  e:nexacro.ExcelExportEventInfo)
{
	alert("[/FormCommon.xjs] [Export00_onsuccess()] ==> [���� ���_����] [TEST_01] [e.url]"+ e.url );
	
	//trace(e.url);
}

this.Export00_onerror = function(obj:ExportObject, e:nexacro.ExportEventInfo)
{
	alert("[/FormCommon.xjs] [Export00_onerror()] ==> [���� ���_����] [TEST_01] [e.erromsg]"+ e.erromsg );
	
	trace("error!!>>>" + e.erromsg);
}
==============================================================================================================

- No. 95 ����(����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> Ȯ�� �Ϸ�[����]
1. ����?������(���� ���� Ȯ��)	SHU::shu_kosyou_irai_jokyo.xfdl ���� ͪߩѦ������(�����Է�) ����  
  ==> ����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl  
��� ���� ǥ"��� ���� ��Ȳ"��Ʈ�� ���� �� �ڸ�Ʈ���� �����߽��ϴٸ� 
InternetExploer�� ���������� ���������� Chrome�� ����ϸ� No95�� ������ �߻��մϴ�. 
==> ���� ����
==============================================================================================================

- No. 102 ����(?��� ���ǫ�������?����?(������ ��ġ ���� ���)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> ���� ��û[����]
1. ����: ���� �ð��� ���� �ð� �����ϸ� ��Ʈ�� ǥ�õ��� �ʽ��ϴ� 
==============================================================================================================

- No. 103 ����(?��� ���ǫ�������?����?(������ ��ġ ���� ���)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> ���� �Ϸ�[����]
1. ����: ��Ʈ ��Ʈ�� ������ ����
==============================================================================================================

- Session expired ����
1. ����: ���� URL(http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/index.html)���� 404�� ������ �ȶ������� Session expired ���� ������
2. ��ġ: ecclipse ��������
- / SessionFilter ���Ͽ���
@Component("SessionFilter")
public class SessionFilter implements Filter {

   public SessionFilter() {
        super();  // ��� �ؾ� �� @@@
		System.out.println(">>> SessionFilter~~~!!!");
    }
} 
==============================================================================================================

- TOBESOFT Online Document Library (Technical Documents)
http://docs.tobesoft.com/index
------------------------------------------------------------------------------------------------------

- �ػ�ũ���÷��� 14 / ������ ���̵�
http://docs.tobesoft.com/admin_guide_nexacro_14_ko
------------------------------------------------------------------------------------------------------

- �����÷��� 9.2 / ������ ���̵�
http://docs.tobesoft.com/admin_guide_xplatform_ko
1. Runtime  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#2ec043c41935e4cc
2. HTML5  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#076504d90043cbb5
3. Hybrid  ==> http://docs.tobesoft.com/admin_guide_xplatform_ko#9e669ef019d09106 
==============================================================================================================

- �� �����(P2217H) ���� ==> (��)�����̵���Ÿ �̼��� ������ ��������(ȸ�� ����: ������ û���� ��)
1. DELL P2217H 22��ġ ����� 16:9 IPS �� �ǹ����ٵ�, ����:189,500��
==> http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1559467948&xfrom=&xzone=
2. �� ����� ���̺�: VGA ���̺�, �Ŀ� ���̺� 2���� �ʿ���(������ �����Ϳ� �ִ� USB �̿�� USB ���̺� �����ؾ� ��) 
3. ����̹� ���̵� ���� ����, �ǹ�, ��������Ʈ ���� ==> ���� ���� 
4. USB ���̺�(HDMI 2.0 Basic 1.5M), ����: 8õ���� ����
5. ���� �ȵ� ==> 1. ������� ���� ==> �ݼ��Ϳ� ��ȭ(��Ʈ�� ������ ���) ==> HDMI ���̺� ���� DVI ���̺� �����ϴ�
���� ���������� �鸲
-------------------------------------------------------------------------------------------------------

- �� �����(P2217H) ����
1. �ø��� �ѹ�(S/N): CN-0NJR01-QDC00-7CP-4KAU-A02
2. �ͽ������� ���� �ڵ�(Express SVC Code): 7210256582
3. ServiceService Tag): 3B8STL2
4. �ֹ���ȣ: 950936522[��ȭ(T): 080-854-0066]
-------------------------------------------------------------------------------------------------------

- 11���� ���������߱�(�渮���� ������: ȸ�� ����� ó����)
1. �ſ�ī�� ������ �μ� ==> http://buy.11st.co.kr/remittance/documentaryEvidence.tmall?method=displayDocumentaryEvidenceIssue
==============================================================================================================

������������������� 2018.02.06(ȭ) �۾� �������������������
---> 07:00 ~ 23:00 ==> �� �����(P2217H) ����(16��, ȸ��), ����(���뱹, �������뱹: �̻���, ������, �̺���)

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 69 ����(�������-ݻ�����ī�?������(��ġ ��ü - ��ǰ ��� ��� ����)) SHU::set_setchigyo_buhin_wh_rt.xfdl(Menu: T_3-5) ==> Ȯ�� �Ϸ�[����]
1 ����: �º����� �۾� ��¥�� �޷¿��� ���� �����ص� �ݿ����� ����
==============================================================================================================

- No. 89 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdll(Menu: T_5-5) ==> Ȯ�� �Ϸ�[����]
1 ����: 2 �ܰ� ��° ȭ���� �׸��� ���� ���� (��)�� 3 �ܰ� ��°�� ��ȯ���� ����
==============================================================================================================

- No. 25 ����(ͺ�?���?(���� ���� ���)) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> Ȯ�� �Ϸ� [����]  
1. ����: ���� �Ƿ� ��ư�� ������ ���� ������ �̻��ϴ�. �� �̸��� �Ҵ��� �̷������ ���� �ʴ�
2. ��ġ: 
this.btnF6_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{ 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [���� �Ƿ� ����� ��ư CLick] [TEST_01]" ); 
	
	this.dsList.setColumn(0, "SHURI_IRAI_NO", "");  // TEST @@@ ===>
	this.dsList.setColumn(0, "LOCA_CD", "5821");  // TEST @@@ ===>
	this.dsList.setColumn(0, "M_KOKI_LOCA_CD", "5821");  // TEST @@@ ===>
	
	var listRow = this.dsList.rowposition;
	var koshouLocaCd = this.dsList.getColumn(listRow, "LOCA_CD");			// BIGDECIMAL
	var mKokiLocaCd = this.dsList.getColumn(listRow, "M_KOKI_LOCA_CD");
	var shuriIraiNo = this.dsList.getColumn(listRow, "SHURI_IRAI_NO");
 
	// ͺ�?黪���Ѧ�ޫ����Ϋ���?�ɪ��Ҫ��������ë�
	//if ( koshouLocaCd != mKokiLocaCd ) {		// ����: 2018.02.02, by JIN TAE MAN 
	if ( koshouLocaCd.toString() != mKokiLocaCd.toString() ) {	// ����: 2018.02.02, by JIN TAE MAN 
	
		var tessyuYmd = new String(this.dsList.getColumn(listRow, "TESSYU_YMD"));
		tessyuYmd = tessyuYmd.substr(0, 4) + "-" + tessyuYmd.substr(4, 2) + "-" + tessyuYmd.substr(6, 2);
		// ͺ�?黪Ϋ���?�ɪ���Ѧ�ޫ����Ϋ���?�ɪ�춪ʪ�?��������?�������Ǫ��ު���(ͺ�?黪Ϋ��������?��:%0%)
		// ���� ������ ���� �ڵ�� ���� ��� ������ ���� �ڵ尡 �ٸ��� ������ ���� ��û�� ���� �� �����ϴ�. (���� ������ ���ɿ��� ö�� ��¥ : % 0 %)
		this.gfn_message(this.LOCA_CD_ERR, tessyuYmd); 
	}
} 
==============================================================================================================
 
- No. 45 ����(����?��??���?���?����?����?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> Ȯ�� �Ϸ� [����] 
1. ����: Grid���� �ݾ� ������ �ʴ´�.  ==> �̹� �ذ�� ������ ������
trace("[/set_setchi_jisseki.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: ��ġ��ö�����̵������ ��ȯ ���� ���] [�� �ε�]  [TEST_01]" );  
10 grid �Ӽ�(:shu_kosyou_sagyo_tab_sag.xfdl  ���Ͽ���)
1. autoenter: none
2. autofittype: none
3. autoziebandtype: allband
4. autosizingtype: col
==============================================================================================================

- No. 82 ����(��������(��ġ ����)	SET::set_suetsuke_chosa.xfdl(Menu: 4-10) ==> ���� �Ϸ� [����]
1. ��ġ ���� ȭ���� �ʱ� ���¿��� ����� Div�� ���̰� �ʹ� ŭ 
<!--// ����[divSearch height="211" ==> height="59"]: 2018.02.06, by JIN TAE MAN //-->
<!-- <Div id="divSearch" taborder="11" position="absolute" left="8" width="1004" top="37" height="211" scrollbars="none" cssclass="line_standard">-->
<Div id="divSearch" taborder="11" position="absolute" left="8" width="1004" top="37" height="59" scrollbars="none" cssclass="line_standard"> 
==============================================================================================================
 
- No. 52 ����(ͺ�?���?(���� ���� ���) SHU::shu_koshou_list.xfdl(Menu: 5-9) ==> Ȯ�� �Ϸ� [����] 
1. ����: �����ٿ�ε� �ȵ� 
2. ��ġ:  [�� 6��(ȭ) FormCommon.xjs ���� ���� alert �߰� �� �ٽ� Ȯ�� ��û
==============================================================================================================

- No. 94 ����(����������?(��ȯ ���� ���)) SET::set_koki_koukan.xfdl(Menu: T_ 4-10-2)  ==> ���� �Ϸ� [����]
1. ��ȯ ���� ��� ȭ��(SET::set_koki_koukan.xfdl)���� ��ġ ���� ��Ȳ ȭ��(SET::set_schedule_jokyo.xfdl)���� ��ȯ �� �� �˻� ó���� ������� ���� 
==> �� �ε��� PC�� ��� �� �ڵ� ��ȸ ���� 
- 1. /set_koki_koukan.xfdl ���Ͽ��� 
this.btnF3_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	//alert("[/set_koki_koukan.xfdl] [btnF3_onclick()] ==> [��ġ ���� ��Ȳ ��ư Ŭ�� Event] [TEST_01]" );  
 
	application.gvKokiKoukan = {};
	application.gvKokiKoukan.dsSearch = new Dataset();
	application.gvKokiKoukan.dsSearch.copyData(this.dsSearched);
	application.gvKokiKoukan.wh_cd = this.dsSearched.getColumn(0, "WH_CD");
	application.gvKokiKoukan.wh_name = this.dsSearched.getColumn(0, "WH_NAME");
	application.gvKokiKoukan.kibou_ymd_from = this.dsSearched.getColumn(0, "TAISHO_YM_FROM") + "01";
	application.gvKokiKoukan.kibou_ymd_to = this.gfn_addDate(this.gfn_addMonth(this.dsSearched.getColumn(0, "TAISHO_YM_TO") + "01", 1), -1);
	application.gvKokiKoukan.url = "SET::set_koki_koukan.xfdl";
	//alert("[/set_koki_koukan.xfdl] [btnF3_onclick()] ==> [��ġ ���� ��Ȳ ��ư Ŭ�� Event] [TEST_02] [wh_cd]"+ application.gvKokiKoukan.wh_cd
		+"[wh_name]"+ application.gvKokiKoukan.wh_name +"[kibou_ymd_from]"+ application.gvKokiKoukan.kibou_ymd_from 
		+"[kibou_ymd_to]"+ application.gvKokiKoukan.kibou_ymd_to );  
	
	this.go("SET::set_schedule_jokyo.xfdl");		// ��ġ ���� ��Ȳ ȭ��(SET::set_schedule_jokyo.xfdl)����  URL ��ȯ
}

- 2. /set_schedule_jokyo.xfdl ���Ͽ��� 
this.set_shedule_jokyo_onload = function(obj:Form,e:nexacro.LoadEventInfo)
{
	//alert("[/set_schedule_jokyo.xfdl] [set_shedule_jokyo_onload()] ==> [T: ���� ��Ȳ ȭ��] [�� �ε�] [TEST_01]" ); 
 
 	//if (!application.gvHybridFlg) { // PC������(���֫�ëȪ�?���쫤������?����) 	 // ����: 2018.02.06, by JIN TAE MAN  
		// ?���������
		this.fn_judgeTransition();
	//} 	// ����: 2018.02.06, by JIN TAE MAN   
}  

this.fn_callback_search = function(strSvcId, nErrorCode, strErrorMsg)
{
	alert("[/set_schedule_jokyo.xfdl] [fn_callback_search()] ==> [�˻� ��� callback] [TEST_01] [strSvcId]"+ strSvcId +"[nErrorCode]"+ nErrorCode +"[strErrorMsg]"+ strErrorMsg ); 
 
	if (nErrorCode == 0) { 
		if (this.dsListOrg.rowcount > 0) {
			if (application.gvHybridFlg) {
				// ��?��?������
				this.setStepIndex(1);   //  ===> this.setStepIndex(1);  ����?�����?��
			} else {
				if (this.openFlg["search"] == 1) {
					// ?�㫨�ꫢ���ͪ���
					this.divSearch_imgAction_onclick();
				}
			}
		} 
	}
}
==============================================================================================================

- JAVA���� DB ���� ã�� @@@
/SheduleJokyoS.java ==> /SheduleJokyo.java
/SheduleJokyoMapper.java   ===> /SheduleJokyoMapper.xml

- 1. /set_schedule_jokyo.xfdl ���Ͽ��� 
this.fn_search = function()
{  
	trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [�ݹ�] [02. dsSearch, ���]"+ this.dsSearch.getRowCount() 
	+"[dsSearch.saveXML()]  \n"+ this.dsSearch.saveXML() );
	//<Col id="KIBOU_YMD_FROM">20180201</Col>   ==> ��ȸ ����(��ġ ������) @@@
	//<Col id="KIBOU_YMD_TO">20180228</Col>		==> ��ȸ ����(��ġ ������) @@@
	//<Col id="LANG_NO">0</Col>								==> ��ȸ ����(��� �ڵ�) @@
		
	this.gfn_comTransaction("search"
		, "DataSrv::setchi/SheduleJokyoS/search"
		, "dsParam=dsSearch"
		, "dsListOrg=dsList"
		, ""
		, "fn_callback_search");
}
---------------------------------------------------------------------------

- 2. /SheduleJokyoS.java ���Ͽ��� 
@Command(value = "search")
    public void search() {
    	System.out.println("[/SheduleJokyoS.java] [search()] ==> [TEST_01]" );
		
		sqlSession.select(SheduleJokyoMapper.SEARCH, param, handler);
		System.out.println("[/SheduleJokyoS.java] [search()] ==> [SheduleJokyoMapper.SEARCH]"+ SheduleJokyoMapper.SEARCH );
		System.out.println("[/SheduleJokyoS.java] [search()] ==> [PROC_NAME]"+ PROC_NAME +"[51. ��ġ ���� ��Ȳ ��ȸ ���]"+ dsList.getRowCount() );
	}
}		

- 3. /SheduleJokyoMapper.java ���Ͽ��� 
<select id="search"
	parameterType="jp.co.hiscom.web.moms.dto.setchi.SheduleJokyoSearch" resultMap="SheduleJokyoListMap">
	select
		A.SETCHI_WH_RT
		, A.KIBOU_YMD
		, B.DENPYO_COUNT
		, B.SEKISAI_SU
	from
	(/* ?��?�ڪΫ�?�Ȫ����� */
		select distinct
			S.SETCHI_WH_RT
			, S.SETCHI_WH
			, S.SETCHI_RT
			, S.KIBOU_YMD
		<include refid="search_table" />
		<include refid="search_condition" />
	) A,
	(/* ?������?������ */
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

- nexacro ���� Ȯ�� ���
1. nexacro studio���� 
1) Help > aboout nexacro studio(��â)
==> ���� Nexa ���� :14,0,1,1300(File Version: 2017, 4, 25,1
2. �ҽ����� Ȯ��
 1) C:\projects\workspace\moms_Nexa\src\moms_Nexa\nexacro14lib\component/Accessibility.json
 {
	"name": "Accessibility",
	"version": "14.0.1.1900",   	// ===> ���� Ȯ�� @@@
	"description": "nexacro platform 14 Unified Framework Library",
	"license": "",
	"scripts": [
			"CompBase/Accessibility.js",
	]
}
//@ sourceURL=Accessibility.json
----------------------------------------------------------------------------------------------------------------------------------

- nexacro Client ���̼��� �Է�
1. nexacro studio���� 
1) moms_Nexa.xadl: ���콺 �� Ŭ�� > Properties(��â)
 ��. Miscl > licenseurl: nexacro14_client_license.xml
 ==> nexacro14_client_license.xml���� �����ؼ� C:\projects\workspace\moms_Nexa\WebContent\WEB-INF\lib ������ �־� �� ��
==============================================================================================================
 
- Notepad++���� ��Ÿ�� ���� 
0. ��� �޴� > ����(T) > ��Ÿ�� ����(��â)
1. ���: Global Styles
2. Ÿ��: Global override
3. ���� ��Ÿ�� 
 1) ���ڻ�: black ==> ���� ���ڻ� ���
 2) ����: 73, 176, 194 ==> ���� ���� ���(72, 225, 194) --> (76, 78, 194)
4: �۲� ��Ÿ��(�۲� ����)
 1) �۲� �̸�: ���ʷҵ���      ==> ���� �۲� ���
 2) ũ��: 10 ==> ����  �۲� ũ�� ���
 ==>  ���� �� �ݱ� 
==============================================================================================================

������������������� 2018.02.07(��) �۾� �������������������
---> 07:00 ~ 18:00 ==> �������(19��, �뵿����ġ��), ���ذ�: 7��(3 + 3 + 1)

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 95 ����(����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1)  ==> Ȯ�� �Ϸ�[����]
1. ����?������(���� ���� Ȯ��)	SHU::shu_kosyou_irai_jokyo.xfdl ���� ͪߩѦ������(�����Է�) ����  
  ==> ����?����?(���� ���� ���) SHU::shu_kosyou_sagyo.xfdl  
��� ���� ǥ"��� ���� ��Ȳ"��Ʈ�� ���� �� �ڸ�Ʈ���� �����߽��ϴٸ� 
InternetExploer�� ���������� ���������� Chrome�� ����ϸ� No95�� ������ �߻��մϴ�. ==> ���� ���� 
���ʿ����� Chrome���� �������� ���� �������� �����ϸ� �������� �ʴ� ��찡 �ֽ��ϴ�. 
(�ַ� ùȸ �ǽ� �ô� ���������� ���������� 2��, 3�� �ǽ��� �� ���������� ������ �մϴ�.) 
==> Ds ��û�� �� @@@@@@@@@

- / SHU::shu_kosyou_sagyo.xfdl
this.shu_kosyou_sagyo_onload = function(obj:Form,e:nexacro.LoadEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [�� �ε�] [T: ���� ���� ��� ȭ��][TEST_01]" ); 
	trace("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [�� �ε�] [T: ���� ���� ��� ȭ��][TEST_01]" ); 
 
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
		// �׽�Ʈ ����Ÿ ���� ���� =============================>  @@@@ 
		this.dsList.clearData();		// �׽�Ʈ ����Ÿ ���� ==> ����: 2018.02.01, by JIN TAE MAN  
	 
		var nRow = this.dsList.addRow(); 
		this.dsList.setColumn(nRow, "KOKI_CD", "1760246"); 
		this.dsList.setColumn(nRow, "SAGYO_DEN_NO", "1900033471");   		// �۾���ǥ��ȣ  
		this.dsList.setColumn(nRow, "UKETSUKE_YMD", "2018011");  
		this.dsList.setColumn(nRow, "SHURI_IRAI_JOKYO_NAME", " TEST_NAM");		 
		this.dsList.setColumn(nRow, "SAGYO_YMD", "20180201"); 
		this.dsList.setColumn(nRow, "SAGYO_KANRYO_YMD", "20180101"); 
		this.dsList.setColumn(nRow, "SHURI_IRAI_JOKYO_FLG", "1"); 
		this.dsList.setColumn(nRow, "LOCA_KANJI", "LOCA_KANJI"); 
		this.dsList.setColumn(nRow, "MIKAN_KBN", "MIKAN_KBN");  
		this.dsList.setColumn(nRow, "SAGYOSHA_NAME", "SAGYOSHA_NAME-800200");    // ============>
		this.dsList.setColumn(nRow, "SHURI_IRAI_NO", "170001938");		// �����Ƿڹ�ȣ 
		this.dsList.setColumn(nRow, "MIKAN_NAME", "");
		this.dsList.setColumn(nRow, "HANBAI_KASHO_KANJI", " HANBAI_KASHO_KANJI");
		this.dsList.setColumn(nRow, "KSY_NAME", "SDM-SRC100"); 
		this.dsList.setColumn(nRow, "SENPO_TANTO_NAME", "SENPO_TANTO_NAME"); 
		//alert("[/shu_kosyou_sagyo.xfdl] [fn_callback_search()] ==> [�ݹ�] [02. dsList, ���]"+ this.dsList.getRowCount() 
		//	+"[dsList.saveXML()]  \n"+ this.dsList.saveXML() ); 
		// �׽�Ʈ ����Ÿ ���� �� ====================================================================================>  @@@@ 
	 
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
	
	this.dsHeader.clear();		// ����: 2018.02.07, by JIN TAE MAN
	
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

	// ��ϴ��ͪ���ꫢ
	this.divInfo.Tab.tabSagDen.edt_seikyu_gaku_kei.set_value("");
	trace("[/shu_kosyou_sagyo.xfdl] [fn_clearSearchData()] ==> [callback] [TEST_02] [�̹��� �������� ����] ===> "); 
	
	// ?����?�������[�̹��� �������� ����]
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

- No. 52 ����(ݭ?����?��(��� ���� ĸó) SET::set_import_boka.xfdl(Menu: 4-17-3) ==> ������ �� [����]
1. ����: ���� ���ε尡 �ȵ� ==> TO-BE �� ���Ϳ� ������ 
- /set_import_boka.xfdl ���Ͽ���
this.btnF1_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ��ư ����] [TEST_01]" ); 

	this.fn_importExcel();
}

this.fn_importExcel = function()
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ó��] [TEST_01]" ); 

	var file = this.fdlSelect.open("����?�߫ի�������?", FileDialog.LOAD); // ĸó ���� ����

	if (this.gfn_isNull(file)) { 
		trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ó��] [TEST_41]" ); 
		return;
	}
	trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ó��] [TEST_end]" ); // ���⼭ �׳� ����ϴ�. @@@@@
}
==============================================================================================================

- �ɰ��� ��Ʈ�� �ֹ�(ū ������ ��) ==> ���� �� ����(��ǰ�� ��)
1. �ɰ��� ��Ʈ�� �ù�� �����ϸ� OS, ���α׷� ��ġ�� �� ==> ������ ���������� ������ ��. 
- LG ��Ʈ��PC 15UD370-LX1TK [SSD 512G (��ü)], ����: 698,200��
http://www.enuri.com/detail.jsp?modelno=17693975&condiDelivery=N
==============================================================================================================

������������������� 2018.02.08(��) �۾� �������������������
---> 07:00 ~ 22:30 ==> ���ذ�: 7��(3 + 3 + 1), �Ϻ������� �Ժη� �ҽ� ���� �޶�� �ؼ� ����  ¥����

- �Ϻ� ������ H-PLM ��ȯ Prj[��]
- No. 95 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1) ==> Ȯ�� ��û[����]
1. ����?������(���� ���� Ȯ��) SHU::shu_kosyou_irai_jokyo.xfdl ���� ͪߩѦ������(�����Է�) ����
2. ����: ���� ��Ȳ ��ȸ ȭ�� ��꼭 �Է� ��ư���� ȭ�� ��ȯ �� ��� �Է� �׸��� ��Ȱ��ȭ��
���ʿ����� Chrome���� �������� ���� �������� �����ϸ� �������� �ʴ� ��찡 �ֽ��ϴ�. 
(�ַ� ùȸ �ǽ� �ô� ���������� ���������� 2��, 3�� �ǽ��� �� ���������� ������ �մϴ�.) 
==============================================================================================================

- No. 45 ����(����?��??���?���?����?����?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> Ȯ�� �Ϸ� [����]
1. ����: Grid���� �ݾ� ������ �ʴ´�.  ==> �̹� �ذ�� ������ ������  ==> ���� ���� ����
==============================================================================================================

- No. 24 ����(���� ����(���� �Ϻ�)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> ���� �Ϸ� [����]
1. ����1: PDF ��ư�� �۵����� �ʽ��ϴ�. 
2. ��ġ: 24 ������ java�ܿ��� PDF�������� �ϴ� �������� ������ �߻��ϴ� ������ �����˴ϴ�. ==> �Ϸ�
3. ����2: �Ϻ��� �߰��ϰ� �۾� ��¥�� ������ ��� �� �۾� ��¥������ ���� �۾� ��¥�� �����ϰ� �ִ� ������ ���� ���̶�� ����Դϴ�.
- /SHU::shu_daily_report.xfdl
this.divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged = function(obj:Calendar, e:ChangeEventInfo)
{ 
	var listRow = this.dsDailyReportList.rowposition;
	trace("[/shu_kosyou_sagyo.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [dsDailyReportList_SAGYO_YMD]"+ 
	this.dsDailyReportList.getColumn(listRow, "SAGYO_YMD") );  
	
	//if (this.fn_checkDailyReportKey(this.dsDailyReportList.getColumn(listRow, "SAGYOSHA_CD"), e.postvalue) >= 0) {
	if (this.fn_checkDailyReportKey(this.dsDailyReportList.getColumn(listRow, "SAGYOSHA_CD"), e.postvalue) >= 0) {   
	//  ����: 2018.02.08, by JIN TAE MAN ==> ������ �۾� ��¥ �̸�]  
		trace("[/shu_daily_report.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [TEST_41] [������ �۾� ��¥ �̸�]" );
 
		this.gfn_message(5041);		//������ �۾� ��¥�� �Է� �� �� �����ϴ�.
		obj.set_value(e.prevalue);
		return;
	} 
	trace("[/shu_daily_report.xfdl] [divInfo_tabInfo_tabMeisai_cal_sagyo_ymd_onchanged()] ==> [TEST_end]" );
}

this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow; 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");		// ����[���󺹱�]: 2018.02.08, by JIN TAE MAN 
  
	return targetRow;
}
==============================================================================================================

- No. 52 ����(ݭ?����?��(��� ���� ĸó) SET::set_import_boka.xfdl(Menu: 4-17-3) ==> Ȯ�� �Ϸ�[����]
1. ����: ���� ���ε尡 �ȵ� ==> TO-BE �� ���Ϳ� ������ 
 1) �ػ�ũ�ο��� �����ϴ� ���� Import / Export ��� ==> http://tobetong.com/?p=3961
 2) Excel Export/Import ���� ==> http://www.xplatform.co.kr:8080/Next_JSP/NC_Excel/index.html
 3) Excel Export/Import war ���� �ٿ�ε�: http://support.tobesoft.co.kr/Support/index.html
  > nexacro platform14 > Server > Excel Export/Import  ==>  nexacro-xeni.war_2017.12.15_01.zip : �ٿ�ε�
--------------------------------------------------------------------------------------------------------------

- ���� ���α׷�������  ���� ���ε尡 �ȵ�
1. ���� �ҽ��� Xplatform������ ���ߵǾ� ����
2. nexacro������  FileDialog.open�� ���� ���� 
 1) FileDialog.open(strTitle,constOpenMode,strInitialPath,strFileName)
3. nexacro������ �����ϴ� ���� Import ����� ���� ���� �ؾ� ��
  1) war ��� ==> C:\00. Back_up\2018.02\02. Sample_Excel\nexacro-xeni.war_2017.12.15_01\nexacro-xeni\WEB-INF\lib
  2) poi-3.1*.jar�� �̿��ؼ� nexacro-xeni-1.1.jar�� ���� import�� ��(����: poi-3.1*.jar ������ �� ������ �浹�� �� ���� ����)
--------------------------------------------------------------------------------------------------------------

- /set_import_boka.xfdl ���Ͽ���
this.btnF1_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó(Import Excel) ��ư ����] [TEST_01]" ); 

	this.fn_importExcel();
}

this.fn_importExcel = function()
{
	alert("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó(Import Excel) ó��] [TEST_01]" ); 

	var file = this.fdlSelect.open("����?�߫ի�������?", FileDialog.LOAD); // ĸó ���� ����  ==> FileDialog.open ����

	if (this.gfn_isNull(file)) { 
		trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ó��] [TEST_41]" ); 
		return;
	}
	trace("[/set_import_boka.xfdl] [btnF1_onclick()] ==> [ĸó ó��] [TEST_end]" ); // ���⼭ �׳� ����ϴ�. @@@@@
}
==============================================================================================================

- MS Office 2013 ��ġ
1. K.J_130306.exe ����
2. Advanced Mode > Office 2013 Activator > Forever Office KMS Activation > ������: KJ-KMS Activator(��â��) > 
Press any key to exit...: Ű ����(�Ϸ��)
3. ��� Ȯ��
 1) MS word: ���� > ���� �޴�(����): Ŭ�� > ����(���� �޴�): Ŭ�� > ����(����) > ��ǰ���� > ��ǰ ������ 
==============================================================================================================
 
- OS X ���� �� ���� ��ȣ Ȯ���ϱ�(Mac����)
1. Apple(?) �޴����� '�� Mac�� ���Ͽ�'�� Ŭ��
macOS Sierra ����: 10.12.6
maxBook Pro(Retina, 13-inch, Early 2015)
�Ϸù�ȣ: C02TL4WNFVH3
-------------------------------------------------------------------------------------------------

2. Mac�� ���Ͽ�' â���� '�ý��� ����Ʈ...' ��ư Ŭ�� �� '����Ʈ����' �׸��� Ŭ��
�ϵ���� ����:
 
�𵨸�: MacBook Pro
�� �ĺ���: MacBookPro12,1
���μ��� �̸�: Intel Core i5
���μ��� �ӵ�: 2.7 GHz
���μ��� ����: 1
�� �ھ� ����: 
L2 ĳ��(�ھ��): 256 KB
L3 ĳ��: 3 MB
�޸�: 8 GB
Boot ROM ����: MBP121.0171.B00
SMC ����(�ý���): 2.28f7
�Ϸ� ��ȣ(�ý���): C02TL4WNFVH3
�ϵ���� UUID: 25A89CC4-F525-5F68-9EBD-564D5BD00E6E 
==============================================================================================================
 
������������������� 2018.02.09(��) �۾� �������������������
----> 07:00 ~ 22:30 ==> ���ذ�: 7��(3 + 3 + 1), �����Ϸ��� �븲�������� ����(6��: 2õ 5���) �簡���� ȸ��� ���
								�̼��� ������ �Ϻ� ������ Prj �Ϸ� �ߴٰ� ���̾�Ʈ ȣ�� ���ں�(25����) ��
								����(¥���, ������, ������: û�, �̻���, ���̻�, ������, �̺���), ��â����ø��� ������(20��, ��â)

- �Ϻ� ������ H-PLM ��ȯ Prj[��]
- No. 95 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: 5-1) ==> �Ϸ�[����]
1. ����?������(���� ���� Ȯ��) SHU::shu_kosyou_irai_jokyo.xfdl ���� ͪߩѦ������(�����Է�) ����
2. ����: ���� ��Ȳ ��ȸ ȭ�� ��꼭 �Է� ��ư���� ȭ�� ��ȯ �� ��� �Է� �׸��� ��Ȱ��ȭ��
���ʿ����� Chrome���� �������� ���� �������� �����ϸ� �������� �ʴ� ��찡 �ֽ��ϴ�. 
(�ַ� ùȸ �ǽ� �ô� ���������� ���������� 2��, 3�� �ǽ��� �� ���������� ������ �մϴ�.) 
==> �Ϻ��ʿ��� �������� ���� ���� ���Ƽ� �ѱ� ������ �Ϸ� ó���϶�� ��.
==============================================================================================================
 
- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ������ �� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
- SHU::shu_kosyou_sagyo.xfdl ���Ͽ���
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [ī�޶� ��ư Ŭ�� Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheight��ꪪ�??�窱������Ҫ����[imageheight�� �������� ?? �� �ڵ� �����Ǵ�]
	this.camera.gettype = 1;
	this.camera.takePicture();  // ���� �߻�  ==> � ȭ�� ��� ���� �� ���α׷��� ����� @@@
}
------------------------------------------------------------------------------------------------------

3. TO-BE ��� ����: 
xcode ���� �� ����ÿ� ī�޶� ���� ���� ������ ���ּž� �մϴ�. ���� ������ ���� camera ���� ���ᰡ �߻��� �Ǵ°����� 
���� ���ϴ�. 
xcode -> Supporting Files -> info.plist 
Privacy-Camera Usage Description ������ ���ֽñ� �ٶ��ϴ�. 
------------------------------------------------------------------

- info.plist ���Ͽ���(ī�޶� ����)
Camera :
Key : Privacy - Camera Usage Description
Value : $(PRODUCT_NAME) camera use
��ó: http://trycatching.tistory.com/42  ==> http://kka7.tistory.com/40
NSCameraUsageDescription
==============================================================================================================

- No. 77 ����(����?����?(���� ���� ���)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_3-5) (Menu: 5-4) ==> ���� �Ϸ� [����]
==> TO-BE ���� ����: 2440-1721
1. ����: ÷���� �׸�(No. 77_06.png)ó�� ������ ������ gfn_message(5058); �� return�� �ϸ� �߰� ������
����ϴ�. TEST_50��ó�� �۾���(SAGYO_YMD)�� �η� �ְ� �׽�Ʈ �غ���	this.gfn_message(5005);
�� return�� �ϸ� ���� �߰� ������ ����ϴ�.  
2. ��ġ: nexacro14lib.zip ���� ���׷��̵��� ��
==> C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa_tab
1.  / ����?�Ϫ��������������������������?�����������ʪ�?����ʦ 
{
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� ó�� ����] [TEST_01]" );  
	
	// ����?��?֧�Ϋ����ë�
	var sagyoJokyo = this.dsHeader.getColumn(0, "SHURI_IRAI_JOKYO_FLG"); 
	trace("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_03]" );  
	alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [sagyoJokyo]"+ sagyoJokyo 
	+"[this.JyoukyoKbn.shuri_kanryo]"+ this.JyoukyoKbn.shuri_kanryo 
		+"[SAGYO_KANRYO_YMD]"+ this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD") );  // �۾� �Ϸ� ��¥��

	// ���������ǪϪʪ���������������������ƪ�������[���� �Ϸ�� �ƴ����� �۾� �Ϸ� ��¥�� �ԷµǴ� ���]
	if (sagyoJokyo != this.JyoukyoKbn.shuri_kanryo
		&& !this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_KANRYO_YMD"))) {
		alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_41] [this.gfn_message(5058): 
		������ �Ϸ���� �ʱ� ������ �۾� �Ϸ� ��¥�� �Է� �� �� �����ϴ�.] " );  
		
		this.divInfo.Tab.tabSagDen.cal_sagyo_kanryo_ymd.setFocus();
		// ���⪬�������ƪ��ʪ����ᡢ����������������ϪǪ��ު���[������ �Ϸ���� �ʱ� ������ �۾� �Ϸ� ��¥�� �Է� �� �� �����ϴ�.] 
		this.gfn_message(5058);  // TEST @@@ ===>
		this.btnF6.set_enable(true);
		return;
	}
	
	// ����������ë�[�۾��� Ȯ��]
		if (this.gfn_isEmpty(this.dsHeader.getColumn(0, "SAGYO_YMD"))) { //�۾���
			//alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_61]" );
			alert("[/shu_kosyou_sagyo.xfdl] [fn_save()] ==> [���� Ŭ�� Event] [TEST_41] [�۾��� Ȯ��] " );  
			
			this.divInfo.Tab.set_tabindex(0);
			this.divInfo.Tab.tabSagDen.cal_sagyo_ymd.setFocus();
			// ��������?����ƪ��ު���[�۾� ��¥�� ���õǾ� ���� �ʽ��ϴ�]
			this.gfn_message(5005);
			this.btnF6.set_enable(true);
			return;
		}	  // TEST @@@ ===>
}
---------------------------------------------------------------------------------------------------------------------------------

function divInfo_Tab_tabSagDen_cal_sagyo_ymd_ondayclick(obj:Calendar, e:CalendarDayClickEventInfo)
{
	// ����������?����������ë���������?�Ϫ����[�۾��� �޷� ��¥ Ŭ���� �۾� ��Ȳ�� �̵�]
	//  Tablet�������ꡢoncanged ������ª���?[Tablet ������ ��� oncanged�� ���۵��ϱ� ����]
	this.divInfo.Tab.tabSagDen.cmb_sagyo_jokyo.setFocus();
}
==============================================================================================================

- No. 24 ����(���� ����(���� �Ϻ�)) SHU::shu_daily_report.xfdl(Menu: 5-8) ==> ����� �Ϸ� [����]
1. ����: �۾���(�޷�)�� �����ϸ� "������ �۾� ��¥�� �Է� �� �� �����ϴ�."��� ���� �߻�
2. ��ġ:
this.fn_checkDailyReportKey = function(keySagyoCd, keySagyoYmd)
{
	var targetRow; 
	targetRow = this.dsDailyReportList.findRowExpr("SAGYOSHA_CD == " + keySagyoCd + " && SAGYO_YMD == '" + 
	keySagyoYmd + "' && STAT_FLG == 1");
	
	// Hybrid ??
	//if (application.gvHybridFlg) { // ����: 2018.02.05, by JIN TAE MAN 
		if (targetRow == this.dsDailyReportList.rowposition) {
		targetRow = -1;
		}
	//}
	
	return targetRow;
}
==============================================================================================================

- No. 45 ����(����?��??���?���?����?����?)) SET::set_setchi_jisseki.xfdl(Menu: 4-8) ==> ����� �Ϸ� [����]
1. ���� :
 1) �հ�  ���� �ݾ��� ǥ�� �����ʴ¹���
 2) �׸����� �ݾ�ǥ�ð� ©�� ǥ���Ǵ� ���� ==> 2���� ���� ���ذ� 
SET::set_setchi_jisseki_tab_kiki_shin_sag.xfdl 
- Grid �Ӽ� ����: none, allband, col --> col , allband, none
- Grid �Ӽ� ����: none, allband, col --> col , allband, none
<!--// ����: 2018.02.09, by JIN TAE MAN //-->
<!--// <Grid id="grdKikiShinMSag" cssclass="head_standard" taborder="0" binddataset="dsKikiShinMSag" u
seinputpanel="false" autosizingtype="col" autosizebandtype="allband" oncellclick="divInfo_tabInfo_tabHeader_grdKikiShinMSag_oncellclick" 
ontextchange="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchange" ontextchanged="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchanged" 
position="absolute" left="0" width="936" top="105px" bottom="5px" autofittype="none" formatid="default" onheadclick="grdKikiShinMSag_onheadclick">  //-->
<Grid id="grdKikiShinMSag" cssclass="head_standard" taborder="0" binddataset="dsKikiShinMSag" 
useinputpanel="false" autosizingtype="none" autosizebandtype="allband" oncellclick="divInfo_tabInfo_tabHeader_grdKikiShinMSag_oncellclick" 
ontextchange="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchange" ontextchanged="divInfo_tabInfo_tabHeader_grdKikiShinMSag_ontextchanged" 
position="absolute" left="0" width="936" top="105px" bottom="5px" autofittype="col" formatid="default" onheadclick="grdKikiShinMSag_onheadclick">
==============================================================================================================

- No. 97 ����(���Ѧ��ʿ(���� ��� �ݳ�)) HAK::hak_shakuyoki_henkyaku.xfdl(Menu: 5-5)  ==> ���� ��  [����]
1. ����: ���� �˾� ȣ�� ����(���� ��踦 �����ص� �ƹ��� ������ �������� ���� )
 1) HTML5 ����������  ���� �˾�(MstSearchKokiCd) ȣ���� �ؼ� ��ȸ�� �ϰ� ���� �� â�ݱ�[this.close(dsRes);]��
�ϸ� ȣ���� �˾� �Լ��� �ڸ�[ [�˾�_�����ޱ�] [TEST_04]]�� ���� ���� �� �մϴ�.
�׸��� "TEST_53 ȣ�� " ������ Ÿ�� �ʰ� �׳� ���߾� �����ϴ�.
2. ����: No.97�� �������� �� ȭ�� �˻��� ���� ȭ���� ǥ�õ��� �ʰ� �Ǿ� �����Ƿ� ó���� ��Ź �帳�ϴ�.   ==> �߰� �䱸 ����
- HAK::hak_shakuyoki_henkyaku.xfdl ���Ͽ���
this.divReg_btn_koki_search_onclick = function(obj:Button,e:nexacro.ClickEventInfo)
{
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_01]" ); 
 
	var kokiCdOld = this.divReg.edt_koki_cd.value;  
	var cd = this.gfn_nvl(this.divReg.edt_koki_cd.value); 
	
	this.MstSearchKokiCd(cd, ["KOKI_CD"]
						, [this.divReg.edt_koki_cd]
						, "SHISAN_KBN = 3 AND KOKI_STAT_FLG = 1");		// �˾� ó�� ==> @@@@@
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�_�����ޱ�] [TEST_04]" ); 
		
	var kokiCdNew = this.divReg.edt_koki_cd.value;
	trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_05] [kokiCdOld]"+ kokiCdOld +"[kokiCdNew]"+ kokiCdNew ); 

	// if (kokiCdOld != kokiCdNew) {	
	if (kokiCdOld.toString() != kokiCdNew.toString()) {   // TEST_53 ȣ��  @@@ ===>
		trace("[/hak_shakuyoki_henkyaku.xfdl] [divReg_btn_koki_search_onclick()] ==> [�˾�] [TEST_11]" ); 
		
		this.divReg_edt_koki_cd_canchange(this.divReg.edt_koki_cd);
	} 
}
==============================================================================================================

- tomcat ���� ���� ����
1. ����: 
SE 13:29:31:302 TypeError: Cannot read property 'all' of undefined
at line 151, in function: nexacro.Form.fn_callback_props in http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/Base/menu.xfdl.js
at line 1, in function: eval in eval at gfn_comTransactionCallBack (http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/Common/FormCommon.xjs.js)

C:\projects\tomcat\apache-tomcat-7.0.64\webapps\moms_Nexa2 ���� ����
�ٽ� �����

- tomcat ���� ���� ����
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
Platform_HTML5.js:3909 SE 13:32:23:281 �ε��ϴ� �߿� ������ �߻��Ͽ����ϴ�. �ּҰ� ��Ȯ���� Ȯ���ϰ� �ٽ� �õ��Ͻʽÿ�.
 [http://192.168.0.30:8080/moms_Nexa2/moms_Nexa/moms_Nexa_tab.xadl.js]
==============================================================================================================

- �ɰ��� ��Ʈ�� �ֹ�(���� �ֹ� �� ==>  ū ���������� 90���� ������ ��)
1. �ɰ��� ��Ʈ�� �ù�� �����ϸ� OS, ���α׷� ��ġ�� �� ==> ������ ���������� ������ ��. 
2. 2018 NEW LG ��Ʈ�� 13UD580-GX50K, ����: 787,550��(�������밡)
http://www.ticketmonster.co.kr/deal/710268718
==============================================================================================================
 
������������������� 2018.02.10(��) �۾� �������������������
---> 07:00 ~ 19:00 ==>  �ָ� �ٹ�, ������ H-PLM ��ȯ Prj �̰��� �Ǽ�: 2�� ����[���� ��ǥ 1������ ���̱�]

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ������ �� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
- SHU::shu_kosyou_sagyo.xfdl ���Ͽ���
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [ī�޶� ��ư Ŭ�� Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheight��ꪪ�??�窱������Ҫ����[imageheight�� �������� ?? �� �ڵ� �����Ǵ�]
	this.camera.gettype = 1;
	this.camera.takePicture();  // ���� �߻�  ==> � ȭ�� ��� ���� �� ���α׷��� ����� @@@
}
==============================================================================================================

- No. 102 ����(?��� ���ǫ�������?����?(������ ��ġ ���� ���)) SET::set_setchi_schedule.xfdl(Menu: 4-5) ==> ���� ����[����]
1. ����: ���� �ð��� ���� �ð� �����ϸ� ��Ʈ�� ǥ�õ��� �ʽ��ϴ� 
2. �׽�Ʈ �۾���: -> 2016-12-29, 2016-11-21, 2016-03-03 ==> 2017-12-22[��ȸ �ȵ�: �Ϻ��� ����Ÿ]
==============================================================================================================
 
������������������� 2018.02.11(��) �۾� �������������������
---> 06:40 ~ 19:00 ==>  �ָ� �ٹ�, ������ H-PLM ��ȯ Prj �̰��� �Ǽ�: 2�� ����[���� ��ǥ 1������ ���̱�]

- �Ϻ� ������ H-PLM ��ȯ Prj[��] 
- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ������ �� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
- SHU::shu_kosyou_sagyo.xfdl ���Ͽ���
function divInfo_Tab_tabPhoto_btnCamera_onclick(obj:Button,  e:ClickEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [divInfo_Tab_tabPhoto_btnCamera_onclick()] ==> [ī�޶� ��ư Ŭ�� Event] [TEST_01]" );  
 
	this.setWaitCursor(true);
	this.camera.imageheight = application.gvCameraImageHeight;
	this.camera.imagewidth = 0; // imageheight��ꪪ�??�窱������Ҫ����[imageheight�� �������� ?? �� �ڵ� �����Ǵ�]
	this.camera.gettype = 1;
	this.camera.takePicture();  // ���� �߻�  ==> � ȭ�� ��� ���� �� ���α׷��� ����� @@@
}
------------------------------------------------------------------------------------------------------

3. TO-BE ��� ����: 
xcode ���� �� ����ÿ� ī�޶� ���� ���� ������ ���ּž� �մϴ�. ���� ������ ���� camera ���� ���ᰡ �߻��� �Ǵ°����� 
���� ���ϴ�. 
xcode -> Supporting Files -> info.plist���Ͽ���(���� ��� �߰��� ��)
Camera :
Key : Privacy - Camera Usage Description
Value : $(PRODUCT_NAME) camera use
Photo :
Key    :  Privacy - Photo Library Usage Description    
Value :  $(PRODUCT_NAME) photo use
==============================================================================================================

- Thread 4: signal SIGABRT ���� �߻�
1. ����: �ش� ���� ���ο��� SIGABRT�� ������ ���α׷����� ���ܰ� �߻������� �ǹ��մϴ�. ���� ������ ��𿡼� ���ܰ� 
������ �� �����ݴϴ�. ���� �̰��� �����̵��� �ʽ��ϴ�.

2. ����2: SIGABRT (��ȣ �ߴ�) ������ ���� ���� �� ��Ÿ�� ���� �Ǵ� ���� ������ �ҷ��� ����� �������̽� ���ϰ� ���� 
������ ���� ������ ���� ���� ���α׷��� �ǵ������� �ջ�� ���� �ǹ��մϴ�. Ŭ���� ���� ���� ��ɾ� �����͸� ���� 
������ ������ ���� �ۼ��� �ڵ� ��� ������ �����Ƿ� Xcode�� ǥ�ÿ� ������ �����ϴ�. ��� Cocoa ����Ʈ���� ������ 
������ �߻��ϰ� �ֽ��ϴ�. ��, �� ������ ���� ������ �ְų� ���丮 ���� ���� ���������� �� �ֽ��ϴ�.
==============================================================================================================

- H-PLM ���� ���� ����(9��, ȸ��)
1. ������ moms_Nexa_OffLine ==> http://192.168.0.30:8080/moms_Nexa2/moms_Nexa_OffLine/
2. ���� IP�� ���� �ȵǴ� ���� ���� �� ��
http://192.168.0.30:8080/moms_Nexa/dispatcher/ ==> http://127.0.0.1:8080/moms_Nexa/dispatcher/  
==============================================================================================================

- �ɰ��� ��Ʈ�� OS ��ġ
1. ����: USB�� �ν� ����
 1) F2 > BIOS ���� > Booting Configuration(ȭ��) ==> Boot Order �޴����� 
USB HDD: �� ���� ����÷��ֱⰡ �ȵ� ==> C ����̺꿡 HDD�� ���� �νĵ�
==============================================================================================================
  
������������������� 2018.02.12(��) �۾� �������������������
----> 07:00 ~ 20:30 ==> �ı� ȯ���� ��(�Ϸ�), �ɰ� ��Ʈ�� ���ÿϷ�), �߽�(����): �̺���, ������ ==> ���� ��

- �Ϻ� ������ H-PLM ��ȯ Prj[��]
- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> ������ �� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
==> ���� ���� ���̻翡�� ���Ϸ� ���� --> ���̻簡 TO-BE�� ��� ��û �Ѵٰ� ��
==============================================================================================================

- H-PLM ���� ���� ����(9��, ȸ��)  ==> �Ϸ�[����]
1. moms_Nexa_OffLine(ipad���� ���� URL ���) ==> http://192.168.0.30:8080/moms_Nexa_tab/ 
 1) /moms_Nexa.xprj�� ����� ��(moms_Nexa_OffLine.xprj ����ϸ� URL�� ���� �ҽ��� ��)
 2) /moms_Nexa.xprj�� ����� ��(moms_Nexa_OffLine.xprj ����ϸ� URL�� ���� �ҽ��� ��)
2. moms_Nexa_OffLine(nexacro-Runtime, nexacro-HTML5]) ==> http://192.168.0.30:8080/moms_Nexa2/moms_Nexa_OffLine/
 1) /moms_Nexa_OffLine.xprj�� ����� �� 
 2) DataSrv�� ���� ����: http://192.168.0.30:8080/moms_Nexa_tab/  ==> http://127.0.0.1:8080/moms_Nexa/dispatcher/
==============================================================================================================

- �ɰ��� ��Ʈ�� OS ��ġ(10��)  ==> �Ϸ�[����]
1. ����: USB�� �ν� ����
 1) F2 > BIOS ���� > Booting Configuration(ȭ��) ==> Boot Order �޴����� 
USB HDD: �ɾ� ���� USB��(SANDISK Z50 Blade 16GB DISK)�� ǥ�� �Ǿ�� ��
==> Security Disabled ��: ��ġ�� USB OS�� NTFS ����̶� �ȵ� ==> FAT32 ������� �����ؼ� ��ġ�� USB OS�� �ٽ� ������ ��
==> UEFI ���� USB �����ϱ� ���ؼ��� FAT32 ��� �̿��� ��ġ�ȴٰ� ��
(�̰��� ������ USB�� ����� ��)
  2) Rufus ������ UEFI ��ġ ��ũ USB ����� ==> http://prolite.tistory.com/571
2. ����̹� ��ġ
 1) D: ����̺꿡 ��� �ִ� LG DnA Center Plus�� ����̹��� ��ġ(Autoplay ���� Ŭ��)
3. 2018 NEW LG ��Ʈ�� 13UD580-GX50K, ����: 787,550��(�������밡) 
http://www.ticketmonster.co.kr/deal/710268718 
==============================================================================================================

- Team Viewer[�� HP ��Ʈ��(GI/GI)]
�������� ID: 592 642 267(592642267)
��й�ȣ: 4515
https://www.teamviewer.com/ko/?pid=google.tv.kr_sn_desk_brand_teamviewermisspeling_ex_tv12.s.kr&gclid=CjwKCAiA8P_TBRA9EiwAJrpHM99XbLsjDejqofreaGtQ8-ZuoHxtd8zqalPoKyAhuy5Hq16NeDiylxoC5JEQAvD_BwE
http://comterman.tistory.com/548
-------------------------------------------------------------------------------------------------------

- Team Viewer[ȸ�翡 �ִ� �� ��Ʈ��]
�������� ID:592 773 019(592773019)
��й�ȣ: 4427 
==============================================================================================================

������������������� 2018.02.13(ȭ) �۾� �������������������
----> 09:00 ~ 18:20 ==> ���࿬��ȸ Prj ����(9��, ��), �߽�(����: ī�縯 ȸ�� �Ĵ� -> ������, �ڴ븮, ������ ������ �� ��)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ������Ʈ �η�
1. (��) �����̵���Ÿ ==> ���ϰ� ����(PL: ��������), ������ ����(�μ� �ΰ���: �����̵���Ÿ), ������ ����, �ڰ��� �븮
2. (��) LG NCS ==> ��ö�� ����(PM), ���غ� å��(����)
3. �������� ==> ������ ����(AA), ����� ����(����������)
4. (��) ��ȭ ==> �� ����, �� �븮
5. ��������ȸ �� ==> �ֻ�� ����, ������ �븮
==============================================================================================================

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ ������Ʈ ����
1. ������Ʈ��: ���ͳݼ��� �ý��� ��ȭ �� �ű� ���� ���� ������Ʈ
2. �Ⱓ: 2017.10.31 ~ 2018.03.31
3. ���: ���࿬��ȸ 15��  6ȸ�ǽ�(�������Ա��� 5�� �ⱸ) ==> �ּ�: ����� �߱� ��11�� 19(��1��) 15�� 6ȸ�ǽ�
4. ��Ÿ
 1) ProWeb[�ҽ� �м� �����, ���̵���] (Ƽ�ƽ� ����Ʈ) --> Nexacro ��ȯ
 2) ���� �η� ���� ��������, ���륹, ��ü�� ����ȭ�� ��
==============================================================================================================

- �������� �ѱ۸� ����
1. ���� ���������� �ߵ�
2. JEUS �������� �ѱ� ���� ==> ���� ������ ������
 1) kO_KR_EUCKR ==> UTF-8
==============================================================================================================

- JAVA���� ���� ���� @@@
1. abc.equals("");	==> "".equals("abc");
2. try ~ catch()���� Exception�� ��ü�� ���
} catch (Exception re) 
	re.printStackTrace(s);Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
}
==>
} catch (RuntimeException re) 
	Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
}

3. printStackTrace�� Logger.getLogger�� ���� ���
re.printStackTrace(s);
==>
Logger.getLogger("BiztxS0101ServceImpl selectTaxDetailHistManageList RuntimeException");
==============================================================================================================

- Ư�� ����
�ڡ�ϡߡ��âá� ����
==============================================================================================================

������������������� 2018.02.14(��) �۾� �������������������
----> 06:40 ~ 18:20 ==> ������ �� �����(P2217H) ������

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ���ݿ�� ������ȸ �� ���� �м�(BIZTX_T0101) 
- �α�(Nexa����)
trace("[/BIZTX_T0101.xfdl] [BIZTB_T0101_onload()] ==> [�� �ε�] [TEST_01]");
 
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_61] [��û Param] [ds_search.getRowCount()]"+ this.ds_search.getRowCount() 
+"[ds_search.saveXML()]"+ this.ds_search.saveXML() );

alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_70_�˻� ���] [this.errorcode]"+ this.errorcode );
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_71_�˻� ���] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );
----------------------------------------------------------------------------------------------------------------------------------

- �α�(JAVA����)
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [��ȸ] [TEST_01]"); 
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [��ȸ] [TEST_03] [��û Param] [reqMap]"+ reqMap );

returnMap = biztxS0101Service.selectTaxDetailHistManageList(reqMap);   // ��ȸ ��� �Լ� ȣ��
System.out.println("[/BiztxS0101Controller.java] [selectTaxDetailHistManageList()] ==> [��ȸ] [TEST_71] [��ȸ ���] [returnMap]"+ returnMap );
==============================================================================================================

- �α�2(Nexa����)
this.div_search.edt_req_jumin_pre.set_value("1111111"); 	// �ֹι�ȣ1(7�ڸ�)  	// TEST @@@ ===>
this.div_search.edt_req_jumin_mask.set_value("111111");  	// �ֹι�ȣ2(6�ڸ�)		// TEST @@@ ===>
this.div_search.edt_req_jumin.set_value("1111111111111"); 	// �ֹι�ȣ(13�ڸ�)  // TEST @@@ ===>
this.div_search.edt_sav_knd_cd.set_value("63");  // ���������ڵ�  	// TEST @@@ ===> 
//alert("[/BIZTX_S0101.xfdl] [BIZTX_S0101_onload()] ==> [�� �ε�] [TEST_91] [edt_req_jumin_pre]"+ this.div_search.edt_req_jumin_pre.value
 +"[edt_req_jumin_mask]"+ this.div_search.edt_req_jumin_mask.value );
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_71] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );
alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_71] [ds_list_list()]"+ pThis.ds_list.getRowCount() +"[pThis.saveXML()]"+ pThis.ds_list.saveXML() );  
trace("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_61] [gds_menu.getRowCount()]"+ application.gds_menu.getRowCount() 
+"[gds_menu.saveXML()]"+ application.gds_menu.saveXML() );
==============================================================================================================

- ���� ���� ����(BIZSM_R0401: �޴�����)
1. ����: text �Է½� ���� ���� Ŭ���ϸ� ���� ������ �̻��ϰ� ��
2. ����: Iject ���� ==> show Modal���� ������ ���� ������ ����  
==============================================================================================================

������������������� 2018.02.15(��) �۾� �������������������
----> 09:00 ~ 18:20 ==> ���� ����

- ���� ����  
03:00 ���
03:30 ���ͳ� ���� ==> �����к� ���� �ڰ� ��û(9��)
11:00 �߽�
11:40 �̹�(��ī�� �̿��, 8õ��)
13:20 �Ͱ�
13:30 ����(�翺�� ����)
14:20 �����(�翺, ����)
14:30 �븲�� ���
14:50 ��꿪 ����
15:10 ������(15:10, ��꿪, KTX)
17:35 ���׿� ����
17:40 �ý�(���׿� -> ���׸� -> ���۱����� -> ���̳� ���� �差��(�λ� ���� ����Ʈ ��ó)
18:05 �����(��ġ������) ���� ==> ��ǥ, ����, ��ö, �ֳ����� ����(��ġ �δ�: 4�� 4õ�� �ֹ�)
		==> ��ǥ(�ѹ�)�� ��ǰ��(5�� ��), ���� ��Ʈ �غ���
20:00 ����
20:00 �߽�(��ǥ��)
23:50 ��ħ
==============================================================================================================

������������������� 2018.02.16(��) �۾� �������������������
----> 09:00 ~ 18:20 ==> ����

- ����  
09:00 ���
10:00 ���� ������(�����̿� �翺�� �����༭ ������)
10:30 ����
10:50 ����
16:00 ū������ �湮(����, �ɰ�) 
17:00 ����(����)
23:50 ��ħ
==============================================================================================================
 
������������������� 2018.02.17(��) �۾� �������������������
----> 09:00 ~ 18:20 ==> ���� ����

- ���� ����
09:00 ���
10:00 ����
10:30 �ɰ��̿��� ��Ʈ�� ���� �������ְ� LG ��Ʈ�� ������
13:00 ģ��(�¿�) ����
13:50 �Ͱ�
17:30 ���� 
17:20 ����� ==> �ɰ��̿��� �뵷 5���� ��
17:45 ���׿� ����
18:00 ���� ���(KTX)
20:30 ��꿪 ����
21:00 �Ͱ�
23:50 ��ħ
==============================================================================================================

������������������� 2018.02.18(��) �۾� �������������������
----> 09:00 ~ 18:20 ==> ���� ����

- ���� ���� 
09:00 ���
12:00 �߽� 
12:30 �����
13:00 ���θ� ����(����) 
15:30 ����
15:40 �Ͱ�
19:00 ����
20:00 ���� ����
00:00 OS ��� �� ��Ʈ �� ���� �۾�
==============================================================================================================
 
- OS ��� �� ��Ʈ(OS ���) ��(18��, ȸ��)
1. ���� USB ����� (RUFUS�� Ȱ��) - USB �޸𸮷� �����츦 ��ġ�ϴ� ��� ===> http://nmain.tistory.com/71  
 1) �غ�
	1. USB�޸� (�뷫 4GB �̻�)
	2. ��ġ�� �������� iso �̹���
	3. RUFUS V1.3.3 (���ð����� USB�� ������ִ� ���α׷�)
2. ��ư ��Ʈ(OS ����ȭ ��) ��ġ �� ���
 1) SGR3x64(win7_x64��).exe ==> http://the3.tistory.com/13
2. Shirt + F10 ������� DISKPART ��� ��ɾ�� ã�Ƽ� ��Ʈ ������ ã�Ƽ� ����  
-----------------------------------------------------------------------------------------------

- Rufus(���ð����� USB ����̹��� ������) ==> https://rufus.akeo.ie/
1. ISO �̹��� ���Ϸθ� ���ÿ� USB ������ ����

- GPT��Ƽ���� �̿��� ������ 10��ġ : ���̹� ��α�
https://m.blog.naver.com/PostView.nhn?blogId=loowi&logNo=220972771349&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
-------------------------------------------------------------------------------------------------------

1. ��ư ��Ʈ  ==> http://the3.tistory.com/13  
---------------------------------------------------------------------------

- Snoopy Ghost R3 ���α׷��� �̿��� Windows7 32/64bit ��Ʈ �����
1. http://kimkhye428.tistory.com/95 
 
- ��Ʈ �ڵ� ���� �ý��� ��ġ�ϱ� - ������ 7, ������ ��Ÿ ����(�����)

- ������ ������ �缳ġ �ʰ� ��Ʈ�� �����ϱ�
https://www.youtube.com/watch?v=zDDCuOw_LSg

- ���� ��Ʈ15 ��ġ ���� ��� ����
https://www.youtube.com/watch?v=JorKzNRtA-s&t=156s
==============================================================================================================

������������������� 2018.02.19(��) �۾� �������������������
----> 07:00 ~ 21:30 ==> ������ ���� ö��(18��), ����(¥���, ������ -> ������, ������, �ڴ븮[3�� 4õ��: û���� ��])

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- �α� �м�
1. fidder ����
==============================================================================================================

- Iject �м�(/Iject.js ���Ͽ���)
Iject.formOnload(ojb): 	// �⺻ ���� �Լ� �ʱ�ȭ ==> ���� ���뿡�� �����ش� ���� �ƴ�(���� �� ����)

Iject.showModal(this, oData, function()) {		// �˾� ==> showModal : function(o,  oData, callback)

Iject.open(this, "StringReturnBiztxD0111", "BIZTX:BIZTX_D0101.xfdl",  args);		==> open : function(o, sId, url, oArg, sOption, fncCllback)

Iject.alert("�˻������ �����ϴ�");  	==> alert : function(sMsg, sCaption)

Iject.getPopArgu(this, "orgNm");	  	==> getPopArgu : function(o, variable)

Iject.transaction(this, oData, function() {		  	==> transaction : function(oo,  oData, callback)
==============================================================================================================

- trackPopup
1. trackPopup: �־��� �޴��� ���� �޴��� ������ ��ġ�� �˾���Ű�� �޼ҵ�
==============================================================================================================

- license ����
1. ���ݿ����(�ұ�) ==> http://localhost:8090/tax/index.html, tester01 / tester01@
2. ����: 2018-02-19 09:
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

- OS ��� �� ��Ʈ(OS ���) ��(00:00 ~ 05:00, ��)
1. ���� USB ����� (RUFUS�� Ȱ��) - USB �޸𸮷� �����츦 ��ġ�ϴ� ��� ===> http://nmain.tistory.com/71  
 1) �غ�
	1. USB�޸� (�뷫 4GB �̻�)
	2. ��ġ�� �������� iso �̹���
	3. RUFUS V1.3.3 (���ð����� USB�� ������ִ� ���α׷�)
2. ��ư ��Ʈ(OS ����ȭ ��) ��ġ �� ���
 1) SGR3x64(win7_x64��).exe ==> http://the3.tistory.com/13
2. Shirt + F10 ������� DISKPART ��� ��ɾ�� ã�Ƽ� ��Ʈ ������ ã�Ƽ� ����  
==> Win7_MSI_180219.GHO ���� ����
==> Win7_HP_180220.GHO ���� ����
==============================================================================================================

������������������� 2018.02.20(ȭ) �۾� �������������������
----> 07:00 ~ 21:30 ==> ����(18��, ����(4õ 5���) -> ���빮������ ���� �Ĵ�: ù �湮)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- Iject �м�(/Iject.js ���Ͽ���)
1. /Iject.js ���Ͽ��� �ҽ� ����  ==>  Genarate Application ó�� ==> eclipse���� /WebContent�� Refresh(F5)�� ��
==============================================================================================================

- �˾� ũ�� ���� ��� ����(/Iject.js ���Ͽ���)
if(sId =="MENU02-1_BIZTX_T0101.xfdl" || sId =="MENU02-5_BIZTX_T0401.xfdl")		// �޴����� "���ݿ�� ������ȸ" �Ǵ� "�����ǰ ����: �̸�
{
	bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, 1160, 840, pThis);	// ����[Width(1160), Height(840) �߰�]" 2018.02.20, by ���¸�
} else {
	bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, null,null840, pThis);	// modaless ȭ�� �˾�
}
==============================================================================================================

- ���� ���� ����(BIZSM_R0401: �޴�����)
1. ����: Edit���� ���� �Է� �� ���ڸ� ���� Ŭ���ϸ� ��ü ������ �ȵ�(������)
 1) BIZBB_S0301 ==> ���� Ŭ���ؼ� ��ü ���� �ȵ�
2. ����: Iject ���� ����? ==> �� �信���� ���������� ���� --> css ������ �ƴұ� ����
==============================================================================================================

- ���� ȸ��(10�� ~ 11��)
1. �����(KFB_LEAD_INFO), ����(GTP_AUTH_LIST: ����), �޴�(GTP_MENU)
 1) ����� ����(GTP_USER_AUTH), �޴� ����(GTP_ROLE_MENU)
==============================================================================================================

- OS ��� �� ��Ʈ(OS ���) ��(01:00 ~ 05:00, ��)
1. ���� USB ����� (RUFUS�� Ȱ��) - USB �޸𸮷� �����츦 ��ġ�ϴ� ��� ===> http://nmain.tistory.com/71  
 1) �غ�
	1. USB�޸� (�뷫 4GB �̻�)
	2. ��ġ�� �������� iso �̹���
	3. RUFUS V1.3.3 (���ð����� USB�� ������ִ� ���α׷�)
2. ��ư ��Ʈ(OS ����ȭ ��) ��ġ �� ���
 1) SGR3x64(win7_x64��).exe ==> http://the3.tistory.com/13
2. Shirt + F10 ������� DISKPART ��� ��ɾ�� ã�Ƽ� ��Ʈ ������ ã�Ƽ� ����  
==> Win7x64_HP_180220.GHO
==> Win7x64_MSI_180221.GHO
==============================================================================================================

������������������� 2018.02.21(��) �۾� �������������������
----> 07:00 ~ 21:00 ==> �߽�(���� , ������ ��ó ȣ�� �Ĵ� -> ������, �̺���)
								, (��)����ҽ�Ʈ �湮(15��): Info.plist ���� ���� �ذ�[������ ȸ�� ��Ʈ�� ������]

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ���� ����
1. ��ü ����: ywkwon73/1
2. S ����: kimh88/1
// gds_menu���� PAGE_ID�� �ش��ϴ�  MENU_AUTH�� ���
this.gfn_getMenuAuth = function(page_id)
{
	var strPageID = this.gfn_toUpper(page_id) +".xfdl);
	var menu_auth = this.gfn_strNull(application.gds_menu.lookup("PAGE_ID", strPageID, "MENU_AUTH");
	
	return menu_auth
}

// ���λ���� ���� ó��
this.fn_setAuth = function()
{ 
	// ���λ���� ���� ó��
	//Boolean isInUser = AuthManager.isInUser(context);
	//var isInUser = AuthManager.isInUser(context);  // TEST @@@ ==>
	var isInUser = false;  // TEST @@@ ==> 
	alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [���λ���� ���� ó��] [TEST_02_11] [isInUser]"+ isInUser ); 
	
	if (isInUser == true) {  // ���λ����(A) �̸�   ==> if(this.isAdmin() == true) {    //var pThis = this.fobj; 
		alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [���λ���� ���� ó��] [���λ����(A) �̸�] [TEST_11] [isInUser]"+ isInUser );
		this.div_grid.btn_register_manage.set_visible(true);		// ���γ��� ���� ��ư View ó�� 
		this.div_grid.btn_register_detail.set_visible(true);		// �ѵ� ��� ��ư inView ó��
		this.div_grid.btn_update.set_visible(true);		// ���� ��ư inView ó��
		this.div_grid.btn_cancel.set_visible(true);		// ���� ��ư inView ó��
		this.div_grid.btn_delete.set_visible(true);		// ���� ��ư inView ó��
		
	} else {	 // ���λ����(S)�� �ƴϸ�
		this.div_grid.btn_register_manage.set_visible(false);		// ���γ��� ���� ��ư inView ó�� 
		this.div_grid.btn_register_detail.set_visible(false);		// �ѵ� ��� ��ư inView ó��  
		this.div_grid.btn_update.set_visible(false);		// ���� ��ư inView ó��
		this.div_grid.btn_cancel.set_visible(false);		// ���� ��ư inView ó��
		this.div_grid.btn_delete.set_visible(false);		// ���� ��ư inView ó��   
		alert("[/BIZTX_S0101.xfdl] [fn_setAuth()] ==> [���λ���� ���� ó��] [���λ����(S)�� �ƴϸ�] [TEST_44] [btn_register_manage]"+ this.div_grid.btn_register_manage.visible 
			+"[btn_register_detail]"+ this.div_grid.btn_register_detail.visible +"[btn_update]"+ this.div_grid.btn_update.visible ); 
	}
}
==============================================================================================================

- ī�޶� ��� ó��
11:40 ���(���࿬��ȸ Prj)
11:50 ������3���� 
12:30 ������
12:40 �߽�(����: ������, �̺���) --> �������� ��
13:30 Ŀ��?(HP ��Ʈ���� �������� 5G�� �ν� ���ؼ� ī�޶� ��� �׽�Ʈ ����)
14:00 ����(���� �׽�Ʈ)
14:20 ����(146��): ������
14:50 (��)�������Ʈ ���� 3��
15:00 ������ �׷��� ���� ==> ī�޶� ��� �׽�Ʈ(������ ����[001-4506-1423])
15:10 ī�޶� ���� ����
        ==> Mac���� ÷���� ����(Info.plist)�� �Ʒ� ��η� �ٿ��ֱ��ϸ� ����
		/nexacro14_iOSLauncher/nexacro14_iOSLauncher/SampleProject/Info.plist 
15:30 ����
15:40 ����( (��)�������Ʈ ���� ==> (��)�����̵���Ÿ)
16:00 ���� ����
16:40 ī�޶� ���� ���� ���Ϸ� ����
19:00 �߽�(��䳪��)
19:40 ī�޶� ���� ���� ���Ϸ� �����Ͽ� �Ϻ����� ����
22:40 ���( (��)�����̵���Ÿ)
23:50 �Ͱ�
23:50 ��ħ
==============================================================================================================
  
- �Ϻ� ������ H-PLM ��ȯ Prj[��]
- No. 90 ����(����?����?)(�����������)) SHU::shu_kosyou_sagyo.xfdl(Menu: T_5-5)  ==> Ȯ�� �Ϸ� [����]
1. ����: ī�޶� �Կ� �� �̹����� ����Ͽ� ����� �̹����� ǥ�õ��� ����] 
2. ����2: takePicture() �Լ� ȣ�� ��, oncapture �̺�Ʈ�� �ݹ���� �ʽ��ϴ�.  
------------------------------------------------------------------------------------------------------------------------

- ios 10 ���� �ʿ��� ����
1. ios10 ���ʹ� ������ plist�� �߰��ϰ� �װ� ���� �˾�â�� ����� ����ڿ��� Ȯ���� ���� �� �ֵ��� �����ؾ��Ѵ�.
2. �⺻������ ������ ���� �Ķ���Ͱ� �߰��Ǿ����ϴ�.
  1) ī�޶� ���� : Privacy - Camera Usage Description ==> <key>NSCameraUsageDescription<key>
  2) ���� ���̺귯�� ���� : Privacy - Photo Library Usage Description ==> <key>NSPhotoLibraryUsageDescription<key>
  3) ���� ���̺귯�� �߰� ���� : Privacy - Photo Library Add Usage Description ==> <key>NSPhotoLibraryAddUsageDescription<key>
  ==>  Info.plist ���� ��ġ: /nexacro14_iOSLauncher/nexacro14_iOSLauncher/SampleProject/Info.plist
==============================================================================================================

- ȸ�� ��Ʈ��(HP ProBook 450 G3) ���� ��Ʈ ���� ���(ȸ�翡�� ����)
1. ���� OS�� ������Ʈ�� ���
2. ������Ʈ ���� �� ����(C:, D: ����̺�� ����Ÿ ���˵�
 1) USB�� OS�� ��ġ�Ϸ��� �ϸ� USB ����̺� �ν� ����(USB�� ���� ��Ʈ  ��� ����Ÿ�� ��� ����)
3. USB�� OS�� ��ġ �� D: ����̺꿡 USB�� �ִ� ���� ��Ʈ  ��� ����Ÿ�� ����
4. USB�� ���� ��Ʈ  ��� ����
==============================================================================================================

- Ư�� ���� ��[Memo(2018.02).txt]
1. ȸ�� ��Ʈ��(HP ProBook 450 G3)
	1) [Memo ��] --> 57��(��), [50��(-), 50��(-)], 57��(��).....34��(��), 110��(=)
	2) [End ��] --> 57��(��), [56��(-), 56��(-)], 57��(��)
2. ���࿬��ȸ �ܸ� PC 
	1) [Memo ��] --> 57��(��), [52��(-), 520��(-), 57��(��).....49��(��), 85��(=)
	2) [End ��] --> 57��(��), [56��(-), 56��(-)], 57��(��)
=========================================================================================================

- Ž���� ���ã�� �ڵ����� ���� ���� Ȯ�� ���� ���(���ã�� ���� ������)
1. Ž���� > ���� > ���� �� �˻� �ɼ� > ���� �ɼ�(��â) Ž��â > �ڵ����� ���� ���� Ȯ��(��): üũ ���� ==> Ȯ��
==============================================================================================================

������������������� 2018.02.22(��) �۾� �������������������
----> 07:00 ~ 18:30 ==> ����(��) ��ȭ���� ��), ���� ���� ȸ��(19:30 ~ 22:30)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ȭ�� �ػ� ���� ����
Iject.$["framesize"]      = "0,120,*,40";  	 //defualt seperatesize   ==> "0,120,740,40"
Iject.$["framesize"]      = "0,120,800,40";	//defualt seperatesize
- /Iject.js ���Ͽ���
appOnload : function(o)
{
	//alert("[/Iject.js] [appOnload()] ==> [ADL �ε��� �ʱ� ��������] [TEST_01_08]" );
	
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
	Iject.$["mainframeSize"]  = {width:o.mainframe.width, height:o.mainframe.height};	 // TEST @@@ ===> height:o.mainframe.height => 900 ������ ��(960�̿��� ��)
	Iject.$["gds_menu"]       = o.gds_menu;													
	alert("[/Iject.js] [appOnload()] ==> [ADL ������ ����] [TEST_77_17] [Iject.framesize]"+ Iject.$["framesize"] +"[Iject.mainframeSize.height]"+ o.mainframe.height ); 
},
------------------------------------------------------------------------------------------------------

 ��ü ����	TOP ������	���� ������	BOTTOM ������
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

- �������� ����
1. �󼼿��� ÷������ �Ϻ� �� ����
2. ���Ͼ��ε� ==> ������ alert â �̻���
==============================================================================================================

- modaless â���� ���� ���� �� â �� ����
1. ���� ����
==============================================================================================================

������������������� 2018.02.23(��) �۾� �������������������
----> 07:00 ~ 23:00 ==> �ְ�����(17:3)0), ���̻����� �Ϻ��� ����Ʈ ���� �ߴٰ� ���ڿ�(17:51)
									���� �ø� �ذ����[20�� ~ 23��] (�ѱ� 8:7 �Ϻ�): ���޴� Ȯ��

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- �Խ���[��������(/BIZBB_S0101.xadl), �ڷ��(/BIZBB_S0201.xadl), ���ֹ��� ����(/BIZBB_S0301.xadl)] ����
1. �������� ��ȸ(/BIZBB_S0101.xadl)���� Grid �ʵ忡 cusor ����  
2. �������� ��(/BIZBB_R0102.xadl)���� ÷������ �Ϻΰ� �� ���� ==> �̻����� �߻��� ������ ����(�ش� �� ���� ó��)
2. �������� ��(/BIZBB_R0102.xadl)���� ������ alert â�� �̻��� 
==============================================================================================================

- [SVN] 'cleanup' ����
1. ����: ������Ʈ �Ǵ� ��ũ �� ���� ���� �߻�
org.tigris.subversion.javahl.ClientException: svn: Working copy 'C:\Dev\workspace\pjt\webapps\WEB-INF\io' locked; try performing 'cleanup' 
2. ����: ������� �̷������� ���̴� ��찡 ����.
3. �ذ�:
1-1. �ش� ������Ʈ�� �����ϰ� ��Ŭ�� > team > cleanup ����
1-2. cleanup ���� �� �ٽ� ������Ʈ
Ŭ���� ���� ������ �߻��ϰų� �� ������� �ذ��� �ȵǸ� ������ ���� ó��
2-1. Ž���⿡�� �ַܼα׿� ��µ� ���� ���� �ִ� .svn ������ �̵�
2-2. ���� ���� locked ������ ������ ����
2-3. ��Ŭ�������� �ٽ� ������Ʈ
��ó: http://leetaehoon.tistory.com/10 [�޸���]
==============================================================================================================

- 2017�� �ͼ� �������� ȯ��
1. �ҵ漼: 519,880��, ����ҵ漼: 51,940�� 	 
 ==> �� ȯ�޾�: 571,820��
==============================================================================================================

- ���� ũ�ҿ��� Ȩ�ؽ� ����ϱ� - YUKSI.COM
https://www.hometax.go.kr/websquare/websquare.wq?w2xPath=/ui/pp/index_pp.xml 
==============================================================================================================

������������������� 2018.02.24(��) �۾� �������������������
----> 07:00 ~ 18:40 ==> �ָ� ���, �߽�(��ġ�: �����Ĵ�), ����(�����: �����Ĵ�)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- Iject �м�
1. http://www.playnexacro.com/#show:article���� devNexaBase.zip ���� �ٿ�ε� ����(ecclipse ���� ==> Runtime�� ����)
2. C:\eduBaseMdi ���������� C:: �� ��������  ==> C:\eduNexaBase/
==============================================================================================================

- ���� ȭ�鿡 Scroll�� �� �����  ==> ���� �Ϸ�[����]
1. /index_biz.html ���Ͽ��� min-height:800px; ���� ���� ==>  Mid: 740[��Ȯ]
<style>
	html , body { margin:0; padding:0; border:none; }
	iframe {min-height:900px; min-width:1280px; width:100%; margin:0; padding:0;  border:none; height:100%; position:absolute; top:0; bottom:0; }
</style>

2. ����-MIDDLE(BIZLI_S0114.xfdl) ȭ�鿡�� height:800px�� height:740px���� ����
==============================================================================================================

- ������ȸ ���� ���������� ��ȭ
1. ������ȸ���� �Դ��Ϸ��� ��ȸ�� ����(ȸ�� �� ����)
==> ��ȸ�� ���� �ٳ�� ��
==============================================================================================================
  
������������������� 2018.02.25(��) �۾� �������������������
----> 07:00 ~ 18:40 ==> ��â����ø��� �󸷽�(20��, ��â)
 
�� �౸
06:00 ���
07:00 2017�� �ͼ� ��������(2018.01) ����
09:30 ����
09:40 ���� �ø� ����� ��û (�ѱ� 3:8 ������): ���޴� ȹ�� ==> ������ ����, ������(��ŵ)�� �� ����
11:30 �߽�
12:10 �翺, ���� ��ϳ����� ���
13:00 2017�� �ͼ� ��������(2018.01) ���� => �Ϸ�
15:00 TV ��û
15:50 �����(������)
16:00 �븲���
16:10 �ֻ�� ��δ� ����(������ȸ��, �븲3�� ����ȸ)
16:30 ����(������ȸ��:��︲FC) ==> 2�޸��� ó�� �(4���ͱ��� ��): �ǰ�, ���� ��������� ��ϱ⿡ �����ϴٰ� �Ǵܵ�
19:00 ����
19:20 �Ͱ�
19:50 ����
21:00 ��ħ
==============================================================================================================
 
- ũ�� ������ ��ũ�� ĸ�� �ϴ� ���
http://blog.iroot.kr/195
==============================================================================================================
 
������������������� 2018.02.26(��) �۾� �������������������
----> 07:00 ~ 23:00 ==> 

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- �Խ���[��������(/BIZBB_S0101.xadl), �ڷ��(/BIZBB_S0201.xadl), ���ֹ��� ����(/BIZBB_S0301.xadl)] ����
1. �������� ��ȸ(/BIZBB_S0101.xadl)���� Grid �ʵ忡 cusor ����  
2. �������� ��(/BIZBB_R0102.xadl)���� ÷������ �Ϻΰ� �� ���� ==> �̻����� �߻��� ������ ����(�ش� �� ���� ó��)
2. �������� ��(/BIZBB_R0102.xadl)���� ������ alert â�� �̻��� 
==============================================================================================================

������������������� 2018.02.27(ȭ) �۾� �������������������
----> 07:00 ~ 23:00 ==> ����(��ġ�, �����н� -> ������, �ڴ븮: 2�� 2õ��: û���� ��)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- �Խ���[��������(/BIZBB_S0101.xfdl), �ڷ��(/BIZBB_S0201.xfdl), ���ֹ��� ����(/BIZBB_S0301.xfdl)] ����
1. ���� ÷�� ����
 1) ���� ��� �� ������ ���� ÷���ϸ� ���� �߻�
public NexacroResult update(HttpServletRequest request, @ParamDataSet(name = "ds_files") List<Map> listFiles, @ParamDataSet(name = "ds_input") Map map) {
	  	//System.out.println("[/BizbbController.java] [insert()] ==> [���� ó��] [TEST_01]" );
    	
    	HttpSession session = request.getSession(true);	// ��������
    	String bbsPostCode = map.get("BBS_POST_CODE").toString();	// Post �ڵ�(���Ϲ�ȣ)  
    	String fileMastCd = map.get("FILE_MAST_CODE").toString();		// ���� ������ �ڵ�(������: 20180227_550) 
    	String adminRight = map.get("ADMIN_RIGHT").toString();			// ������ ���� �߰�
    	String fileMasterGb = map.get("FILE_MAST_GB").toString();			// ������ó �߰�
    	String fileSeq = "";	
    	//System.out.println("[/BizbbController.java] [update()] ==> [����] [TEST_21] [Post �ڵ�(���Ϲ�ȣ)]"+ bbsPostCode 
		+"[���� ������ �ڵ�]"+ fileMastCd +"[adminRight]"+ adminRight +"[fileMasterGb]"+ fileMasterGb );
    	
    	if (bbsPostCode != "" ||  bbsPostCode != null){	// Post �ڵ�(���Ϲ�ȣ)�� �����ϸ�     		
			if ( listFiles.size() > 0 ) { 		// ÷�������� �����ϸ� 
				map.put("FILE_MAST_CD",fileMastCd); 
	    		fileService.deleteFile(map);	//���� ����		 
	    	 
		    	for ( int i=0; i<listFiles.size(); i++ ){
		    		Map mapFile = (Map)listFiles.get(i); 
 	    		
 	    			if ( i==0 ) {   // 0��° �̸�
 		    			fileMastCd = (String)listFiles.get(0).get("FILE_MAST_CD");		// ���� ������ �ڵ�(������: 20180227_550) 
 		    		}	  
 	    			
 	    			fileSeq = (String)listFiles.get(i).get("FILE_SEQ");		// ���Ϲ�ȣ
  
		    		List<Map> listSeq = fileService.selectFileSeq(mapFile);
		    		mapFile.put("SEQ", listSeq.get(0).get("SEQ"));  	// ���Ϲ�ȣ 
		    		mapFile.put("FILE_MAST_GB", fileMasterGb);		// ������ó
		    		mapFile.put("FILE_MAST_CD", fileMastCd);		// ���� ������ �ڵ�
		    		mapFile.put("ADMIN_RIGHT", adminRight);		 	// ������ ���� �߰�
			    	mapFile.put("REG_USER", (String)session.getAttribute("sessinUserId"));
			    	mapFile.put("MOD_USER", (String)session.getAttribute("sessinUserId")); 
			    	//System.out.println("[/BizbbController.java] [update()] ==> [����] [listFiles.size()]"+ listFiles.size() +"[I_��°]"+ i 
					+"[���Ϲ�ȣ]"+ bbsPostCode +"[������ó]"+ fileMasterGb +"[���� ������ �ڵ�]"+ fileMastCd );
			    	
			    	fileService.insertFile(mapFile);   // ���� ���
		    	}  // end of for()
		    	
		    	fileMastCd = (String)listFiles.get(0).get("FILE_MAST_CD");		// ���� ������ �ڵ� 
				map.put("FILE_MAST_CODE", fileMastCd);		// ���� ������ �ڵ� ����
			} // end of if ==> //÷�������� �����ϸ� 
    	}
  	
    	bizbbService.update(map);		 // �Խ��� ����
   
        NexacroResult result = new NexacroResult();
        
        return result;
    } 
 }
==============================================================================================================
 
- svn ����
1. ����
Some of selected resources were not committed.
svn: E200030: There are unfinished transactions detected in 'C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\bizinfo_branch'
2. ��ġ:
 1) bizinfo_branch ���� ����
 2) SVN Repository ==>  svn > branches > bizinfo_branch ==> CheckOut
==> commit�� �� Nexacro ȭ�� ��� �ݰ��� ��
 3) Nexacro���� generate Application�� ��
==============================================================================================================

- ���࿬��ȸ Prj ���� ����[���ϰ� PL�� ����)
1. ���ΰ��� ��ũ ==> ���� �Ϸ�[����]
2. �޴��� ��ũ  ==> ���� �Ϸ�[����]
3. �Խ��� ��ũ  ==> ���� �Ϸ�[����]
4.  ���� ȭ�鿡�� ūȭ������ �Ǹ� ����� ������â�� �ȴþ�� 
5.  validation üũ�Լ�(������10���� �ȵ�)
==============================================================================================================

- Iject �м�
1. HTML5 ȯ�� ����
 1) eclipse ����
  ��. eclipse-jee-mars-2-win32-x86_64.zip  �ٿ�ε� ==>
http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-win32-x86_64.zip
==============================================================================================================

- Windows 7/8.1/10���� ��������� Ȱ��ȭ�ϴ� ���
https://support.lenovo.com/fr/ko/solutions/ht037001

���2: ������
1. Start(����) --> Devices and Printers(��ġ �� ������)�� Ŭ���Ͻʽÿ�.
2. ��ġ ��Ͽ��� ������ ��ǻ�͸� ������ Ŭ���ϰ� Bluetooth ������ �����Ͻʽÿ�. 
3. Bluetooth ����â���� Bluetooth ��ġ�� �� ��ǻ�͸� ã�� �� �ֵ��� ��� üũ �ڽ��� �����Ͻʽÿ�. �״���, Ȯ���� Ŭ���Ͻʽÿ�.
4. ��ġ�� ���Ϸ��� Start(����) --> Devices and Printers(��ġ �� ������) --> Add a device(��ġ �߰�)�� ���ʽÿ�. 

- ��Ʈ�� ������� �̾��� ����Ŀ ���� 5�� ��
https://blog.naver.com/studio_pan/221213577124

- ��ġ������ �ٷΰ���
1. ���� > devmgmt.msc
==============================================================================================================

������������������� 2018.02.28(��) �۾� �������������������
----> 07:00 ~ 18:00 ==> ȸ��(���࿬��ȸ Prj), ���� ����� ���(2015.03.16 ~ 2018.02.28)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ����(BIZLI_S0114.xfdl) ȭ�� ���� 
==============================================================================================================

- ���࿬��ȸ Prj �ӵ� ����
1. Ű���� ����
2. iject ����
==> fiddler�� �м��� ��
==============================================================================================================

- ȸ�� ��Ʈ��(HP ProBook 450 G3)�� ������� ����̹� ��ġ
1. https://h30491.www3.hp.com/t5/noteubug/beullutuseu-deulaibeo-seolchi-andoem/m-p/81168#M18973
==============================================================================================================

- ���࿬��ȸ Prj ȸ��
18:00 ���(���࿬��ȸ Prj)
18:20 ���̴���(����): PM, ����, �ں���, ������, �ڴ븮(�� 8��)
		==> PM�� ���̻綧���� ����ٰ� (������ ���)
21:30 ����
21:50 �籸 ==> ������ -> �¸�
23:40 �籸
24:05 �������Ա��� ���
24:40 �Ͱ�
01:00 ��ħ
============================================================================================================== 
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������

