

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2016.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 

■■■■■■■■■■■■■■■■■■ 2016.03.01(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 삼일절

▦ 조기축구
06:00 기상(영하 5도: 추움)
07:20 버스(6411번, 대림역 -> 학동역)
08:20 신구초등학교(눈이 쌓여서 눈 치움)
08:30 숏게임
08:40 게임
09:00 게임
10:30 종료
10:50 태훈이형 차
11:40 타탄 체크 겨울 거실화:(다이소 대림점): 루옌 선물
12:00 귀가
12:30 중식(라면, 밥)
13:30 구두굽 갈기(만 7천원: 너무 비싸서 포기)
14:00 낮잠
17:00 기상
18:30 올포유 피자 구입(이마트 구로점), 이마트 구두 7만원 선(좋은 것 같음)
19:30 석식
23:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.02(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:10 ==> 

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/
01. 수정 사항
 1) 제품 콤보 선택시 Role ID 변경
 2) 저장시 사번과 비교하여 시스템 사용자 추가
02. Grid 변경 사항
1. 회사명(bind:com_name) --> 삭제
2. 회사명(영문) --> 삭제 
8. 시스템명(bind:app_id, app_name) [ds_app] --> 추가  
9. 제품명(bind:div_code, div_name) [ds_siteDiv] --> 추가 
10. Role명(bind:role_id, bind:role_name) [ ]  --> 추가 
11. 등록자(bind:com_name) --> 추가
12. 등록일시(bind:com_name) --> 추가
13. 수정(bind:com_name) --> 추가
14. 수정일시(bind:com_name) --> 추가  
ADM_USER(ADM_사용자관리), ADM_SYS_USER(ADM_시스템사용자), ADM_ROLE(ADM_역할)
--------------------------------------------------------------------------------------------------------------------------------

91. 참조
 1) Role관리(/RoleMgmtView.xfdl) 작업
 2) 사용자리스트(/UserListView.xfdl) 작업
==============================================================================================================

- suppress 분석
1. 정의: 복수개의 행에서 같은 열에 있는 셀의 값이 같을 경우에 이를 하나로 합하는 레벨을 설정하는 속성
suppress="1",suppress="2" , suppress="3"  
==============================================================================================================

- MES 3.0 공통 회의(09:40 ~ 10:40)
1. 참석자: 삼성전기 최동수 책임, 김현진 선임, 유희남 수석, 전종흠 수석, 안과장
2. 내용: MES 3.0 HQ 부분 오픈했는데 에러가 많아서 삼성전기 그룹장이 오픈 반려
3. 수정 사항 처리하여 다시 오픈 한다고 함 
==============================================================================================================

- CHART ActiveX 설치 반영
1. 로그인 수정(/Login.xfdl 파일에서)
function fn_loginSuss() 
{
	gv_sLogin= "Y";
	gv_sSite= cbo_site.value;

	gfn_CheckInstallChart(XChart1);  // CHART ActiveX 설치 함수 호출(사유: CHART ActiveX 설치 함수 설치)[처리일: 2016.02.17, by 진태만]

	close( "OK" );
}
---------------------------------------------------------------------------------------------------------

- Top5 Menu 수정
1. /Dashboard.xfdl, /Dashboard2.xfdl
2. DB QUERY ==> /* semcomes.common.recentmenu.select.top5 */
---------------------------------------------------------------------------------------------------------

- G-ERP, Q-portal URL 수정
G-ERP ==> http://166.79.59.37:3300/GERP_EP
Q-portal ==> http://166.79.59.37:7600/
==============================================================================================================

- (주)소프트원 곽현준 차장과 전화
1. (주)지아이데이타 3월말까지만 다니기로 결심
2. 퇴직 연금 문제 해결할 것
3. (주)지아이데이타 이석부 사장과 통화 ==> 5월까지는 다녀야할 것 같음
 1) 연봉 200만원 인상, 부장 승진, 퇴직 연금 가입해줌
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.03(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==> 

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/  
==============================================================================================================

- Top5 Menu 수정
1. /Dashboard.xfdl, /Dashboard2.xfdl
2. DB QUERY ==> /* semcomes.common.recentmenu.select.top5 */
---------------------------------------------------------------------------------------------------------

- CHART ActiveX 설치 함수 설정 위치 수정
1. 이전(/Login.xfdl)
function fn_loginSuss() 
{  
	gfn_CheckInstallChart(XChart1); // CHART ActiveX 설치 함수 호출(사유: CHART ActiveX 설치 함수 설치)[처리일: 2016.02.17, by 진태만] 
	close( "OK" ); // 창닫기
}

2. 수정(/Top_Frame_Recent.xfdl)
function Top_Frame_onload( obj:Form, e:LoadEventInfo ) 
{
	gfn_CheckInstallChart(XChart1); // CHART ActiveX 설치 함수 호출(사유: CHART ActiveX 설치 함수 설치)[처리일: 2016.02.17, by 진태만]
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.04(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:10 ==> 

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/  
==============================================================================================================

- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 조회 에러
1. 현상
#### Xplatform Exception Trace Start ####
** userid = 00001
** cause = Query Service : Fail to find queryId [semcomes.adm.rolemgmt.roleusermgmt.select] in query mappings.
** LogKey = null 
2. 원인
/mapping-query-roleusermgmt.xml 파일에서 주석을 잘못 처리해서 나는 현상
<queryservice xmlns="http://www.anyframejava.org/schema/query/mapping"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.anyframejava.org/schema/query/mapping http://www.anyframejava.org/schema/query/anyframe-query-mapping-1.0.xsd ">
    <queries>
    
      <!-- 1. 모듈명 : [RoleUserMgmtView] 관리자- 진태만
             2. 설   명 : 사용자별 Role관리 조회
        --> 
        <query id="semcomes.adm.rolemgmt.roleusermgmt.delete"  isDynamic="true" mappingStyle="lower">
            <statement><![CDATA[
/* semcomes.adm.rolemgmt.roleusermgmt.delete[사용자별 Role관리 삭제] */
DELETE
FROM ADM_USER_ROLE
 WHERE 1 = 1
AND EMP_NO = :emp_no/* 사번 */ 
    AND APP_ID = :app_id/* 시스템 */
    AND DIV_CODE = :div_code/* 제품군코드 */  
            ]]></statement>
        </query> 
        
    </queries>
</queryservice>

 </queries>		===> 제거할 것(처리 2번 했음) @@@@
</queryservice>		===> 제거할 것(처리 2번 했음) @@@@
==============================================================================================================

- 눈높이 상담(21:00 ~ 21:40)
1. 김민정 팀장(대동 러닝센터장, 신길지점, 010-4554-0418)
2. 매주 금요일 20:30에 방문 요청(수업 참관)
3. 눈높이 한글(39,000원) 3월 11일(금)부터 시작하기로 함
4. 3월달 수업료 29,000원 카드 선납
5. 담당 교사: 정용숙 선생님(010-5387-6464)
6. 눈높이 홈페이지 회원 가입 --> tamario2 /  h*수*16*1@
http://www.noonnoppi.com/util/logon.aspx?returnURL=http%3a%2f%2fwww.noonnoppi.com%2fMain.aspx&ssosite=www.noonnoppi.com
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.05(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 비 많이 옴

- 주말
03:00 기상
03:30 삼성전기 MES 3.0 구축 Proj 수정 작업
09:30 종료 
11:30 중식
15:30 (주)투비소프트 콜센터에 글 올림[Grid 콤보 처리 문의]
19:00 석식: 짜장면, 짬뽕(9,500원); 만다린 중국집 배달
23:00 취침
==============================================================================================================

- 삼성전기 MES 3.0 구축 Proj[★]  
- 수정 사항
1. Grid 콤보 처리

2. 그리드의 특정셀만 editype 변경(edittype =combo, none)
edittype =expr:dataset.getRowType(currow)==2?'text':'none'
expr:(getRowType(currow) == '16') ? 'normal' : 'combo'

3. suppress 순번 처리
<Formats>
<Format id="default">
  <Columns>
    <Column size="50" />
    <Column size="50" />
    <Column size="50" />
    <Column size="50" />
    <Column size="100" />
  </Columns>
  <Rows>
    <Row size="24" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell text="NO"/>
    <Cell col="1" text="COL0"/>
    <Cell col="2" text="COL1"/>
    <Cell col="3" text="COL2"/>
    <Cell col="4" text="COL3"/>
  </Band>
  <Band id="body">
    <Cell text="expr:currow&#32;+&#32;1"/>
    <Cell col="1" text="bind:COL0" suppress="1" suppressalign="middle"/>
    <Cell col="2" text="bind:COL1" suppress="2" suppressalign="middle,over"/>
    <Cell col="3" text="bind:COL2" suppress="3" suppressalign="middle"/>
    <Cell col="4" text="bind:COL3"/>
  </Band>
</Format>
</Formats> 
==============================================================================================================

- 신발끈 결속기
1. 신발끈결속기/ 자동끈조이기, 가격: 4,500원(택배비 포함, 한 쌍)
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A621259905&frm3=V2
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.06(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상
07:20 버스(6411번, 대림역 -> 학동역)
08:20 신구초등학교
08:30 숏게임
08:40 게임(역삼팀: 약함, 은철이형이 와서 우리팀이 강해진 것 같음)
09:00 게임 ==> 총 3게임 함(신입이 많이 나와서 3팀이 됨: 자체 게임 2게임 함)
11:50 종료
12:30 중식(탕수육, 짬뽕: 북경반점): 수인이형 형수가 30만원 줘서 공짜로 먹음): 주간회의 간단하게 같이 함	
	==> 상요형 제명됨(신구초교 수영장이 너무 비싸다고 강남구청에 민원 넣어서 교장이 재계약 안 해준다고
	     상요형을 짤랐다고 함)
13:50 태훈이형 차 
14:30 귀가 
16:00 낮잠
17:30 기상
17:50 이마트 쇼핑(남성 드레서 76905 구두(255cm, 59,000원) 구입(루옌 사줌)
19:30 석식(비빕밥, 정식: 이마트 구로점 3층 식당)
20:10 귀가
23:00 취침
==============================================================================================================

- TV 구입(디엘티 시네eye W4813S)
48인치(121.9cm) / UHD / 잔상제거:60Hz / 400cd / 동적명암비 500만:1 / 응답속도:8ms / 음향:20W(2채널) 
/ MHL / USB재생(동영상,사진,음악) / 단자:HDMI(4개),USB / 두께:8.75cm / 평균소비전력:71.6W, 가격: 429,000원
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate
&utm_term=&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.07(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:10 ~ 18:10 ==> 출입증 안가지고 가서 통근 버스 못 탐(지하철 타고 출근)

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/  
-------------------------------------------------------------------------------------------------------

- grd_list Grid에서 콤보의 조건
1. 시스템(ds_app_id), 제품군(ds_div_code)하고는 연관 관계 없음
2. Role(ds_role_id)는 시스템(ds_app_id), 제품군(ds_div_code)에 따라 롤이 변경됨.
3. 기타: grd_list Grid에서 시스템(ds_app_id), 제품군(ds_div_code), Role(ds_role_id)
==============================================================================================================

- 콤보 클릭시 한번에 콤보 박스 보이기
grd_list.dropdownCombo();// Grid Comb 박스가 한번 클릭으로 Display
grd_list.dropdownCalendar();// Grid 달력이 한번 클릭으로 펼쳐진 상태가 되도록 수행
==============================================================================================================
  
- 커피(16시)
1. (주)지아이데이타 신과장이 사줌(류수석, 전수석, 신과장)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.08(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:20 ==>  

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl) 
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/   
==============================================================================================================

- 눈높이 한글 첫 수업(21시, 집)
1. 수종이 많이 수줍어 함
==============================================================================================================

- TV 도착 및 설치
1. 디엘티 시네eye W4813S) 8인치(121.9cm), 가격: 429,000원
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate
&utm_term=&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
2. HDMI 연결잭이 안 맞아서 신호 감지를 잘못 함.
==============================================================================================================

- Properties 화면 개발 ==> 관리자정보설정(/zAdminInfoView) 화면 참조
1. ds_listPropCol DS에서 설정
M: 필수, O: 일반, E:기타  
2. ds_listPropData
==============================================================================================================

1. /RoleUserMgmtView.xfdl 파일에서
<Formats>
<Format id="default">
  <Columns>
    <Column size="30" />
    <Column size="40" />
    <Column size="40" />
    <Column size="80" />
    <Column size="80" />
    <Column size="150" />
    <Column size="100" />
    <Column size="117" />
    <Column size="127" />
    <Column size="139" />
    <Column size="71" />
    <Column size="98" />
    <Column size="140" />
    <Column size="98" />
    <Column size="140" />
  </Columns>
  <Rows>
    <Row size="24" band="head" />
    <Row size="24" />
  </Rows>
  <Band id="head">
    <Cell/>
    <Cell col="1" text="번호"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox"/>
    <Cell col="3" displaytype="normal" text="사번"/>
    <Cell col="4" displaytype="normal" text="성명"/>
    <Cell col="5" displaytype="normal" text="부서명" suppress="1"/>
    <Cell col="6" displaytype="normal" text="직급"/>
    <Cell col="7" text="시스템"/>
    <Cell col="8" text="제품군"/>
    <Cell col="9" text="Role"/>
    <Cell col="10" text="상태"/>
    <Cell col="11" text="등록자"/>
    <Cell col="12" displaytype="normal" text="등록일시"/>
    <Cell col="13" text="수정자"/>
    <Cell col="14" displaytype="normal" text="수정일시"/>
  </Band>
  <Band id="body">
    <Cell/>
    <Cell col="1" text="expr:currow + 1" suppress="3"/>
    <Cell col="2" displaytype="checkbox" edittype="checkbox" text="bind:chk"/>
    <Cell col="3" displaytype="normal" text="bind:emp_no" suppress="expr:fn_changeSuppress(currow, 1)"/>
    <Cell col="4" displaytype="normal" edittype="expand" style="align:left;cursor:EXPR(fn_changeCursor(currow));" text="bind:user_name" 
    suppress="expr:fn_changeSuppress(currow, 1)"/> 
    <Cell col="5" displaytype="normal" style="align:left;" text="bind:dept_name" suppress="expr:fn_changeSuppress(currow, 1)"/> <!--// 5. 부서명  //-->
    <Cell col="6" displaytype="normal" style="align:left;" text="bind:mysng_jbgd_name" suppress="expr:fn_changeSuppress(currow, 1)"/> <!--// 6. 직급  //-->
    <Cell col="7" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:app_id" editdisplay="edit" suppress="expr:
    fn_changeSuppress(currow, 2)" combodataset="ds_app" combocodecol="app_id" combodatacol="app_name" combodisplay="display" combotype="search"/>
    <Cell col="8" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:div_code" suppress="expr:
    fn_changeSuppress(currow, 3)" combodataset="ds_siteDiv" combocodecol="div_code" combodatacol="div_name" combodisplay="display" combotype="search"/>
    <Cell col="9" displaytype="combo" edittype="expr:fn_changeEditypes(currow)" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:EXPR(fn_changeCursor(currow));" text="bind:role_id" suppress="0" combodataset="ds_role" 
    combocodecol="role_id" combodatacol="role_name_view" combodisplay="display" combotype="search"/>
    <Cell col="10" displaytype="combo" edittype="combo" style="align:left;background:
    EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");background2:EXPR(getRowType(currow)=="2"?"#ffffff":"#E6F3FFFF");color:
    #003366ff;color2:#003366ff;cursor:pointer;" text="bind:status_code" suppress="0" combodataset="ds_roleStatus" 
    combocodecol="comm_code" combodatacol="comm_code_name_view" combodisplay="display" combotype="search"/>
    <Cell col="11" text="bind:create_user_name"/> <!--// 13. 수정자  //-->
    <Cell col="12" displaytype="normal" text="bind:create_date"/>
    <Cell col="13" text="bind:update_user_name"/>
    <Cell col="14" displaytype="normal" text="bind:update_date"/>
  </Band>
</Format>
</Formats> 
-------------------------------------------------------------------------------------------------

- 행 추가 @@@ 
function fn_Add() 
{ 
	v_addYn= "1";  // 신규 여부  
	var nRow = gfn_addRowWithoutUseYn( ds_list, 0 ); 

	ds_list.setColumn( nRow, "app_id", gv_sAdmApp);  // 시스템(app_id)
	ds_list.setColumn( nRow, "div_code", semco_bizDiv); // 제품군(div_code)
 
	/**  행 추가 - "USE_YN" 컬럼(X)   */
	function gfn_addRowWithoutUseYn( objDs, nRow ) {
	var iRow;
	if( gfn_isNull(nRow) )iRow = objDs.addRow();
	elseiRow = objDs.insertRow( nRow );

	objDs.setColumn( iRow, "rowstatus", "I" );
	return iRow;
}
----------------------------------------------------------------------------------------------------

- Grid 콤보 Editypes 변경 함수 @@@ 
function fn_changeEditypes(row)
{
	var sDoneResult = "";

	if(ds_list.getRowType(row) == 2)  // 추가된 행 일때 ==> 지정된 행(row)의 타입을 구하는 메소드(1: 초기 행, 2: 추가된 행, 4: 수정된 행, 8: 삭제된 행)
	{
		sDoneResult = "combo";  // combo 설정
		//trace("[/RoleUserMgmtView.xfdl] [fn_changeEditypes()] ==>  [41. 콤보 Editypes combo로 변경] [ds_list.getRowType(row)]"+ 
		ds_list.getRowType(row) +"[sDoneResult]"+ sDoneResult );  
	}
	else
	{ 
		sDoneResult = "none";  // combo 사용 안함 설정
		//trace("[/RoleUserMgmtView.xfdl] [fn_changeEditypes()] ==>  [42. 콤보 Editypes none로 변경] [ds_list.getRowType(row)]"+ 
		ds_list.getRowType(row) +"[sDoneResult]"+ sDoneResult );  
	}

	return sDoneResult;
}
1. 참고
expr:( getRowType(currow) == Dataset.ROWTYPE_INSERT ) ? 'expand' : 'none'
expr:( getRowType(currow) == Dataset.ROWTYPE_INSERT ) ? 'show' : 'hide'
----------------------------------------------------------------------------------------------------

- Grid 콤보 Supress 변경 함수  @@@ 
function fn_changeSuppress(nRow, nNum)
{
	var sDoneResult = 0;
	//trace("[/grid_comboTest.xfdl] [fn_changeSuppress()] ==> [40. Supress 처리] [ds_list.getRowType(nRow)]"+ ds_list.getRowType(nRow) 
	+"[nRow]"+ nRow +"[nNum]"+ nNum );

	if(ds_list.getRowType(nRow) == 2)  // 추가된 행 일때 ==> 지정된 행(row)의 타입을 구하는 메소드(1: 초기 행, 2: 추가된 행, 4: 수정된 행, 8: 삭제된 행)
	{
	sDoneResult = 0;
	}
	else// 일반 행 일때
	{    
	if(nNum < 1)  // nNum이 1보다 적으면(Grid 콤보 Supress 변경 함수 설정 안함)
	{   
	sDoneResult = 0; // 주어진 숫자는 우선순위(0이면 셀 분리, 1이면 최우선 셀 합병) 
	}
	else
	{
	if(nNum == 2) // 시스템(app_id) 
	{
	sDoneResult = 2;  // 복수개의 행에서 같은 열에 있는 셀의 값이 같을 경우에 이를 하나로 합침(주어진 숫자는 우선순위)
	}
	else if(nNum == 3) //  제품군(div_code)    
	{
	sDoneResult = 3;   // 주어진 숫자는 우선순위
	}
	else
	{
	sDoneResult = 1; // 주어진 숫자는 우선순위(0이면 셀 분리, 1이면 최우선 셀 합병)
	} 
	}
	//trace("[/grid_comboTest.xfdl] [fn_changeSuppress()] ==> [40-1. Supress 처리(일반 행)] [nNum]"+ nNum +"[sDoneResult]"+ sDoneResult ); 
	}

	return sDoneResult;
}

- Grid 콤보 Cursor 변경 함수  @@@  
function fn_changeCursor(row)
{
	var sDoneResult = "";

	if(ds_list.getRowType(row) == 2)  // 추가된 행 일때 ==> 지정된 행(row)의 타입을 구하는 메소드(1: 초기 행, 2: 추가된 행, 4: 수정된 행, 8: 삭제된 행)
	{
		sDoneResult = "pointer";  // 커서 포인터 설정  
	else
	{ 
		sDoneResult = "";// 커서 없음 설정  
	}

	return sDoneResult;
} 
==============================================================================================================
 
- 커피(16시)
1. (주)지아이데이타 김정률 부장이 사줌(류수석, 전수석, 신과장)
==============================================================================================================

- 눈높이 한글 첫 수업(20:30, 집)
1. 수종이 많이 수줍어 함
==============================================================================================================

- TV 도착 및 설치
1. 디엘티 시네eye W4813S) 8인치(121.9cm), 가격: 429,000원
http://www.ticketmonster.co.kr/deal/256670817?opt_deal_srl=289015637&utm_source=enuri&utm_medium=affiliate&utm_term=
&utm_content=&utm_campaign=%EC%97%90%EB%88%84%EB%A6%AC_DB
2. HDMI 연결잭이 안 맞아서 신호 감지를 잘못 함.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.09(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl)   ==> 완료 @@@
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/   
==============================================================================================================
 
- 결재키 새창 개발(/결재상신 - 기본(/zPattern04ApprView.xfdl 파일 참조)
1. 결재키, 상태
<Col id="miskey">E100ACPG02SPCA201601142038472777</Col>
 <Col id="status">not exist</Col>
==============================================================================================================

- autoupdatetype(Grid 속성)
1. 정의: 그리드에서 콤보, 달력이 선택됐을 때, 바인드된 데이터셋으로 setColumn 메소드를 수행하는 시점을 설정하는 속성 
 1) autoupdatetype: itemselect ==> 콤보와 달력에서 특정 항목이 선택되어 변경되는 시점에 setColumn을 합니다.
==============================================================================================================

- Table scipt 조회(Toad 에서)
1. SELECT * FROM ADM_USER_ROLE A
2. Ctrl 키를 누르고 ADM_USER_ROLE 테이블 클릭
3. 테이블 Scipt 화면 새창이뜸
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.10(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Proj[★]
- 사용자별 Role관리(/RoleUserMgmtView.xfdl) 작업(/RoleUserMgmtFilter.xfdl)   ==> 완료 @@@
/* semcomes.adm.rolemgmt.roleusermgmt.select[사용자별 Role관리 조회]*/   
==============================================================================================================
    
- 공통작업 요청처리[★] 
2. 378번(유권록[010-9415-7203]) "해당화면에서 엑셀 출력시 LOT Cpk 만 선택했는데 sheet가 3개 나옵니다.
sExcelSheetName 을 입력안했을때는 정상적으로 나옵니다." 
- 현상: 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl)
 1) 사용자옵션: 버그테스트(유권록)
 2) Raw Data(Tab) > Cir > 엑셀: 클릭(새창)
 3) [Ca] Raw Data_1: 선택 > OK: 클릭
- 처리: SheetName에 특수 문자인 "["를 넣으면 이와 같은 에러 납니다.
실제로 엑셀을 열여서 SheetName에 "["을 넣으면 저장이 안됩니다.(엑셀 SheetName 고유의 특성)
예: [Ca] Raww Dataa_1  ==> (Ca) Raww Dataa_1 로 변경하면 됨
==============================================================================================================
 
- 유권록(010-9415-7203)
1. 377번
등급관리(/GradeManageView.xfdl)
TPS 프로세스 TYPE #4 - 통보 ==> cpy 후 paste
 oncolumnchanged를 안 탐...
 (포커스 안 빠져서 온체인지 안됨) 
==> auotoupdatetype: none에서 comboselect로 변경 --> 
TPS 프로세스 TYPE #4 - 통보  ==> alert 안 뜸 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.11(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:20 ==>  

- 공통작업 요청처리[★]
1. 377번(유권록[010-9415-7203] 과장) "복사 붙여넣기시 이상발생 Process(OOC) 변경시 데이터셋  oncolumnchanged 가 타야되는데 이벤트 
호출이 안됩니다.  해당 화면처럼 붙여넣기시 비정상종료가 발생합니다. ( Hold Type(OOC) : 로트중지에 
이상발생 process(OOC) 값을 TPS 프로세스 TYPE#4-통보로 붙여넣기시 ))"
- 현상: 등급관리(/GradeManageView.xfdl)
TPS 프로세스 TYPE #4 - 통보 ==> cpy 후 paste
 oncolumnchanged를 안 탐... (포커스 안 빠져서 온체인지 안됨) 
- 처리: SheetName에 특수 문자인 "["를 넣으면 이와 같은 에러 납니다.
실제로 엑셀을 열여서 SheetName에 "["을 넣으면 저장이 안됩니다.(엑셀 SheetName 고유의 특성)
예: [Ca] Raww Dataa_1  ==> (Ca) Raww Dataa_1 로 변경하면 됨
==============================================================================================================

1. 3817번(김진숙[010-2466-7369] 과장) "엑셀에서 데이터 카피 후 그리드에 붙여넣기 할때 콤보 값일경우 oncolumnchanged 
이벤트가 발생하지 않음. - 기존에는 되었음.
(코드만 카피 후 붙여넣기시 name컬럼에 코드에 해당하는 name값을 oncolumnchanged 이벤트에서 셋팅하고 있음.)"
- 현상: 
- 처리: 엑셀에서 데이터 카피 후 그리드에 붙여넣기 할때 콤보 값일 경우 기존 콤보에 text로 복사된 내용을 콤보 코드값으로
변경하는 이벤트가 발생합니다. 그래서 orgDataset.enableevent = false;를 하여 oncolumnchanged 이벤트가 발생하지 않습니다. 
만약, Grid 콤보에 oncolumnchanged 이벤트가 발생하게 되면 oncolumnchanged 함수 내부 프로세스가 돌아서
시스템이 다운되는 경우가 생겨서 Grid 콤보에 대해서 oncolumnchanged 이벤트를 막았습니다.

- grd_std.xjs 파일에서
/*------------------------------------------------------------------------------
* 기   능:copy / paste 를 위한 keydown 
------------------------------------------------------------------------------*/
function event_onkeydown(obj:grd_std, e:KeyEventInfo)
{ 
	if(e.ctrlKey == true && e.keycode == 67 && fv_copyandpasteFlage=="true")// Ctrl + C
	{
		xfn_ClipboardCopy(obj, strSeparator); 
	} 
	else if( e.ctrlKey == true && e.keycode == 86 && fv_copyandpasteFlage=="true")// Ctrl + V
	{ 
		xfn_ClipboardPaste(obj, strSeparator, arrEditColor);
	}
}  

// /*********************************************************************
//  * 기능 : Clipboard에 Copy된 내용을 그리드의 선택된 영역에 Paste 한다.  
//  *********************************************************************/
function xfn_ClipboardPaste(objGrid, strSeparator, arrEditColor, isEdit)
{
	// Combo 붙여넣기 추가 단 valid 체크
	if (strEditType == "combo")
	{
		   var comboDsName = this.getCellProperty( "body", nCell, "combodataset" );
		   var objComboDs  = null; 
		   var dataColumn  = "";
		   var codeColumn  = "";

		   if (!gfn_isNull( oBizForm[comboDsName])) 
		   {
			objComboDs = eval(comboDsName);
			dataColumn =  this.getCellProperty( "body", nCell, "combodatacol" );
			codeColumn =  this.getCellProperty( "body", nCell, "combocodecol" );

			var codRow  =  objComboDs.findRow(codeColumn, strValue) ;
			var dataRow =  objComboDs.findRow(dataColumn, strValue) ;

			// combo copy시 code가 온다
			orgDataset.enableevent = false;   // 컴포넌트의 이벤트를 발생시키지 않음  @@@@
			if ( codRow >= 0 )
			{
			orgDataset.setColumn(nRow,strColID,"");
			orgDataset.setColumn(nRow,strColID, strValue);
			}
			else if ( dataRow >= 0 ) // 엑셀 등에서 name을 copy한 경우
			{
				orgDataset.setColumn(nRow, strColID,"");
				orgDataset.setColumn(nRow, strColID, objComboDs.getColumn(dataRow, codeColumn) );   
				// 해당 strColID 칼럼에 objComboDs DS에서 불러온  codeColumn값을 입력 
			}else{
				orgDataset.setColumn(nRow,strColID,"");
				orgDataset.setColumn(nRow,strColID,strValue);
			}
			orgDataset.enableevent = true;// 컴포넌트의 이벤트를 발생 시킴  @@@@ 
		 }
	}
}
==============================================================================================================

- SVN 싱크 제외(eclipse에서)
1. igrnore는 svn 에 파일이 올라가 있지 않은 상태에서 해줘야 합니다 
즉, svn에 있는 org.eclipse.wst.common.component 를 삭제 후 igrnore 를 해주면 커밋시 제외  
2. 경로: “WorkSpace > 프로젝트 폴더 > .setting > org.eclipse.wst.common.component” 파일에 폴더 구조에 대한 설정이 들어있다. 
C:\SEMCO_WEB_DEV\workspace\DEV-LOCAL_RPT\.settings 
==============================================================================================================
 
- 원격 지원 하기(/ESCORT에서)
Taregt IP(상태 PC IP): 16.3.53.119,
Password:==> 필요 없음 @@@
==============================================================================================================

- TeeChart 관련회의(15:10 ~ 30)
1. Histogram 샘플 개발
1. multi Histogram 샘플 개발(김성현 차장: BoxPlot Chart 개발)
2. SPC에서 샘플 개발 요청 ==> 오픈: 4월 1일
4. 샘플
 1) Histogram 샘플(/amugae30.xfdl) 
 2) 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==============================================================================================================

- PC 부팅 패스워드 설정
1. PC 부팅 > Del or F2 > Set Bios(새창) 
2. 화상표키를 눌러 "PASSWORD SETTING" 선택 > 패스워드 설정 > "SAVE & EXIT SETUP" 선택
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.12(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
03:00 기상
03:10 IBK_ORMS 작업
05:40 기상
06:00 버스(6411번, 대림역 -> 학동역)
07:00 신구초등학교
07:05 게임(태훈이형 회사팀: 늦게 나왔다고 골기퍼 보라고 함)
	==> 4골 먹고 상대 공격수와 부디쳐서 머리 땅 바닥에 부딪침 --> 골키퍼 안 바꿔 준다고 소리 침
	--> 골키퍼 늦게 나온 후배와 바꿈
07:30 총무가 경기 끝나고 골기퍼 내 마음대로 바꾸었다고 화냄 --> 나와 왜 나만 골키퍼 봐야 하냐고 맞대응 함 
08:00 게임 ==> 총 3게임 함
08:30 종료
10:30 귀가
10:50 진료(명소아과의원): 수종 감기
11:10 눈 진료(삼성밝은안과의원): 루옌 눈 검사(정상, 피곤해서 난시가 조금 있다고 함)
11:30 조제(한독프라자약국)
12:00 쇼핑(다이소)
12:50 쇼핑(잠바[넘버원 아웃도어] 구입: 만 5천원)
13:00 귀가
13:10 중식(카레 국수)
13:30 태훈이형에게 전화해서 상대 공격수와 부디쳐서 머리 땅 바닥에 부딪쳐서 뇌진탕 초기 증상 있다고
	당분간 축구 못 나간다고 함(울산 파견 포함) ==> 신사 조기회 안 나가기로 결심함
15:30 낮잠
18:30 기상
19:10 석식
23:00 취침
==============================================================================================================

- 삼성전기 MES 3.0 프로젝트 현상황 보고(05시, 집)
1. (주)지아이데이타 이석부 사장에게 TeeChart 개발로 역할 변경에 대해 메일 보냄
==============================================================================================================

- TV 상품평 올리기(05시, 옥션)
1. TV 상품평 작성 후 메일 보내기
==============================================================================================================
 
- 노트북 거치대 설치(삼성전기 회사 노트북)
1. 크라디아 미니 CRF-103(노트북 거치대) -->가격: 25,500원 
http://cafe.naver.com/sssens/47869
--------------------------------------------------------------------------------------------------

1. 삼성전기 회사 쿨링팬이 고장난 것으로 추정됨
==============================================================================================================

- 노트북 거치대 구입
1. [ICODA] 코시(COSY) NS906 노트북 받침대, 가격: 8,050원, 인터파크
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=2387122212
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.13(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

- 일요일
06:00 기상 
06:10 IBK_ORMS 작업
07:06 대림3동 조기회 총무 황재식(010-3556-1982)에게 전화 ==> 회원 가입 문의(오늘은 안산 원정 간다고 못감)
	--> 가입비 15만원, 월 회비 2만원
09:00 종료
10:00 조식(카레 국수)
11:00 수종이가 문영아파트 놀이터에서 오줌 누고 있는데 경비 아저씨가 와서 퉁명스럽게 "머, 하세요?"라고
	해서 열받아서 화냄(2월달에 분리 수거할 때 퉁명스럽게 말했든 것과 싸여서 터짐)
11:30 사우나(나[8천원], 수종[5천]): 유토피아 사우나
	==> 수종 처음 사우나와서 옷 벗으니 울었음
11:10 목욕(나 체중: 72,65kg, 수종 체중: 15kg)
12:00 목욕 종료
12:10 간식(달걀 2개, 갈아 만든 배, 과자)
12:30 종료
12:30 지하철(구로디지털단지역 -> 서울대입구역)
13:30 중식(순두부, 양푼이 비빕밥, 김밥 3줄): 포마토
13:50 쇼핑(다이소 봉천1호점)
14:30 지하철, 버스(서울대입구역 -> 대림역)
15:00 귀가
19:00 석식
23:00 취침
==============================================================================================================

- USB 외장형 CD롬 구입
1. Coms USB외장형CD롬, 가격: 17,580원, 11번가
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=41933409&xfrom=&xzone=
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.14(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Proj[★]
- TeeChart 분석[★]
1. Histogram 샘플(/amugae30.xfdl, /amugae32.xfdl)
2. 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==============================================================================================================

- 계좌이동서비스 확인(12시)]
0. 자동이체 계좌 다시 한번 확인할 것
1. 계좌이동서비스  ==> 금융결제원(https://www.payinfo.or.kr/guide/useguide3.do)에서 9시부터 17시까지 가능
2. 신한은행 스마트 OTP 타행 계좌 처리 확인 ==> 보류
-------------------------------------------------------------------------------------------------------

- 자동납부 변경신청 접수내역 
금융회사계좌번호청구기관명변경계좌번호
SC은행130205***41PCA생명보험(주)신한은행 1104377***30
SC은행130205***41한화생명보험신한은행 1104377***30
SC은행130205***41KB국민카드신한은행 1104377***30
SC은행130205***41SK텔레콤신한은행 1104377***30 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.15(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:50 ~ 18:50 ==> 출근 때 잠자서 종점에서 못 내림(30분 걸어서 출근), 새벽에 작업해서 IBK_ORMS 수정 개발 완료

- 삼성전기 MES 3.0 구축 Proj[★]
- TeeChart 분석[★] 
1. 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)
==> 송창빈 수석(011-9815-1669)
-------------------------------------------------------------------------------------------------------

- 통계분석Data조회 Histogram DB연결 성공
1. 막대 그래프로 보임 ==> DB연결 데이타 분석할 것
==============================================================================================================

- Histogram 교육
1. 신광호 수석(16:30, A9 방문하여 10분간 교육 받음
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.16(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==> MSI 노트북 고장

- 삼성전기 MES 3.0 구축 Proj[★] 
1. 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl)  
==============================================================================================================

- MSI 노트북(MSI GT683DX-i7) 고장남
08:00 MSI 노트북 전원 다시 꽃으니 스파크 일어나 고장남
09:00 (주)지아이데이타 이석부 사장에게 보고
10:00 (주)지아이데이타 김정률 부장이 추가로 보유하고 있는 노트북 인수 받음
==> 
15:00 MSI 노트북(MSI GT683DX-i7) 삼성전기 콜센터에서 데이타 백업 받음
16:50 종료 -> 내일 삼성전기 콜센터에서 노트북 SSD Raw 포맷 해준다고 함(16시에 찾아서 노트북에 붙인 후 반출할 것)
17:00 백업 파일로 프로그램 재설치
18:50 퇴근
----------------------------------------------------------------------------------------------------------

- (주)지아이데이타에서 지급 받은 노트북
1. 모델명: Lenovo G580
2. S/N: CB19797956
- PC 정보
1. 고유번호:  2997471102659
2. 모델명: 20150 
==============================================================================================================

- MES 3.0 Prj IP 주소 재 설정
1. IP 주소: 16.3.70.30
2. S/M: 255.255.255.0
3. GW: 16.3.70.1
4. 기본 DNS: 203.241.132.34
 보조 DNS: 203.241.135.130
==============================================================================================================
  
- escort에서 
1. mySingle ID: ZZ2016101187, mySingle 암호: ZZ101187 
==============================================================================================================

- SVN 정보
1. ZZ009169, / ZZ009169
==============================================================================================================
 
- 현대해상 어린이보험 자동이체 계좌 변경 요청
1. 상품명: 무배당 굿앤굿어린이CI보험(Hi1304)(현대해상, 진수종)
2. 이전 계좌: SC은행
3. 변경 계좌: 신한은헹: 110-437-783130(110437783130), 예금주: 진태만
==============================================================================================================

- 피부 질환 처방(수원 삼성전기 부속 의원 방문)
1. 병명: 어른 아토피
2. 처방: 라벤다 크림 연고(광범위한 피부질환 치료제)
==============================================================================================================

- 미니 키보드 구입
1. [B225856186] Actto 비즈 미니 키보드(KBD-36), 가격: 11,850원
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B225856186&frm3=V2
2. insert 키 없음, function 키 없음
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.17(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Proj[★] 
1. 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl) 
-------------------------------------------------------------------------------------------------------

- 통계분석Data조회 Histogram DB연결 성공
1. 막대 그래프로 보임 ==> DB연결 데이타 분석할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.18(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  모니터, 키보드 삼성전기 Prj에 가져 옴

- 삼성전기 MES 3.0 구축 Proj[★] 
1. 통계분석Data조회(/StatisticAnalysisDataInquiryRawdataView.xfdl) > CHART_Chart(/StatisticAnalysisChartSinglePopup.xfdl) 
==> 1차 개발 완료
-------------------------------------------------------------------------------------------------------

- 통계분석 Data조회에서 Histogram 정리
==============================================================================================================

- Histogram 관련 회의
1. 참석자: 송창빈 수석(011-9815-1669), 신경인 과장(010-3820-4280, 에버원 소프트)
2. 통계분석 Data조회에서 Histogram 정리 설명
3. 추가 요구 사항
01. 툴박스
02. X축 간격
==============================================================================================================

- IP 주소, Mac Address(XPlatform에서)
var objExtCommon = new ExtCommon(); 
trace("[/Login.xfdl] [fn_loginSuss()] ==> [IP주소(sIpAdress)]"+ objExtCommon.getIPAddress() 
+"[Mac Address]"+ objExtCommon.getMacAddress() +"[IP, Mac Address)]"+ objExtCommon.getIPAdapterInfo() );   
==============================================================================================================
 
- 모니터, 키보드 삼성전기에 반입
1. 반입증 작성
2. LG  모니터 S/N
3. actto 키보드 S/N
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.19(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
04:00 기상
04:10 XPlatform 배포 설정 작업
06:10 집출발  
06:30 대림3동 운동장
06:50 대림3동 조기회 총무, 회원들과 인사
07:00 숏게임: 초반에 공격을 했는데 약간 무리를 함, 후반에 수비 위주로 게임 뜀.
07:50 종료
08:10 기사 식당(조기회 형이 쏨)
08:40 편의점에서 맥주, 막걸리(조기회 형이 쏨)
09:40 귀가 ==> SK 브로드밴드 기사가 이미 왔다 갔다고 함
10:40 SK 브로드밴드 기사가 다시 와서 KT 와이파이 설치해주고 감(김종윤: 010-3825-0717)
	==> KT 인터넷 해지할 것 
13:00 중식(짜장면 3그릇(13,500원): 만디린 반점 배달)
14:00 낮잠
17:30 기상
18:20 지하철(대림역 <-> 서울대입구역)
18:50 석식(고기 부페: 착한돼지): 루옌, 수종
19:40 쇼핑(라붐아울렛: Y셔츠 2벌)
20:30 귀가
22:40 XPlatform 배포 설정 작업
01:00 취침
==============================================================================================================

- 인터넷 교체(SK 브로드밴드)
1.  [서비스 개통일자] 3월 19일(토) 10:30 Home닥터(방문기사) 방문예정 
[신규가입 상품안내]
① B인터넷
▶ 정기계약: 3년
▶ 부가서비스 신청내역: 스마트온
▶ 사은품: 신세계 모바일 상품권 15만원(150,000)

② B tv
▶ 정기계약: 3년
▶ 상품명: (N)스마트_UHD2
▶ 부가서비스 신청내역: 원스톱원격(IDS)
-----------------------------------------------------------------------------

[추가 안내사항]
① 다음달 청구서에 신청하신 서비스에 대한 신규설치비가 청구(회선당)됩니다.

② 사은품은 개통 후 지급되므로 개통일자에 따라 발송 지연될 수 있습니다.

③ 기존에 사용중인 타사 서비스(KT,LG,지역케이블 등)는 타사에 직접 해지신청을 하셔야 합니다. (단, 번호이동 전화는 자동해지됨)

④ 약정기간내 해지시 해당할인에 대한 할인반환금이 청구되며, 1년 이내 해지시에는 사은품에 대한 위약금이 청구됩니다.

※ 상품/사은품 관련 문의 : 관악Home고객센터(M)(02-1600-0216)
==============================================================================================================

- XPlatform 배포 설정 @@@
1. 01. ActiveX 방식(/XP-ActiveX-Install.jsp 파일에서)
http://127.0.0.1:9080/XP-ActiveX-Install.jsp
<SCRIPT LANGUAGE="javascript">
function fn_load()
{ 
	XPlatformAXCtrl.xadl = "http://127.0.0.1:9080/EDU_XP_Deploy/XP_Source/RIA_Project/RIA_Project.xadl";   // ADL 설정 @@@
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [01. ActiveX 방식 ADL 설정_01(XPlatformAXCtrl.xadl)]"+ XPlatformAXCtrl.xadl );

	//autosize
	XPlatformAXCtrl.autosize = true;
 
	//key
	XPlatformAXCtrl.key = "RIA_Project";

	//retry
	XPlatformAXCtrl.retry = 2;
 
	//timeout
	XPlatformAXCtrl.timeout = 30;

	//run, getvariablevalue
	XPlatformAXCtrl.run();	 
	}
</SCRIPT>	

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XPlatformAXCtrl" CLASSID="CLSID:7E0D6AB0-6E1E-441C-969A-CD85DCA58DFB" ');
	document.write('width="90%" height="90%" ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP_Module/XPLATFORM9.2.1_SetupEngine.cab#VERSION=9.2.1.120"> ');
	document.write('</OBJECT>');
</SCRIPT>
-------------------------------------------------------------------------------------------------------------

2. 02. Runtime 방식(/XP-Runtime-Install.jsp 파일에서)
http://127.0.0.1:9080/XP-Runtime-Install.jsp
<SCRIPT LANGUAGE="javascript"> 
function fn_make_shortcut()
{ 
	XLauncher.key = "RIA_Project"; 
	XLauncher.version = "9.2.1";   // XLauncher 버전
	
	XLauncher.xadl = "http://127.0.0.1:9080/EDU_XP_Deploy/XP_Source/RIA_Project/RIA_Project.xadl";   // ADL 설정 @@@ 
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [02. Runtime 방식 ADL 설정_01(XLauncher.xadl)]"+ XLauncher.xadl );
	
	XLauncher.componentPath = "%USERAPPLOCAL%\\TOBESOFT\\RIA_Project\\Component\\";    // component가 로컬 PC에 다운로드되는 경로
	// USERAPPLOCAL ==> C:\Users\TAMA\AppData\Local
	// C:\Users\TAMA\AppData\Local\TOBESOFT\RIA_Project\Component 경로에 Component dll 파일이 생성됨
 	
	XLauncher.loadingimage="http://127.0.0.1:9080/EDU_XP_Deploy/image/loading_img.gif";		// loading image 
	
	XLauncher.makeshortcut("RIA_Project","http://127.0.0.1:9080/EDU_XP_Deploy/image/logo.ico", "desktop");	 // 단축키 아이콘 @@@
 
	XLauncher.launch(); 
	self.close(); 
}  
</SCRIPT>

<BODY onload="fn_make_shortcut()">

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XLauncher" CLASSID="CLSID:A30D5481-7381-4dd9-B0F4-0D1D37449E97" ');
	document.write('width="0" height="0"  ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP_Module/XPLATFORM9.2.1_XPLauncher.cab#VERSION=2015,12,29,1"> ');
	document.write('</OBJECT>'); 
</SCRIPT>t.write('</OBJECT>');
</SCRIPT>   
==============================================================================================================

- XPlatform 배포 설정[HS_ERP_Deploy] @@@
1. 01. ActiveX 방식(/XP-ActiveX-Install.jsp 파일에서) 
http://127.0.0.1:9080/HS_ERP_Deploy/XP-ActiveX-Install.jsp

<SCRIPT LANGUAGE="javascript">
function fn_load()
{ 
	XPlatformAXCtrl.xadl = "http://127.0.0.1:9080/HS_ERP_Deploy/XP-Source/HS_ERP/HS_ERP.xadl";   // ADL 설정 @@@
	alert("[/XP-ActiveX-Install.jsp] [fn_load()] [HS_ERP_Deploy] [01. ActiveX 방식 ADL 설정_01(XPlatformAXCtrl.xadl)]"+ XPlatformAXCtrl.xadl );

	//autosize
	XPlatformAXCtrl.autosize = true;
 
	//key
	XPlatformAXCtrl.key = "HS_ERP";

	//retry
	XPlatformAXCtrl.retry = 2;
 
	//timeout
	XPlatformAXCtrl.timeout = 30;

	//run, getvariablevalue
	XPlatformAXCtrl.run();	 
	}
</SCRIPT>	

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XPlatformAXCtrl" CLASSID="CLSID:7E0D6AB0-6E1E-441C-969A-CD85DCA58DFB" ');
	document.write('width="90%" height="90%" ');
	document.write('CODEBASE=http://127.0.0.1:9080/HS_ERP_Deploy/XP-Module/XPLATFORM9.2.1_SetupEngine.cab#VERSION=9.2.1.120"> ');
	document.write('</OBJECT>');
</SCRIPT
-------------------------------------------------------------------------------------------------------------

2. 02. Runtime 방식(/XP-Runtime-Install.jsp 파일에서)
http://127.0.0.1:9080/HS_ERP_Deploy/XP-Runtime-Install.jsp

<SCRIPT LANGUAGE="javascript"> 
function fn_make_shortcut()
{ 
	//alert("[/XP-ActiveX-Install.jsp] [fn_make_shortcut()] [TEST_01]");
 	
	XLauncher.key = "RIA_Project"; 
	XLauncher.version = "9.2.1";   // XLauncher 버전
	
	XLauncher.xadl = "http://127.0.0.1:9080/HS_ERP_Deploy/XP-Source/HS_ERP/HS_ERP.xadl";   // ADL 설정 @@@  
	alert("[/XP-ActiveX-Install.jsp] [fn_load()]  [HS_ERP_Deploy] [02. Runtime 방식 ADL 설정_01(XLauncher.xadl)]"+ XLauncher.xadl ); 
	
	XLauncher.componentPath = "%USERAPPLOCAL%\\TOBESOFT\\HS_ERP\\Component\\";    // component가 로컬 PC에 다운로드되는 경로
	// USERAPPLOCAL ==> C:\Users\TAMA\AppData\Local
	// C:\Users\TAMA\AppData\Local\TOBESOFT\HS_ERP\Component 경로에 Component dll 파일이 생성됨
 	
	XLauncher.loadingimage="http://127.0.0.1:9080/HS_ERP_Deploy/image/loading_img.gif";		// loading image 
	
	XLauncher.makeshortcut("HS_ERP","http://127.0.0.1:9080/HS_ERP_Deploy/image/logo.ico", "desktop");	 // 단축키 아이콘 @@@
  
	XLauncher.launch();
	//alert("[/XP-ActiveX-Install.jsp] [fn_make_shortcut()] [TEST_end]");
	//se
</SCRIPT>

<BODY onload="fn_make_shortcut()">

<SCRIPT LANGUAGE="JavaScript">
	document.write('<OBJECT ID="XLauncher" CLASSID="CLSID:A30D5481-7381-4dd9-B0F4-0D1D37449E97" ');
	document.write('width="0" height="0"  ');
	document.write('CODEBASE="http://127.0.0.1:9080/EDU_XP_Deploy/XP-Module/XPLATFORM9.2.1_XPLauncher.cab#VERSION=2015,12,29,1"> ');
	document.write('</OBJECT>'); 
</SCRIPT> 
==============================================================================================================

- jsp 생성 에러
1. 현상
HTTP Status 500 - java.lang.ClassNotFoundException: org.apache.jsp.XP_002dActiveX_002dInstall_jsp

2. 원인:
java.lang.ClassNotFoundException: org.apache.jsp.XP_002dActiveX_002dInstall_jspp 톰캣으로 부터 파싱된 서블릿으로
파일이 없기 때문에 생긴문제입니다. 

3. 조치:
XP-ActiveX-Install.jsp 파일을 생성하고 서버를 재시작할 것
http://127.0.0.1:9080/XP-ActiveX-Install.jsp
http://127.0.0.1:9080/XP-Runtime-Install.jsp 
---------------------------------------------------------------------------------------------------------

1. 이클립스 내에서 java jre 설정이 잘 못 된 경우 파싱이 안되어 위에 같은 에러가 발생할 수 도 있습니다.
2. 해당하는 클래스가 없는 경우입니다.
3. WEB-INF/classes 로 클래스 패스설정이 안된 경우에도 원인이 될 수 있습니다.   
    프로젝트 선택 후 오른쪽 버튼(properties) 창 -> java build path -> source tab 밑에 경로 설정
==============================================================================================================

- 마우스 패드 구입
1. [A866333967] wezel WEZEL WZ-GMP11m 마우스패드(블랙), 가격: 5,680원
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A866333967&frm3=V2
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.20(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 대림3동 조기회 데뷰

▦ 조기축구
06:00 기상
06:30 자전거(문영APT -> 대림운동장)
06:50 대림운동장
07:00 숏게임 
07:30 게임 ==> 3게임함(최선을 다하고 잘 했다고 함)
10:00 종료
10:30 중식(뼈해장국: 양평해장국) ===> 조기회에서 쏨
--> 이수춘 회원님 말이 몇가지 기술만 전수 받으면 주전이 될수 있다고 함.(성공전 데뷰)
12:10 종료  
12:30 귀가
13:40 낮잠
16:40 기상
17:30 쇼핑(다이소 대림점)
19:00 석식: 벼해장국(2그릇, 테이크 아웃): 양평해장국
22:00 인터넷 고장 ==> 마우스 클릭이 잘 안되게 하는 바이러스 발생(마우스를 클릭하면 다중 선택이 됨)
23:00 취침
==============================================================================================================

 ■■■■■■■■■■■■■■■■■■ 2016.03.21(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>

- 삼성전기 MES 3.0 구축 Proj[★] 
- Histogram 수정
1. DB 에러 처리(/mapping-query-statisticaldatainquiry_TEST.xml 파일에서
SELECT MODEL.GODS_PRGS_STATUS_CODE
	, RESULT.OCC_SYS_ID
	, '' AS RECALC_TIMES로 처리
FROM SPC_SITE_VENDOR SITE
;
==============================================================================================================

- 계좌이동서비스 확인(12시)]
0. 자동이체 계좌 다시 한번 확인할 것
1. 계좌이동서비스  ==> 금융결제원(https://www.payinfo.or.kr/guide/useguide3.do)에서 9시부터 17시까지 가능
2. 신한은행 스마트 OTP 타행 계좌 처리 확인 ==> 보류
-------------------------------------------------------------------------------------------------------

- 자동납부 변경신청 접수내역(변경 완료 건) 
금융회사계좌번호청구기관명변경계좌번호
SC은행130205***41PCA생명보험(주)신한은행 1104377***30
SC은행130205***41한화생명보험신한은행 1104377***30
SC은행130205***41KB국민카드신한은행 1104377***30
SC은행130205***41SK텔레콤신한은행 1104377***30 
==============================================================================================================
 
- 자동납부 계좌변경 수동 처리(인터넷으로 처리)
1. 메트라이프 종신보험(SC은행 -> 신한은행[110-437-783130]) ==>http://www.metlife.co.kr
2. 현대해상 어린이보험(SC은행 -> 신한은행[110-437-783130]) ==> https://www.hi.co.kr
==============================================================================================================

- 마우스 클릭이 잘 안되게 하는 바이러스 발생(마우스를 클릭하면 다중 선택이 됨) @@@
0. 키보드를 교체해 볼 것: 원본 출처 ==> http://blog.naver.com/lozarahim/90144136743 
1. rundll32.exe 파일(C:\Windows\System32) 삭제
 1) trustedInstaller에서 사용 권한 부여해서 삭제
2, dllhost.exe  파일(C:\Windows\System32) 삭제
 1) trustedInstaller에서 사용 권한 부여해서 삭제  
3. rundll32 설정 해제
 1) 시작-실행-msconfig를 해서 시스템 구성 유틸리티-시작프로그램을 봅시다 rundll32 어쩌고가 여러개 있으면
 몽땅 체크해제해서 사용안함으로 바꿉니다. 그런뒤 컴퓨터를 재부팅합니다.
4. rundll3  삭제
 1) 시작-검색-모든 파일 및 폴더에서 rundll32을 검색 > 삭제  
---------------------------------------------------------------------------------------------------------

- trustedInstaller에서 사용 권한 부여: admin(관리자) 계정보다 상위 권한을 가진 계정 
http://blog.naver.com/r2d/220258051386
==============================================================================================================
 
- 오디오 CD 변경(FreeRIP) 
1. .cda 파일을 .mp3 파일로 변경처리 함(USB에 담음)
http://www.powerove.com/220
http://wiinemo.tistory.com/1105
==============================================================================================================
- 쌀 구입 
1. 시만경 미곡종합 처리장 2015 지리산 메뚜기쌀 백미, 쌀20kg, 가격: 34,900원 ==> 옥션
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=751010570&GoodsSale=Y&jaehuid=200002673
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.22(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==> TeeChart 개발 종료

- 삼성전기 MES 3.0 구축 Proj[★] 
- Histogram 수정 
1. 설치된 TeeChart 프로그램(평가판)
 1) TeeChart Pro v2015 ActiveX Evaluation
2. [보고] TeeChart  담당 역할 변경 메일 송창빈 수석, 안우현 수석에게 보냄
 1) 이석부 사장에게 전화해서 TeeChart 역할 마음대로 변경한다고 화냄
==============================================================================================================

- KT 인터넷 해지(10시, 회사)
1. 100번 전화해서 해지할 것 ==> 전화해서 1시간 기다려도 전화 안 받음
  ==> SK브로드밴드 가입해준 아줌마가 대신 해지 신청 해준다고 함
http://blog.naver.com/hyunma00/220596421485
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.23(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:50 ==> UI공통으로 복귀

- 삼성전기 MES 3.0 구축 Proj[★] 
- 공통작업 요청처리(408번: 신경인: 010-3820-4280)
1. 현상: 관리도 popup excel download 확인 요청
2. 수정 위치: SPC> 관리도 >관리도 > 관리도 popup
3. 처리:
/common_Grid.xjs 파일에서 gfn_ExportExcel() 수정해서 각각 excel download 할 수 있도록 수정 했습니다.
==============================================================================================================
  
- 윈도우 무비 메이커(WINDOW MEDI오디오/비디오 파일 형식 변경 프로그램)
1. 윈도우 동영상이라면 비디오와 오디오가 모두 들어있는 wmv 포맷: WMV(Windows Media Video)
http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1020401&docId=234526516&qb=66y067mE66mU7J207LukIOyCrOyaqeuylQ==
&enc=utf8§ion=kin&rank=1&search_sort=0&spq=1

http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1020401&docId=240353029&qb=7Jik65SU7JikIOu5hOuUlOyYpOuhnCDrs4Dqsr0=
&enc=utf8§ion=kin&rank=17&search_sort=0&spq=0
==============================================================================================================

- 신사조기회 감독(이승열 형)에게 전화옴
1. 이번 주에 울산 파견 간다고 함 ==> 올해 연말까지 울산에 있어 조기 축구 못 나올 거라고 통보함.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.24(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:20 ==> 중식(이신정 샤브샤브[비빕밥 무료]): (주)지아이데이타 김정률 부장이 쏨(신용진 과장)

- 삼성전기 MES 3.0 구축 Proj[★] 
- 공통작업 요청처리(409번: 김진숙[010-2466-7369] 과장)
1. 현상: 
1) 그리드가 3개인 경우 3개가 엑셀다운로드 목록으로 뜨는데
    visible = false 인 경우는 엑셀 다운로드 목록에 보이고 싶지 않습니다.
 2) 그리고 화면에 그리드가 여러개일 경우 특정 그리드만 엑셀다운로드 목록에 보이도록 하고 싶습니다.
2. 수정 위치: 화면 공통버튼에서 엑셀버튼 클릭시 
3. 처리:
 "화면 공통버튼에서 엑셀버튼 클릭시  
 1) Grid가 3개인 경우 1개의 Grid에 visible = false를 하면 Excel Download 화면(새창)에서 Grid가 2개 만 보이도록 수정 했습니다.  
 2) 기존 Excel Download 화면(새창)에서 Grid 체크 박스에 체크를 한 Grid 만 엑셀 다운로드가 되도록 되어 있습니다. 
==============================================================================================================
  
- 국민카드
1. KT 인터넷 요금 자동이체 해지
==============================================================================================================

- 서버 실행 에러(eclipse 에서)
1. 현상:
2016-03-24 09:22:06,074 [ERROR] [qtp31427481-5143] [com.semco.system.web.servlet.mvc.handler.xplatform
.XplatformExceptionResolver.resolveException(XplatformExceptionResolver.java:139)] com.semco.system.exception
.xplatform.XplatformException: 작업 실패!!!
지금 사용할 수 없습니다.
2. 원인: jetty-env.xml 파일 내용 변경됨
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.25(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 금요일은 18시 30분 통근 버스 없음(18시 버스 탈 것)

- 삼성전기 MES 3.0 구축 Proj[★] 
- 공통작업 요청처리(410번: 김진숙[010-2466-7369] 과장)
1. 현상: 그리고 화면에 그리드가 여러개일 경우 특정 그리드만 엑셀다운로드 목록에 보이도록 하고 싶습니다.
2. 수정 위치: 화면 공통버튼에서 엑셀버튼 클릭시 
3. 처리:
Pattern01.xfdl(샘플)에서 해당 Grid에서 User Properites 사용하여 grd_main.excelDownYn = "N"를 하시면 grd_main
Grid는 Excel Download 화면(새창)에서 보이지 않도록 수정했습니다.
==============================================================================================================

- /InheritStyle_functiontitlebar.xfdl 파일에서
grd_main  --> Menu Structure_0
grd_tab00Tabp1Std00  --> Menu Structure2_1
grd_std00  --> testtest_5
--------------------------------------------------------------------------------------------

- Grid에서 User Properites 사용(Grid excel Download 여부 조절할 수 있게 수정)
1. Add a New User Properites: excelDownYn 기입 --> 완료
 
/*------------------------------------------------------------------
* 기   능: Excel Export 처리(ExcelExport 클릭 이벤트 발생: ExcelExport 새창 띄우기)
* 인   수: N/A
* Return : N/A
------------------------------------------------------------------*/
function Button00_onclick(obj:Button,  e:ClickEventInfo)
{ 
	//grd_main.excelDownYn = "N";   // grd_main Grid를 excel Download 안되게 처리(Y: excel DownYn OK, N: excel DownYn NO)
	//grd_std00.excelDownYn = "N";   // grd_std00 Grid를 excel Download 안되게 처리(Y: excel DownYn OK, N: excel DownYn NO) 
	//trace("[/Pattern01.xfdl] [Button00_onclick()] ==> [grd_maini.excelDownYn_02]"+ grd_main.excelDownYn );

	super.div_function.div_functionIcons_btn_excel_onclick(obj,e);
} 
==============================================================================================================

- 마우스 클릭이 잘 안되게 하는 바이러스 발생(마우스를 클릭하면 다중 선택이 됨) @@@
0. 키보드를 교체해 볼 것: 원본 출처 ==> http://blog.naver.com/lozarahim/90144136743 
1. rundll32.exe 파일(C:\Windows\System32) 삭제
 1) trustedInstaller에서 사용 권한 부여해서 삭제
2, dllhost.exe  파일(C:\Windows\System32) 삭제
 1) trustedInstaller에서 사용 권한 부여해서 삭제  
3. rundll32 설정 해제
 1) 시작-실행-msconfig를 해서 시스템 구성 유틸리티-시작프로그램을 봅시다 rundll32 어쩌고가 여러개 있으면
 몽땅 체크해제해서 사용안함으로 바꿉니다. 그런뒤 컴퓨터를 재부팅합니다.
4. rundll3  삭제
 1) 시작-검색-모든 파일 및 폴더에서 rundll32을 검색 > 삭제  
---------------------------------------------------------------------------------------------------------

- trustedInstaller에서 사용 권한 부여: admin(관리자) 계정보다 상위 권한을 가진 계정 
http://blog.naver.com/r2d/220258051386
==============================================================================================================

- X-PUSH 분석
http://www.tobesoft.co.kr/product/XPush.do
1. X-PUSH시스템은 메시지를 능동적으로 푸시해 주는 X-PUSH 서버와 메시지를 전송받는 클라이언트(넥사크로 클라
이언트) 그리고 클라이언트에 전달할 메시지를 제공하는 메시지 공급자(Message Provider)로 구성됩니다

- XPUSH 서비스 등록
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> type set_xpush.bat
C:\xpush-2.5.4\bin> install_as_service.bat

C:\xpush-2.5.4\bin> startup.bat ==> 서버 실행 @@@
==============================================================================================================

- XPUSH 서비스 등록 에러 @@@
1. 현상: Failed to install X-PUSH
C:\xpush-2.5.4\bin> install_as_service.bat
The X-PUSH service is already installedan error in attempting to install the ser
vice
Failed to install X-PUSH as a system service
계속하려면 아무 키나 누르십시오 . . .

2. 조치: 한 번 uninstall_from_service 한 후 실행
C:\xpush-2.5.4\bin> uninstall_from_service.bat
C:\xpush-2.5.4\bin> install_as_service.bat
==============================================================================================================
 
- KT 인터넷 해지(3:40, 회사)
1. 100번 전화해서 해지할 것 ==> 전화해서 1시간 기다려도 전화 안 받음
  ==> SK브로드밴드 가입해준 아줌마가 대신 해지 신청 해준다고 함
http://blog.naver.com/hyunma00/220596421485
==============================================================================================================

- 계좌이동서비스 확인(12시)]
0. 자동이체 계좌 다시 한번 확인할 것
1. 계좌이동서비스  ==> 금융결제원(https://www.payinfo.or.kr/guide/useguide3.do)에서 9시부터 17시까지 가능
2. 신한은행 스마트 OTP 타행 계좌 처리 확인 ==> 보류
-------------------------------------------------------------------------------------------------------

- 자동납부 변경신청 접수내역(변경 완료 건) 
금융회사계좌번호청구기관명변경계좌번호
SC은행130205***41PCA생명보험(주)신한은행 1104377***30
SC은행130205***41한화생명보험신한은행 1104377***30
SC은행130205***41KB국민카드신한은행 1104377***30
SC은행130205***41SK텔레콤신한은행 1104377***30 
==============================================================================================================
 
- 자동납부 계좌변경 수동 처리(인터넷으로 처리)
1. 메트라이프 종신보험(SC은행 -> 신한은행[110-437-783130]) ==>http://www.metlife.co.kr
2. 현대해상 어린이보험(SC은행 -> 신한은행[110-437-783130]) ==> https://www.hi.co.kr
==============================================================================================================

- 오디오 CD 변경(FreeRIP) 
1. .cda 파일을 .avi 파일로 변경처리 함 
http://www.powerove.com/220
http://wiinemo.tistory.com/1105
---------------------------------------------------------------------------------------------------------

- 오디오 파일 변환
https://support.google.com/youtube/answer/1696878?topic=2888648&hl=ko
==============================================================================================================

- 쌀 구입 
1. 시만경 미곡종합 처리장 2015 지리산 메뚜기쌀 백미, 쌀20kg, 가격: 34,900원 ==> 옥션
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=751010570&GoodsSale=Y&jaehuid=200002673
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.26(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 

▦ 조기축구
06:00 기상  
06:30 대림3동 운동장
06:40 숏게임
08:00 종료
08:10 영을 조기회에 시함(2게임 함)
10:00 종료
10:20 귀가
10:30 낮잠
12:00 기상
12:10 중식
16:00 기상
16:20 삼성 디지털프라자 구로점(무선 충전기 점검) ==> 핸드폰은 2~3일에 한번씩 껐다 켰다 하라고 함.
17:00 귀가
17:30 쇼핑(이마트 구로점)  ==> SK 인터넷 사은품(이마트 상품권 교환: 15만원)
19:20 석식(정식: 이마트 구로점)
20:20 귀가
01:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.03.27(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 제 4회 새마을 금고배 축구 대회

▦ 조기축구
02:00 기상
02:10 눈높이 오디오 파일을 Vedio 파일 변경(02시, 집)
07:00 집출발
07:10 대림 운동장
07:20 대림3동 조기회 가입비 납부(15만원, 황재식 총무)
08:00 제 4회 새마을 금고배 축구 대회 첫 게임(대호 1:0 대림1 동)
08:40 시합(대림3동 2:1 대림성당) ==> 쌀쌀함(샌달 신어서 발이 씨림)
09:20 집에 가서 수종이 데려 옴(운동장에서 공놀이 함)
11:30 시합((대림3동 0:0 영신) ==> 조 2위로 준결승 진출
12:20 수종 집에 데려다 줌
12:30 시합((대림3동 0:1 대호) ==> 4강 탈락(공동 3위)
	--> 4번, 9번, 44번 선수 괜찮음, 라이트 윙을 이용한 플레이에 치중, 수비 조직력이 약함, 패스 정확도 미흡
14:00 중식(부대찌게: 다솜 식당): 회에서 쏨
15:00 시합((도신 0:1 대호) ==> 대호 우승
15:30 귀가
19:30 중식
20:00 취침
==============================================================================================================

- 눈높이 오디오 파일을 Vedio 파일 변경(02시, 집)
1. 윈도우 무비 메이커 사용
2. 유투브에 올리기  ==> https://www.youtube.com/my_videos?o=U
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.28(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 

- 삼성전기 MES 3.0 구축 Proj[★] 
- X-PUSH 분석
http://www.tobesoft.co.kr/product/XPush.do

- XPUSH 서비스 등록 ==> 박성훈 수석(010-9118-5805)
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> type set_xpush.bat
C:\xpush-2.5.4\bin> uninstall_from_service.bat
C:\xpush-2.5.4\bin> install_as_service.bat

C:\xpush-2.5.4\bin> startup.bat ==> 서버 실행 @@@ 

C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> run_provider_demo_Push.bat localhost 10082 id pw==> 일반 메시지 @@@
C:\xpush-2.5.4\bin> run_provider_demo_Reli.bat localhost 10082 id pw==> 신뢰성 메시지 @@@
C:\xpush-2.5.4\bin> run_provider_demo_Mont.bat localhost 10082 id pw==> 모바일 노티 메시지 @@@
--------------------------------------------------------------------------------------------------------

- XPUSH 서비스 관련 환경 설정
JAVA_HOME --> C:\Program Files\Java\jdk1.6.0_45
XPUSH_HOME --> C:\xpush-2.5.4
==============================================================================================================

- NET HELPMSG 3534 에러 발생
1. 경로를 찾지 못한 경우에도 발생할 수 있다 
2. 조치: xpush_config - reliabilityProtocol,noDB,noNode.xml 파일을 xpush_config.xml 파일로 변경
==============================================================================================================

- PUSH 서버(H2O)
http://h2osystech.com/products/reportshop.html 
==============================================================================================================

- 아이패드 업그레이드(22시, 집)
1. IOS 6 ==> IOS 8 
==============================================================================================================

- PCA 보험료 자동이체 에러
1. PCA 스타트 어린이 변액유니버셜보험 II(진수종) ==> PCA 콜센터에 전화해서
SC은행에서 신한은행으로 자동이체 변경 요청
2. 주소 변경 처리 ==> 타 은행도 일괄 변경(금융주소한번에서비스신청 화면에서)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.29(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 삼성전기 황규철 과장 투입(10시, (주)지아이데이타 프리랜서), 중식(이신정 샤브샤브: 유수석이 쏨)

- 삼성전기 MES 3.0 구축 Proj[★] 
- X-PUSH 분석
http://www.tobesoft.co.kr/product/XPush.do

- XPUSH 서비스 등록 ==> 박성훈 수석(010-9118-5805)
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> startup.bat ==> 서버 실행 @@@ 
C:\Users\Administrator> cd C:\xpush-2.5.4\bin
C:\xpush-2.5.4\bin> run_provider_demo_Push.bat localhost 10082 id pw==> 01. 일반 메시지_Push(51P, 110P) @@@
C:\xpush-2.5.4\bin> run_provider_demo_Reli.bat localhost 10082 id pw==> 02. 신뢰성 메시지_Reli(53P, 112P) @@@
C:\xpush-2.5.4\bin> run_provider_demo_Mont.bat localhost 10082 id pw==> 모바일 노티 메시지 @@@  
==============================================================================================================

- java Application 설정(eclipse에서)  @@@@@@@ 
1. /DEV-LOCAL_RPT/src/main/java/com/semco/xpush/message_provider/DemoProvider_Push.java
2. DemoProvider_Push.java(마우스 우 클릭) > Run As > java Application(클릭) 

- java Application 환경 셋팅
1. Name: 51. 일반 메시지_Push
2. Project: DEV-LOCAL_RPT
3. Maiin Class: com.semco.xpush.message_provider.DemoProvider_Push
4. Arguments: Arguments> VM Arguments: 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.30(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 

- 삼성전기 MES 3.0 구축 Proj[★]  
- /MenuMgmtView.xfdl: 메뉴관리 - 뷰 XPUSH 적용
==> 저장시 열려 있는 사용자에게 메세지 전송(DIV 생성) 
==============================================================================================================

- XPUSH 서비스
1. Message Provider 서버: Message Provider는 X-PUSH 서버의 MessageProvider 포트(기본값 10082)에 소켓 연결을 
생성하고 인증요청 패킷을 전달하고, 인증 결과 패킷을 받습니다. 필요에 따라 메시지를 전송하고 연결을 종료할 때 종료를
통지합니다.
 1) Message Provider에는 3가지 종류(일반 메시지, 신뢰성 메시지, 모바일 노티 메시지)가 있습니다.

2. 메시지 구성
 1) Topic Type 은 메시지가 어떤 종류인지를 나타내는 일종의 그룹입니다. 다양한 메시지 중에 현재 주가, 운영정보, 뉴
스 등으로 각 메시지의 타입을 분류할 수 있습니다.
 2) Topic Id 는 하나의 Topic Type 안에서 메시지를 구분하기 위한 것입니다. 같은 현재 주가 데이터라 하더라도 각 종
목의 종목코드에 의해 메시지가 구분될 수 있습니다.
 3) Field Values는 실제 전달하고자 하는 내용입니다. 바인딩 될 레코드셋의 필드 수만큼의 값들로 구성되며, 구분자 0x
11에 의하여 구분되어 전달됩니다.
==============================================================================================================

- 내장 메시지 공급자(Embedded MessageProvider, 116P)
1. X-PUSH 서버에 내장되어 메시지를 직접 공급
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.03.31(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> MSI 노트북 철수(18시, 삼성전기, 고장 -> 폐기(판매)할 것)

- 삼성전기 MES 3.0 구축 Proj[★]  
- /MenuMgmtView.xfdl: 메뉴관리 - 뷰 ==> XPUSH 적용  ==> 완료 @@@
==> 저장시 열려 있는 사용자에게 메세지 전송(DIV 생성) 
1. 04. XPUSH 적용(MES) 문서 작성
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■