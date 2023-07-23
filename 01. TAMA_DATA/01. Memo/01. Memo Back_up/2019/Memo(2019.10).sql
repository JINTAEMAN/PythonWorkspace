

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2019.10) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■ 2019.10.01(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현업 업무혐의(14시, 6층 회의실)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- JSP 사용하여 URL이 다른 사이트(Nexa --> XP) 링크
1. xplatform_IE_test 사용 ==> Nexacro 17은 Launcher 지원이 안되어서 사용 못함
2. 투비 소프트 콜센터에서 index.jsp를 사용하라고 가이드 함
==> 오태범 이사에게 긴급 컨설팅 요청 메일 발송
==============================================================================================================

- 배포 이해
1. Nexacro 17 SW 설치 ==> nexacro17_SetupStudio.exe
2. Nexacro 17 개발 소스 셋팅
==============================================================================================================

- GQMS Prj  실행 에러(Xplatform에서)
1. 현상: eclipse 실행시 아래와 같은 에러 발생, 로그인 안됨
Could not load the Tomcat server configuration at \Servers\01_GQMS_Tst Server[9001_IP]-config.
The configuration may be corrupt or incomplete.n
2. 원인: eclipse에서 Tomcat server configuration가 꼬였음
3. 조치: Tomcat server 삭제 후 다시 추가
==============================================================================================================

- Nexacro platform17 런타임 배포 가이드 분석 ==> 에러 발생
1. exacro platform17 의 경우, Launcher가 지원이 되지 않기 때문에 로컬 통신을 하는 모듈을 이용하여
런타임 엔진을 구동하여 배포를 진행하게 끔 되어 있습니다.
첨부된 파일에서 newLauncher.html 페이지의 하단 부분에 125 Line 에서부터 site 환경에 맞게 수정하여 반영을 해주시기 바랍니다.
strEnginesetupkey 의 경우, Tool 에서 Build App 을 진행하실 때 만들어 지는 engine Setup Key를 기재해 주시기 바랍니다.

2. 예제에서 사용한 핵심 기능
TPLSvc_Setup.exe: 압축 폴더에서 Engine 폴더에 TPLSvc_Setup.exe 파일이 있습니다.
해당 파일을 설치를 해주셔야 로컬통신이 정상적으로 이루어져서 nexacro Engine 파일을 설치를 하실 수가 있습니다.

3. engine.exe 만들기
1) Nexacro17 UX-Studio 에서 상단의 Deploy -> Build App 를 선택 합니다.
(nexacro Studio 는 17.0.0.700 기준 입니다. )  ==> 17.0.0.2201 --> 17.0.0.1401
2) Build Target
   가. Window x86: 체크
   나. Window x64: 체크
   다. Window XP: 체크
3) Window OS bit 또는 버전 선택
   가. Window Setup x86 Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_x86.exe
   나. Window Setup x64 Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_x64.exe
   다. Window Setup XP Execute Module ==> C:\nexacro17\engine\nexacro17_SetupRuntime_XP.exe  
4) 빌드 완료시에 Engine 파일이 출력되는 Output Path 설정
   가. Setup Information
    가) Output Path ==> C:\nexacro17\Desktop_App\
    나) Program Name: GQMS_Tst
    가) Install Location: nexacro\17\GQMS_Tst\
   나. Project Information
    가) Resource Path ==> C:\nexacro17\Desktop_App\
  ===> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\webapp\deploy\GQMS_Tst\_windows_
    나) Bootstrap URL Name: /start.json  
   다. Window Setup x86
    가) Setup Name ==> nexacro17_SetupRuntime_x86.exe
    나) Engine Setup Key: DFC74642-2DFB-455B-879D-A097E4B97C9E
   라. Window Setup x64
    가) Setup Name ==> nexacro17_SetupRuntime_x64.exe
    나) Engine Setup Key: DB2D4086-A192-4FCB-A24D-77A7373B02AA
   나. Window Setup XP
    가) Setup Name ==> nexacro17_SetupRuntime_XP.exe
    나) Engine Setup Key: DFC74642-2DFB-455B-879D-A097E4B97C9E
  5) Optiopns
============================================================================================================

- 메뉴 생성 ==> 대분류(ta: 시험 분석) > 시험 조회 > 당진제철소
원료[공정>고로], 부원료[공정>고로], 부원료(내자)[공정>고로], 부원료(외자)[공정>고로], 소결[공정>고로], 용강[공정>고로]
원료[공정>전기로], 부원료[공정>전기로], 전기로[공정>전기로]
열연[제품], 냉연[제품], 후판[제품], 특수강[제품]
--------------------------------------------------------------------------------------------------------------

- 명명법(프로젝트용어집_통합_V0.3_02)
전기로:  ElectricOven: ElctricOven,고로: ShaftFurnace(ShtFurn)
소결: sinter,용강: valor
열연: enthu,냉연: cold hearted
후판: Rear Plate,특수강: Special Steel
철근: iron
--------------------------------------------------------------------------------------------------

시험별: TstEach TSTEACH,공장: Fct
비교: CMPRCmpr,항목: ITEMItem  
제품: MNFGMnfg,원료: RawMatr
성분GND_MINGndMin,직무DTYDty
품질: QLTYQlty
==============================================================================================================

- 톰캣 localhost 설정(/eclipse에서) ==> 01_GQMS Server[8080]
1. GQMS 로컬 서버
1) Tomcat admin port: 8085
2) HTTP/1.1: 8080
3) AJP/1.3: 8089
----------------------------------------------------------------------------------------------------

2. GQMS_Tst 로컬 서버(시험관리 Prj) ==> 01_GQMS_Tst Server[9001_IP]
1) Tomcat admin port: 6001
2) HTTP/1.1: 9001
3) AJP/1.3: 7001
4) Server name: 01_GQMS_Tst Server[9001]
5) Host name: localhost  ==> 10.216.143.133
----------------------------------------------------------------------------------------------------

3. LMIS 로컬 서버(미래신용정보 Prj)   ==> 02_LMIS Server[9002]
1) Tomcat admin port: 6002
2) HTTP/1.1: 9002
3) AJP/1.3: 7002
----------------------------------------------------------------------------------------------------

4. GQMS_New 로컬 서버(GQMS_New Prj)   ==> 04_GQMS_New[9004]
1) Tomcat admin port: 6004
2) HTTP/1.1: 9004
3) AJP/1.3: 7004
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.02(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==> 태풍 '미탁'으로 오전부터 비옴, 퇴근할 때 민중근 대리 차 얻어 타고 감

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 열연[제품](/taEnthuMnfg.xfdl) 개발
1. 항목정의_20190919.xls 파일에서 성분(열연_냉연_후판)
==> C:\01. TAMA_DATA\02. TAMA Project\2019.09(현대제철 전사 시험관리 Prj)\01.상세설계\01.테이블설계서
1) 시험정보
2) 재질실적
3) 성분실적
--> 참조 파일: 열연코일정보 조회(/qtHrCoilDetailInfoInq.xfdl)
2. 인터페이스가 안되어서 개발 보류
==============================================================================================================

- 메뉴 수정
1. 전체 메뉴 수정
==============================================================================================================

- 04. 퀵뷰 이용한 XP_Nexa 연결(투비소프트 콜센터에서 소스 전달해줌)
1. WebBrowser로 연결하면 연결은 되지만(Display 가능) gfn 함수를 못 가지고 와서 조회하면 에러가 남
2. /piClaimProgCurState.xfdl 파일에서(Xplatform에서)
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/piClaimProgCurState.xfdl] [Button00_onclick()] ==> [TEST_01] [버튼 클릭 이벤트]" );  
	this.WebBrowser00.url = "http://10.216.143.133:9011/GQMS_Tst/quickview.html?screenid=ScreenDeskTop&formname=bz::bzPrgMgrM.xfdl&gv_global1=abc";
}
3. 에러 내용:
bzPrgMgrM.xfdl.js:274 [/bzPrgMgrM.xfdl] [btn_Search_onclick()] ==> [TEST_01]
bzPrgMgrM.xfdl.js:285 [/Transaction.js] [gfn_Transaction()] ==> [TEST_01] [strSvcId]search[strSvcUrl]BZ/BZ10101/selectList[
inData]ds_Search=ds_Search[outData]ds_ListPgm=ds_ListPgm[strArg]
SystemBase_HTML5.js:33 0 : TypeError: Cannot read property 'fn_SessionReset' of undefined 
==============================================================================================================

- LG 모니터 현대제철 사업장 PC에 셋팅
1. LG 모니터(LG M2450D, 24인치 TV 겸용)용 DVI(DVI-D Dual) 케이블 연결 ==> LG 모니터에서 메뉴에서 DVI 선택을 해야 함
2. 탕비실에서 아답타 박스 가지고 와서 모니터 받침대로 사용 ==> 역시 24인치 모니터가 화면이 넓어서 좋음
==============================================================================================================

- 동적 Grid TEST
1. 동적 Grid TEST(/zzDynamicGridTest.xfdl)
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 개천절, 06:26 인슐린 약 교체(283U, 26U 남음), 중식(12:30, 맛동산 한식 부페(2만 천원: 청구요): 3명(민중근 대리, 박순창씨) 

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 시험소(/tkKolasTstlab.xfdl) 개발
1. 01. tkKolasTstlab.jpg 이미지
==============================================================================================================

- KOLAS 인정항목(/tkKolasRcgnItem.xfdl) 개발
1. 02. tkKolasRcgnItem.jpg 이미지
==============================================================================================================

- KOLAS 시험규격(/tkKolasTstSpec.xfdl) 개발
1. 03. tkKolasTstSpec.jpg 이미지가 맞는지 확인 ==>
==============================================================================================================

- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1.  
==============================================================================================================

- KOLAS 조직(/tkKolasOrgt.xfdl) 개발
1. 05. tkKolasOrgt.jpg 이미지
==============================================================================================================

- KOLAS 인정현황(/tkKolasRcgnStat.xfdl) 개발 ==> KOLAS 정도
1. 인증서 첨부 ==> 팝업?
==============================================================================================================

- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발
1. 권한 설정을 통한 접근 설정?(관리: 관리자 화면?)
==============================================================================================================

- KOLAS 품질문서(/tkKolasQltyDcmn.xfdl) 개발
1. 품질문서 및 관련 양식 첨부?, 양식의 결재 권한자 및 보유 연한 설정?
2. KOLAS 고시 사항
- KOLAS 고시 첨부 및 개정현황 기록?
==============================================================================================================

- KOLAS 인정계획(/tkKolasRcgnPlan.xfdl) 개발
1) KOLAS 인정 현황 기록
- 심사 및 인원 변경등 처리 시기
- 인정과정 중 특이사항(부적합 등)
2) KOLAS 향후 일정 기록?
- 연초 심사 공지사항 정리
==============================================================================================================

- KOLAS 담당자에게 문의 사항
1. STEEL GQMS 시스템이 존재하는 지?
==============================================================================================================

- 동적 Grid TEST
1. 동적 생성(가로 Ds ==> 세로 Ds)
2. 동적 Grid TEST(/zzDynamicGridTest.xfdl)
this.Button01_onclick = function(obj:nexacro.Button,e:nexacro.ClickEventInfo)
{  
	trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_02] [this.ds_list.getRowCount()]"+ this.ds_list.getRowCount() );

	for(var i=0; i < this.ds_list.getRowCount(); i++)
	{
		var a = this.grd_list.appendContentsCol(); // 칼럼 추가
		//trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_51] [i_번째]"+ i +"[a]"+ a );
	}   // end of for()
	trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_31] [ds_list.CNT]"+ this.ds_list.getRowCount()
	+"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );

	for(var i=0; i < this.ds_list.getRowCount(); i++) // 그리드 추가된 col값 설정
	{  
		this.grd_list.setCellProperty("head", i+1,"text",  this.ds_list.getColumn(i, "GND_MIN") );// head(성분)
		this.grd_list.setCellProperty("body", i+1, "text", this.ds_list.getColumn(i, "TEST_DATA"));// body(수치)
		
		var bSucc = this.grd_list.setCellProperty( "body",  i+1, "color", "red");// body(수치)
		var bSucc2 = this.grd_list.setCellProperty( "body",  i+1, "textAlign", "right");// body(수치) 
		trace("[/zzDynamicGridTEST.xfdl] [Button01_onclick()] ==> [TEST_72] [i_번째]"+ i +"[bSucc]"+ bSucc
		+"[ds_list.GND_MIN]"+ this.ds_list.getColumn(i, "GND_MIN") +"[ds_list.TEST_DATA]"+ this.ds_list.getColumn(i, "TEST_DATA") );
	}  // end of for()
};
----------------------------------------------------------------------------------------------------------

<Dataset id="ds_list">
	<ColumnInfo>
	  <Column id="GND_MIN" type="STRING" size="32" description="성분"/>
	  <Column id="TEST_DT" type="STRING" size="32" description="검사일자"/>  <!--// ==> 현재 사용 안함 @@@ //-->
	  <Column id="TEST_DATA" type="STRING" size="32" description="측정치"/>
	</ColumnInfo>
	<Rows>
	  <Row>
	<Col id="GND_MIN">Si</Col>
	<Col id="TEST_DT">20191002</Col>
	<Col id="TEST_DATA">1</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Si</Col>
	<Col id="TEST_DT">20191001</Col>
	<Col id="TEST_DATA">2</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Co2</Col>
	<Col id="TEST_DT">20190927</Col>
	<Col id="TEST_DATA">3</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Co2</Col>
	<Col id="TEST_DT">20190924</Col>
	<Col id="TEST_DATA">4</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Na</Col>
	<Col id="TEST_DT">20190920</Col>
	<Col id="TEST_DATA">5</Col>
	  </Row>
	  <Row>
	<Col id="GND_MIN">Na</Col>
	<Col id="TEST_DT">20190927</Col>
	<Col id="TEST_DATA">6</Col>
	  </Row>
	</Rows>
</Dataset>
==============================================================================================================

- 팝업 샘플
1. 고객사 회원가입(/BE00301P5.xfdl) 파일에서
/***************************************************************************
* Even   : fn_SearhCust
* Desc   : 고객사 찾기.
****************************************************************************/
this.fn_SearhCust  = function()
{
	var sPopId = "edtPop";
	var sPopUrl = "bb::BB01001P3.xfdl";
	var oArg = {
	argOutDs:this.ds_PopRtn   // Ds
	//, argText:this.edt_Code.value   // 파라미터
};

var oOption = {title:"고객사 조회"};
var sPopupCallBack = "fn_PopCallback";

this.gfn_OpenPopup(sPopId, sPopUrl, oArg, sPopupCallBack, oOption);
}

2. 고객사 회원가입(/BB01001P3.xfdl) 파일에서
/***************************************************************************
* Even   : grd_ListRgt_oncelldblclick
* Desc   : 더블클릭.
****************************************************************************/
this.grd_ListRgt_oncelldblclick = function(obj:nexacro.Grid,e:nexacro.GridClickEventInfo)
{
	var aRow,
	nRow = this.ds_List.rowposition,
	oDs = this.getOwnerFrame().argOutDs,
	sSetVal, sGetVal, sSetCol, sGetCol;

	oDs.copyData(this.ds_List);   	// ds_List Ds 복사 @@@
	oDs.clearData();

	var arrChkCol = this.grd_ListRgt.getSelectedDatasetRows();

	if(arrChkCol.length > 0) {
		for(var i = arrChkCol.length - 1; i >= 0; i--)
		{
			aRow = oDs.addRow();

			oDs.copyRow(aRow, this.ds_List, arrChkCol[i]);
			}  // end of for()
	}
	else
	{
		oDs.addRow();

		oDs.copyRow(0, this.ds_List, nRow);
	}

	this.close("OK");
};
==============================================================================================================

- 지출결의서_진태만(2019.00) 작성 
1. 2019년 9월: 327,730원
1) 네이버가계부_지출현황_20190901~20190930.xls에서 다운로드 받아서 작성할 것
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 21:00 ==> 지출결의서_진태만(2019.09) 작성, 현대제철 식당 식권 구입(20장 106,000원(장 당: 5,300원), 계좌 이체[농협])
								, 서울행(19:40 ~ 20:50), 당진T --> 18:05 통근 버스[7번]가 당진T로 출발)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]  
- launchtml 이용한 XP_Nexa 연결(투비소프트 콜센터에서 소스 전달해줌)
1. piClaimProgCurState.html 파일에서(Xplatform에서)
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/piClaimProgCurState.xfdl] [Button00_onclick()] ==> [TEST_01] [버튼 클릭 이벤트]" );

	this.WebBrowser00.url = "http://10.216.143.133:9011/GQMS_Tst/launchXpNexa.html?screenid=ScreenDeskTop2&gv_NexaUrl=bz::bzPrgMgrM.xfdl&gv_global1=abc";
}

2. launchXpNexa.html 파일에서(Nexacro 17에서)
nexacro.setInitialVariable("application", "gv_NexaUrl", urlParams.gv_NexaUrl); // 넥사 URL 파라미터 추가[변경일: 2019.10.04(v1.0), by 진태만]
nexacro.setInitialVariable("application", "gv_global1", urlParams.gv_global1);    // global1 파라미터 추가[변경일: 2019.10.04(v1.0), by 진태만]

var screeninfo = [
	{"id":"ScreenDeskTop","type":"desktop","key":"GQMS_TstXpNexa","tracemode":"append","httpretry":"0","httptimeout":"120","filesecurelevel":"0",
	"networksecurelevel":"0","themeid":"theme::NMIS","xadl":"GQMS_TstXpNexa.xadl.js"}
];

3. GQMS_TstXpNexa.xadl 파일에서
<?xml version="1.0" encoding="utf-8"?>
<ADL version="2.0">
  <Application id="GQMS_TstXpNexa" screenid="ScreenDeskTop2">
    <Layout>
      <MainFrame id="mainframe" showtitlebar="true" showstatusbar="true" width="1280" height="720">
        <ChildFrame id="ChildFrameXP" formurl="com::comXpNexa.xfdl" showtitlebar="false"/>   <!--// comXpNexa.xfdl 파일 연결(프레임 해제) //-->
      </MainFrame>
    </Layout>
  </Application>
</ADL>

4. comXpNexa.xfdl 파일에서
/************************************************************************************************
* FORM EVENT 영역(onload, onbeforeclose)
************************************************************************************************/
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_01] [폼 로딩]" );

	this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // 넥사 URL 연결
	trace("[/cm_pop.xadl] [Application_onload()] ==> [TEST_51] [this.divUrl]"+ this.divUrl.url );
};
==============================================================================================================

- global 변수 처리
this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // 넥사 URL ===> global 변수 받기

<Variables>
	<Variable id="gv_global1"/>
	<Variable id="gv_NexaUrl" initval="bz::bzPrgMgrM.xfdl"/> // 넥사 URL ===> global 변수 셋팅
</Variables>
==============================================================================================================

- GQMS 공통코드 개발
1. /bzPrgMgrM.xfdl 파일에서
<!--// GQMS 공통코드 Ds //-->
<Dataset id="ds_ComCode">
	<ColumnInfo>
	  <Column id="SID" type="STRING" size="256" description="SID"/>
	  <Column id="CID" type="STRING" size="256" description="대분류"/>
	  <Column id="MID" type="STRING" size="256" description="중분류"/>
	  <Column id="OBJ_ID" type="STRING" size="256" description="OBJ_ID"/>
	  <Column id="USE_YN" type="STRING" size="256"/>
	  <Column id="NOT_CD" type="STRING" size="256"/>
	  <Column id="P1" type="STRING" size="256"/>
	  <Column id="P2" type="STRING" size="256"/>
	  <Column id="P3" type="STRING" size="256"/>
	  <Column id="P4" type="STRING" size="256"/>
	  <Column id="P5" type="STRING" size="256"/>
	  <Column id="SELECT_TYPE" type="STRING" size="256" description="콤보 조회 타입(A:전체, S:선택)"/>
	  <Column id="SELECT_TYPE_TEXT" type="STRING" size="256"/>
	  <Column id="BIND_COLUMN" type="STRING" size="256"/>
	  <Column id="CHANGE_CD" type="STRING" size="256"/>
	  <Column id="CHANGE_CD_NM" type="STRING" size="256"/>
	</ColumnInfo>
	<Rows>
	  <Row>
	<Col id="CID">CM</Col>
	<!--// 대분류(CM: 공통) //-->
	<Col id="MID">GQ0030</Col>
	<!--// 중분류(GQ0030: 사용여부) //-->
	<Col id="OBJ_ID">this.div_Search.form.cmb_UseYn</Col>
	<Col id="SID"/>
	  </Row>
	  <Row>
	<Col id="CID">BIZOFFICE_GP</Col>
	<!--// 대분류(BIZOFFICE_GP: 사업장) //-->
	<Col id="MID">GQ0000</Col>
	<!--// 중분류(GQ0000: 사업장) //-->
	<Col id="OBJ_ID">this.div_Search.form.cmb_Bplc</Col>
	<Col id="SELECT_TYPE">A</Col>
	<Col id="SID"/>
	  </Row>
	</Rows>
</Dataset> 
---------------------------------------------------------------------------  -------------------

2. /DataSet.js 파일에서
pForm.gfn_SetComCode = function(objForm, objInfoDs)
{
	trace("[/DataSet.js] [gfn_SetComCode()] ==> [TEST_01] [공통 코드 조회]" );

	sSvcID        = "searchComCode"+ nexacro.round(Math.random(), 3);
	// sController   = "BA/BA00601M/getSelectData";
	sController   = "COM/COMCODE/getSelectData";    // GQMS 공통코드 정보 ==> 수정[변경일: 2019.10.03(v1.0), by 진태만]
	sInDatasets   = "data=" + sSearchDsNm;
	sOutDatasets  = sDsNm + "=data";
	sCallbackFunc = "gfn_getComCodeCallback";
	bAsync        = true;
};
-----------------------------------------------------------------------------------------------

3. /COMCODEMapper.xml 파일에서
/* 공통 코드 정보 조회 ==> [/COMCODEMapper.xml] [getSelectData()] [2019.10.03, by 진태만] */
SELECT A.CD_VAL AS CD
			, A.CD_MNNG AS CD_NM
FROM TB_GQ_CM_CODES A -- 공통코드 정보 TB
WHERE A.CD_EN_ID = #{CID} -- 대분류
	AND CD_CAT_ID = #{MID} -- 중분류
	AND A.DEL_YN = 'N'
ORDER BY A.SORT_SEQ
-----------------------------------------------------------------------------------------------

- 사업장  
당진제철소
인천공장
포항공장
울산공장
AP공장
순천단조공장
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.10.05(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>  

- 주말
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발
06:22 6411번 버스 탑승(대림역 정류장)
07:20 선릉역 도착
07:10 도보
07:20 회사 도착 ==> 지출결의서용 영수증(9월분) 가지고 감 ==> 김유진 대리 책상에 나둠
08:20 누네안과병원(주소: 서울 강남구 선릉로 404) 도착 ==> 접수 1층
08:30 2층 안과 검사
08:50 3층 망약 검사 ==> 망막 정밀 검사(주사): 아바스틴(20만원, 건강보험 적용 안됨)
09:20 망막 검사
09:30 진료(김주영 원장) ==> 황반이 부었다고 함(오른쪽 눈 망막 주사 권유 :오른쪽 눈 레이져 시술은 다음주에 하기로 함)
09:40 오른쪽 눈 망막 주사
09:50 수납(1층)  ==> 진료비(검사료: 38,921원, 망막 주사료: 200,000원[건강보험 미적용], 진찰료: 6,083원): 총 245,100원
09:66 종료
10:00 6411번 버스 탑승(누네안과병원 정류장)
11:00 대림역 정류장 도착
11:10 귀가
12:10 석식
12:30 집출발(자전거)
12:40 한독프라자약국 ==> 산텐플루메토론, 크라비트 점안액, 이토메트정, 우리들 오플 특산신정 구입
12:50 귀가
13:00 도림천로 도보
13:50 귀가
14:00 루옌(수종) 놀러감
14:00 휴식
16:00 집출발(자전거, 수종)
16:10 다이소 대림2호점 ==> 수종이가 유치원 버스 사고 싶다고 함
16:40 이마트 구로점 ==> 프리락 델리 트레킹화(265cm) 구입(49,800원)
17:00 다이소 남구로점
17:20 석식(비빕밥, 치즈돈가스[김밥천국 남구로점]) 
18:00 귀가  
19:00 도림천로 도보(수종)
20:00 귀가
20:10 인터넷 서핑
22:00 취침 
==============================================================================================================  

■■■■■■■■■■■■■■■■■■ 2019.10.06(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 ==> 당진행(07:30 ~ 08:45), 강남C): 처음, 일요 근무

- 주말2
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발
06:22 6411번 버스 탑승(대림역 정류장)
07:20 선릉역 도착
07:10 도보
07:20 회사 도착 ==> 커피 먹음
08:20 누네안과병원(주소: 서울 강남구 선릉로 404) 도착 ==> 접수 1층
08:55 2층 안과 검사
09:07 3층 진료(김주영 원장): 어제 오른쪽 눈 망막 주사 맞은 부분 염증이 안 생겼다고 함(한 달 후 진료 예약)
09:15 종료
09:20 6411번 버스 탑승(진선여고 정류장)
09:40 강남터미널(호남선) 도착
09:50 서울 출발
11:06 당진터미널 도착 
11:30 31번 버스 탑승(10번 송산)
11:55 고대리 정류장 하차
12:05 출근(현대제철 지원센터 6층) 
12:10 중식(현대제철 한마음 식당) 
12:30 공통 메뉴 설정 개발 ==> 개발 완료 @@@
18:10 종료(퇴근) 
18:20 석식(현대제철 한마음 식당)
18:40 도보
19:10 귀가
19:20 도보
20:00 종료
20:10 인터넷 서핑
22:30 취침
==============================================================================================================

- adl 이용 XP_Nexa 연결
1. 프로그램관리[테스트](/bzPrgMgrM.fxdl) 화면 에러 처리
1) 공통 버튼 체크시 에러 발생 ==> 처리 완료 @@@
- /Frame.js 파일에서  gv_NexaMenuID
  pForm.gfn_ComBtnChk = function(objForm, objBtn)
{
	trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_01] [공통 버튼 체크] [objForm]"+ objForm +"[objBtn]"+ objBtn );

	var objApp = objForm.gfn_GetApplication(),
	objMenuBtnList = objApp.gds_MenuBtnList,
	sWinKey;

	if(objForm.parent instanceof nexacro.ChildFrame) {   // parent가 ChildFrame 이면
		sWinKey = objForm.parent.name;

		sWinKey = sWinKey.substr(0, sWinKey.indexOf("_POP"));
	} else {  
	trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_33] nexacro.getApplication().gv_NexaMenuID]"+ nexacro.getApplication().gv_NexaMenuID);

	if(nexacro.getApplication().gv_NexaMenuID != '')   // gv_NexaUrl_R이 존재하면  ===> 추가
	{
		sWinKey = nexacro.getApplication().gv_NexaMenuID;      // 메뉴ID
	}
	else
		{
		trace("[/Frame.js] [gfn_ComBtnChk()] ==> [TEST_39] [getOwnerFrame.menuId]"+ objForm.getOwnerFrame().arguments["menuId"] );
		sWinKey = objForm.getOwnerFrame().arguments["menuId"];      // 메뉴ID ==> 에러 발생 @@@@
	}  
	}
};

2) 조회 버튼 체크시 에러 발생 ==> 처리 완료 @@@
  가. form_onload시 로그인 처리로 해결
   /***************************************************************************
* Even   : form_onload
* Desc   : 초기화 영역
****************************************************************************/
this.form_onload = function(obj:nexacro.Form,e:nexacro.LoadEventInfo)
{
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_01] [폼 로딩]" );

	var nSucc = "";
	nSucc = nexacro.getApplication().setVariable("gv_NexaUrl", "bz::bzPrgMgrM.xfdl");   // 넥사 URL 셋팅  ===> TEST @@@ ===>
	nSucc = nexacro.getApplication().setVariable("gv_global1", "1521666");   // gv_global1 셋팅(로그인ID)  ===> TEST @@@ ===>
	this.sUserId = nexacro.getApplication().gv_global1;

	this.fn_Login();// 로그인 처리
	
	this.divUrl.set_url(nexacro.getApplication().gv_NexaUrl);    // 넥사 URL 연결
	trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_50] [넥사 URL명(gv_NexaUrl)]"+ nexacro.getApplication().gv_NexaUrl
	+"[nSucc]"+ nSucc +"[넥사 URL명(divUrl)]"+ this.divUrl.url );
	};
==============================================================================================================

- theme 변경(/environment.xml 파일에서)
<ScreenDefinition>
  <Screen id="ScreenDeskTop" type="desktop" key="GQMS_Tst" tracemode="append" httpretry="0" httptimeout="120"
  filesecurelevel="all" networksecurelevel="all" themeid="theme::GQMS_Tst"/> <!--// theme 변경(GQMS_Tst)[변경일: 2019.10.06, by 진태만] //-->
  <Screen id="ScreenDeskTop2" type="desktop" key="GQMS_TstXpNexa" themeid="theme::GQMS_Tst"/>
  <!--// theme 변경(GQMS_Tst)[변경일: 2019.10.06, by 진태만] //-->
</ScreenDefinition>
==============================================================================================================

- 톰캣 localhost 설정(/eclipse에서) ==> 01_GQMS Server[8080]
1. GQMS 로컬 서버
1) Tomcat admin port: 8085
2) HTTP/1.1: 8080
3) AJP/1.3: 8089
----------------------------------------------------------------------------------------------------

2. GQMS_Tst 로컬 서버(시험관리 Prj) ==> 02_GQMS_Tst Server[9001]
1) Tomcat admin port: 6001
2) HTTP/1.1: 9001
3) AJP/1.3: 7001
4) Server name: 02_GQMS_Tst Server[9001]
5) Host name: localhost
----------------------------------------------------------------------------------------------------

3. LMIS 로컬 서버(미래신용정보 Prj) ==> 03_LMIS Server[9002]
1) Tomcat admin port: 6003
2) HTTP/1.1: 9003
3) AJP/1.3: 7003
----------------------------------------------------------------------------------------------------

4. GQMS_New 로컬 서버(GQMS_New Prj) ==> 04_GQMS_New[9004]
1) Tomcat admin port: 6004
2) HTTP/1.1: 9004
3) AJP/1.3: 7004
----------------------------------------------------------------------------------------------------

5. GQMS_Tst 로컬 서버(시험관리 Prj) ==> 11_GQMS_Tst Server[9011]
1) Tomcat admin port: 6011
2) HTTP/1.1: 9011
3) AJP/1.3: 7011
4) Server name: 11_GQMS_Tst Server[9011]
5) Host name: localhost  ==> 10.216.143.133
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.07(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 ==> 종일 약한 비옴

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]  
- adl 이용 XP_Nexa 연결
1. XP, 넥사 연결(/comXpNexa.fxdl) 화면 수정
==============================================================================================================

- 개발 서버 셋팅
1. HI-TAM4.0(HI Ware) 설치 ==> http://10.10.111.232
2. 현대제철_사용자매뉴얼_WEB_v1.0.doc
3. 전사종합시험관리(GQS_Tst) 개발 서버 ==> /u01/infra/webapps/
1) MTPuTTY 설치(터미널)
==============================================================================================================

- null 처리
if(this.gfn_IsNull(nexacro.getApplication().gv_LoginYn)) // 로그인 여부가 null 이면
{
trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_52] [로그인 여부]"+ nexacro.getApplication().gv_LoginYn );  
this.fn_LoginData();// 로그인 처리
}
==============================================================================================================

- KOLAS 시험 개발 관련 회의(15시)
1. 현대제철 시험.검증팀 신동준 대리
==============================================================================================================

- KOLAS 시험규격(/tkKolasTstSpec.xfdl) 개발
1. KOLAS 시험규격 정보(TB_KOLAS_TST_SPEC) 테이블 생성
2. TK11003Controller.java 파일 생성
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.08(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현업 업무혐의(14시)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 시험규격(/tkKolasTstSpec.xfdl) 개발
1. GQMS 공통코드 정보 등록 ==> 중분류(GUBUN_CD: 구분코드, CLAS_CD_02: 분류코드2): GQMS 공통코드 Ds(ds_ComCode)
2. Grid에서 콤보 컴포넌트를 클릭해서 선택하면 선택 안됨
1) 원인: 보통 ds_List Ds에 해당 칼럼이 없을 때 일어남(ET1 칼럼 미 존재)
==>
<!--// GQMS 공통코드 Ds //-->
<Dataset id="ds_ComCode">
<ColumnInfo>
  <Column id="SID" type="STRING" size="256" description="SID"/>
  <Column id="CID" type="STRING" size="256" description="대분류"/>
  <Column id="MID" type="STRING" size="256" description="중분류"/>
  <Column id="OBJ_ID" type="STRING" size="256" description="OBJ_ID"/>
  <Column id="USE_YN" type="STRING" size="256"/>
  <Column id="NOT_CD" type="STRING" size="256"/>
  <Column id="P1" type="STRING" size="256"/>
  <Column id="P2" type="STRING" size="256"/>
  <Column id="P3" type="STRING" size="256"/>
  <Column id="P4" type="STRING" size="256"/>
  <Column id="P5" type="STRING" size="256"/>
  <Column id="SELECT_TYPE" type="STRING" size="256" description="콤보 조회 타입(A:전체, S:선택)"/>
  <Column id="SELECT_TYPE_TEXT" type="STRING" size="256"/>
  <Column id="BIND_COLUMN" type="STRING" size="256"/>
  <Column id="CHANGE_CD" type="STRING" size="256"/>
  <Column id="CHANGE_CD_NM" type="STRING" size="256"/>
</ColumnInfo>
<Rows>
  <Row>
<Col id="CID">KOLAS_TST_SPEC</Col>
<!--// 대분류(TB_KOLAS_TST_SPEC: 사업장) //-->
<Col id="MID">CLAS_CD_02</Col>
<!--// 중분류(CLAS_CD_02: 분류코드2) //-->
<Col id="OBJ_ID">this.grd_List</Col>
<Col id="BIND_COLUMN">CLAS_CD_02</Col>
<Col id="NOT_CD"/>
<Col id="CHANGE_CD">CD</Col>   ===> ET1을 CD로 변경할 것
  </Row>
  </Rows>
</Dataset>
==============================================================================================================

- 44. 개발시 문의 요청 방법 작성
1. 파일 서버에 등록, 개발자에게 통보
==============================================================================================================

- 현업 업무혐의(14시)
1. 현업 박수빈 대리만 참석(나머지는 파견 중)
2. 조직 이미지 파일 등록 문제 ==> image 등록으로 변경 요청(진선철 과장): 고민중
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:20 ==> 한글날(공휴일), 날씨 쌀쌀해짐(잠바), 중식(한식 부페, 박순창씨: 청구할 것)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- GQMS_Tst 공통 코드 수정 ==> 완료 @@@
-- 1. 공통코드 정보 등록(GQMS DB 서버)  ==> CM017(사용여부), TK001(구분코드), TK002(분류코드2)
SELECT A.CD_ID AS CD, A.CD_NM AS CD_NM
FROM TB_GQ_CM_CDCOMM A     -- 공통코드 정보 TB  ==> CD_EN_ID, CD_CAT_ID, CD_VAL)
ORDER BY A.SORT_SEQ
;
-------------------------------------------------------------------------------------------------------

-- 1. 공통코드 정보 등록(GQMS_Tst DB 서버)  ==> CM017(사용여부), TK001(구분코드), TK002(분류코드2)
/* 공통코드 정보 조회 */
SELECT A.*
FROM TB_GQ_CM_CDCOMM A     -- 공통코드 정보 TB  ==> CD_EN_ID, CD_CAT_ID, CD_VAL)
WHERE 1=1
-- AND A.CD_ID =  'CM017'    -- 코드 ID ==> CM017(사용여부), TK001(구분코드), TK002(분류코드2)
;
--------------------------------------------------------------------

-- 1. 공통코드 정보 등록(GQMS_Tst DB 서버)  ==> CM017(사용여부), TK001(구분코드), TK002(분류코드2)
/* 공통코드내역 정보 조회 */  
SELECT A.*
FROM TB_GQ_CM_CDITEM A     --  공통코드내역 정보  TB  
WHERE 1=1
AND A.CD_ID =  'CM017'    -- 코드 ID ==> CM017(사용여부), TK001(구분코드), TK002(분류코드2)
;    
==============================================================================================================-

- 01. GQMS 공통코드 설정 방법
1. GQMS 서버(Xplatform)에 로그인 >> 관리자 >> 공통코드 관리에서 코드ID 등록
2. GQMS_Tst 서버(Nexacro 17)에서 Tibero DB 연결
  1) 01. TB_GQ_CM_CDCOMM_공통코드 TB.sql 파일 참조하여 GQMS 공통코드 정보 등록(INSERT INTO TB_GQ_CM_CDCOMM) 처리
  2) 02. TB_GQ_CM_CDITEM_공통코드내역 TB.sql 파일 참조하여 GQMS 공통코드내역 정보 등록 INSERT INTO TB_GQ_CM_CDITEM) 처리
3. /tkKolasTstSpec.xfdl 파일에서 처럼 QMS 공통코드 Ds(ds_ComCode) 변경 처리
==============================================================================================================

- GQMS 로컬 서버에서 메뉴 등록
1. 화면 관리(/cmUiReg.xfdl) ==>
2. 메뉴 등록(/cmMenuReg.xfdl) ==>
3. 권한 그룹 관리(/cmAclGrpReg.xfdl) ==>  

- 메뉴 정보(GQMS_오라클) 백업
1. DBeaver에서 조회 결과  Grid: 마우스 우 클릭 ==> 데이터 추출: 클릭 ==> Data Transfer: SQL: 선택 ==> 완료(F)
-------------------------------------------------------------------------------------------------------------------------

- T1: 전사시험관리
TT: 종합
TA: 시험 분석
TM: 시험 관리
TK: KOLAS 시험
==============================================================================================================

- default_typedef.xml 파일에서 추가
<Service prefixid="tt" type="form" cachelevel="session" url="./tt/" version="0" communicationversion="0"/>
<!--// tt: 종합 폴더 추가[변경일: 2019.10.09, by 진태만] //-->
<Service prefixid="ta" type="form" cachelevel="session" url="./ta/" version="0" communicationversion="0"/>
<!--// ta: 시험분석 폴더 추가[변경일: 2019.10.09, by 진태만] //-->
<Service prefixid="tm" type="form" cachelevel="session" url="./tm/" version="0" communicationversion="0"/>
<!--/ /tm: 시험관리 폴더 추가[변경일: 2019.10.09, by 진태만] //-->
<Service prefixid="tk" type="form" cachelevel="session" url="./tk/" version="0" communicationversion="0"/>
<!--// tk: KOLAS 시험 폴더 추가[변경일: 2019.10.09, by 진태만] //-->
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.10(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 주간보고(14시)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 시험규격(/tkKolasTstSpec.xfdl) 개발
1. 조회, CRUD 가능, 엑셀 ==> 조회 중심
2. 퍼블리싱 표준 잡기
==============================================================================================================

- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1. 조회, CRUD 가능, 엑셀, 첨부파일: pdf, ppt(용량 제한 없음) ==> 등록 중심
==============================================================================================================

- 01. GQMS 공통코드 사업장 구분 코드 변경
/* 공통 코드 정보 조회 ==> [/COMCODEMapper.xml] [getSelectData()] [2019.10.03, by 진태만] */  
<![CDATA[
	SELECT CD_ID, CD_ID_NM, CD, CD_NM
	FROM
	(
	SELECT A.CD_ID AS CD_ID, A.CD_NM AS CD_ID_NM
	, B.CD_ITEM AS CD, B.CD_CNTS_K AS CD_NM, B.SORT_SEQ
	FROM TB_GQ_CM_CDCOMM A, TB_GQ_CM_CDITEM B
	WHERE 1=1
		AND A.CD_ID = B.CD_ID
		AND A.CD_ID <> 'CM015'    -- 코드 ID(사업장 코드가 아니면)
	UNION ALL
	SELECT A.CD_ID AS CD_ID, A.CD_NM AS CD_ID_NM, B.CD_ITEM
				, (CASE WHEN B.CD_ITEM = 'DJ' THEN '당진제철소'
				WHEN B.CD_ITEM= 'IC' THEN '인천공장'
				WHEN B.CD_ITEM= 'PH' THEN '포항공장'
				WHEN B.CD_ITEM= 'US' THEN '울산공장'
				WHEN B.CD_ITEM= 'AP' THEN 'AP공장'
				WHEN B.CD_ITEM= 'SD' THEN '순천단조공장'  
				ELSE B.CD_ITEM END) AS CD_NM, B.SORT_SEQ
	FROM TB_GQ_CM_CDCOMM A, TB_GQ_CM_CDITEM B
	WHERE 1=1
		AND A.CD_ID = B.CD_ID
		AND A.CD_ID = 'CM015'    -- 코드 ID(사업장 코드 이면)
	)
	WHERE 1=1
		AND CD_ID = #{CID} -- 코드 ID
	ORDER BY SORT_SEQ, CD_NM
]]>
==============================================================================================================

- Notepad++(노트 패드 플러스) 다중 실행(2번 실행)
1. Atl + F6
==============================================================================================================

- 주간보고(14시)
1. GQMS 서버(Xplatform)에서 GQMS_Tst 서버(Nexacro 17)에서 연결 시연 ==> 진선철 과장이 만족해 함.
2. 10월 14일(월) 인터페이스 회의(제품,  댜음주 회의, 물리, 화학: 다음에)
3. 웹 메소스 설정:Tibero DB
==============================================================================================================

- LG CNS 보안 서약서 작성: 완료 @@@
http://securityplus.lgcns.com/index.html   ===> 더케이 손해보험 프로젝트(구종식 부장 PM), 오태범 이사 요청
=========================================================================================================
  
- 김유진 대리(경리)하고 말싸움(떠날 때가 된 것 같음)
1. 모니터 케이블 1번 잘못 구입한 것로 머라 함.
2. 8월 20일 미래신용정보 Prj 들어 갔다고 조식 청구를 왜 하냐고 함 ==> 7월 19일 코닝 Prj 들어 가서 청구한다고 함.
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:40 ==> 서울행(19:40 ~ 20:50), 당진T --> 18:05 통근 버스[7번]가 당진T로 출발), 다음주 개발자 강전관 과장 투입 예정

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 시험규격(/tkKolasTstSpec.xfdl) 개발 록 ==> 완료 @@@
1. 조회, CRUD 가능, 엑셀 ==>  \ 중심
-----------------------------------------------------------------------------------------------------------------------------

-- KOLAS 시험규격 정보 Sequence 넘버 생성(sequence)
-- DROP SEQUENCE USRGQD.TB_KOLAS_TST_SPEC;
CREATE SEQUENCE USRGQD.TB_KOLAS_TST_SPEC_SEQ
START WITH 1 -- 10001 --> 1로 변경(자원 절약)
MAXVALUE 999999999999999999999999999
MINVALUE 0
NOCYCLE
NOCACHE
NOORDER;
---------------------------------------------------------------------------------------
  
-- KOLAS 시험규격 Sequence 정보 조회 @@@
SELECT TB_KOLAS_TST_SPEC_SEQ.nextval FROM DUAL
;
==============================================================================================================

- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1. 조회, CRUD 가능, 엑셀 ==> 등록 중심
2. 첨부파일: pdf, ppt(용량 제한 없음)  ==> 04. TB_GQ_CM_COMFILE_파일 업로드 정보 TB 생성
1) 파일 업로드 Sequence 정보 조회 @@@
SELECT TB_KOLAS_TST_SPEC_SEQ.nextval FROM DUAL
;
==============================================================================================================

- GQMS 개발 서버에 시험관리 메뉴 등록 ==> 완료 @@@
1. 서버 소스 경로: /Apps/xp
2. 단축키: "C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.1\XPlatform.exe" -K 'biz_intra_dev_HS'  -X 'https://10.216.253.99/xp/biz_intra.xadl'
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.10.12(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>  

- 주말
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발
06:22 6411번 버스 탑승(대림역 정류장)
07:20 선릉역 도착
07:10 도보
07:20 회사 도착 ==> 커피 한잔 먹고 나옴
08:40 누네안과병원(주소: 서울 강남구 선릉로 404) 도착 ==> 접수 1층
08:50 2층 안과 검사
08:50 진료(이상언 원장[여자])
09:30 오른쪽 눈 레이저 시술(마지막) ==> 여러번 찌름, 5분 이상 걸린 듯[구관이 명관]
09:50 수납(1층)  ==> 진료비(검사료: 14,225원, 레이져 시술료: 165,437원, 진찰료: 6,043원): 총 185,800원
10:00 종료
10:10 6411번 버스 탑승(누네안과병원 정류장)
11:20 대림역 정류장 도착
11:30 귀가
12:10 석식 ==> 루옌 놀러 감
12:50 도림천로 도보(수종)
13:50 귀가
14:30 집출발(수종) ==> 루옌 자전거 수리(빵구, 주부 교체, 만원)
14:50 다이소 대림2호점 ==> 치약 2개, 수종 과자, 수종 음료수(2개) 구입
15:30 엘마트 ==> 우유 구입
16:20 귀가 
15:20 집출발(자전거, 수종)  
15:40 맛닭꼬, 남구로점)
18:10 귀가
18:20 석식(맛닭꼬, 갈릭 베이크) 
18:50 도림천로 도보(수종)
19:50 귀가 ==> 루옌 귀가
20:10 인터넷 서핑
21:30 취침 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2019.10.13(일) 작업 ■■■■■■■■■■■■■■■■■■
-----> 10:00 ~ 18:20 ==> 당진행(07:30 ~ 08:45), 강남C), 일요 근무, 인슐린 펌프 바늘 다시 꽃기(오른쪽 배 ==> 왼쪽 배)

- 주말2
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발 ==> 가방에 쌀(2통), 멸치 반찬 가지고 옴
06:22 6411번 버스 탑승(대림역 정류장)
07:00 강남터미널(호남선) 도착 ==> 화장실(급함)
07:35 서울 출발
08:50 당진터미널 도착 
09:30 31번 버스 탑승(10번 송산)
09:55 고대리 정류장 하차
10:10 출근(현대제철 지원센터 6층)
10:10 첨부파일 개발
12:10 중식(현대제철 한마음 식당) ==> 민종근 대리 출근
12:30 첨부파일 개발
18:10 종료(퇴근) 
18:20 석식(현대제철 한마음 식당)
18:40 도보
19:10 귀가
19:20 도보
20:00 종료
20:10 인터넷 서핑
22:30 취침
============================================================================================================== 

- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1. 조회, CRUD 가능, 엑셀 ==> 등록 중심
2. 첨부파일: pdf, ppt(용량 제한 없음) ==> 파일 업로드(/saveFile.jsp), 파일 다운로드(/downloadFile.jsp, 파일 삭제(/deleteFile.jsp)
1) 파일 경로: C:\new_image\FILE\  ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\FILE\
==============================================================================================================

- eclipse 톰갯에서 서버 에러(/eclipse에서)
1. 현상: the currently selected server type does not support remote hosts.(Define a New Server)
2. 조치: 11_GQMS_Tst Server[9011] 서버 삭제 ==> C:\GQMS_Tst\workspace\Servers 폴더 삭제 후 재 등록
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 강전관 과장에게 전화 옴(10:30, 내일 10시쯤에 투입 예정)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1. 조회, CRUD 가능, 엑셀 ==> 등록 중심
2. 첨부파일: pdf, ppt(용량 제한 없음) ==> 파일 업로드(/saveFile.jsp), 파일 다운로드(/downloadFile.jsp, 파일 삭제(/deleteFile.jsp)
1) 파일 경로: C:\new_image\FILE\  ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\FILE\
==============================================================================================================

- 개발S에서 11_GQMS_Tst 연결 요청(16시 오토 어버 회의)
1. AE Prj에서 퍼블리싱이 이상하다고 Claim 걸림 ==> 디자인 공수 7MM인데 디자인 개판이라고 엄청 화났다고 함(사장 호출 예정)
==============================================================================================================

- 툴팁 설정
1. Grid에서 tooltiptext: hover,mouseleave로 설정
/***************************************************************************
* Even   : div_Menu_grd_Menu_onmousemove
* Desc   : 메뉴 Grid에 마우스를 댔을 때
****************************************************************************/
this.grd_ListFile_onmousemove = function(obj:nexacro.Grid,e:nexacro.GridMouseEventInfo)
{
	//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_01]");  
	  
	this.grd_ListFile.set_tooltiptext("");

	if(obj.getCellProperty("Head", e.cell, "text") == "파일크기")  // Head에 있는 "파일크기" 칼럼 이면
	{
		if (this.ds_File.getColumn(e.row, "FNM") != undefined)/	/ 파일 명이 존재하면
		{
			//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_51] [ds_File.FNM]"+ this.ds_File.getColumn(e.row, "FNM") );  
			this.grd_ListFile.set_tooltiptext(this.ds_File.getColumn(e.row, "RFNM"));// 실제 파일 명 툴팁 설정
		} 
		else if(obj.getCellProperty("Head", e.cell, "text") == "삭제")  // Head에 있는 "파일크기" 칼럼 이면
		{
			if (this.ds_File.getColumn(e.row, "FNM") != undefined)// 파일 명이 존재하면
			{
				//trace("[/leftFrame.xfdl] [div_Menu_grd_Menu_onmousemove()] ==> [TEST_52] [ds_File.FNM]"+ this.ds_File.getColumn(e.row, "FNM") );  
				this.grd_ListFile.set_tooltiptext( "파일명:"+ this.ds_File.getColumn(e.row, "FNM") +" 삭제");// 실제 파일 명 툴팁 설정
			}
		}
	}
};
==============================================================================================================

- KOLAS 시험소(/tkKolasTstlab.xfdl) 개발  ==> 완료 @@@
1. kKolasTstlab.jpg 이미지(일단 완료) ==> 이미지 수시 변경 여부 확인
\GQMS_Tst\workspace\GQMS_Tst\src\main\new_image\IMAGE\tkKolasOrgt_1_0.jpg
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.15(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==> 자리 이동(7시, 민중근 대리 옆으로 이동), 강전관 과장 투입(10시), 현업 업무혐의(14시, 6층 회의실)
								 , 중식(간짜장[북경]: 강과장, 민대리, 박순창씨: 26,00원(청구할 것)), LG 모니터 박스 숙소에 갖다 놓음(22:00)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 표준(/tkKolasStnd.xfdl) 개발
1. KOLAS 표준 파일 변경 방법
1) /saveFile.jsp 파일에서
System.out.println("[/saveFile.jsp] ==> [TEST_01] [파일 업로드]" );

PlatformData resData = new PlatformData();
VariableList resVarList = resData.getVariableList();

//Check that we have a file upload request
boolean isMultipart = ServletFileUpload.isMultipartContent(request);

DataSet ds = new DataSet("ds_File");
ds.addColumn(new ColumnHeader("FNO", DataTypes.STRING));// 파일번호
ds.addColumn(new ColumnHeader("FNM", DataTypes.STRING));// 파일 명
ds.addColumn(new ColumnHeader("FSIZE", DataTypes.STRING)); // 파일 크기 ==> [파일 크기 추가, 변경일: 2019.10.14(v1.0), by 진태만]

if(isMultipart) {
	Date date = new Date();
			TimeZone gmtTime = TimeZone.getTimeZone("GMT");
			DateFormat gmtFormat = new SimpleDateFormat("yyyyMMdd");
			gmtFormat.setTimeZone(gmtTime);

	String spr = File.separator;
	String realPath = spr +"GQMS_Tst"+ spr +"workspace"+ spr +"GQMS_Tst"+ spr +"src"+ spr +"main";// 업로드 된 파일의 저장 폴더를 설정
	realPath += spr + "new_image" + spr;
	String osName = System.getProperty("os.name");
	String bsGb = request.getParameter("bsGb");// 업무구분(L:LOGO / I:IMG / O:OZ / F:FILE)
	String reqNo = request.getParameter("reqNo")// 의뢰번호
	System.out.println("[/saveFile.jsp] ==> [TEST_11] [폴더 경로(realPath)]"+ realPath +"[bsGb]"+ bsGb +"[reqNo]"+ reqNo );

	//String pathDate = "";
	if("I".equals(bsGb)) { // 이미지
		realPath = spr +"GQMS_Tst"+ spr +"workspace"+ spr +"GQMS_Tst"+ spr +"src"+ spr +"main";// 업로드 된 파일의 저장 폴더를 설정(webapp 경로에 넣어야 바로 보임)
		realPath += spr +"webapp"+ spr +"GQMS_Tst"+ spr +"_resource_"+ spr +"_theme_";
		realPath += spr +"GQMS_Tst"+ spr +"images";

		if("1".equals(reqNo)) 		// 의뢰번호가 1 이면(01: 시험조직, 02: KOLAS 시험소, 03: KOLAS 조직)
		{
			realPath += spr +"01";
		}
	}
}
---------------------------------------------------------------------------------------------------------------------------

2) /tkKolasTstlab.xfdl 파일에서
this.fv_ReqNo = "2";  // 의뢰번호(1: 시험조직, 2: KOLAS 시험소, 3: KOLAS 조직)
/************************************************************************************************
* CALLBACK 콜백 처리부분(Transaction, Popup)
************************************************************************************************/
this.fn_ComMFileCallback = function(svcId, objDs)
{
	trace("[/tkKolasTstlab.xfdl] [fn_ComMFileCallback()] ==> [TEST_01] [다운로드 결과 콜백] [svcId]"+ svcId +"[objDs]"+ objDs );

	iif(svcId == "search")
	{
	this.ds_File.clearData();

	this.ds_File.appendData(objDs, true);
	this.FV_FNO = this.ds_File.getColumn(0, "FNO");
	var sRfNm = this.ds_File.getColumn(0, "RFNM");// 실제 파일명

	var sReqNo = this.fv_ReqNo; // 의뢰번호(1: 시험조직, 2: KOLAS 시험소, 3: KOLAS 조직)
	var sImage = "theme://images/0"+ sReqNo +"/"+ sRfNm;     // KOLAS 시험소 이미지(01: 시험조직, 02: KOLAS 시험소, 03: 시험조직)

	this.ImageViewer.set_image(sImage);  // 이미지 뷰어 셋팅
	trace("[/ttTstOrgt.xfdl] [fn_ComMFileCallback()] ==> [TEST_41] [this.ImageViewer.image]"+ this.ImageViewer.image );  
	}
};
==============================================================================================================

- KOLAS 인정항목(/tkKolasRcgnItem.xfdl) 개발 ==> 완료 @@@
1. Grid로 CRUD 조회, 엑셀
1) 42. TB_KOLAS_RCGN_ITEM_KOLAS 인정항목 정보 TB 생성
==============================================================================================================

/***************************************************************************
* Even   : fn_ExcelDownload
* Desc   : 엑셀 다운로드
****************************************************************************/
this.fn_ExcelDownload = function()
{
	var sSearchTitle = "";
	/*
	sSearchTitle = "첫번째 조회조건" + "/";
	sSearchTitle += "두번째 조회조건 ";
	*/
	this.gfn_ExcelExport(this.div_Main.form.grd_List,  "SheetName", "의뢰 목록", sSearchTitle);
}

/***************************************************************************
* Even   : fn_ExcelUpload
* Desc   : 엑셀 업로드
****************************************************************************/
this.fn_ExcelUpload = function()
{
	this.ds_ExcelUpload.clearData();

	var excelParam =
	{
	  sheet:""
	, startrow:2
	, bindcolumns:["ACPDAT", "EMPID", "CUSTNO", "CTMNAM", "RSDID", "HOMADR1", "HOMADR2", "RSDAMT", "RSDKIN"
				   , "HOMTEL", "OFFTEL", "HNDTEL", "IVGPUO", "OWNKIND", "OWNNAM", "OWNRSD", "ADDR01", "ADDR02"
	   , "OWNTEL", "OWNOTEL", "OWNHTEL", "HLSNO", "PREEMP", "MEMO", "CMPMGTNO"]
	, callback:"fn_callbackExcelImport"
	};

	this.gfn_ExcelImport(this.ds_ExcelUpload, excelParam);
}
==============================================================================================================

- 현업 업무혐의(14시)
1. 현업 박수빈 대리 외 2명 참석(황성민 과장, 박지훈 과장 파견)
2. 이미지 파일 등록 문제 ==> image 등록 시연(확정적)
3. 재질 차트 추가 2건 개발 요청 ==> 진선철 과장이 검토한다고 함.
4. 사용률 저장(XPlatform에서 기존 소스를 추가해야할 것으로 추정됨)
5. 설계 문서(/P-55-0001-QM-001_화면설계서_sample.ppt) 작성 요청 ==> 진선철 과장
6. 박순천씨 고객과 협의 안해서 개발 다시 해야 함, 자기 마음대로 자기 업무 발표
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 팀 미팅(08:30 박순천씨에게 개발 일정관리 잘 하라고 지시)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 인정현황(/tkKolasRcgnStat.xfdl) 개발  
1. 조회, CRUD 가능, 인증서 첨부(국문, 영문 구분), 하단 Grid 무시할 것  ==> TK12001
1) 43. TB_KOLAS_RCGN_STAT 인정현황 정보 TB 생성
==============================================================================================================

-- 칼럼 추가 @@@
ALTER TABLE TB_GQ_CM_COMFILE ADD (
    RETRUN_DT CHAR(8) NULL        -- 반품일자
    , REG_ID VARCHAR2(20) NULL     -- 등록자ID  
    , REG_IP VARCHAR2(20) NULL     -- 등록자IP  
    , REG_DT DATE -- 등록일  
);  
-----------------------------------------------------------------------------------

-- 칼럼 수정 @@@
ALTER TABLE TB_GQ_CM_COMFILE MODIFY
(
    PWD_03 VARCHAR(200)  NULL         -- 의뢰구분 칼럼 수정
);  
==============================================================================================================

- Tibero DB 에서 테이블 칼럼 추가, 테이블 DROP시 에러 발생
1. 실행
ALTER TABLE TB_GQ_CM_COMFILE
    ADD  REQGB  VARCHAR(30) NULL            -- 의뢰구분 칼럼 추가
;
2. 현상: SQL Error [JDBC-5072:ERRDT]: JDBC-5072:Failure converting NUMBER to or from a native type.
3. 조치: DB 관리툴(오렌지, DBeaver)를 재시작할 것
==============================================================================================================

- xeni 업그레이드
1. xeni 엑셀 다운로드, 업로드시 사용
2. nexacro17-xeni.war ==> 2018.11.28.070939 --> 2019.09.03
1) 경로: C:\GQMS_Tst\workspace\GQMS_Tst\mavenRepository\com\nexacro\nexacro17-xeni\1.0.0-SNAPSHOT\
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 현대제철 식당 식권 구입(20장 106,000원(장 당: 5,300원), 계좌 이체[농협]), 주간보고(15시, 회의실)
								, 오토 에버 이규선 대리 그리스 여행(16시, 1주일간)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 인정현황(/tkKolasRcgnStat.xfdl) 개발 ==> 완료 @@@
1. 인증서 첨부[파일 업로드](국문, 영문 구분)
==============================================================================================================

- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발
1. GQMS ID로 권한 체크를 해서 보는 권한 부여
2. Grid를 동적으로 운영
1) (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
2) 시험소장(실명), 품질책임자 (실명), 기술책임자, 실무자 (인원)
---------------------------------------------------------------------------------------------------------------

/* KOLAS 인원현황 정보 조회 */
SELECT A.GUBUN_NM
			, MAX(CASE WHEN A.TEAM_CD = 'CD1001' THEN A.GUBUN_DATA ELSE '0' END) GUBUN_DATA
			, MAX(CASE WHEN A.GUBUN_DATA = '1' THEN '0' ELSE  A.GUBUN_DATA END) GUBUN_DATA_02
FROM TB_KOLAS_NMPR_STAT A, TB_KOLAS_NMPR_STAT_TEAM B
WHERE 1=1
GROUP BY A.GUBUN_NM
;
==============================================================================================================

- 오이사한테 전화 옴(10:10)
1. AE Prj 이호준 차장 빼서 미래신용정보 Prj 공통으로 투입(오토에버에서 난리났다고 함)
1) 강정관 과장 AE Prj 업무에 1~2주 정도 몰래 도와 주라고 함(강과장에게 지시한다고 함: 황원철 부장)
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:40 ==> 김현규 부장 야드에 투입(16시), 서울행(19:40 ~ 20:50), 당진T --> 18:05 통근 버스[7번]가 당진T로 출발)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발
1. GQMS ID로 권한 체크를 해서 보는 권한 부여
2. Grid를 동적으로 운영
1) (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
2) 시험소장(실명), 품질책임자 (실명), 기술책임자, 실무자 (인원)
==============================================================================================================

- 세로 데이타를 가로로 조회 @@@
WITH KOLAS_NMPR_STAT_TEAM AS
(
    SELECT A.TEAM_CD, A.TEAM_NM
    FROM TB_KOLAS_NMPR_STAT_TEAM A
    ORDER BY A.SEQ
  )
  , KOLAS_NMPR_STAT  AS
(
    SELECT  A.TEAM_CD, A.GUBUN_NM, A.GUBUN_DATA
    FROM TB_KOLAS_NMPR_STAT A
    ORDER BY A.SEQ
  )
SELECT   Z.GUBUN_NM-- , Z.TEAM_NM, Z.GUBUN_DATA
			, MIN(DECODE(Z.TEAM_CD, 'CD1001', T.TEAM_NM)) TEAM_NM
			, MIN(DECODE(Z.GUBUN_NM, 'CD1001', '', Z.GUBUN_DATA)) GUBUN_DATA
			, MAX(DECODE(Z.GUBUN_NM, 'CD1002', '', Z.GUBUN_DATA)) GUBUN_DATA_02
			  FROM KOLAS_NMPR_STAT_TEAM T, KOLAS_NMPR_STAT Z
WHERE T.TEAM_CD = Z.TEAM_CD
GROUP BY Z.GUBUN_NM
;
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.10.19(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>  

- 주말
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발
06:30 도림천로 도보(수종)
07:30 귀가 
07:50 인터넷 서핑 ==> 동적 Grid 분석(코닝 소스 참조)
09:00 종료
09:30 집출발(자전거, 수종)  
09:40 대동 유치원
10:00 부모 참여 수업 시작 ==> 노란팀
10:10 1시간 ==> 장구 연필통 만들기
10:40 2시간 ==> 등 만들기, 팔찌 만들기
11:10 3시간 ==> 베트남 반미 햄버거 만들기
11:40 4시간 ==> 블록 쌓기 놀이
12:00 종료
12:10 유치원 놀이터(수종 영진이랑 뛰어놈)
12:40 종료
12:50 귀가
13:00 조식
13:30 집출발
13:30 도림천로 도보(수종)
14:30 귀가
15:10 집출발(자전거, 수종)   
15:20 대림역(6511번 버스, 수종)
16:00 서울대 정류장 도착 
16:10 관악도서관(1층, 수종) ==> 수종 책 읽음
16:30 종료
16:50 서울대 정류장 도착 
17:50 대림역(6511번 버스, 수종)
18:00 석식(비빕밥, 치즈돈가스): 수종
18:30 귀가  
18:50 도림천로 도보(수종)
19:50 귀가 ==> 루옌 귀가
20:10 피곤해서 누움
22:30 샤워
22:51 인슐린 약 교체(270U, 24U 남음), 체중: 74.kg
21:30 취침 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2019.10.20(일) 작업 ■■■■■■■■■■■■■■■■■■
-----> 10:00 ~ 18:20 ==> 당진행(07:30 ~ 08:45), 강남C), 일요 근무

- 주말2
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발 ==> 가방에 오뎅, 콩 자반 반찬 가지고 옴
06:22 6411번 버스 탑승(대림역 정류장)
07:00 강남터미널(호남선) 도착
07:35 서울 출발
08:50 당진터미널 도착 
09:30 31번 버스 탑승(10번 송산)
09:55 고대리 정류장 하차
10:10 출근(현대제철 지원센터 6층)
10:10 동적 Grid 개발
12:10 중식(현대제철 한마음 식당)
12:30 동적 Grid 개발
18:10 종료(퇴근) 
18:20 석식(현대제철 한마음 식당)
18:40 도보
19:10 귀가
19:20 도보
20:00 종료
20:10 인터넷 서핑
22:30 취침
============================================================================================================== 

- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발
1. Grid를 동적으로 운영
1) (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
2) 시험소장(실명), 품질책임자 (실명), 기술책임자, 실무자 (인원)
==============================================================================================================

-  KOLAS 인원현황 팀 정보 조회(세로 데이타를 가로로 조회) @@@
WITH KOLAS_NMPR_STAT_TEAM AS
(
    SELECT A.TEAM_CD, A.TEAM_NM, A.CLAS_CD_01
    FROM TB_KOLAS_NMPR_STAT_TEAM A
  )
  , KOLAS_NMPR_STAT  AS
(
    SELECT  A.TEAM_CD, A.GUBUN_NM, A.GUBUN_DATA, A.CLAS_CD_01, A.GUBUN_CD
    FROM TB_KOLAS_NMPR_STAT A
    ORDER BY A.GUBUN_CD, A.SEQ
  )
SELECT   Z.GUBUN_NM
, MAX(Z.GUBUN_CD) AS GUBUN_CD /* 구분코드 */
, MAX(Z.CLAS_CD_01) AS CLAS_CD_01 /* 구분(사업장) */
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN T.TEAM_CD ELSE '' END) TEAM_CD
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN T.TEAM_NM ELSE '' END) TAEM_NM
, MAX(CASE WHEN T.TEAM_CD = 'CD1001' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN T.TEAM_CD ELSE '' END) TEAM_CD2
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN T.TEAM_NM ELSE '' END) TAEM_NM2
, MAX(CASE WHEN T.TEAM_CD = 'CD1002' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA2
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN T.TEAM_CD ELSE '' END) TEAM_CD3
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN T.TEAM_NM ELSE '' END) TAEM_NM3
, MAX(CASE WHEN T.TEAM_CD = 'CD1003' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA3
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN T.TEAM_CD ELSE '' END) TEAM_CD4
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN T.TEAM_NM ELSE '' END) TAEM_NM4
, MAX(CASE WHEN T.TEAM_CD = 'CD1004' THEN Z.GUBUN_DATA ELSE '' END) TAEM_DATA4
FROM KOLAS_NMPR_STAT_TEAM T, KOLAS_NMPR_STAT Z
WHERE T.TEAM_CD = Z.TEAM_CD
    AND  T.CLAS_CD_01 = Z.CLAS_CD_01
    AND  Z.CLAS_CD_01  = 'DJ'           /* 구분(사업장) */
GROUP BY Z.GUBUN_NM
ORDER BY GUBUN_CD
;  
==============================================================================================================

- 더릭스 기절 마약 매트리스 구입
1. 상품선택 / 7존 마약 매트리스(6cm) + 폴리 겉커버 멀티싱글(75cm) | 2..색상선택 / 네이비], 가격: 29,000원
http://www.enuri.com/detail.jsp?modelno=37355254&cate=120216&IsDeliverySum=N
http://shopping.interpark.com/product/productInfo.do?prdNo=6090205996
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.21(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 ==>  

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발 ==> 완료 @@@
1. Grid를 동적으로 운영
1) (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
2) 시험소장(실명), 품질책임자 (실명), 기술책임자, 실무자 (인원)
==============================================================================================================

- 콤보값 처리
this.div_Search.form.cmb_Bplc.set_value("PH"); // 사업장 콤보에 'PH' 설정
trace("[/tkKolasNmprStat.xfdl] [btn_AddDtl_onclick()] ==> [행 추가 처리] [TEST_9] [this.div_Search.form.cmb_Bplc.value]"+ this.div_Search.form.cmb_Bplc.value );
==============================================================================================================

- Grid RowTyp 변경 처리 @@@
for(var i = 0; i < this.ds_List.getRowCount(); i++)
{  
this.ds_List.set_enableevent(false);// 이벤트를 발생시킬지 여부를 설정하는 속성  
this.ds_List.set_updatecontrol(false); // RowType을 자동으로 변경할 것인지 여부를 설정하는 속성

var bSucc = this.ds_List.setRowType(i, Dataset.ROWTYPE_INSERT);// RowTyp 설정 변경(2: 추가(모든 행)) 
==> 지정된 행(row)의 타입을 구하는 메소드(1: 초기 행, 2: 추가된 행, 4: 수정된 행, 8: 삭제된 행)
this.ds_List.set_updatecontrol(true);
this.ds_List.set_enableevent(true);
trace("[/tkKolasNmprStat.xfdl] [fn_Save()] ==> [TEST_51] [i_번째]"+ i +"[ds_List.getRowType]"+ this.ds_List.getRowType(i) +"[bSucc]"+ bSucc);
trace("[/tkKolasNmprStat.xfdl] [fn_Save()] ==> [TEST_52] [i_번째]"+ i +"[ds_List.CNT]"+ this.ds_List.saveXML() +"[ds_List.saveXML()] \n"+ this.ds_List.saveXML() );  
} // end of for()
==============================================================================================================

- null 처리
if(this.gfn_IsNull(nexacro.getApplication().gv_LoginYn)) // 로그인 여부가 null 이면
{
trace("[/comXpNexa.xfdl] [form_onload()] ==> [TEST_52] [로그인 여부]"+ nexacro.getApplication().gv_LoginYn );  
this.fn_LoginData();// 로그인 처리
}  
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.22(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 ==> 현업회의(14시), 마약 매트 도착(22시: 처음 사용: 아주 잠 잘 잠)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 인정계획(/tkKolasRcgnPlan.xfdl) 개발 ==> 완료 @@@
1. 조회, CRUD 가능, 인증서 첨부[파일 업로드] pdf, ppt(용량 제한 없음)
2.  KOLAS 인정계획 구분 코드 추가(TK003) ==> 구분 기능 추가로 생성 가능
3. KOLAS 인정계획 정보 TB(TB_KOLAS_RCGN_PLAN) 생성
4. 메일 보내기 기능 확인 ==> 추후 개발 예정
==============================================================================================================

- 연도 combo에 index 설정
this.div_Search.form.cmb_PreYYYY.set_index(1);   // 연도 combo에 index 설정(포커스 설정, focus)
// trace("[/tkKolasRcgnPlan.xfdl] [form_onload()] ==> [TEST_91] [cmb_PreYYYY.index]"+ this.div_Search.form.cmb_PreYYYY.index );

this.div_Search.form.cmb_PreYYYY.setFocus();// 연도 combo에 포커스 처리
==============================================================================================================

- 날짜 등록(Grid에서 저장시)
1. 평가예정일
<Cell col="2" textAlign="center" text="bind:ESTM_SCHD_DT" displaytype="date" edittype="date" editdisplay="display" calendardisplay="display"/>
-------------------------------------------------------------------------------------------------------------------------------

- 날짜 함수
//var sToday = this.gfn_GetDate().substr(0, 4) +"-"+ this.gfn_GetDate().substr(4, 2) +"-"+ this.gfn_GetDate().substr(6, 2);// 오늘 날짜
//trace("[/tkKolasRcgnPlan.xfdl] [btn_Add_onclick()] ==> [TEST_12] [sToday]"+ sToday );

this.ds_List.setColumn(nRow, "ESTM_SCHD_DT", this.gfn_GetDate()); // 평가예정일(오늘 날짜로 셋팅)
this.ds_List.setColumn(nRow, "ESTM_CMPL_DT", this.gfn_GetDate()); // 평가완료일(오늘 날짜로 셋팅)
==============================================================================================================

- 현업회의(14시)
1. 리포트 툴 요청(진선철 과장이 구매 했다고 함)
2. 박지훈 과장이 시험 통계에 대해 설명
1) GQMS: 미니텍(SPC)으로 통계를 개발(공적 능력 분석) ==> 비용이 많이 들고 사용은 안해서 걷어냄(비용 2천만원)
2) 이번 프로젝트에서는 통계가 아니라 추이 정도로 개발할 수 밖에 없다고 함(진선철 과장: 진과장 목 잠김)
3. 다음주 화요일 10시에 현대제철 본사에서 회의(박지훈 과장 주관)
==============================================================================================================

- KOLAS 품질문서(/tkKolasQltyDcmn.xfdl) 개발
1. 조회, CRUD 가능, 인증서 첨부[파일 업로드] pdf, ppt(용량 제한 없음)
2. KOLAS 품질문서 정보 TB(TB_KOLAS_QLTY_DCMN) 생성
==============================================================================================================

- Grid에서 Text 입력시 영어, 숫자만 사용
1. editinputtype: english,number
==============================================================================================================

/* 부서 정보 조회 */  
SELECT  A.PRNT_DEPT_CD AS 상위부서코드, A.*
FROM TB_GQ_CM_DEPT_CD A        -- KOLAS 품질문서 정보 TB  
WHERE 1=1  
    -- AND A. DEPT_CD = '0279'     -- 부서코드
AND A. DEPT_NM LIKE '%공장%'     -- 당진 제철소(0279), 인천공장(17867), 포항공장(0052), 울산공장(14968), 순천단조공장(16043), AP공장()
ORDER BY A.DEPT_NM
;  
----------------------------------------------------------------------------------------------------------------

-- 부서 정보 조회  @@@
SELECT LEVEL, DEPT_CD, PRNT_DEPT_CD, DEPT_NM
FROM USRGQD.TB_GQ_CM_DEPT_CD
WHERE LEVEL NOT IN (1, 2)    -- 레벨이 1, 2가 아닌 것
START WITH DEPT_CD = '0279'   -- 부서코드 ==> 당진 제철소: 206개(189개, 17개)
CONNECT BY PRIOR DEPT_CD = PRNT_DEPT_CD
-- AND LEVEL < 4
ORDER BY LEVEL
;
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.23(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:00 ==> 중식(12시, 부대찌개(노서방네 부대찌개), 민대리, 강과장, 박순천씨), 현대제철 Prj 풋살(18시1, 12명, 1골, 짜장면)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- KOLAS 품질문서(/tkKolasQltyDcmn.xfdl) 개발 ==> 완료 @@@
1. 조회, CRUD 가능, 인증서 첨부[파일 업로드] pdf, ppt(용량 제한 없음)
==============================================================================================================

- Grid 칼럼 필수 입력 설정
this.ds_list.set_rowposition(i); // 현재 Row 설정
this.grd_list.setCellPos(1);// 선택할 셀의 위치 설정 ==> 포커스(focus) 설정
this.grd_list.showEditor(true); // 선택할 셀의 편집 모드로 설정  
-----------------------------------------------------------------------------------------------------------------

- 콤보 박스 포커스(focus) 설정
var objBefComp = this.div_Search.form.cmb_Bplc.setFocus();// 사업장 코드 포커스(focus) 설정  
trace("[/tkKolasQltyDcmn.xfdl] [div_List_btn_Pop_onclick()] ==> [TEST_03] [objBefComp]"+ objBefComp );
==============================================================================================================

- Grid에서 콤보 변경시 발생하는 이벤트
1. oncellposchanged: Grid 에서 Cell 의 선택위치가 변경된 후 발생하는 이벤트
2. ncloseup: Grid에서 편집 중에 콤보의 리스트박스나 달력의 데이트 피커가 닫힐 때 발생하는 이벤트
/***************************************************************************
* Even   : grd_List_oncloseup
* Desc   :  Grid에서 편집 중에 콤보의 리스트박스나 달력의 데이트피커가 닫힐 때 발생하는 이벤트
****************************************************************************/
this.grd_List_oncloseup = function(obj:nexacro.Grid,e:nexacro.GridEditEventInfo)
{
trace("[/tkKolasQltyDcmn.xfdl] [grd_List_oncloseup()] ==> [TEST_01] [e.row]"+ e.row +"[e.cell]"+ e.cell +"[e.oldvalue]"+ 
e.oldvalue +"[e.newvalue]"+ e.newvalue );  

if(obj.getCellProperty("Head", e.cell, "text") == "사업장")  // 사업장 칼럼 클릭 시
{
var sCLAS_CD_01 = this.ds_List.getColumn(this.ds_List.rowposition, "CLAS_CD_01"); // 사업장코드  this.fv_ClasCd01_2;	
// 사업장 코드2
this.ds_List.setColumn(this.ds_List.rowposition, "TEAM_CD",  ""); // 팀코드
this.ds_List.setColumn(this.ds_List.rowposition, "TEAM_NM",  ""); // 팀명
trace("[/tkKolasQltyDcmn.xfdl] [grd_List_oncloseup()] ==> [TEST_22] [ds_List.rowposition]"+ this.ds_List.rowposition 
+"[TEAM_CD]"+ this.ds_List.getColumn(this.ds_List.rowposition, "TEAM_CD") +"[TEAM_NM]"+ this.ds_List.getColumn(this.ds_List.rowposition, "TEAM_NM") );
}
};
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.24(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:30 ==> 주간보고(14시)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 동적 Grid 분석
1. 동적 DataList 생성
1) 기준 Ds: dlt_ProGdList, 추가 Ds(T1, T2 칼럼): dlt_GlassList
for( var g=1; g<=dlt_GlassList.getRowCount()+1; g++ ) {       // dlt_GlassList Ds를 루프를 돌면서 dlt_ProGdList Ds에 추가를 시킴 
==> 동적 생성 @@@
var T = "T"+ g;
//console.log("[/PD01P01.xml] [setColumnID()] ==> [TEST_51] [g_번째]"+ g +"[T]"+ T );
dataListStr1 += '  <w2:column dataType="text" id="'+T+'" name=""></w2:column>'
}  // end of for()

2. 동적 Grid 생성
1) Glass 기본 정보 : TB_AM_GLASS_BASIS --> dlt_GlassList   -->  ITEM_CODE, ITEM_NAME 칼럼 추가(저장시)
2) 날자별 성분 정보 : TB_AM_GLASS_COMP
==============================================================================================================

/* KOLAS 인원현황 정보 조회_02 ==> [/TK12002Mapper.xml] [selectList_02()] [2019.10.24, by 진태만] */
SELECT SEQ
    ,CLAS_CD_01
    ,GUBUN_CD
    ,GUBUN_NM
    ,GUBUN_DATA
    ,NVL(TEAM_CD, 0) AS T2     ---> TEAM_CD, TEAM_CD2, ......50개 칼럼 추가 @@@@
    ,NVL(TEAM_CD2, 0) AS T3
FROM TB_KOLAS_NMPR_STAT_02
WHERE 1 = 1
    AND CLAS_CD_01 = 'DJ' /* 구분(사업장) */
ORDER BY SEQ
;
-------------------------------------------------------------------------------------------------------------

-- KOLAS 인원현황 팀 정보 조회 */    ---> TEAM_CD, TEAM_NM 칼럼 데이타 추가 @@@@
SELECT A.*
FROM TB_KOLAS_NMPR_STAT_TEAM_02 A        -- KOLAS 인원현황 정보 TB
WHERE 1 = 1
    -- AND A.CLAS_CD_01 = 'GQ0000'          -- 구분(사업장)
;
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.25(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:40 ==> 서울행(19:40 ~ 20:50), 당진T --> 18:05 통근 버스[7번]가 당진T로 출발), 급여 수령 ==> 조식 25만원(7월 코닝 
									조식: 5만원, 9월, 10월 조식: 10만원), 숙소 난방 시작(코감기 걸림)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 동적 Grid 분석
1. 동적 DataList 생성
1) 기준 Ds: dlt_ProGdList, 추가 Ds(T1, T2 칼럼): dlt_GlassList
for( var g=1; g<=dlt_GlassList.getRowCount()+1; g++ ) {       // dlt_GlassList Ds를 루프를 돌면서 dlt_ProGdList Ds에 추가를 시킴 ==> 동적 생성 @@@
var T = "T"+ g;
//console.log("[/PD01P01.xml] [setColumnID()] ==> [TEST_51] [g_번째]"+ g +"[T]"+ T );
dataListStr1 += '  <w2:column dataType="text" id="'+T+'" name=""></w2:column>'
}  // end of for()

2. 동적 Grid 생성
1) Glass 기본 정보 : TB_AM_GLASS_BASIS --> dlt_GlassList   -->  ITEM_CODE, ITEM_NAME 칼럼 추가(저장시)
2) 날자별 성분 정보 : TB_AM_GLASS_COMP
==============================================================================================================

- 개발 서버 셋팅 확인
0. 철강기술시스템팀 송현수 과장에게 문의 메일 보냄
1. 개발 서버 ==> http://10.10.180.176/GQMS_Tst/index.html
2. 로컬 서버 ==> http://10.216.143.133:9011/GQMS_Tst/index.html
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.10.26(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==>  

- 주말
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발
06:30 도림천로 도보(수종)
07:30 귀가 
07:50 인터넷 서핑 ==> 동적 Grid 분석(코닝 소스 참조)
09:00 종료
09:30 집출발(자전거, 수종)  
09:40 대동 유치원
10:00 부모 참여 수업 시작 ==> 노란팀
10:10 1시간 ==> 장구 연필통 만들기
10:40 2시간 ==> 등 만들기, 팔찌 만들기
11:10 3시간 ==> 베트남 반미 햄버거 만들기
11:40 4시간 ==> 블록 쌓기 놀이
12:00 종료
12:10 유치원 놀이터(수종 영진이랑 뛰어놈)
12:40 종료
12:50 귀가
13:00 조식
13:30 집출발
13:30 도림천로 도보(수종)
14:30 귀가
15:10 집출발(자전거, 수종)   
15:20 대림역(6511번 버스, 수종)
16:00 서울대 정류장 도착 
16:10 관악도서관(1층, 수종) ==> 수종 책 읽음
16:30 종료
16:50 서울대 정류장 도착 
17:50 대림역(6511번 버스, 수종)
18:00 석식(비빕밥, 치즈돈가스): 수종
18:30 귀가  
18:50 도림천로 도보(수종)
19:50 귀가 ==> 루옌 귀가
20:10 피곤해서 누움
22:30 샤워
22:51 인슐린 약 교체(270U, 24U 남음), 체중: 74.kg
21:30 취침 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2019.10.27(일) 작업 ■■■■■■■■■■■■■■■■■■
-----> 10:00 ~ 18:20 ==> 당진행(07:30 ~ 08:45), 강남C), 일요 근무

- 주말2
05:00 기상
05:10 어깨 자가운동(30분)
05:40 조식
06:10 집출발 ==> 가방에 오뎅, 콩 자반 반찬 가지고 옴
06:22 6411번 버스 탑승(대림역 정류장)
07:00 강남터미널(호남선) 도착
07:35 서울 출발
08:50 당진터미널 도착 
09:30 31번 버스 탑승(10번 송산)
09:55 고대리 정류장 하차
10:10 출근(현대제철 지원센터 6층)
10:10 동적 Grid 개발
12:10 중식(현대제철 한마음 식당)
12:30 동적 Grid 개발
18:10 종료(퇴근) 
18:20 석식(현대제철 한마음 식당)
18:40 도보
19:10 귀가
19:20 도보
20:00 종료
20:10 인터넷 서핑
22:30 취침
============================================================================================================== 

- KOLAS 인원현황(/tkKolasNmprStat.xfdl) 개발
1. Grid를 동적으로 운영
1) (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
2) 시험소장(실명), 품질책임자 (실명), 기술책임자, 실무자 (인원)
==============================================================================================================
 
- 당진 현대 에비뉴 관리비 납부(숙소, 처음)
1. 2019년 9월분, 59,100원
2. 송금 계좌: 국민은행: 342301-04-168689, 예금주: (주)라이프테크에프엠씨(당진관리비) 송금 ==> 처리 완료
 1) 호수, 성명: 202호, 진태만 ==> 관리 사무소: 041-352-8771
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.28(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:10 ==> 미래신용정보 Prj 오픈(8시), 작은 아버지 전화(11월 17일 고성 묘사: 불참 통보, 6만원 송금 요구)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 열연[제품](/taEnthuMnfg.xfdl) 개발
1. HR전사종합시험관리_제품정보_열연 정보 TB(인터페이스에서 생성)[Tab1] ==> TB_GQ_QM_GDSINFO_HR
2. 전사종합시험관리_성분실적_열연후판 정보 TB(인터페이스에서 생성)[Tab2] ==> TB_GQ_QM_IGWR_HRPL
==============================================================================================================

- GQMS_Tst 개발 서버 설정 메일 보내기
1. GQMS_Tst.war 파일 생성 ==> C:\GQMS_Tst\workspace\GQMS_Tst\src\main\webapp\GQMS_Tst.war
2. GQMS_Tst 개발 서버에 등록 ==> /u01/webapps/GQMS_Tst.war
3. GQMS_Tst 개발 서버 URL 접근 가능 ==> http://10.10.180.176
1)  /u01/infra/apache-tomcat-9.0.8/conf/Catalina/localhost/ROOT.xml 파일에서
<?xml version='1.0' encoding='utf-8'?>
<Context path="/"
         docBase="/u01/webapps/"
         reloadable="true">
</Context>
--------------------------------------------------------------------------------------------------------

- GQMS_Tst 개발 서버 URL
1. http://10.10.180.176
- 실시간 로그 확인
> tail -f /u01/infra/apache-tomcat-9.0.8/logs/catalina.out

- 톰캣 서버 시작, 종료  @@@
> cd /u01/infra/apache-tomcat-9.0.8/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/startup.sh
==============================================================================================================

- Eclipse 프로젝트 WAR 파일로 export해서 톰캣에 배포하기
1. https://na27.tistory.com/215
2. SP 프로그래밍 - Eclipse Project를 war 파일로 export/import하기 ==> https://www.youtube.com/watch?v=YPgf4_DpnYE
3. [이클립스] WAR 파일이란? 이클립스 WAR 파일 생성 방법
1) WAR(WebApplication Archive): WAR란 WebApplication Archive의 약자로 말그대로 웹 어플리케이션 저장소이며 웹 어플리케이션을
압축해 저장해 놓은 파일이라고 생각하시면 됩니다. ==> https://dololak.tistory.com/31
==============================================================================================================

- HR전사종합시험관리_제품정보_열연 정보 TB(TB_GQ_QM_GD)에서 없는 칼럼
1. 실적일자   --> 정정실적일자?     -> TB_GQ_QM_GDSINFO_HR.MILL_INI_DATE(압연) / SHEAR_WRSLT_DATE(정정)
2. 열처리판정등급       --> 없음
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==> 강전관 과장(지각: 현대 에비뉴 510호): 열받아서 아픈거 티내지 말고 철수하라고 함, 걸어서 퇴근(22시, 민대리 20시에 먼저 퇴근함)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 열연[제품](/taEnthuMnfg.xfdl) 개발 ==> 완료 @@@
1. 전사종합시험관리_재질실적_열연후판 정보 TB(인터페이스에서 생성)[Tab1] ==> TB_GQ_QM_STQLTYWR_HRPL, TB_GQ_QM_STQLTYWR_HRPL2
==============================================================================================================

- AE Prj 퍼블리싱 지원
1. css font가 안 먹는다고 함(박승희 대리) ==> 오토 에버 황명규 부장이 지원 요청(이후도 계속 요청 옴)
1) 원인: 퀵뷰(Ctrl + F6)로 프로그램 실행하면 안 먹은(environment.xml 파일에서 themeid="theme::GQMS_Tst" 호출 못함)
2) 조치:
  가. taEnthuMnfg.xfdl파일에서 Static 컴퍼넌트(stc_testNm: 태마리오2) 생성 후 cssclass="sta_LF_userBox" 만듬
  나. Launch(Ctrl + F5)로 Chrome에서 F12 >> Elements >> 화살표: 클릭 >> 태마리오2: 클릭 >> 해당 내용: Copy > Copy outerHTML: 클릭
  ==> sta_LF_userBox 가 적용되었는 지 확인
<div id="MainFrame.VFrameSet.HFrameSet.WorkFrame.TA11110.form.div_Work.form.stc_testNm" class="Static sta_LF_userBox"
tabindex="-1" style="left:408px;top:116px;width:152px;height:35px;"><div id="MainFrame.VFrameSet.HFrameSet.WorkFrame.TA11110.form.
div_Work.form.stc_testNm:text" class="nexacontentsbox" style="left:0px;top:0px;width:152px;height:35px;">태마리오2</div></div>
==============================================================================================================

- AE Prj 퍼블리싱 지원2
1. 웹에서 css(themee)가 안 먹는다고 함
==============================================================================================================

- GQMS_Tst GQMS_Tst 개발 서버 URL 셋팅 완료(배인철 부장에게 전화해서 해결)
0. GQMS_Tst.war 파일 압축 풀어서 /u01/webapps 폴더에 복사
1. http://10.10.180.176   ==> /u01/webapps/
2. 실시간 로그 확인
> tail -f /u01/infra/apache-tomcat-9.0.8/logs/catalina.out
3. 톰캣 서버 시작, 종료 @@@
> cd /u01/infra/apache-tomcat-9.0.8/bin/
> sh startup.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/shutdown.sh
> sh /u01/infra/apache-tomcat-9.0.8/bin/startup.sh
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==> 현대제철 식당 식권 구입(20장 106,000원(장 당: 5,300원), 계좌 이체[농협])

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 후판[제품](/taRearPlateMnfg.xfdl) 개발 ==> 완료 @@@
1. TB_GQ_QM_STQLTYWR_HRPL_전사종합시험관리_재질실적_열연후판 TB에서 구멍확장성시험만 제외
<Column id="HER_TST_WR_CMPL_LOC" type="STRING" size="32" description="구멍확장성시험실적완료위치_grd_List2_05: 제외"/>
==============================================================================================================

- 민종근 대리와 DB 테이블 칼럼 때문에 싸움(16시)
1. 민종근 대리 자신은 인터페이스를 하지만 DB는 칼럼은 자기가 모르니 현업 담당자에게 직접 문의 보라고 함.
==> 12월말 철수 심각하게 고민
==============================================================================================================
  
- 열연, 후판[제품) 칼럼 관련 문의 메일 보냄
1. 황성민 과장에게 파일(재질실적 조회.xlsx) 첨부해서 메일 보냄
==============================================================================================================

■■■■■■■■■■■■■■ 2019.10.31(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 ==> 현업회의(10시, 통제센터 3층 시험검정팀 쪽 회의실), 주간보고(14시, 문서로 대체)

- 현대제철 전사 종합 시험관리 시스템 구축 Prj[★]
- 동적 Grid 재 개발
1. bzPrgMgrM.xfdl 파일에서 테스트 ==> 조회, 저장 완료 @@@
1) 동적 Grid에서 T1, T2, T3 칼럼 데이터 넣기 에러 ==> 수정 완료 @@@
2) TEAM_T_CD(팀T코드) 칼럼 추가 ==> TEAM_COLUMN_MAX_CNT(팀 칼럼 최대 수) 칼럼 추가[TB_KOLAS_NMPR_STAT_TEAM TB]
  가. Table 칼럼 등록(mybatis에서)
<insert id="insertTeam" parameterType="java.util.Map">  
/* KOLAS 팀 등록 정보 칼럼 추가 ==> [/TK12002Mapper.xml] [insertTeam()] [2019.10.31, by 진태만] */
ALTER TABLE TB_KOLAS_NMPR_STAT ADD (
T4 VARCHAR(8)  NULL         -- 팀T코드
)
</insert>            
-----------------------------------------------------------------------------------------------------

--  KOLAS 인원현황 팀 정보 조회 @@@  ==>  (포)품질 보증팀, 시험검정팀, 재료분석팀, 공정시스템팀
/* KOLAS 팀 등록 정보 조회 ==> [/TK12002Mapper.xml] [selectTeam()] [2019.10.24, by 진태만] */  
SELECT A.TEAM_T_CD AS 팀T코드, A.TEAM_CD AS 팀코드, A.TEAM_NM AS 팀명, A.CLAS_CD_01 AS 사업장코드
, A.TEAM_COLUMN_MAX_CNT AS "팀 칼럼 최대 수", A.*
FROM TB_KOLAS_NMPR_STAT_TEAM A
WHERE 1=1
--    AND A.CLAS_CD_01  = 'DJ' 	/* 구분(사업장) */
ORDER BY A.SEQ
;  
-----------------------------------------------------------------------------------------------------

-- 칼럼 10개 추가 @@@
ALTER TABLE TB_KOLAS_NMPR_STAT ADD (
     T2 VARCHAR(8)  NULL         -- 팀T코드
    , T3 VARCHAR(8)  NULL         -- 팀T코드
    , T4 VARCHAR(8)  NULL         -- 팀T코드
    , T5 VARCHAR(8)  NULL         -- 팀T코드
    , T6 VARCHAR(8)  NULL         -- 팀T코드
    , T7 VARCHAR(8)  NULL         -- 팀T코드
    , T8 VARCHAR(8)  NULL         -- 팀T코드
    , T9 VARCHAR(8)  NULL         -- 팀T코드
    , T10 VARCHAR(8)  NULL       -- 팀T코드
, T11 VARCHAR(8)  NULL        	 -- 팀T코드
)
;
==============================================================================================================

- rMateChartH5 로컬 서버 설치
1. rMateChartH5Web_v6.0_EN_Trial 폴더에서 하위 LicenseKey 폴더, rMateChartH5 폴더, rMateChartH5.json 파일을 복사하여
C:\GQMS_Tst\workspace\GQMS_Tst\src\main\nxui\GQMS_Tst\nexacro17lib\component\ 폴더에 붙여넣기
2. taGen.xfdl 파일에서 테스트
==============================================================================================================

- 민종근 대리와 DB 테이블 칼럼 때문에 싸움(8시, 1층 접견실)
1. 12월 말에 철수한다고 함. 인터페이스 담당자가 DB 테이블 관리해야 한다고 함(진선철 과장에게 말해라고 함)
2. 진선철 과장 면담 ==> 인터페이스 담당자가 DB 테이블 관리하는 것이 당연하다고 내가 주장함.
==============================================================================================================

- 현업회의(10시, 정문 통제센터 3층 시험검정팀 쪽 회의실)
1. 진선철 과장이 회사 모닝 차 타고 같이 감(민종근 대리, 강전관 과장)
2. 통계 관련해서 주로 문의
1) 냉연: 정태훈 대리(냉품팀) ==> 박스 차트(중간치, 산포) 개발 요구(검토해본다고 함)
2) 열연: 황성민 과장, 조용준 차장 ==> 히스토그램
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
  