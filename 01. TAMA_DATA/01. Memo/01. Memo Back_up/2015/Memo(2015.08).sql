 

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2015.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2015.08.01(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 주말(▦ 조기축구)
05:00 기상
05:20 버스(6411번, 대림역 -> 학동역)
06:20 신구초등학교 
06:30 숏게임(피곤해서 많이 못 뜀)
08:10 종료
08:30 중식(전주콩나물국밥(압구정1호점), 국밥): 병규형이 쏨
09:40 커피샵: 영석이형, 태훈이형, 병룡, 성주[성주 처가 쏨] ==> 주인이 다음주에 수제비 해준다고 함
10:40 종료
10:50 642번 버스  
12:00 귀가
13:30 낮잠
17:00 기상
17:30 다사랑 어린이 공원(대동초교 맞은편)
20:0 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.02(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 오전에 비 옴
 
▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 학동역)
07:20 신구초등학교 
07:30 숏게임(비 많이 옴)
08:10 종료
08:30 게임
10:05 종료
10:30 중식(전주콩나물국밥(압구정1호점), 국밥): 병덕(부동산) 형이 쏨
11:40 종료
12:20 수인형 사무실(영희형이 프린터 설치하러 감)
13:10 북경반점(창원이형, 영민이형, 유감사님, 병규형, 영희형, 성주)
13:30 장모님 금산으로 일하러 감(장인 어른은 병원 치료 후 베트남 간다고 함)
16:20 종료
17:20 귀가 
18:30 쇼핑(이마트): 피자, 아이스크림, 수종 옷
19:30 귀가
19:50 석식(피자)
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.03(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 퇴근 후 집안 청소 안 되어 있어서 화냄

- 한섬 ERP 재구축 Prj[★] 
- 소스 표준화
1. 메세지코드관리(/COM_MESSAGE.xfdl) 수정
==============================================================================================================

- combo 처리 방법
1. 공통코드관리(/COM_CD_MGMT.xfdl)에서 선언
 1) Information: cbo_PdtTpcd
 2) Misc.
  가) _code_group: PDT_TPCD
  나) _keystring: CODE
2. gds_commonCode.xml 파일에서
<ColumnInfo>
<Column id="CODE_GROUP" type="STRING" size="256"/>
<Column id="GROUP_NAME" type="STRING" size="256"/>
<Column id="CODE" type="STRING" size="256"/>
<Column id="NAME" type="STRING" size="256"/>
<Column id="DTL_CD_ENG_NM" type="STRING" size="256"/>
<Column id="SORT_NO" type="STRING" size="256"/>
<Column id="INIT_VAL_YN" type="STRING" size="256"/>
<Column id="HGRK_COMN_CD" type="STRING" size="256"/>
<Column id="HGRK_COMN_DTL_CD" type="STRING" size="256"/>
</ColumnInfo> 
<Rows>
<Row> 
<Col id="CODE_GROUP">PDT_TPCD</Col>
<Col id="GROUP_NAME">상품유형코드</Col>
<Col id="CODE">A</Col>
<Col id="NAME">장기공제</Col>
<Col id="DTL_CD_ENG_NM"/>
<Col id="SORT_NO">0</Col>
<Col id="INIT_VAL_YN">0</Col>
<Col id="HGRK_COMN_CD"/>
<Col id="HGRK_COMN_DTL_CD"/>
</Row>
<Row>
<Col id="CODE_GROUP">PDT_TPCD</Col>
<Col id="GROUP_NAME">상품유형코드</Col>
<Col id="CODE">B</Col>
<Col id="NAME">일반공제</Col>
<Col id="DTL_CD_ENG_NM"/>
<Col id="SORT_NO">0</Col>
<Col id="INIT_VAL_YN">0</Col>
<Col id="HGRK_COMN_CD"/>
<Col id="HGRK_COMN_DTL_CD"/>
</Row>
</Rows>
=========================================================================================================

- 고객정보동의서관리(/CS10M920300)
cbo_CnsstKdcd(*동의서종류) ==> CUS_CNSST_KDCD ==> CODE_GROUP 사용
------------------------------------------------------------------------------------------------------

- 고객별 계좌현황 조회(CS10M959000)
cbo_Ds(*고객유형) ==>  innerdataset 사용(codecolumn, datacolumn)  --> cbo_Ds_onitemchanged 
<nhCombo id="cbo_Ds" taborder="2" autoselect="true" value="1" text="개인" codecolumn="codecolumn" 
datacolumn="datacolumn" index="0" 
position="absolute 83 5 157 24" _bindobj="" _showcode="" _nextbindobj="true" _code_group="" _select_type="" 
_language_code="" anchor="default" class="input_point">
<Dataset id="innerdataset">
  <ColumnInfo>
    <Column id="codecolumn" size="256"/>
    <Column id="datacolumn" size="256"/>
  </ColumnInfo>
  <Rows>
    <Row>
      <Col id="codecolumn">1</Col>
      <Col id="datacolumn">개인</Col>
    </Row>
    <Row>
      <Col id="codecolumn">2</Col>
      <Col id="datacolumn">사업자</Col>
    </Row>
  </Rows>
</Dataset>
</nhCombo>
==============================================================================================================

- expr 적용 고민
==> expr:fn_getRowNo_2(ds_com, currow, 1)

/*****************************************************************************************
* 함  수  명 : fn_getRowNo()
* 설      명 : Grid에 row NO 추가하는 함수
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2015.07.01      
*****************************************************************************************/  
function fn_getRowNo_2(ds_com, iRow, strNo)
{  
	var iRowNo = 0; 

	if(strNo == "1")
	{
	iRowNo = iRow + 1;  
	ds_com.setColumn(iRow, "rowNo", iRowNo); 
	}

	return iRowNo;
}
==============================================================================================================
 
- 병원 물리치료하는 방법
1. 1층 로비에서 수납(5,900원)
2. 7층 물리치료실에 가서 치료 받음
==============================================================================================================
 
- 장인 병원 예약 
1. 일시: 2015.08.07(금요일) 10시
2. 2층에 정형외과에 가서 치료 받음(명지성모병원 정형외과)
==============================================================================================================

- 에어컨 설치관련 방송자료
https://www.youtube.com/watch?v=37vBTPNGGcM
-----------------------------------------------------------------------------------------------------------------------------

- 에어컨 이전설치 가격
1. 기본 설치비: 40,000원
2. 배관(m당): 13,000원 * 3m = 39,000원[유동적]
3. 가스 충전: 40,000원
4. 실외기 거치대(앵글): 60,000원
==> 총: 20만원 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.08.04(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★] 
- 메세지코드관리(/COM_MESSAGE.xfdl) 수정
 1) 조회, 저장 check 
  가. 유효성 체크: checkValidationMuti  ==> lib_cb.xjs 파일에서
 //유효성 체크 업무 공통 함수 호출 
if(checkValidationMuti([div_inqCondBox.cmb_msgSect]    // 01. 컴포넌트ID
, [false]                 //02. max 체크 여부
, ["BCB00016"]   //03. 메시지 ID(필수항목) ==> ["BCB00016"]: @ 항목은 필수 입력항목 입니다
, [[ "메시지구분" ] ]          //04. 메시지 조립값     
, [""] //05. max size
) == false)
{
return false;
}
else if(checkValidationMuti([div_inqCondBox.edt_msgCd]// 01. 컴포넌트ID
, [false]                 // 02. max 체크 여부
, ["BCB00103"]  // 03. 메시지 ID(필수항목) ==> ["BCB00103"]: @ 항목은 @글자 이상 입력하셔야 합니다.
, [[ "메시지코드" ] ]         // 04. 메시지 조립값     
, [8]// 05. max size
) == false)
{
return false;
} 
  나. 그리드 유효성 체크: checkDataSetValidationMuti ==> lib_cb.xjs 파일에서
 for ( var i = 0; i < oDataset.rowcount; i++ ) 
{
// 그리드 유효성 체크 업무 공통 함수 호출
 if(checkDataSetValidationMuti(oGrd  // 01. 그리드
 , oDataset// 02. 데이터 셋
 , i// 03. row
 , [3, 4]// 04. cell index
 , ["", ""]// 05. min size
 , ["BCB00016", "BCB00016"] // 06 메시지ID  ==> ["BCB00016"]: @ 항목은 필수 입력항목 입니다.
 , [["메세지구분"], ["메세지ID"]]// 07. 항목명
 ) == false)
{
return false;
}  
}  
 2) 새창 뛰우기/(ASK_DEPT_SRCH_P.xfdl)
==============================================================================================================

- 무선 마우스 구입(2015.08.05(수) 구입)
1. [B259804871] 로지텍 B175[일반] 로지텍 정품 무선마우스, 크기(W*H*D): 9.5 * 5.5 * 3.7 cm, 가격: 11,460원
 1) 건전지 1개로 1년을 쓰는 무선 마우스(두라셀 건전지 내장)
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B259804871&frm3=V2
==============================================================================================================

- 마우스 구입( 2015.08.08(토) 구입)
1, QNIX 마우스 QM-200 USB 부드러운휠 광센서 큐닉스, 크기(W*H*D):  크기(W*H*D): 9.5 * 5.5 * 3cm, 가격: 4,800원(2개)
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=680113207&GoodsSale=Y&jaehuid=200002673#opinion_link
==============================================================================================================

- 마우스 2012년도에 구입한 걸로 추정
1. LG전자 XM-120 미니 유선마우스, 크기(W*H*D): 8.5 * 3.5 * 5.3 cm, 가격: 8,200원
http://prod.danawa.com/info/?pcode=544216&cate1=861&cate2=902&cate3=921&cate4=0
==============================================================================================================

- 핸드폰 구입 상담(SKT에서 전화옴)
1. 지금 사용하고 있는 갤럭시 노트2를 해지할 경우 위약금 10만원 정도 나옴
2. SKT 기기변경을하면 위약금 안내도 됨(신규로 2년 약정 발생)
3. 2년 동안 납부해야 할 총 요금(월 단위)
 1) LG G3 Cat.6 구입: 데이타 3G, T끼리 무료(타사 100분) 요금 --> 총 5만 6천 원
 2) LG G4 구입: 데이타 3G, T끼리 무료(타사 100분) 요금 --> 총 7만 1천 원
 3) 삼성 갤럭시 노트4 구입: 데이타 3G, T끼리 무료(타사 100분) 요금 --> 총 6만 5천 원
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2015.08.05(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★] 
- 메세지코드관리(/COM_MESSAGE.xfdl) 수정
1. 서버에 소스 올리기(WAS 변경됨)
2. 로그인(/LOGIN.xfdl) 개발
==============================================================================================================

- eclipse 실행 오류
1. 현상
"Publising to Tomcat v7.0 Server at localhost..." has encountered a problem.
Could not delete C:/HS_ERP/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps
/handsome/XIContent/sample. May be locked by another process.
2. 조치
 1) 이클립스에서 Tomcat SErver를 우클릭 후 Clean을 시킨다.  
 2) 이클립스 메뉴바에 Prject -> Clean을 실행시킨다 
 3) Tomcat Server의 왼쪽을 누른 후 자신이 원하는 Prject를 우클릭 후 Clean module work directory를 클릭한다  
==> 한번에 안되는 경우가 있으므로 반복되게 하고 이클립스 재가동도 하고 하다보면 된다.(난 톰캣의 웹어플리
케이션을 뺏다가 다시 붙여넣고 1,2,3을 하니 된다)  
==============================================================================================================

- SVN에서 제외(synchronizing 제외)
1. Team --> add to svn: ignore
==============================================================================================================

- 조회(WAS단에서 처리 여부 확인, URL)
1. 공통코드 관리(/COM_CD_MGMT.xfdl) 조회 ==> http://127.0.0.1:8080/cm/retrieveListComCdMstr.do 
2. 메세지 관리(/COM_MESSAGE.xfdl) 조회 ==> http://127.0.0.1:8080/cm/cmm/retrieveListMessage.do
3. 로그인(/LOGIN.xfdl) 조회 ==> http://127.0.0.1:8080/cm/login/login.do
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2015.08.06(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★] 
- 통합고객검색 화면(/nhCusRlno.xfdl) 수정
- 즐겨찾기 추가, 삭제 개발
1. DB는 테이블 생성이 안되어서 개발 안됨
==============================================================================================================

- user_composite 정리
1. nhCustRlno  --> cs_cusbscinfo::CS10P950200.xfdl(고객검색화면)    ==> 사용 안 해도 됨(삭제)
     --> cs_cusbscinfo::CS10P950300.xfdl(통합고객검색 화면) ==> 사용(/CUST_SRCH_P.xfdl)
2. nhPrcsRlno  --> sc_prcsamn::SC10P807501.xfdll(가망고객명검색) ==> 사용 안 해도 됨(삭제)
==============================================================================================================

- isNull 함수 변경
1. isNull(pv_winKey) ==>  if(gfn_isNull(pv_winKey)
==============================================================================================================

- 갤럭시 노트4 필기
1. 갤럭시 노트4로 깔끔하게 강의 노트필기하기  ==> http://reinia.net/1256
2. 만년 수석이 밝히는 필기 비법! 갤럭시 노트4 ‘포토 노트’  ==> http://samsungtomorrow.com/CRLR8
3. 갤럭시노트4, 더욱 강력해진 S펜의 성능 - 하늘다래, 세상을 ==> http://seeit.kr/1761
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.07(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★] 
- 로그인(/LOGIN.xfdl) 수정 
- 화면분리(btn_popUp)
var sFormURL = "Frame::WorkFrame_P.xfdl";
var oRtn = gfn_showModal("CS10P950200", sFormURL, '', 9000, 9000);   
trace("[/commonForm.xfdl] [fn_popUp()] ==> [oRtn]"+ oRtn ); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.08(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 주말(▦ 조기축구)
05:00 기상
05:20 버스(6411번, 대림역 -> 학동역) ==> 버스에서 앉는 자리에 앉은 놈 때문에 시비 붙음
06:20 신구초등학교 
06:30 숏게임(피곤해서 많이 못 뜀)
08:00 종료
08:30 조식(닭곰탕, 화정식당): 조기 축구(수인이형이 쏨) ==> 성주가 영화 엑스트라 알바 가서 커피샵 못 감
10:00 종료
10:10 642번 버스  
11:30 귀가
13:30 낮잠
14:00 기상
19:00 이마트 쇼핑(수종): 피자, 아이스크림, 수종 장난감(차)
21:00 귀가
21:10 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.09(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==>  
 
▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 학동역)
07:20 신구초등학교
07:30 숏게임(구름 많았지만 더움)
08:10 종료
08:30 게임
10:10 종료
10:2 중식(부대찌게, 류명국해장국): 2만원 냄(다음부터 술 먹지 말 것)
12:20 종료
12:30 6411번 버스(논현역)
13:30 귀가  
13:50 낮잠
15:00 기상
19:00 동아시아컵 TV 시청(한국 0: 0 북한) ==> 한국 1승 2무로 우승
20:10 석식
00:00 취침
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.10(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 로지텍 B175 마우스(건전지 1개로 1년을 쓰는 무선 마우스) 처음 사용, 잠금키 수령(LG CNS)

- 한섬 ERP 재구축 Prj[★] 
- 메뉴(/LEFT_divLeftMenu.xfdl) 수정 
this.Div00.TextArea00.anchor = "left top right"
anchor: 부모 컴포넌트의 크기에 따라서 Confirm의 크기를 자동으로 조절할 수 있게 설정하는 속성 
==============================================================================================================

- 화면분리(btn_popUp)
var sFormURL = "Frame::WorkFrame_P.xfdl";
var oRtn = gfn_showModal("CS10P950200", sFormURL, '', 9000, 9000);   
trace("[/commonForm.xfdl] [fn_popUp()] ==> [oRtn]"+ oRtn );
==============================================================================================================

- 수정 주석 작업
//fn_loadInitData 삭제 처리(사유: 해당 내용을 gds에 추가 시킴)[주석 처리일: 2015.08.10, by 진태만]
==============================================================================================================

- 로그  에러 분석
1. 현상
[/HandsomeERP.xadl] ==> [######################### [01. 한섬 ERP 관리시스템 Main Frame Start] ####]  
uxs (7088): Error: }'가 필요합니다. (행: 179)
uxs (7088): [/HandsomeERP.xfdl] [application_onload()] ==> [TEST_01]
uxs (7088): [/Top.xfdl] [fn_onload()] ==> [TEST_01] [gv_userNm]
2. 원인
 1) LEFT_divLeftMenu.xfdl 파일에서 151번째 줄에서 } 가 없었음
function btn_left_up_onclick(obj:Button,  e:ClickEventInfo)
{ 
3. 조치
} 붙임
4. 향후 대응
 1) HandsomeERP.xad 시작 줄에서 나는 에러는 Frame 설정 문제임
==============================================================================================================

- Grid 필수값 처리(/lib_validation.xjs)
1. gfn_alert("BRI01723",[(iRow+1),"("+text+")"]); //@ 행의 @ 은(는) 필수 입력 입니다.
grd_ShwEditor(component,ds,iCellIdx,iRow);
return false;
==============================================================================================================

- 표준 개발 교육(11시)
1. 김기철 부장, 표준 개발자 2명
==============================================================================================================

- 홍상환 부부 만남(종로: 20시 ~ 00:50)
1. 현용, 호수, 태만
2. 1차 월매네(내가 쏨)
2. 해물탕집
==============================================================================================================

- 작업관리자 crome.exe
크롬만 달랑 띄우면 프로세스 3개가 뜨며, shift + esc(크롬 작업관리자)로 확인해보면... 
브라우저, 탭(새 탭), GPU 프로세스 ... 요렇게 3개가 실행되어 있습니다.  
크롬의 경우엔 확장 프로그램 외에도 플러그인(예를 들면 플래시 등) 같은 것들도 별도의 프로세스로 표시되기
때문에 동권님 말씀대로 shift + esc로 확인해보세요. 숫자가 좀 많더라도 크롬 작업관리자의 프로세스 갯수와 
윈도우 작업관리자의 chrome.exe 갯수가 같으면 일단 정상입니다. 
==============================================================================================================

- 쌀 구입[2015.08.10(월)]
1. [다시농협]생명의땅 나주의향기를 가득담은 나주쌀 20kg, 가격: 38,540원
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=643996630
==============================================================================================================

- 서울시 08월 주민세(개인균등할) 정기분 납부[2015.08.10(월)]
납세번호: 5607102-10104001-2015081-0009772, 납세금액: 6,000원 ==> 5,500원[500원 마일리지 할인]
납부방법: SC은행
http://etax.seoul.go.kr
==============================================================================================================

- 삼성휴대폰서비스센터 로그인 정보[2015.08.10(월)]
http://www.samsungsvc.co.kr/member/memberLogin.do  ==>  tamario@naver.com / hp**1*!@(hp수*1*!*)
https://account.samsung.com/account/signIn.do
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.11(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. 공통버튼 작업
 1) btn_init: 초기화 ==> 완료 @@
 2) btn_capture: 화면캡쳐
 3) btn_print: 화면프린트
 4) btn_help: 도움말

2. Grid 공통 처리 버튼 작업
 1) btn_excellSample_onclick: 엑셀Template다운로드
 2) btn_excellDownload_onclick: 엑셀 다운로드  ==> 완료 @@@
 3) btn_multiRange: 멀티정렬
 4) btn_multiFilter: 멀티필터
 5) btn_columSelect: 칼럼선택
 6) btn_frameFix: 틀고정
==============================================================================================================

- 확인 사항
1. 동기, 비동기화
2. validation 체크(/lib_validation.xjs)
==============================================================================================================
 
- xtheme 경로
1. HS_ERP.xtheme
 C:\HS_ERP\workspace\handsome\src\main\webapp\XIContent\HS_ERP.xtheme
2. default xtheme(경로 변경 안됨)
C:\Users\TAMA\AppData\LocalLow\TOBESOFT\XPLATFORM\9.2.1\Cache\Theme\default.xtheme
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.12(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. 공통버튼 작업
 1) btn_init: 초기화 ==> 완료 @@@
 2) btn_capture: 화면캡쳐 ==> 완료 @@@
 3) btn_print: 화면프린트 ==> 완료 @@@
 4) btn_help: 도움말

2. Grid 공통 처리 버튼 작업
 1) btn_excellSample: 엑셀Template다운로드
application_onbeforeexit 
adv_cf_top.form.div_main_top.btn_logout(); 
gv_domain_url == "127.0.0.1:8088
 2) btn_CExcel: 엑셀 다운로드  ==> 완료 @@@
 3) btn_multiRange: 멀티정렬(btn_Sort)   ==> 완료 @@@
 4) btn_multiFilter: 멀티필터(btn_Filter)  ==> 완료 @@@
 5) btn_columSelect: 칼럼선택
 6) btn_frameFix: 틀고정
 ==> Grid00.mergeContentsCell("body", 0, 2, 5, 3, 2 , false);  //그리드의 현재 Format 콘텐츠에 주어진 셀들을 
 합쳐서 하나의 셀로 만드는 메소드
 --> Summary를 재 설정하면 
==============================================================================================================

- 한섬 ERP 프린터(print)
1. IP주소: 172.168.110.44
2. DocuCentre-III 3007 (FUJI XEROX) ==> http://www.fxap.com.sg/index.jsp
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.13(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★] 
2. Grid 공통 버튼 작업
 1) btn_excellSample: 엑셀Template다운로드
application_onbeforeexit 
adv_cf_top.form.div_main_top.btn_logout(); 
gv_domain_url == "127.0.0.1:8088
 2) btn_CExcel: 엑셀 다운로드  ==> 완료 @@@
 3) btn_Sort: 멀티정렬(btn_Sort)   ==> 완료 @@@
 4) btn_Filter: 멀티필터(btn_Filter)  ==> 완료 @@@
 5) btn_columSelect: 칼럼선택 ==> 완료 @@@
 6) btn_frameFix: 틀고정
 ==> Grid00.mergeContentsCell("body", 0, 2, 5, 3, 2 , false);  //그리드의 현재 Format 콘텐츠에 주어진 셀들을 
 합쳐서 하나의 셀로 만드는 메소드
 --> Summary를 재 설정하면 
==============================================================================================================

- 조회(WAS단에서 처리 여부 확인, URL)
1. 엑셀Template다운로드 조회 ==> http://localhost:8080/download/TO_DO_LIST_Template.xlsx
 1) 엑셀Template다운로드 해야 할 파일명: TO_DO_LIST_Template.xlsx
---------------------------------------------------------------------------------------------------------------------------

- 조회(WAS단에서 처리 여부 확인, URL)
1. 공통코드 관리(/COM_CD_MGMT.xfdl) 조회 ==> http://127.0.0.1:8080/cm/retrieveListComCdMstr.do 
2. 메세지 관리(/COM_MESSAGE.xfdl) 조회 ==> http://127.0.0.1:8080/cm/cmm/retrieveListMessage.do
3. 로그인(/LOGIN.xfdl) 조회 ==> http://127.0.0.1:8080/cm/login/login.do
==============================================================================================================

- 윈도우10에서 배포
1. 배포 과정에서 ActiveX를 업그레이드 받을 수 있는지 문의 
==============================================================================================================

- 한섬ERP 회식(19시)
19:00 퇴근
19:10 옛날 농장(고기집) ==> 회식비 140만원 나왔다고 함(등심 많이 먹음)
22:00 종료
22:10 카스타운(맥주)
01:00 종료
01:20 택시탐
02:00 귀가 
02:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.14(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 임시 공휴일
08:00 기상 ==> 술 많이 먹어서 피로 덜 풀림
09:30 수종 어린이집 데려다 줌
12:20 중식 ==> 한섬ERP 프레임 잡기
16:30 수종 어린이집에서 데리고 옴
20:10 석식
20:50 쇼핑(이마트 구로점)
21:20 수종 수영복 구입 --> 튤립 남유아 긴 팔 BL(수종 수영복): 35,500원
22:10 종료 
22:30 귀가
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.15(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 대천여행
06:00 기상
06:40 집출발
06:50 대림역 -> 신도림역 -> 영등포역
07:10 영등포역 도착
07:45 영등포역 출발
10:00 대천역 도착(응아네 만남)
10:10 종민씨 차(아버지 차(폭스바겐 SUV)) 타고 다님
10:40 서천 월하성 갯벌 체험 마을 도착 ==> 물때가 밀물이 오는 시기로 입장 금지(성인 5천원, 새벽 일찍 와야 함)
        --> 루옌, 응아 돈 안 내고 들어가서 조개 몇 마리 잡아 옴
	--> http://place.map.daum.net/8045759, http://blog.naver.com/PostView.nhn?blogId=3512979&logNo=220442257827
11:30 종료
12:30 중식(갈비탕): 홍성한우타운 ==> 내가 쏨
14:00 로글리 통나무펜션 리조트(http://me2.do/GQomnwVo) 도착 ==> 예약 확인(퇴실 확인 선금 3만원: 돌려 받음)
주소: 충청남도 보령시 해안로 705-44(신흑동) 로글리 대천 통나무펜션리조트, 041-931-1503    
14:20 짐 풀기
14:30 휴식
17:00 수영(펜션내 수영장)
18:00 루옌, 응아, 종민씨 대천해수욕장 구경
18:20 종민씨 아들이 깨서 많이 보챔
18:40 루옌, 응아 택시타고 돌아옴
19:00 석식(숯불에 돼지고기, 조개, 가리비 구워 먹음) ==> 종민씨 잘 함
22:00 종료 
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.16(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 오전에 비 옴
 
- 대천여행2
08:00 기상
08:30 조식(종민씨가 김치찌게 끓임)
10:30 펜션 철수(보증금 3만원 받음)
11:00 대천해수욕장 ==> 수영
12:30 종료
13:00 대천항 수산시장 ==> 종민씨 조개구입(3kg 3만원)
13:10 아이스크림(만원: 내가 쏨)
14:30 종료
15:00 대천역 도착
15:30 중식(해물탕, 만두국): 부광김밥도시락(대천역)
16:36 입석(08.16 16:36 대천-> 영등포, 무궁화호(1562) 루옌, 수종)
        ==> 식당칸에 가서 1시간 반 서 있다가 바닥에 앉아서 감(루옌, 수종 바닥에 앉아서 감)
19:15 영등포역 도착 ==> 서울 비 많이 옴
20:00 귀가 
20:30 장인 어른 도림천에서 산책하다가 폭우에 고립됨 ==> 구로디지털역 5번 출구로 데리려 감
21:00 귀가
00:00 취침
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2015.08.17(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 사무실 정전(오전)

- 한섬 ERP 재구축 Prj[★] 
1. 00. XPlatform_개발_가이드(정리) 작업 
==============================================================================================================

- 웹에디터 적용 분석(나모 웹에디터)
1. Cross 에디터(http://new.namo.co.kr/site/namo/menu/4769.do)
 1) 웹용, html5 에디터 제공 ==> 구현이 어려움(javascript, 웹페이지 호출)
2. Active Square(http://new.namo.co.kr/site/namo/menu/4771.do)
 1) dll 사용
 2) 배포시 ActiveX 방식(Cap)과 exe 수동 방식 지원
==============================================================================================================

- doc 파일(MS Word) 문서 크기 조절
1. 보기 > 여러 페이지: 클릭
2. 백분율 설정
 1) 하단 백분율(E) 클자 더블 클릭 또는 보기 > 확대 / 축소 이미지 클릭 ==> 확대 / 축소 새창 뜸
 2) 확대 / 축소 새창 > 백분율(E): 99% 설정 > 확인(클릭)   
3. 보기 > 탐색창(선택), 인쇄 모양(선택)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.18(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 한섬ERP 공통 회식(19시~ 21시): PM, 서부장, DBA, AA, 곽차장

- 한섬 ERP 재구축 Prj[★] 
1. 프레임 재설정 작업 
==============================================================================================================

- titleb bar 보이기 여부
var objFrame = new ChildFrame("Login", 0, 0, 
nScreenLeft+(nScreenWidth/2)+235, nScreenTop+(nScreenHeight/2)+130);    // 로그인 폼 생성
objFrame.showtitlebar  = true; // titleb bar 보이기 여부
objFrame.titletext = "HandsomeERP";
==============================================================================================================

- 메뉴 보이기 상태(treeinitstatus)
1. 전체 메뉴 보이기 ==> expand,null
2. 최상 위 탑 메뉴 하나만 보이기 ==> collapse,all
-------------------------------------------------------------------------------------------------------

- 트리셀 속성 설정 
treeclosebuttonimage: Images::ico_treeclose.png;// 닫기 버튼 이미지를 지정하는 속성
treecollapseimage   : Images::ico_treecollapse.png;// 접힌(collapse) 상태일 때 사용할 이미지를 지정하는 속성
treeexpandimage: Images::ico_treeexpand.png;// 확장(expand) 상태일 때 사용할 이미지를 지정하는 속성
treeitemimage: Images::ico_treeitem.png;// 트리 레벨이 최하위 레벨일 때 사용할 이미지를 지정하는 속성
treelinetype: 1 dotted #a5b6b6;// 라인 타입을 지정하는 속성 
treeopenbuttonimage : Images::ico_treeopen.png;// 트리셀일 경우에서 하위 트리셀이 있을 때 트리가 
접힌(collapse) 상태에서 확장(expand)하기 위해 사용하는 열기 버튼 이미지를 지정하는 속성
--------------------------------------------------------------------------------------------------------

<Grid id="grd_leftMenu" taborder="2" binddataset="ds_leftMenu" scrollbars="autovert" useinputpanel="false" 
 selecttype="treecell" autofittype="col" treeusecheckbox="false" treeinitstatus="collapse,all"
 onmousemove="leftOpen_LeftTree_grd_treeMenu_onmousemove" oncellclick="grd_leftMenu_oncellclick" 
 selectscrollmode="select" dragscrolltype="vert" position="absolute 2 0 321 630" anchor="all" tooltiptype="hover" 
 style="treeclosebuttonimage:URL('IMG::ico_treeclose.png'); treecollapseimage:URL('IMG::ico_treecollapse.png');
treeexpandimage:URL('IMG::ico_treeexpand.png');  treeitemimage:URL('IMG::ico_treeitem.png'); 
treelinetype:1 dotted #a5b6b6ff ;border:0 solid #00afdeff ;color:#333333ff;cursor:hand;"> 
<Formats>
==============================================================================================================
 
- fs_main
vfs_main --> 
cf_top ==> Frame::TopFrame.xfdl 
cf_left   ==> Frame::Left.xfdl 
cf_workMain  ==> Main::Main.xfdl 
cf_bottom ==> Frame::BottomFrame.xfdl 
==============================================================================================================
 
- HandsomeERP.xadl 파일 프레임 설정 부분
<Layout>
<!--// 00. mainframe //-->
<MainFrame id="mainframe" title="maintitle" defaultfont="" resizable="true" showtitlebar="true" showstatusbar="false" 
position="absolute 0 0 1280 1000" style="showzoomcombo:true;border:1 solid black ;" titletext="한섬 ERP 관리시스템" 
visible="true" showcascadestatustext="false" showcascadetitletext="false" onsize="MainFrame_onsize" onclose="MainFrame_onclose">
<!--// 1. vfs_main(123.*.29)//-->
<VFrameSet id="vfs_main" separatesize="123,*,29">
  <Frames>
<!--// 11. cf_top //-->
    <ChildFrame id="cf_top" showtitlebar="false" dragmovetype="none" resizable="true" style="background:aquamarine;border:0 none #808080ff ;
bordertype:normal 0 0 ;" position="absolute 0 0 1200 123" formurl="Frame::TOP.xfdl"/>
<!--// 12. hfs_main //--> 
    <HFrameSet id="hfs_main" separatesize="55,*" showstatusbar="false">
      <Frames>
<!--// 13. cf_left //-->
<ChildFrame id="cf_left" showtitlebar="false" dragmovetype="none" style="background:blueviolet;border:0 none #808080ff ;bordertype:
normal 0 0 ;gradation:none 0,0 white 100,100 black;" position="absolute 0 0 0 0" formurl="Frame::LEFT.xfdl"/>
<FrameSet id="fs_work" position="absolute 0 0 0 0">
  <Frames>
    <ChildFrame id="cf_workMain" visible="true" openstatus="maximize" showtitlebar="false" resizable="true" style="background:yellow;" 
    formurl="Frame::MAIN.xfdl"/>
  </Frames>
</FrameSet>
      </Frames>
    </HFrameSet>
 <!--// 14. cf_bottom //-->
<ChildFrame id="cf_bottom" dragmovetype="none" showtitlebar="false" position="absolute 0 0 0 0" style="background:darkred;
border:0 none #808080ff ;bordertype:normal 0 0 ;" resizable="true" formurl="Frame::BOTTOM.xfdl"/>
  </Frames>
</VFrameSet>
</MainFrame>
</Layout>
==============================================================================================================
 
- 하단 끌어 당기기 바 안 보이기 설정
1. hfs_main 프레임에서 showstatusbar를 false로 수정
----------------------------------------------------------------------------------------------------------------------------

- 하단 끌어 당기기 바 보이기
resizable="false"  ==> 추가
<ChildFrame id="cf_workMain" visible="true" formurl="FRAME::MAIN.xfdl" openstatus="maximize" showtitlebar="false" resizable="false"/>
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.19(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 중식(신선설농탕: 박재오 팀장이 방문하여 사줌)

- 한섬 ERP 재구축 Prj[★] 
1. 왼쪽 메뉴(LEFT.xfdl) 재설정 작업 
==============================================================================================================
 
- CLIP Report 교육(14시 ~ 16시, 교육장)
1. 리포트 디자인 툴로 사용 가능
==============================================================================================================

- tag 발행기 분석  ==> 정리하여 관련자에게 메일 발송
1. 가격 택 소스 코드
 1) 도시바 B-SX5T(TEC Thermal Printer): http://blog.naver.com/jpark1026/60154992552
 ---> 한섬에서 직접 개발
 2) DLL ==> TBS_Driver.dll(델파이, 파워빌드, VB에서 사용 가능)
2. 기술 지원 담당자: (주) ACE바텍 기술부 유종빈 부장(T)02-865-3200 )
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.20(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. 전체 소스 올리기 작업 
==============================================================================================================

- XPlatform에 dll 설치 및 확인
1. 해당 dll 파일을 복사하여 XPLATFORM 설치 폴더에 붙여넣기
C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1
--> ExtCommon.dll

2. /default_typedef.xml 파일에서 아래 내용 작성
<Component id="ExtCommon" type="Bin" classname="ExtCommon" module="ExtCommon" version="1000"/>

3. 소스에서 확인
var objExt = new ExtCommon(); 
var sEncUsrId = objExt.encodeBase64(div_login.edt_userPw.value); 
-------------------------------------------------------------------------------------------------------

1. 해당 dll 파일을 복사하여 XPLATFORM 설치 폴더에 붙여넣기
C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1
--> KiccEtc.dll, KiccPosIEX.ocx, KiccV.dll

2. /default_typedef.xml 파일에서 아래 내용 작성
<!--// KiccEtc 추가(사유: KICC_POS_인증모듈 추가)[주석 처리일: 2015.08.20, by 진태만]  //-->
<Component type="Bin" id="KiccEtc" classname="KiccEtc" module="KiccEtc" version="1.0.0.1"/>
 <!--// KiccPosIEX 추가(사유: KICC_POS_인증모듈2 추가)[주석 처리일: 2015.08.20, by 진태만]  //-->
<Component type="Bin" id="KiccPosIEX" classname="KiccPosIEX" module="KiccPosIEX" version="1.0.5.0"/>
<!--// KiccV 추가(사유: KICC_POS_인증모듈3 추가)[주석 처리일: 2015.08.20, by 진태만]  //-->
<Component type="Bin" id="KiccV" classname="KiccV" module="KiccV" version="5.0.6.3"/>

3. 소스에서 확인
var KiccEtc = new KiccEtc(); 
var sEncUsrId = KiccEtc.encodeBase64(div_login.edt_userPw.value);

4. XPlatform에  재시작시 나는 나는 에러
 (1156): Error: 클래스(KiccEtc) 생성을 실패하였습니다.  
-------------------------------------------------------------------------------------------------------

- KICC_POS_인증모듈 OCX 파일 설치
1. KiccEtc.dll, KiccPosIEX.ocx, KiccV.dll 
KiccPosIEX.ocx : KICC_POS_인증모듈(WEB Http 문서에서 Application 에서 호출할 OCX 모듈)
KiccEtc.dll : KICC_POS_인증모듈2
Kicc.dll : KICC_POS_인증모듈2.dll : KICC_POS_인증모듈2
2. 개발 담당자 ==> 곽준우 부장(010-85597-3395, ywkwak@lgcns.com,  LG CNS 하이테크사업본부)
==============================================================================================================
   
- 외부 dll 연동 방법
1. ActiveX 방식 사용
2. 외부 DLL 랩핑 작업
 1) 외부 DLL 파일을 연동하기 위해서는 랩핑 작업을 하여야 합니다. 
 2) 래핑작업 관련되어 sdk 환경 셋팅 및 작업방법은 영업대표님께 문의 ==> 비용 발생
 3) DLL 랩핑을 위한 Xplatform 9.2 SDK 설치 및 환경설정  ==>  VC 개발이 가능해야 함
==============================================================================================================

- ActiveX
ActiveX  컴포넌트의 경우 progid에 연결되는 ActiveX에 따라 이벤트가 생성되게 됩니다.   
연결되는 ActiveX의 API 문서를 참고하시기 바랍니다
------------------------------------------------------------------------------------------------------------------------

<Component id="ActiveX" type="Bin" classname="ActiveX" module="XAxCmp" version="1000"/>

<ActiveX Version="1000">
	<Component Height="100" Id="AxMSIE" Image="24" Progid="Shell.Explorer" Title="AxMSIE" Version="1000" Width="100"/>
	<Component Id="Report" Image="23" Progid="RDVIEWER50.RdviewerCtrl.1" Title="Report" Version="1000"/>
	<Component Height="111" Id="WinSock" Image="51" LicenseKey="2c49f800-c2dd-11cf-9ad6-0080c7e7b78d" 
	Progid="MSWinsock.Winsock" Title="WinSock" Version="1000" Width="111"/>
	<Component Id="AxTeleWebCom" Image="23" Progid="AXTELEWEBCOM.AxTeleWebComCtrl.1" Title="AxTeleWebCom" Version="1000"/>
	<Component Id="SsSfmi" Image="23" Progid="SSSFMI.SsSfmiCtrl.1" Title="SsSfmi" Version="1000"/>
	<Component Id="LP2" Image="23" Progid="LP2.LP2Ctrl.1" Title="LP2" Version="1000"/>
	<Component Id="TeeChart" Image="23" Progid="TeeChart.TChart" Title="TeeChart" Version="1000"/>
	<Component Id="LpChkDrv" Image="23" Progid="LPCHKDRV.LpChkDrvCtrl.1" Title="LpChkDrv" Version="1000"/>
	<Component Id="xBSCtrl" Image="23" Progid="Fasoo.xBSCtrl.1" Title="xBSCtrl" Version="1000"/>
</ActiveX>
==============================================================================================================

var myExcel = new ActiveX(); 
 var objXl = myExcel.createObject("Excel.Application");
 objXl.Application.Visible = true; 

 //엑셀 파일 오픈
var objXlWb = objXl.Workbooks.Open(sFullPath); 

 var objXlsheet = objXlWb.Worksheets[1];
 //셀 선택
var objRange = objXlsheet.Cells.get_Range("A1","A1"); 
==============================================================================================================
 
if(!isInstalled())
{
actx00.codebase = url;
}

위처럼 설치가 안됐을경우에만 codebas 를 주시면 해결 할 수 있습니다. 
------------------------------------------------------------------------------------------------------------------------

MSCOMM32.ocx를 window에 추가후 ActiveX에 progid 까지 등록하였습니다.

function Button00_onclick(obj:Button, e:ClickEventInfo)
{
alert(msComm.CommPort);
msComm.CommPort = "2"; 
msComm.Settings = "19200,n,8,1";
msComm.PortOpen = true;

if (msComm.PortOpen == true)
{ 
alert("연결성공");
} 
}
------------------------------------------------------------------------------------------------------------------------

그런데 오류가 발생하고 있습니다.
uxs (2924): Error: [file://C:/Dev/workspace/hjerp/WebContent/XUI/pm/MSCOMM32.xfdl][line:4] 내부 오류입니다. (행: 4)
==> 일반적인 경우에는 해당 오류는 MSCOMM32.ocx가 정상적으로 등록되지 않았을때 나는 오류라고 보입니다.
--> 4250E830-6AC2-11cf-8ADB-00AA00C00905 license 입력 후 정상작동되었습니다.
==============================================================================================================

- cab파일을 이용하여 ActiveX 컴포넌트를 통해 배포를 하실 수 있습니다.  
function N112587_ActiveX_Install_onload(obj:Form, e:LoadEventInfo)
{
 var gv_cabPath = "http://xxxxxxxx/";
 var objActiveX = new ActiveX();
 objActiveX.init("atx_NamoCtrl", 0, 0, 100, 100);
 this.addChild("atx_NamoCtrl", objActiveX);
 atx_NamoCtrl.show(); 

 atx_NamoCtrl.progid = "{A02A99B7-FCDF-4cc4-9CDA-683281D88401}";
 atx_NamoCtrl.codebase = gv_cabPath + "NamoWec.cab#VERSION=6,0,0,51";

 // 나모 cab파일이 설치가 완료되었을때 나모를 동적으로 생성함.
if( atx_NamoCtrl.isInstalled())
 {
 var objNamo = new NamoWeb();
 objNamo.init("NamoWeb00", 62, 43, 905, 493);
 this.addChild("NamoWeb00", objNamo);
 NamoWeb00.windowed = true;
 NamoWeb00.show(); 
 } 
}
==============================================================================================================

- 조회(WAS단에서 처리 여부 확인, URL)
1. 공통코드 관리(/COM_CD_MGMT.xfdl) 조회 ==> http://127.0.0.1:8080/cm/cmm/retrieveListCmmCd.do
2. 메세지 관리(/COM_MESSAGE.xfdl) 조회 ==> http://127.0.0.1:8080/cm/cmm/retrieveListMessage.do
3. 로그인(/LOGIN.xfdl) 조회 ==> http://127.0.0.1:8080/cm/login/login.do

1. 공통코드 관리(/COM_CD_MGMT.xfdl) 조회 ==> http://172.168.110.41:7070/cm/cmm/retrieveListCmmCd.do
2. 메세지 관리(/COM_MESSAGE.xfdl) 조회 ==> http://172.168.110.41:7070/cm/cmm/retrieveListMessage.do
3. 로그인(/LOGIN.xfdl) 조회 ==> http://172.168.110.41:7070/cm/login/login.do 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.21(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. 배포 작업 
 1) 배포 URL ==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
 2) axive X ==> http://172.168.110.41:7070/XIContent/HsDeploy/XP-Module/components/01. test.htm 
---------------------------------------------------------------------------------------------------------------------------

- Jenkins 빌더
http://172.168.110.41:6060/jenkins/
==============================================================================================================

- 배포 후 디비깅
1. http://172.168.110.41:7070/XIContent/HsDeploy/XP-Runtime-Install.htm 에서 멈춤
 1) IE > F12번 누름 --> F5 누름
==============================================================================================================

- 윈도우 원격 연결(원격제어)
1. 실행 > 열기(O): MSTSC   ==> 확인(클릭)
2. \\172.168.110.41   ==> Administrator // Handsome012
http://blog.naver.com/reinstate10/2201598882362015-08-24
==============================================================================================================
 
- 웹브라우저 연결 테스트
1. dll 설치(2. /default_typedef.xml 파일에서 아래 내용 작성) ==> WebBrowser  ==> XWrapComp.dll  
<Component type="Bin" id="WebBrowser" classname="WebBrowser" module="XWrapComp" version="2015.4.28.1"/>
2. URL 테스트    
/Sample/MSIE_NewWindow.xfdl
/*****************************************************************************************
* 함  수  명 : btn_embededURL()
* 설      명 : 임베디드 버튼 클릭 이벤트(URL embeded 처리) 
*****************************************************************************************/   
function btn_embededURL_onclick(obj:Button,  e:ClickEventInfo)
{ 
	trace("[/MSIE_NewWindow.xfdl] [btn_embededURL_onclick()] ==> [edt_goUrl.value]"+ edt_goUrl.value ); 

	MSIE00.Navigate2(edt_goUrl.value);
}

/*****************************************************************************************
* 함  수  명 : btn_newWinURL_onclick()
* 설      명 : 새창 띄우기 버튼 클릭 이벤트(새창 띄우기 처리[xfdl 파일])  
*****************************************************************************************/   
function btn_newWinURL_onclick(obj:Button,  e:ClickEventInfo)
{ 
	gv_goPopUrl = edt_goUrl.value;
	trace("[/MSIE_NewWindow.xfdl] [btn_newWinURL_onclick()] ==> [edt_goUrl.value]"+ edt_goUrl.value ); 

	var objOwnerFrame = getOwnerFrame();
	var objNew = new ChildFrame();
	objNew.showtitlebar = true;
	objNew.init("Test", 400, 100, 1410, 800, "Sample::MSIE_Pop.xfdl");
	objNew.autosize = false;
	objNew.resizable = true;

	var arg = {aa:Dataset00};
	var objds = objNew.showModal("Test", objOwnerFrame, arg);
}

/***************************************************************************************** 
* 함  수  명 : Second_Pop_onload()
* 설      명 : Second_Pop_ onload 처리(2번째 창)
*****************************************************************************************/   
function Second_Pop_onload(obj:Form, e:LoadEventInfo) 
{
	trace("[/MSIE_Pop.xfdl] [Second_Pop_onload()] ==> [gv_goPopUrl]"+ gv_goPopUrl ); 

	MSIE00.Navigate2(gv_goPopUrl);
}

/*****************************************************************************************
* 함  수  명 : btn_newWinURL_onclick()
* 설      명 :  새창 띄우기 버튼 클릭 이벤트(새창 띄우기 처리[jsp 파일]) 
*****************************************************************************************/  
function btn_newWinURL)2_onclick(obj:Button,  e:ClickEventInfo)
{
	WebBrowser.url = "about:blank";
	var sPopUpUrl = "http://www.kobus.co.kr/web/main/kongji_111204.jsp";
	var url_link = "javascript:window.open('"+ sPopUpUrl +"','popup','top=200px,left=300px,height=600px
	,width=1000px,scrollbars=yes,resizable=yes')"; 
	trace("[/MSIE_NewWindow.xfdl] [btn_newWinURL_onclick()] ==> [url_linkl]"+ url_link ); 

	WebBrowser.url = url_link;
} 
==============================================================================================================

- http://172.168.110.41:7070/XIContent/HsDeploy/index.htm 에러
1. 현상: Uncaught TypeError: XLauncher.makeshortcut is not a functionfn_make_shortcut @ XP-Runtime-Install.htm:32onload 
@ XP-Runtime-Install.htm:39
변수가 undefined 인 경우를 처리해주면 된다.
2. Crome 에서 나는 에러 --> IE에서 안남
==============================================================================================================

- trackPopupByComponent 분석
pdv_leftMenuDtl.trackPopupByComponent(obj, sAnchorX, sAnchorY, obj.position.height);    
// PopupDiv 컴포넌트를 화면에 나타나게 지정 

PopupDiv.trackPopup(nLeft, nTop[,nWidth,nHeight])
 PopupDiv0.trackPopup(system.clientToScreenX(grid_schedulelist, grid_schedulelist.position.left+e.clientX-64)
 ==> var bClose = pdv_leftMenuDtl.closePopup();    // pdv_leftMenuDtl 닫기
==============================================================================================================

- SK 갤럭시 노트2 해지 위약금
1. 요금 약정 할인 반환금: 98,460원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.22(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 
 
- 주말(▦ 조기축구)
05:00 기상
05:20 버스(6411번, 대림역 -> 학동역)
06:20 신구초등학교 ==> 운동장 교체 작업하고 있어서 축구 불허(9월 16일까지 못 참)
07:10 한강공원 잠원지구 축구장(한남대교 옆)
07:20 숏게임
08:10 종료
08:30 조식(라면, 김밥, 빵, 맥주): 만원 냄
10:40 종료
10:50 642번 버스  
12:00 귀가
13:30 낮잠
17:00 기상
17:30 쇼핑(이마트): 베게, 슬리퍼
20:00 귀가
20:10 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.23(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==>
 
▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 한티역)
07:30 도곡초등학교 
08:10 게임(넘어져서 무릎 약간 다침, 발톱 안 깍아서 발톱 깨져서 통증)  ==> 2게임 
11:05 종료
11:30 중식(국밥, 뚝심한우): 만원 냄
==> 운동장 골대 조기회에서 구입하기로 함(300만원 선 ==> 개별 찬조하기로 해결하기로 함)
13:40 종료
14:20 고속버스터미널(642번 버스)
14:20 LG 텔레콤 ==> 갤럭시 노트5 견적 요청(65원 선: KT 보다 비쌈)
15:00 귀가(뚜엣씨 집에 와 있음)
15:20 TV 시청 
18:30 쇼핑(남구로 시장) ==> 바지(2벌), 짜장면2, 냉면 구입
19:30 귀가
19:50 석식(자짱면 2개, 냉면): 남구로시장(왕짜장)
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.24(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 곽현준 차장 노량진 지원

- 한섬 ERP 재구축 Prj[★]
1. KICC_POS_인증모듈 분석
 1) KiccPosIEX_인증(웹 인증)으로 개발
==============================================================================================================

- ActiveX 방식 사용(외부 dll 연동 방법)
1. 수동 등록(개발자용) @@@
0. KiccPosExe_1.0.0.5.exe 설치(/KiccPosIEX_인증/2.설치파일/kiccpos.exe)
1. 설치 폴더 생성 
C:/내문서/KICC/    
2. 파일 복사(/KiccPosIEX_인증/2.설치파일/OCX 파일) 
KiccEtc.dll, KiccPosIEX.inf, KiccPosIEX.ocx , KiccV.dll, Reg.bat, UnReg.bat
3. 레지스터리 등록 
Req.bat 파일 관리자 권한으로 실행 ==> Reg.bat(마우스 우 클릭 > 관리자 권한으로 실행(A): 클릭 > 성공)
4. 레지스터리 등록 해제
UnReg.bat 관리자 권한으로 실행 ==> UnReg.bat(마우스 우 클릭 > 관리자 권한으로 실행(A): 클릭 > 성공)
5. 작동 테스트 
KiccPosIEXTest.html (예제파일)을 IE로 오픈 하시고 여러 버튼을 눌러 단말기 작동 여부를 확인 하실수 있습니다.
---------------------------------------------------------------------------------------------------------------

2. 배포(고객, Client용) @@@
1) XIContent/HsDeploy/index.htm 파일에서
<SCRIPT LANGUAGE="JavaScript">
document.write('<OBJECT ID="CARDX" STYLE="WIDTH: 256PX; HEIGHT: 128PX" CLASSID="CLSID:93137A73-7A61-4911-8018-C758BBE73F53">'); 
document.write('<CODEBASE="http://Company..co.kr/vankicc/KiccPosIEX_1.0.5.0.cab#version=1.0.5.0"> ');
document.write('</OBJECT>'); 
</SCRIPT>  
==============================================================================================================

- 좌표 설정(X축, Y축)
/*****************************************************************************************
* 함  수  명 : btn_openMenuFirst_onclick()
* 설      명 : 메뉴 OPEN 버튼 클릭 이벤트(메뉴 리스트 보이기) 
*****************************************************************************************/  
function btn_openMenuFirst_onclick(obj:Button,  e:ClickEventInfo)
{  
	var nX = system.clientToScreenX(application.mainframe, 0);   // mainframe의 X좌표 설정(system.clientToScreenX)
	var nY = system.clientToScreenY(application.mainframe, 0) + 120;    // ==> 버튼의 X좌표(e.screenX)
	//trace("[/LEFT.xfdl] [btn_openMenuFirst_onclick()] ==> [nX]"+ nX +" ==> [e.screenX]"+ e.screenX 
	+"[system.clientToScreenX(application.mainframe, 0)]"+ system.clientToScreenX(application.mainframe, 0) ); 
	  
	this.pdv_leftMenuDtl.visible = true;  
	pdv_leftMenuDtl.div_metalBass.btn_menu.style.image = "URL('theme://images/bg_menu_on.png')";  // Memu가 선택 이미지로 변경
	pdv_leftMenuDtl.div_metalBass.btn_myMemu.style.image = "URL('theme://images/bg_favorite_off.png')";  // My Memu가  미 선택 이미지로 변경 

	pdv_leftMenuDtl.div_metalBass.grd_leftMenu.visible = true;  // Memu 보이기
	pdv_leftMenuDtl.div_metalBass.grd_leftMyMenu.visible = false;
	 
	pdv_leftMenuDtl.trackPopup(nX, nY);  // PopupDiv 컴포넌트를 화면에 나타나게 지정 
	//pdv_leftMenuDtl.trackPopupByComponent(obj, nX, nY, obj.position.height);  // PopupDiv 컴포넌트를 화면에 나타나게 지정 
}

/*****************************************************************************************
* 함  수  명 : btn_hideMenu_onclick()
* 설      명 : 왼쪽 메뉴 숨기기 버튼 클릭 이벤트(좌측 메뉴 숨기기) 
*****************************************************************************************/   
function btn_hideMenu_onclick(obj:Button,  e:ClickEventInfo)
{   
	//this.pdv_leftMenuDtl.visible = false;  
	var bClose = pdv_leftMenuDtl.closePopup();    // pdv_leftMenuDtl 닫기 
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.25(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. 마이 메뉴(gds_myMenu) 수정
==============================================================================================================

- 폴더 추가
CS: 소비자 상담
CR: 고객
VC: VOC
==============================================================================================================

- XPlatform.exe - 시작 지점 없음 에러 발생
1. 현상: 프로시저 시작 지점 ?set_rtldirection@Cy_Component@@QAEJABVCy_Variant@@@Z을(를) DLL 
XPlatformLib92.dll에서 찾을 수 없습니다.   
2. 원인: 해당오류의 경우 XPLATFORM 엔진이 손상이 되었거나 버전 문제로 인해 발생하는 문제로 예상 됩니다. 
3. 조치: XPLATFORM을 모두 삭제 후 재설치 부탁드립니다. 
 1) 제어판 - 프로그램 추가제거 - XPLATFORM 삭제 
 2) \Program piles\tobesoft 폴더 삭제 
==============================================================================================================

- 자바스크립트로 url 주소 가져오기  
location.href -> http://localhost:8088/login/login.do?key=value
location.protocol -> http:
location.host -> localhost:8088 
location.pathname -> /login/login.do
location.search -> ?key=value
==============================================================================================================

- /index.htm 파일에서(배포 실행)
<SCRIPT LANGUAGE="javascript">
function fn_make_shortcut()
{ 
	var sServerPathFull = window.location.href;  // ===> http://172.168.110.41:7070/XIContent/HsDeploy/index_02.htm 
	var sServerPath = sServerPathFull.substring(0, sServerPathFull.lastIndexOf("/"));// URL 
	==> http://172.168.110.41:7070/XIContent/HsDeploy
	var sServerHost = location.host;// ===> 172.168.110.41:7070 
	//alert("[/index.htm] [fn_make_shortcut()] ==> [sServerHost]"+ sServerHost +"[sServerPath]"+ sServerPath +"[sServerPathFull]"+ sServerPathFull );

	XLauncher.key = "HS_ERP";
	XLauncher.xadl = "http://"+ sServerHost + "/XIContent/HandsomeERP.xadl";   // xadl(HS_ERP 개발 서버)  
	==> http://172.168.110.41:7070/XIContent/HandsomeERP.xadl
}
</SCRIPT>  
-------------------------------------------------------------------------------------

- CODEBASE 파일 가져오기
<SCRIPT LANGUAGE="JavaScript">
	//alert("[/index.htm] [TEST_01]");   
	// CARDX 추가(사유: KICC_POS_인증모듈 추가)[주석 처리일: 2015.08.24, by 진태만] // 
	document.write('<OBJECT ID="CARDX" STYLE="WIDTH: 256PX; HEIGHT: 128PX" CLASSID="CLSID:93137A73-7A61-4911-8018-C758BBE73F53" ');  
	document.write('CODEBASE="./XP-Module/KICC/KiccPosIEX_1.0.5.0.cab#version=1.0.5.0"> ');
	document.write('</OBJECT>'); 
	//alert("[/index.htm] [cab 파일 로드 성공]"); 
</SCRIPT>  
==============================================================================================================

- 건강보험자격득실확인서 발급
1. 민원신청 > 자격> 자격득실확인서 발급(건강보험자격득실확인서)
http://minwon.nhis.or.kr/menu/retriveMenuSet.xx?menuId=MENU_WBMCA0303
==============================================================================================================

- KT 휴대폰 갤 노트5 구입(2년 약정) 시도[2015.08.25(화)]  ==> 신청 취소
1. KT로 번호 이동(홍상환이에게 신청)
2. 삼성 갤럭시 노트5 64GB 2년 약정 ==> 총 요금: 월 60,400원(VAT 포함)
3. 우리카드(올레 슈퍼 DC PLUS 카드) 발급(3년간 월 70만원 이상[월 만 7천원 할인] 사용해야 함) 
 1) 건강보험이 직장으로 안되어 있어서 건강보험자격득실확인서 발급 못함
4. 통신사 결합(KT 인터넷, KT SkyLife TV)
5. 기타
 1) 몸값 낮춘 갤럭시노트5, 프리미엄폰 명예회복할까? ==> https://www.youtube.com/watch?v=c3BIpISHBEc
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.26(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 4대 보험 가입 안되어 있음(김민주 대리가 틱틱 거려서 이사장, 김현욱 선배에게 전화해서 화냄)

- 한섬 ERP 재구축 Prj[★]
1. KICC_POS_인증모듈 분석
 1) KiccPosIEX_인증(웹 인증)으로 개발
==============================================================================================================

- XPlatform에 ActiveX 로딩 방법
1. KiccPosIEX_인증 수동 등록 설치
2. 개발하려는 form 열기
3. 상단 메뉴 중 ActiveX 컴포넌트를 클릭 
4. ActiveX 컴포넌트를 해당 form에 그리기
5. ActiveX 속성 중 progid 클릭
6. Choose a AcviveX Control(새창 뜸)
 1) classid로 정렬 시킴(clsid:93137A73-7A61-4911-8018-C758BBE73F53 찾기)
 ==> Control: KiccPosiEX Control이라고 조회됨
<OBJECT id=CardX style="WIDTH: 256px; HEIGHT: 128px" 
	classid=clsid:93137A73-7A61-4911-8018-C758BBE73F53 
	VIEWASTEXT>
</OBJECT>
7. classid로 조회한 ActiveX Insert(클릭)
8. fn_load에서 확인(ActiveX id를 CardX로 설정)
function fn_load(obj:Form, e:LoadEventInfo)
{
	var ret = CardX.ReqCmd( 253, 0, 0, EDT_CAT.value, sE);
}
==============================================================================================================
 
- ActiveX 방식 사용(외부 dll 연동 방법)
1. 수동 등록(개발자용) @@@
0. KiccPosExe_1.0.0.5.exe 설치(/KiccPosIEX_인증/2.설치파일/kiccpos.exe)
1. 설치 폴더 생성 
C:/내문서/KICC/    
2. 파일 복사(/KiccPosIEX_인증/2.설치파일/OCX 파일) 
KiccEtc.dll, KiccPosIEX.inf, KiccPosIEX.ocx , KiccV.dll, Reg.bat, UnReg.bat
3. 레지스터리 등록 
Req.bat 파일 관리자 권한으로 실행 ==> Reg.bat(마우스 우 클릭 > 관리자 권한으로 실행(A): 클릭 > 성공)
4. 레지스터리 등록 해제
UnReg.bat 관리자 권한으로 실행 ==> UnReg.bat(마우스 우 클릭 > 관리자 권한으로 실행(A): 클릭 > 성공)
5. 작동 테스트 
KiccPosIEXTest.html (예제파일) 을 IE로 오픈 하시고 여러 버튼을 눌러 단말기 작동 여부를 확인 하실수 있습니다.
---------------------------------------------------------------------------------------------------------------

2. 배포(고객, Client용) @@@
1) XIContent/HsDeploy/index.htm 파일에서
<SCRIPT LANGUAGE="JavaScript">
	 document.write('<OBJECT ID="CARDX" STYLE="WIDTH: 256PX; HEIGHT: 128PX" CLASSID="CLSID:93137A73-7A61-4911-8018-C758BBE73F53" '); 
	 document.write('CODEBASE="http://Company..co.kr/vankicc/KiccPosIEX_1.0.5.0.cab#version=1.0.5.0"> ');
	 document.write('</OBJECT>');
</SCRIPT>
==============================================================================================================

- KT 휴대폰 갤 노트5 구입(2년 약정) 시도[ 2015.08.26(수)]  ==> 신청(완료)
1. KT로 번호 이동(홍상환이에게 신청 ==> 기본료 2달 면제)
2. 삼성 갤럭시 노트5 64GB 2년 약정 ==> 총 요금: 월 60,400원(VAT 포함)
3. 우리카드(올레 슈퍼 DC PLUS 카드) 발급(3년간 월 70만원 이상[월 만 7천원 할인] 사용해야 함) 
 1) 우리카드: 6253-2081-9534-3090, 유효기간: 2020년 7월
 2) 건강보험이 직장으로 안되어 있어서 건강보험자격득실확인서 발급 못함
4. 통신사 결합(KT 인터넷, KT SkyLife TV)
5. 기타
 1) 몸값 낮춘 갤럭시노트5, 프리미엄폰 명예회복할까? ==> https://www.youtube.com/watch?v=c3BIpISHBEc
 1) 당신을 위한 갤럭시노트5 리뷰(Galaxy Note5)  재만이의일상 ==> https://www.youtube.com/watch?v=qXyYUGGQOxs
6. 삼성페이 ==> https://www.youtube.com/watch?v=HZU5EwFLBK8
 1) 삼성페이 ==>http://www.samsung.com/sec/samsung-pay/
==============================================================================================================

- KT 휴대폰 갤 노트5 구입(2년 약정) 시도[ 2015.08.26(수)] ==> 신청(안함)
1. KT로 번호 이동(홍상환이에게 신청 ==> 기본료 2달 면제)
2. 삼성 갤럭시 노트5 64GB 2년 약정 ==> 총 요금: 월 71,590원(VAT 포함)
3. 국민카드(올레 슈퍼 카드) 발급(2년간 월 70만원 이상[월 만 5천원 할인] 사용해야 함)  
4. 통신사 결합(KT 인터넷, KT SkyLife TV)
5. 기타
 1) 몸값 낮춘 갤럭시노트5, 프리미엄폰 명예회복할까? ==> https://www.youtube.com/watch?v=c3BIpISHBEc
==============================================================================================================

- KT 휴대폰 갤 노트5 구입(2년 약정) 시도[2015.08.25(화)]  ==> 신청 취소
1. KT로 번호 이동(홍상환이에게 신청)
2. 삼성 갤럭시 노트5 64GB 2년 약정
3. 우리카드 발급(3년간 월 70만원 이상 사용해야 함) 
 1) 건강보험이 직장으로 안되어 있어서 건강보험자격득실확인서 발급 못함
4. 통신사 결합(KT 인터넷, TV)
==============================================================================================================

- 동영상 편집
1. [파워디렉터13 얼티밋] 빠르게 사용방법 배우기 설명 ==> https://www.youtube.com/watch?v=m2GdJ4wL_HU&list=PL-5ftaIG6SckFtYjwAduHqoRVuMipegTM
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.27(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 이석부 사장에서 4대 보험 미등록 관련 메일 보냄

- 한섬 ERP 재구축 Prj[★]
1. KICC_POS_인증모듈 분석
 1) KiccPosIEX_인증(웹 인증)으로 개발
==============================================================================================================

- Component dll을 찾을 수 없음
1. Component dll을 찾을 수 없음 ==> http://172.168.110.41:7070/XIContent/HsDeploy/XP-Module/components
 1) XComCmp.dll ==> 버전: 2015.4.28.1 
 2) Component dll을 찾을 수 없어 Load에 실패하였습니다.(XComcmp)
 ==> component 경로 지정 및 엔진 cab 파일 위치가 잘못 되어있습니다.  
-----------------------------------------------------------------------------------------------------

 XComCmp, ==> 2015.4.28.1 
컴포넌트 리소스에 접근하지 못하여 업데이트진행을 중단합니다. 
==============================================================================================================

- 즐겨찾기 등록, 삭제
1. fn_bookmark() --> trace("[/commonForm.xjs] [fn_bookmark()] ==> [TEST_01]
2. fn_MyMenuDsAdd() --> trace("[/lib_menu.xjs] [fn_MyMenuDsAdd()] ==> [strMenuId]"+ strMenuId );
3. DB 연계 ==> "/cm/cmm/saveMyMenuCbc.do" 
==============================================================================================================

- Debug Console 줄 수 늘이기
1. [Window] - [Preferences] - [Run/Debug] - Consol(새창)
 1) Console buffer size(characters): 800000  ==> (90000 --> 800000로 변경)
==============================================================================================================

- 로컬 배포 에러 
1. 현상 XPLATFORM_Client_License.xml 경로는 접근 가능한 Domain에 존재하지 않습니다.
2. 원인
 1) HandsomeERP.xadl 파일에서
 licenseurl="http://172.168.110.41:7070/XIContent/HsDeploy/XPLATFORM_Client_License.xml"
3. 조치
 1) 로컬 서버용(127.0.0.1:8080) 배포 서버 환경을 구축해야 함
http://127.0.0.1:8080/XIContent/HsDeploy/XP-Module/components/01_components_Spot.htm
==============================================================================================================

- 4대사회보험 정보연계센터(4대 보험)
1. www.4insure.or.kr ==> tamario/hp태*1*!*
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.28(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 

- 한섬 ERP 재구축 Prj[★]
1. KICC_POS_인증모듈 분석
 1) KiccPosIEX_인증(웹 인증)으로 개발
==============================================================================================================
 
- Component dll을 찾을 수 없음
1. 현상 ==> Component dll을 찾을 수 없음 ==> http://172.168.110.41:7070/XIContent/HsDeploy/XP-Module/components
 1)  Component dll을 찾을 수 없어 Load에 실패하였습니다.(XComcmp)
 ==> component 경로 지정 및 엔진 cab 파일 위치가 잘못 되어있습니다. 
2. 원인: XPLATFORM 9.2.1 로 배포를 진행을 할 경우 XLauncher에 버젼을 기재를 해주셔야 합니다.
버젼을 기재하지 않을 경우 9.2 경로로 Component 가 배포가 되어 프로그램이 실행이 되실때 Component를 찾지 
못하는 경우가 발생이 되고 있습니다.
3. 조치
 1) SetupEngine 제거 ==> 제어판\프로그램\프로그램 및 기능> 프로그램 추가 및 삭제에서 제거
  가. XPLATFORM9.2.1_SetupEngine.exe
 2) 배포 수행
  가. 배포(개발서버) ==> http://172.168.110.41:7070/XIContent/HsDeploy/index.htm
  나. 배포(로컬서버)  ==> http://127.0.0.1:8080/XIContent/HsDeploy/index.htm
  다. 배포(로컬서버: 안됨)  ==> http://172.168.110.254:8080/XIContent/HsDeploy/index.htm
 3) component가 로컬 PC에 다운로드 되었는지 확인
   ==> C:\Users\TAMA\AppData\Local\TOBESOFT\HS_ERP\Component
   ==> %USERAPPLOCAL% --> C:\Users\[username]\AppData\Local
   ==> C:\Users\TAMA\AppData\LocalLow\TOBESOFT\XPlatform\9.2.1\Component
 4) dll 확인(위치 및 버전)
  가. 개발 서버: http://172.168.110.41:7070/XIContent/HsDeploy/XP-Module/components/XComcmp.dll
  나. 로컬 서버(안됨): http://127.0.0.1:8080/XIContent/HsDeploy/XP-Module/components/XComcmp.dll 
  다. 로컬 서버: http://172.168.110.254:8080/XIContent/HsDeploy/XP-Module/components/XComcmp.dll 
-----------------------------------------------------------------------------------------------------

- 03. HSE 배포(로컬)
http://127.0.0.1:8080/XIContent/HsDeploy_local/HsDeploy/index.htm
http://127.0.0.1:8080/XIContent/HsDeploy_local/HsDeploy/XP-Module/components/01_components_Spot.htm
-----------------------------------------------------------------------------------------------------

- component가 로컬 PC에 다운로드되는 경우(일반적)
C:\Users\TAMA\AppData\LocalLow\TOBESOFT\XPlatform\9.2.1\Component
==============================================================================================================

- 세션 정보 설정 
1. trace("[/LOGIN.xfdl] [fn_callback()] ==> [gv_usrId]"+ gv_usrId );
if(gds_userSessionInfo.getRowCount() > 0)  // 세션 정보가 존재하면
{  
	var nRow = gds_userSessionInfo.findRow("usrId", div_login.edt_userId.value);   // DS 칼럼 찾기

	gv_usrId = gds_userSessionInfo.getColumn(nRow, "usrId");// 사용자 ID 
	gv_adminDiv = gds_userSessionInfo.getColumn(nRow, "usrNm");// 사용자 명 
}
==============================================================================================================

- XPlatform 프로그램을 EdiPlus에서 검색
1. 검색(S) > 여러 파일 찾기(I) > 여러 파일 찾기(새창)
 1) 찾을 말(I): XWrapComp
 2) 파일 종류: *
 3) 폴더(O): C:\HS_ERP\workspace\handsome\src\main\webapp\XIContent
 --> 하위 폴더 포함(S): 체크 
==============================================================================================================

- .xthem에 PopupDiv 공통 설정(테마 작업)
1. HS_ERP.xtheme 에서 HS_TEM.css 파일(더블 클릭)
2. CSS Document(새창 뜸)
 1) CSS Documen(마우스 우 클릭) > New Selector(클릭)
3. New Selector(새창 뜸)
 1) Objects ==> PopupDiv(선택)
 2) ID Selector ==> pdv_leftMenuDtl(id값 입력)
 3) Pseudo Selector ==> enabled, disabled, focused, mouseover --> 체크(클릭)
 4) Add(클릭)
4. CSS Document에 PopupDiv 속성이 생성됨
5. PopupDiv#pdv_leftMenuDtl 선택
 1) border : 0 none #808080 ; ==> 작성(border=0, 선 없음)  
==============================================================================================================

- KT 휴대폰 갤럭시 노트5 택배로 받음
19:00 퇴근
20:00 귀가
20:10 KT 휴대폰 갤럭시 노트5 도착해 있음 ==> 상환이한테 가입함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.29(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 

- 주말(▦ 조기축구)
05:00 기상
05:20 버스(6411번, 대림역 -> 학동역)
06:30 신구초등학교
06:50 한강공원 잠원지구 축구장(한남대교 옆)
07:00 숏게임
08:20 종료
08:30 버스(4318번 -> 6411번)
10:00 귀가
11:00 KT 휴대폰 갤럭시 노트5 개통(KT 진주지점 여직원이 개통 해줌==> 상환이 회사 직원) 
13:00 우리카드 집으로 도착(주민증 확인)
13:30 낮잠
17:00 기상
17:30 쇼핑(이마트): 장인, 장모님 --> 수종 생일 케익 사줌
19:00 귀가
20:00 석식
20:30 수종 생일 파티(생일 한 달전 --> 장인, 장모님이 해줌)
20:50 갤럭시 노트5 셋팅
00:00 취침
==============================================================================================================

- 올레 KT 가입 정보 @@@
■ 기본 가입내역 안내
0. 개통일: 2015.08.29(토) 홍상환이에게 함((주)KTCS 진주 지점) ==> 기본료 2달 면제
① 모델명 : N920KGD_64G(갤럭시 노트5)
② 요금제 : LTE 데이터 선택 599
③ 약정 기간 : 24개월
④ 핸드폰할부 : 할부원금 (770,300원) / 할부기간 (24개월) / 월 납부액 (32,090원)
⑤ 지원금 : 총 195,500원 (공시지원금 170,000원/추가지원금 25,500원) /심플코스
   ( ※ 요금제 약정기간 내 하위 요금제로 변경 시 차액정산금이 청구될 수 있으며, 
         약정기간 내 중도해지 시 위약금이 청구될 수 있습니다. )
⑥ olleh 폰 안심플랜 가입 여부 : 미가입
⑦ 납부방법 : 신용 카드(말일) - 비씨카드
                  ==> 한달에 70만원 이상 3년을 사용해야 함
⑧ 부가서비스 : 유료부가서비스 없음
⑨ 올레멤버십 : 가입
⑩ 유선 결합 신청 : 미가입
⑪ 개통대리점 : (주)KTCS
⑫ 개통대리점 연락처 : 042-222-9700
==============================================================================================================

■ 상세 가입내역은 http://olleh.com/inform 에서 확인하세요.
    간단한 본인인증 절차 후 세부 내역을 열람하실 수 있습니다.
■ 본 내용은 08월 29일 가입내역을 반영하며, 이후 변경하신 사항은 반영되지 않을 수 있습니다.
    자세한 내용은 개통대리점에서 확인하시기 바랍니다.
■ 추가 문의 사항 안내
    o 모바일 고객센터 : m.olleh.com
    o 올레 고객센터 앱
       - 아이폰 : 앱스토어 / 안드로이드 : 기본 설치 앱 참고
    o 올레모바일(@olleh_mobile) 트위터
■ 보안번호를 설정하시면 휴대폰 결제를 좀 더 안전하게 이용하실 수 있습니다.
    보안번호는 올레닷컴 로그인 후 "회원정보관리-핸드폰/태블릿 관리"의 "보안번호관리" 메뉴 또는 휴대폰에서
    올레마켓 실행 후 설정 가능합니다.
    [바로가기] - https://login.olleh.com/wamui/CusAuth.do
■ 핸드폰 할부매매 약정약관 확인
    [바로가기] - http://dev.online.olleh.com/smart/resources/include/inslSellAgrm.jsp  
==============================================================================================================
  
- 갤럭시 노트5(N920KGD_64G) 휴대폰 사양
1. 모델명: N920KGD_64G(갤럭시 노트5)
1. CPU: 2.1GHz(옥타)
2. RAM: 4GB(64G 내장, micro 슬롯 없음)
3. OS: 안드로이드 5.1(롤리팝)
4. 크기: 5.7인치(QHD)
5. 무게: 183g(두께: 7.6mm)
6. 내장메모리: 64G G내장
7. 외장메모리: 안됨
8. 배터리(일체형): 3,000mA 
9. 카메라: 후면(1600만),전면(500만)
10. 기타: 삼성페, 무선 충전(지기 유도) 등
--------------------------------------------------------------------------------------
http://auction.kr/iBLYYSn
----------------------------------------------------------------------------------------------------------------------------

- 갤럭시 노트5(SM-N920K) 단말기 정보
제조년월: 2016.08.11
일련번호: 0005606
IMEI: 353116070056061
S/N: R89G808C2GZ(7자리)
==============================================================================================================

- KT 휴대폰 갤 노트5 구입(2년 약정) 개통[2015.08.29(토)]  ==> 완료
1. KT로 번호 이동(홍상환이에게 신청 ==> 기본료 2달 면제)
2. 삼성 갤럭시 노트5 64GB 2년 약정 ==> 총 요금: 월 60,400원(VAT 포함)
3. 우리카드(올레 슈퍼 DC PLUS 카드) 발급(3년간 월 70만원 이상[월 만 7천원 할인] 사용해야 함) 
 1) 우리카드: 6253-2081-9534-3090, 유효기간: 2020년 7월
 2) 건강보험이 직장으로 안되어 있어서 건강보험자격득실확인서 발급 못함
4. 통신사 결합(KT 인터넷, KT SkyLife TV) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.30(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 장인 인천공항 배웅(축구 못 감)
 
- 일요일
06:00 기상
06:40 지하철(대림역 -> 홍대입구역 -> 인천국제공항)
08:00 인천국제공항 도착 ==> 장인 카드 돈 모자람(게이트에서 직원에게 2,800원 납부)
08:10 인천국제공항역 -> 밀리니엄홀(1층) -> 출국장(3층) -> 탑승수속 및 짐부치는 곳(베트남은 보통: E19~36)  
08:15 마이 부모님, 남편 만남
08:30 탑승수속 ==> 수하물 15kg(제주항공은 15kg, 비행기값(편도: 133,900원), 물통(물 반입 금지), 장인 폰 받아 옴
08:50 인천공항 출발
09:00 지하철(인천국제공항 -> 홍대입구역 -> 대림역)
11:30 귀가
12:10 중식 
14:00 낮잠
16:00 기상
19:40 중식 
19:50 루옌과 화상통화(장인 베트남 처가에 잘 도착함)
15:00 기상 
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.08.31(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10 ==> 곽현준 차장 철수(17시)

- 한섬 ERP 재구축 Prj[★]
- Clip Report
http://172.168.110.41:3040/hseReport.jsp?rptname=cm/common/sample
==============================================================================================================

- 갤럭시 노트5 셋팅
1. 액정 필름 붙이기
2. 클라우드 확인
3. 신용카드 확인(국민카드 도시가스 할인 여부)
==============================================================================================================

- 무료 클라우드 사이트 목록  
1. 메가드라이브 (50Gb) 
2. 구글드라이브(구글) (15Gb)
3. N드라이브(네이버) - 30Gb  ==> 사용 중
4. 나무클라우드(싸이이비즈) - 5Gb   
5. 드롭박스 - 2Gb 
6. ONE드라이브(MS) - 15Gb 
7. T클라우드(SK) - 20Gb(sk 회원일 경우, 타사 회원일경우 5Gb) 
8. 유클라우드(KT - 50Gb(kt 회원일 경우) 
9. U+Box(LG) - 10Gb(lg회원일 경우 +5Gb) 
--------------------------------------------------------------------------------------------------------------------------
 
==> T 클라우(SK) 드, 구글 클라우드, 유투브(동영상 등록)
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■