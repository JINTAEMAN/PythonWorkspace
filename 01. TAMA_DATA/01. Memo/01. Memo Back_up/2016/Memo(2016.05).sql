

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2016.05) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2016.05.01(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:20 ==> 

▦ 조기축구
06:00 기상
06:20 도보(문영APT -> 대림운동장)
06:50 대림운동장
07:10 대림운동장 출발(회장님 차 얻어 탐)
07:50 화성 송산중학교(화성시 송산면 송산포도로 162 지번) 도착 ==> 맨땅(상태 양호한 편)
08:20 대림3동 조기회 유니폼 지금 받음(파란색, 빨간색 긴 팔, 검정색 숏 팬티, 스타킹)
08:30 게임(만남FC): 젊고 따른 팀이여서 왕창 깨짐, 우리팀은 20명이 원정 옴 ==> 4게임 뜀
12:00 종료
13:30 중식(국수 식당[안산], 닭도리탕): ==> 조기회에서 쏨
15:00 귀가 
19:30 쇼핑(이마트: 수종이 어린이날 선물[뽀로로 어린이 버스[54,800원] 사줌)
20:00 석식(부대찌게(루옌): 한양정육식당): 사장 불친절하고 맛이 별로 없음.
21:00 귀가
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.02(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 

- 삼성전기 MES 3.0 구축 Prj[★]
- 공통작업 요청처리(486번 접수: 김진숙[010-2466-7369] 과장) ==>   @@@
1. 현상: "메뉴에서 A, B, C라는 화면을 열었을 때 B라는 화면에서 A라는 화면으로 탭 전환시 A화면의 Apply 이벤트를 
호출하여 재조회 하고 싶습니다. 어떤 이벤트에 넣어야 할지 알려주세요. (기존에 onactivate 이벤트나 onsetfocus 
이벤트를 이용하려고 하였으나 적용이 안됩니다. 화면 간 탭 전환시 호출되기를 원함.)"
2. 수정 위치:
3. 처리: Timer 설정은 Form의 ontimer에 설정하는 것입니다. A*.xfdl 파일에서 Timer 설정하고 B*.xfdl 파일에서 
A*.xfdl 파일의 Timer 설정을 불러 오는 것은 불가능 합니다. 
화면 간 탭 전환시 호출을 하려면 DB를 사용하거나 global 변수를 사용해야 될 것으로 판단됩니다. 그리고 이런
문제는 공통이 아니라 *.xfdl 파일에서 개발자가 직접 개발해야 할 것으로 판단됩니다.
==============================================================================================================

- 오픈 관련 회의
1. 장소: 드림 프라자 2층
2. 참석자: 안우현 수석, 황차장, 신과장, 전수석
3. 내용:
 1) MES3.0 BUSAN은 무기한 오픈 연기
 2) 2016년 07월 베트남 DIM 오픈, 2016년 08월 베트남 ACI 오픈
 3) 확인 사항
  가. 대용량 데이타 속도 문제 확인(300 칼럼, 30만 로): (주)투비소프트 연구소에 문의
  나. 다국어 처리 확인
  다. Xpush 정리 ==> Class 다이어 그램
==============================================================================================================
 
- Timer 설정
<?xml version="1.0" encoding="utf-8"?>
<FDL version="1.5">
  <TypeDefinition url="..\default_typedef.xml"/>
  <Form id="Top_Frame" classname="Top_Frame" inheritanceid="" position="absolute 0 0 1278 105" titletext="
  [★_01] Top 프레임" onload="Top_Frame_onload" scrollbars="none" onsize="Top_Frame_onsize" 
  ontimer="Top_Frame_ontimer" onkeyup="Top_Frame_onkeyup">
    <Layouts>
<Layout> 
</Layout>
    </Layouts>
   <Objects> 
<Dataset id="ds_menu" firefirstcount="0" firenextcount="0" useclientlayout="false" updatecontrol="true" 
enableevent="true" loadkeymode="keep" loadfiltermode="keep" reversesubsum="false"/>
  </Objects>
  <Script type="xscript4.0"><![CDATA[/*******************************************************************************
* 화  면  명 : Top 프레임
* 화  면  ID : Top_Frame_Recent.xfdl
********************************************************************************/
include "Lib::common.xjs";

var g_timerid=1187;
var g_timerPeriod = 1000*60*5;   // 5시간 ==> 1초*60분*5시간  ===> TEST @@@ ===>
// objForm.setTimer( g_timerid, g_timerPeriod );  // setTimer 설정 ===> TEST @@@ ===>

/******************************************************************************* 
********************************************************************************/ 
function Top_Frame_onload( obj:Form, e:LoadEventInfo ) {
 
if( gv_sLogin == "Y" ) 
{  
fn_initSesstionTime();// sesstion time 초기화
} 
}

function Top_Frame_ontimer(obj:Form, e:TimerEventInfo)
{
if(e.timerid == 9986)//1시간 55분이 지났으면 ===> 6900 000
{  
this.killTimer(9986);  // kill Timer
 
var iWidth  = 350;
var iHeight = 180;

if(!application.popupframes["ConfirmPopup"]){ 
//if(application.confirm("재접속하시겠습니까?")){
gfn_popupReturnName("ConfirmPopup", "frame_common::confirm_popup.xfdl", this, false,-1,-1, iWidth, iHeight, false, true);
}else{
//if(application.confirm("재접속하시겠습니까?")){
application.popupframes["ConfirmPopup"].form.close();
gfn_popupReturnName("ConfirmPopup", "frame_common::confirm_popup.xfdl", this, false,-1,-1, iWidth, iHeight, false, true);
}

//메모리 반환 처리
var extComapi = new ExtCommon();
var ret = extComapi.EmptyWorkingSet();
}
 
//sesstion time 초기화
function fn_initSesstionTime()
{ 
this.killTimer(9986); 
this.setTimer(9986, 6900000);  //1시간 55분 ==> timerid 9986를 1시간 55분(6900000) 으로 설정 
//this.setTimer(9986, 5000); // 5초  ==> 1000[1초] 
}
]]></Script>
  </Form>
</FDL>
==============================================================================================================

- Xpush 정리
1. (주)투비소프트 박성훈 수석에게 Xpush 서버 2개월 라이센스 요청
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.03(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==> 하루 종일 비옴

- 삼성전기 MES 3.0 구축 Prj[★]
- Xpush 수정
1. sendMessageFromXpush 함수 생성(/CommonXPServiceImpl.java 파일에서)
public VariableList sendMessageFromXpush(VariableList inVl, DataSetList inDl, VariableList outVl, DataSetList outDl) throws Exception
{
try { 
String strContent = null;  

DataSet ds_xpushList = inDl.get("q1");

if (ds_xpushList != null && ds_xpushList.getRowCount() > 0) {  
strContent = ds_xpushList.getString(0,  "content");// content 필드(Input DS)
}
logger.info("[★] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] ==>
[strContent]"+ strContent +"[ds_xpushList.getRowCount()]"+ ds_xpushList.getRowCount() );

// create push message
PushMessage pushMessage = new PushMessage();
 
pushMessage.setCharsetName("utf-8");

// set message type.;  // TopicType: 메시지 성격에 따른 타입. 예를 들어 알림 "NOTI", 현재 주가의 경우 "CPDT", 
운영 정보의 경우 "OPDT", 뉴스의 경우 "NEWS" 등으로 시스템에 맞게 정의해서 사용할 수 있음.
pushMessage.setTopicType("NOTI");

//set mesage id. // topicId: Topic Id는 특정 타입의 메시지 중에서 메시지를 선별하기 위한 키를 설정. 예를 들어
"CPDT"와 같은 현재 주가 메시지 중에서 종목코드 "1234"의 주가를 전달하는 메시지라면 topicId는 "1234"가 됨. 
pushMessage.setTopicId("ALL");
 
//add data as defined in layout
//String strContent = "메뉴관리[FCBGA] 화면이 수정 처리 되었습니다.";// 메뉴관리[FCBGA] 화면 수정 처리 내용
pushMessage.addData(strContent); // 내용 필드(content)

SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
String currentTime = ""+ formatter.format(new Date());
pushMessage.addData(currentTime);   // Message 보낸 시각 필드(currentTime) 
logger.info("[★] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] 
==> [보낼 메세지(pushMessage)]"+ pushMessage );

//send message
provider.sendPushMessage(pushMessage);  // 메세지 보내기 처리 @@@
logger.info("[★] [01. Message Provider] --->> [/CommonXPServiceImpl.java] [sendMessageFromXpush()] 
==> [Send Message !] @@ --> OK" );
 
//close connection
provider.close();

} catch (IOException e) {
e.printStackTrace();
logger.info("Exception e="+e);

} catch (XPushMessageException e) {
e.printStackTrace();
}  
}
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.05.04(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 16:50 ==> 자리 이동(12:30, 화장실쪽), 바닥 청소(17시)

- 삼성전기 MES 3.0 구축 Prj[★]
- Xpush 정리
1. 
==============================================================================================================

- Xpush Use Case 이벤트 플로우(UML 분석) @@@
 1.1 액터
   1차 액터: 사용자
   2차 액터: 관리자

 1.2. 선행조건
  사용자가 로그인 함으로 시작한다.

 1.3. 이벤트 플로우
  1) 액터는 승인 정보(id, password)를 입력하고 시스템에게 승인을 요청한다.
  2) 시스템은 액터가 입력한 승인 정보가 유효하면 Xpush 메세지를 전송받을 준비(XPlatform Client Connect, 
  fn_Subscribe_Noti_Data())를 한다.
  3) 관리자는 메뉴관리를 수정한다.
  4) 시스템은 액터가 처리한 정보가 유효하면 Xpush 서버에게 메세지 전송을 요청한다.
  5) Xpush 서버는 해당 서버에 로그인된 전체 사용자에게 메시지를 일괄 전송한다.

  1.4. 후행조건 
  1) 시스템은 전송 받은 메세지를 alert을 띄워 전체 사용자에게 전송받은 메시지를 통보한다.

  1.5. 제약사항
--------------------------------------------------------------------------------------------------------

- 액터 찾기
1. 사용자, Xpush 서버, 전체사용자
- Use Case 찾기
1. 메뉴관리 변경, Xpush 메세지 처리, Xpush 메세지 전송
==============================================================================================================

- Class 명: ChageMenu
saveMst()

- Class 명: Xpush 
PushConnect() 
fn_Subscribe_Noti_Data()
Callback_PushNoti()
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.05(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 어린이날, 결혼 3주년

▦ 조기축구
03:00 기상 
03:30 UML 동영상 강좌(OJT KOERA)
04:30 UML 작성(Xpush(01.UseCase Diagram), Xpush(02. Sequence Diagram), Xpush(03. Class Diagram))
06:00 종료
06:40 자전거(문영APT -> 대림운동장)
06:30 대림운동장
07:00 숏게임(밤에 비가 와서 땅이 젖어 있었음, 축구화 젖었음)
08:00 종료
08:20 귀가
09:30 보라매공원(수종, 루옌: 어린이날 행사) ==> 소방차 종이 접기, 군악대 시범 
--> 편의점(미니스톱 보라매점)에서 컵라면, 과자 사먹음
14:00 종료
15:00 귀가
16:00 낮잠
19:00 기상
20:00 석식(네네치킨: 순살 반반 치킨(19,000원), 요기요에서 주문, 맛있었음)
23:00 취침
==============================================================================================================

- UML 동영상 강좌(OJT KOERA)
http://www.ojtkorea.com/contents/e-learning/?code=uml
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.06(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 비오고 흐림

- 임시공휴일
06:00 기상
11:40 중식
13:00 낮잠
16:40 기상
16:00 대림역 -> 을지로3가역(지하철: 보슬비가 옴) -> 종로3가역 9번 출구(도보)
16:30 쇼핑(18K 목걸이 쇼핑: 3군데 다님) ==> 오도리 쥬얼리(김지현 대표; 02)766-0258, 010-8742-3409)에서 18K 
	샤넬 목걸이 34만원에 구입
	--> 선금: 2만원, 32만원 송금할 것(국민은행: 674302-01-230177 김지현), 7월 13일(토)에 택배로 온다고 함.
17:30 명동
17:50 석식(보쌈[37,000원]: 홍대칼국수)
18:30 명동 구경
19:30 을지로 입구역 -> 대림역
20:30 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.07(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상
06:10 자전거(문영APT -> 대림운동장)
06:30 대림운동장
06:40 숏게임 
08:00 종료  
08:30 귀가
10:00 집출발: 수종, 루옌
10:15 대림역[김밥, 옥수수 구입[3,000원] -> 신도림역 -> 송내역(1번 출구)
11:00 송내 남부정류장(909번 버스): 수종 자전거 때문에 뒤로 탐.
11:20 수산동(하차)
11:30 인천 아람딸기 농장(예약: 3명 38,000원) ==> 40분 동안 딸기 따서 먹고 500g 팩 3개 담아 옴.
--> 배부르게 먹음.
12:30 종료
13:40 중식(돈가스, 알탕[9,500원]: 김밥천국)
14:00 로또 만원 어치 구입 ==> 모두 꽝
15:30 귀가
17:00 아파트 놀이터(수종이랑 놈)
19:30 쇼핑(장난감: 다이소)
19:40 쇼핑(우유, 치즈, 과자: 진흥마트)
20:00 귀가
20:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.08(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상
06:30 자전거(문영APT -> 도신초등학교)
06:50 도신초등학교
07:30 몸풀기, 훈련
08:30 숏게임
09:30 종료
09:50 도림초등학교
10:30 신림3동 배 축구 대회(신풍기) 입장식
10:40 쇼핑(다이소 대림점)
11:00 귀가
11:20 집출발(자전거, 수종이 태움)
11:40 도림초등학교
11:50 중식(수종이 밥 안 먹음, 핸드폰으로 동영상 봄)
14:00 예선(대림 3동 1:0 신길7동)
15:00 중식(수종이 밥 안 먹음, 형이랑 같이 놈)
15:30 쇼핑(수종 과자: 동네 마트)
16:00 4강(대림 3동 0:1 신광) ==> 공통 3위함.
--> 골잡이가 없어서 골을 못 넣음. 윙, 미들필드가 약함. 조직력이 약한 편.
--> 재식 총무 상견례하고 양복 입고 애인이랑 같이 옴.
17:00 종료
17:30 귀가
20:30 석식(라면)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.09(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 17:20 ==> 루옌 생일

- 삼성전기 MES 3.0 구축 Prj[★]
- Xpush 수정, 배포 처리 검토
1. /push_message_layout.xml, /Top_Frame_Recent.xfdl, /MenuMgmtView.xfdl
2. /CommonXPService.java, /CommonXPServiceImpl.java
==============================================================================================================

- 루옌 생일
17:20 퇴근
17:30 통근 버스
18:50 구로디지털단지역 도착
19:10 아이스크림 케익 구입(이마트 지하 1층 베스킨라빈스)
19:20 귀가
19:40 석식(소갈비살, 밥, 냉면[29,000원]: 준수네 고기생각 ==> 피자 서비스)
20:30 종료
20:40 귀가
21:30 루옌 생일 파티(케익, 포도주)
23:00 취침
==============================================================================================================

- 카카오 송금
1. PAY 비밀번호: 52**0*
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.10(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:20 ==>  

- 삼성전기 MES 3.0 구축 Prj[★]
- Xpush 수정, 배포 처리
1. 
==============================================================================================================
 
- Xplatform Transaction 호출 함수 :  UI 개발 가이드 참조 
4.1 Transaction 기본 구조
gfn_Transaction ("searchMain", ds_Service);

- ds_Service  xml 구조 
    <Col id="SERVICE_ID">searchMain</Col>
    <Col id="CONTROLLER"/>
    <Col id="OUTPUT_DS">ds_main=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="INPUT_DS"/>
    <Col id="SERVICE"/>:: default : commonXPService
    <Col id="METHOD">select</Col>:: select, save
    <Col id="Q_COUNT">1</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.sampleEduR</Col>
    <Col id="ASYNC"/>              
    <Col id="SERVICE_URL"/>                         :: default : CommonXPController.do
    <Col id="LOG_FLAG">Y</Col>               :: 서버로그
  
 4.2 Transaction 다중 처리 
gfn_Transaction ("searchMain", ds_Service);

- 다중 쿼리 진행시 쿼리 개수 쿼리 output_ds 를 조건 동기해야함
<Row>
    <Col id="SERVICE_ID">getMenuList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">3</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.menu.fullMenuTreeList
    q2=semcomes.common.menu.findMenuTreeList 
   q3=semcomes.common.menu.userRoleFullMenuList</Col>
    <Col id="OUTPUT_DS">gds_FullMenuList=q1 gds_MenuList=q2 gds_MenuRole=q3</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row>

  4.3 Transaction 저장 처리  
gfn_Transaction ("saveMain", ds_Service);

- 저장 처리시 추가,수정,삭제 일괄 처리
<Row>
    <Col id="SERVICE_ID">saveMain</Col>
    <Col id="CONTROLLER"/>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="SERVICE"/>
    <Col id="METHOD">save</Col>
    <Col id="Q_COUNT">1</Col>
    <Col id="INPUT_DS">q1=ds_main:U</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.sampleEduC,
                    semcomes.common.sampleEduU,
semcomes.common.sampleEduD</Col>
    <Col id="ASYNC"/>
    <Col id="SERVICE_URL"/>
    <Col id="LOG_FLAG">Y</Col>
  </Row>
=========================================================================================================
 
- ds_Service @@@  ==> /Top_Frame_Recent.xfdl 파일에서
<ColumnInfo>
  <Column id="SERVICE_ID" type="STRING" size="256"/>
  <Column id="CONTROLLER" type="STRING" size="256"/>
  <Column id="SERVICE" type="STRING" size="256"/>
  <Column id="METHOD" type="STRING" size="256"/>
  <Column id="Q_COUNT" type="STRING" size="256"/>
  <Column id="QUERY_LIST" type="STRING" size="256"/>
  <Column id="INPUT_DS" type="STRING" size="256"/>
  <Column id="OUTPUT_DS" type="STRING" size="256"/>
  <Column id="CALL_BACK" type="STRING" size="256"/>
  <Column id="ASYNC" type="STRING" size="256"/>
  <Column id="SERVICE_URL" type="STRING" size="256"/>
  <Column id="LOG_FLAG" type="STRING" size="256"/>
</ColumnInfo>
<Rows> 
  <Row>
    <Col id="SERVICE_ID">getUserRoleList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">1</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.userrole.list</Col>
    <Col id="OUTPUT_DS">gds_UserRole=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row> 
    <Row>
    <Col id="SERVICE_ID">getMenuList</Col>
    <Col id="METHOD">select</Col>
    <Col id="Q_COUNT">3</Col>
    <Col id="QUERY_LIST">q1=semcomes.common.menu.fullMenuTreeList q2=semcomes.common.menu.
    findMenuTreeList q3=semcomes.common.menu.userRoleFullMenuList</Col>
    <Col id="OUTPUT_DS">gds_FullMenuList=q1 gds_MenuList=q2 gds_MenuRole=q3</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
  </Row>
  <Row>
    <!--// 01. send Message From Xpush[처리일: 2016.05.09, by 진태만] //-->
    <Col id="SERVICE_ID">sendMessageFromXpush</Col>
    <Col id="Q_COUNT"/>
    <Col id="METHOD">sendMessageFromXpush</Col>
    <Col id="QUERY_LIST"/>
    <Col id="INPUT_DS">q1=ds_xpushList</Col>
    <Col id="OUTPUT_DS">ds_xpushList=q1</Col>
    <Col id="CALL_BACK">fn_CallBack</Col>
    <Col id="LOG_FLAG">Y</Col>
  </Row>
</Rows>
==============================================================================================================

- 반출 신청서 작성 및 결재 요청
1. 삼성전기 김현진 선임이 반출 신청서 작성하여 결재한다고 함 ==> 2016.05.13(금)에 반출 가능하다고 함.
2. 반출할 물품
 1) 노트북(김정률 부장이 처리한다고 함), 모니터, 키보드, 마우스 2개
==============================================================================================================

- 로지텍 무선 마우스 밧데리 교체(회사 업무용 마우스)
1. 구입: 2015.08.05(수) --> 1번빼 밧데리 교체: 2016.05.10(화)[7개월]
-------------------------------------------------------------------------------------------------------

- 로지텍 무선 마우스 구입(2015.08.05(수) 구입)
1. [B259804871] 로지텍 B175[일반] 로지텍 정품 무선마우스, 크기(W*H*D): 9.5 * 5.5 * 3.7 cm, 가격: 11,460원
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B259804871&frm3=V2
==============================================================================================================

- 뱅크웰렛 카카오(카카오 페이)
1. 지갑 비밀번호: *3*90*  --> 3*9 + 0*08
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.11(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Prj[★]
- 탭 전환 후 자동 이벤트 함수 호출 개발
1. 
==============================================================================================================

- Main 함수 호출
1. /Top_Frame_Recent.xfdl 파일에서 
2. /Work_Form.xfdl 파일에서 
/*------------------------------------------------------------------
* 기   능: 폼이 활성화되었을 때 발생하는 이벤트
* 인   수: N/A
* Return : N/A
------------------------------------------------------------------*/
function Work_Form_onactivate(obj:Form, e:ActivateEventInfo)
{  
var sMenuId = vsMenuId+semco_bizMenuSeq;
var oTab = eval(gv_sModule+".VFset_AIO.CF_mdi").form.tab_openedTab; 
trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [02. 폼이 활성화되었을 때 발생하는 이벤트] [TEST_01] [nApply]"+ nApply 
+"[vsMenuId]"+ vsMenuId +"[semco_bizMenuSeq]"+ semco_bizMenuSeq +"[oTab.getTabpageCount()]"+ oTab.getTabpageCount() );  

for(i=0; i<oTab.getTabpageCount(); i++) 
{
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_02] [i_번째]"+ i 
+"[oTab.tabpages[i].name]"+ oTab.tabpages[i].name +"[sMenuId]"+ sMenuId );  

if(oTab.tabpages[i].name == sMenuId) 
{
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_03] [i_번째]"+ i 
+"[oTab.tabpages[i].name]"+ oTab.tabpages[i].name +"[sMenuId]"+ sMenuId );  

oTab.tabindex = i;

if(oTab.getTabpageCount() > 1)   // Tab이 하나 이상일 때  ==> 추가[처리일: 2016.05.12, by 진태만]
{  
//trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST_04] [gv_nApply]"+ gv_nApply +"[gv_nApply_ori]"+ gv_nApply_ori );
 
 if(gv_nApply == 1)  // 이벤트 적용 이면
 {     
if(gv_nApply_ori == 0) // nApply_ori이 0 이면
{
trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [조회 함수 호출(Apply [F5]) 버튼 클릭]  ==> 
####[gv_nApply_ori]"+ gv_nApply_ori +"[vsMenuId]"+ vsMenuId +"[semco_bizMenuSeq]"+ semco_bizMenuSeq
+"[sMenuId]"+ sMenuId +"[oTab.getTabpageCount()]"+ oTab.getTabpageCount() );  

btn_apply_onclick();   // 조회 함수 호출(Apply [F5])  ==> 이벤트 추가 
gv_nApply_ori = toNumber(gv_nApply_ori) + 1;
  
if(vsMenuId == "MOS51707")  // Dispatch Main List 이면(MOS51707)  
{  
// div_left.div_filter.div_filterView.fn_DispatchingListFilter();    // TEST 이벤트 추가(DispatchingListFilter.xfdl)
// trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST 이벤트 추가(DispatchingListFilter.xfdl)]" );

// div_body.fn_DispatchingListView();  // TEST 이벤트 추가(DispatchingListView.xfdl)
// trace("[/Work_Form.xfdl] [Work_Form_onactivate()] ==> [TEST 이벤트 추가(DispatchingListView.xfdl)]" );   
}
}
 }
}  
}
}
}

3. /Bottom_Frame.xfdl 파일에서  ==> workMain(CF)[/Work_Form.xfdl] 호출
/*------------------------------------------------------------------
* 기   능: CTab에서 선택된 TabPage가 바뀐 직후 발생하는 이벤트 
* 인   수: N/A
* Return : N/A
------------------------------------------------------------------*/
function tab_openedTab_onchanged(obj:Tab, e:TabIndexChangeEventInfo)
{ 
var sMenuId = obj.tabpages[e.postindex].name; 
trace("[/Bottom_Frame.xfdl] [tab_openedTab_onchanged()] ==> [01. TabPage가 바뀐 직후 발생하는 이벤트] 
[TEST_01] [e.postindex]"+ e.postindex +"[sMenuId]"+ sMenuId ); 

if(sMenuId.indexOf("51707") > -1)  // Dispatch Main List 이면(MOS51707)  ==> 추가[처리일: 2016.05.12, by 진태만] 
{  
gv_nApply = 1;// 이벤트 적용
}
else
{
gv_nApply = 0; 
}

gv_nApply_ori = 0;  // nApply_ori 초기화
trace("[/Bottom_Frame.xfdl] [tab_openedTab_onchanged()] ==> [TEST_04] [gv_nApply]"+ gv_nApply +"[gv_nApply_ori]"+ gv_nApply_ori );

if(e.postindex < 0) return;

//초기화
st_totalValue.visible = false;
st_totalValue.text = "";

this.setTimer(1001, 100);

fn_tabBtnEnable();  
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.12(목) 작업 ■■■■■■■■■■■■■■■■■■

- 삼성전기 MES 3.0 구축 Prj[★]
- 탭 전환 후 자동 이벤트 함수 개발
1. 개발 소스 황규철 차장과 신용진 과장에게 메일로 전송(MOS 김진숙 과장 요청으로 배포는 하지 않음)
==============================================================================================================

- 아워홈 Prj 면접 정보 
1. 플젝명 : 아워홈 영업지원시스템 
2. 기    술 : Nexacro 
3. 분    야 : 공통개발
4. 일    시 : 5월13일(금) 08:30
5. 담당자 : 이중근 차장 소프트원(010-4050-3626)
6. 면접자 : 마진 차장 LG CNS 아워홈(010-2673-8098) 
7. 기타: 도착하시면 소프트원 현장 대리인 이중근 차장님에게 전화해서 안내 받으세요.
 1) 강남역 2번 출구 매리츠타워 6층
==============================================================================================================

- 루옌 목걸이 구입비 송금(22시, 집)
1. 오도리 쥬얼리: 우리은행 1002-041-575698, 박유관, 32만원 송금 완료.
==============================================================================================================

- 넥사크로플랫폼 14 / 넥사크로 스튜디오 가이드
http://docs.tobesoft.com/nexacro_studio_guide_nexacro_14_ko
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2016.05.13(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:50 ==>  

- 삼성전기 MES 3.0 구축 Prj[★] 철수
06:00 기상
07:30 지하철(대림역 -> 강남역 3번 출구)
09:00 매리츠타워
09:30 면접(마진차장: 공통 개발) 
10:10 종료
10:20 M5422번 버스(강남역 -> 삼성전기)
11:00 출근
11:40 중식
14:00 레노버 노트북 포맷 맡김	
	--> 1. 오후 2시에 요청을 해서 4시간 걸린다고 함.(C: SSD 256G, D: 1T)
	--> 2. 김정률 부장이 다음주 월요일 A/S센터로 찾으러 간다고 함.
16:00 삼성 SDS 안우현 수석에게 인사
16:30 퇴근 ==> 반출증(모니터, 마우스 2개, 키보드) 승인 받아 가져감(반입증 필요 없음)
17:20 삼성전기 통근 버스 탐(모니터가 무거움)
18:20 강남역(갤럭스 노트5 S팬 분실함)
18:40 (주)지아이데이타 사무실 방문(삼성 제일빌딩 20층) ==> 이석부 사장이 퇴직 처리 필요 없다고 함.(퇴직 
	신고만 한다고 함), 부산 파견, 주말 근무, 야근 지출(2016.04) 영수증 전달
19:00 치맥(이석부 사장이 사줌) ==> KT에 자바 개발자 40명 투입 했다고 함. 1년 후에 다시 (주)지아이데이타로 오라고 함.\
23:00 종료
23:50 택시(선릉역 -> 대림역): 지아이데이티 이석부 사장이 2만원 줌
01:00 귀가 
==============================================================================================================

- (주)소프트원 Prj 면접(08:30, 강남역) 
1. 플젝명 : 아워홈 영업지원시스템 
2. 기    술 : Nexacro 
3. 분    야 : 공통개발
4. 일    시 : 5월13일(금) 08:30
5. 담당자 : 이중근차장 소프트원(010-4050-3626)
6. 면접자 : 마진차장 LG CNS 아워홈(010-2673-8098) 
7. 기타: 도착하시면 소프트원 현장대리인 이중근차장님에게 전화해서 안내 받으세요.
 1) 강남역 3번 출구 매리츠타워 4층
8. 면접 내용: 공통 PL을 DBA가 맡아서 한다고 함. 체계가 안 잡힘. 잘못 하다간 (주)한섬 Prj가 될 것으로 우려됨.
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.05.14(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

- 주말
12:00 기상(술 많이 취했음)
13:30 중식
14:50 낮잠
15:00 기상
15:30 장보기(우유, 망고2팩: 기흥M)
18:00 쇼핑(이마트: 와이셔츠 2벌, 바지 ==> 태만 6월 생일 선물)
19:30 석식(이마트 3층 식당: 냉모밀)
20:30 귀가
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.15(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상 
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
07:00 숏게임
08:00 종료 
08:20 신도 조기회와 게임 ==> 4게임 함.
12:00 종료
12:30 중식(삼겹살, 서울식당)  ==> 이창호 후배랑 국제 결혼에 대해 이야기함.
14:00 종료
14:30 노래방 문닫아서 포기하고 귀가(비 많이 옴)
14:40 귀가
20:00 석식(짜장면 2그릇, 만다린): 배달 시킴
21:00 이발, 염색(루옌이 해줌)
23:00 취침
==============================================================================================================
	
■■■■■■■■■■■■■■■■■■ 2016.05.16(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> (주)소프트원 첫 출근
 
- (주)소프트원 첫 출근(9시)
1. 회사명: (주)소프트원, 대표이사: 조홍제
 1) 주소: 서울특별시 강서구 양천로 583, B동 901호(염창동, 우림블루나인)  ==> 소속: IT사업부
 2) 전화) 02-2093-2050~5  [FAX]:02-6280-2122, http://www.esoftone.co.kr
 3) 급여 조건: 연봉 5천 0백(퇴직 연금 시행)
 4) 사업지원팀 과장 김승욱, 서동근 과장
==============================================================================================================
 
- LG 노트북 지급 받음( (주)소프트원 서동근 과장으로 부터 받음) ==> 2016.05.16(월)
1. 모델명: LG S53
2. S/N: 309QCVU557847
3. 기본 정보: 
CUP: i5-3230M 2.6GHz
RAM: 8GB
HD: SSD 512G(C:244G, D:221G)
시스템 종류: 64비트 운영 체제
해상도: 1600*900
그래픽카드: AMD Radeon HD 7650M Series
4. 노트북 시건 장치(노트북 잠금) ==> 03** 
==============================================================================================================

- 소프트원 그룹웨어
http://webmail.esoftone.co.kr ==> tamario / hp수*16*1@
모바일 ==> 하이웍스앱 다운로드 --> tamario@esoftone.co.kr / hp수*16*1@
==============================================================================================================
 
- 넥사크로플랫폼 14 / 넥사크로 스튜디오 가이드
http://docs.tobesoft.com/nexacro_studio_guide_nexacro_14_ko
==============================================================================================================
 
- 중식(조홍제 대표님이 쏨)
1. 낙지덮밥: IT사업부 전태욱 이사 만남 ==> 2003년 9월 (주)케이와피젠 영업대표
==============================================================================================================

- 갤럭시노트5 S펜(골드플래티넘) 구입
http://storefarm.naver.com/fivestar5/products/126749646, 가격: 20,927원
==============================================================================================================

- 수종 어린이집 특강료 문의
1. 영아점토[19], 오르프[18], 유아체육[8])  ==> 월 4만 5천원(모든 아이들이 한다고 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.17(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 중식(사업지원팀이랑 식사: 굴 돌솥밥(만 천원))
 
- (주)소프트원 본사 대기
1. nexacro 분석

-[Tip] 넥사크로 플랫폼과 관련된 URL 모음
http://www.playnexacro.com/index.html#show:article

- nexacro platform 14 혼자서 공부하기
http://demo.nexacro.com/nexacroSelfStudy/nexacroSelfStudy_Beginner/root_ko.html

- Showcase  
http://support.tobesoft.co.kr/Next_JSP/nexacro/index.jsp

- 기술문서 
http://docs.tobesoft.com:1975/nexacro_technical_note_ko
==============================================================================================================

- 비밀번호 관리[2016.05.17(화)]
1. 라스트패스(LastPass)[무료] ==> 설치 --> https://lastpass.com/misc_download2.php
C:\Users\Administrator\AppData\LocalLow\LastPass\iehome2.html
1) LassPass ==> tamario@naver.com / hp태*@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.18(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 
 
- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스) 
D:\04. TAMA Program\71. Nexacro\01. Nexacro 자료\01. nexacro 공통 교육\2.설치\
실습설치_표준프레임워크3.2기반 nexacroplatform 개발자 가이드.docx
==============================================================================================================

- nexacro 공통 교육 자료
1. C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui\00. nxui.xprj
2. Runtime은 안됨 ==> MySQL DB 사용
3. MySQL DB 실행  ==> C:\eGovFrame-3.2\mysql-5.6.21\startup.bat
 01. nxui_NX ==> http://localhost/nxui/index.html  ==> chulsoo/test123 
System.out.println("[/LogInOutController.java] [loginCheck()] ==> [TEST_01]" ); 
==============================================================================================================

- nexacro alert 분석
this.btn_hello_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	trace("[/base_hello.xfdl] [btn_hello_onclick()] ==> [TEST_01]");
   
	this.alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> Hello");
  
	alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> [this.edit_hello.value(Edit value)]"+ this.edit_hello.value );
	
	application.alert("[/base_hello.xfdl] [btn_hello_onclick()] ==> [obj.text(버튼 Text)]"+ obj.text );
}
==============================================================================================================

- 파트너 플러스(LG CNS) 정보 수정
1. http://partnercampus.lgcns.com 접속 > log-in > 현장대리인 교육 수강 ==> DEV109094 / hp수*@
2. 소속업체 변경:  (주)투비소프트 --> (주)소프트원
3. 회사, 프로젝트 경력 변경
==============================================================================================================

- 연봉 협상((주)소프트원 사업지원팀
1. 총연봉: !천 !백(월: !,!85,000원) ==> 정규직(1년 후 퇴직금 지급[우리은행 퇴직연금])
2. 급여일: 25일 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.19(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 우리 블루나인 A동 3층에서 불남(11시쯤에 나와서 기업은행, 이마트 방문 후 중식)
 
- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스)
==============================================================================================================

- Nexacro 실행
 01. nxui_NX ==> http://localhost/nxui/index.html  ==> chulsoo/test123 

- Nexacro 프로젝트(/nxui.xprj) XPlatform로 열림
==============================================================================================================

- Component dll 에러
 (7120): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (ExtCommon)
 (7120): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XWrapComp)
 (7120): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XResponse)
 (7120): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XPrintEx)
 (7120): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XInitechAdp64)
 (7120): Error: 클래스(ExtCommon) 생성을 실패하였습니다.
 (7120): Error: 클래스(WebBrowser) 생성을 실패하였습니다.
 (7120): Error: 클래스(Response) 생성을 실패하였습니다.
 (7120): Error: 클래스(PrintEx) 생성을 실패하였습니다.
==============================================================================================================

- Do it! 안드로이드 앱 프로그래밍[개정 3판 마시멜로] 
1. 이지스 퍼블리싱 ===> http://easyspub.co.kr/50_Menu/VideoList
2. 동영상 ===>https://www.youtube.com/watch?v=WmijI0ip1No&feature=youtu.be 
-------------------------------------------------------------------------------------------------------

- 안드로이드 프로그래밍 정복(4판. 도서 출판 한빛 미디어) ==> 참조
http://www.soen.kr/book/android
==============================================================================================================

- 기업은행 퇴직연금 신탁통장(개인형IRP 계좌) 개설
1. (주)지아이데이타 퇴직 연금 받을 통장(기업은행 염창동 지점)  ==> 2016.05.19(목) @@@
 1) 계좌번호: 009-114608-94-001, 예금주: 진태만
 2) 2106년 6월 말에 (주)지아이데이타에서 360만원 정도 입금할 것으로 예상됨.
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.05.20(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 
 
- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스)
==============================================================================================================

- nexacro HTML5 방식 실행방법
0. nxui.xprj 파일 더블 클릭 ==> 00. nxui(사용 안함).xprj 파일 아님
1. Working Folder, Generate Path, Base Lib Path 기본 설정
 1) Working Folder: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui
 2) Generate Path: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\webapp
 ==> C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\webapp\nxui\index.html ==> 메인
 3) Base Lib Path: C:\eGovFrame-3.2\workspace\nexacroplatform\src\main\nxui\nexacro14lib

2. 로컬 db 구동
로컬Db 실행경로 : C:\eGovFrame-3.2\bin\mysql-5.6.21\ startup.bat

3. Generate Application 실행(nexacro에서)
nexacro generator (5976): Start Generate Project : nxui
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): [Warning:] Not exist default layout : <Div>
nexacro generator (5976): ====== Generate Project [nxui] : Success 65, Fail 0, Copy 949 ======
nexacro generator (5976): Total Time : 3.494 sec

4. 런처 실행(nexacro에서)
 1) Chrome, IE 선택 > Launch Project: 클릭
 2) Input the index.html URL: http://localhost/nxui/index.html 입력 > OK: 클릭

5. 로그인 ID/PW 입력(chulsoo/test123)(Chrome에서)

6. Chrome 실행 > F12  > Console > trace 로그 확인 가능(this.alert으로 창 띄우기 가능)
==============================================================================================================

- nexacro 로그
trace("[/userMgmt.xfdl] [fn_search()] ==> [목록조회] [TEST_01]");
application.trace("[/userMgmt.xfdl] [fn_search()] ==> [목록조회] [TEST_01]");
 
this.alert("[/userMgmt.xfdl] [fn_search()] ==> [목록조회] [TEST_01]"); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.21(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

- 주말
06:00 기상 
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
07:00 숏게임
08:00 종료 
08:20 귀가
11:00 중식
17:00 쇼핑(바지구입)
16:30 바지 재단(2벌, 남구로시장 옷수선집)
19:30 귀가
19:40 석식(뼈해장, 2그릇: 양평해장국): 테이크아웃
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.22(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상
06:10 잉글랜드 FA컵 시청(맨유 2:1 크리스탈 팰리스): 연장전 끝에 겨우 맨유 우승함.
07:20 자전거(문영APT -> 대림운동장)
07:30 대림운동장
08:00 게임 ==> 4게임 함(더위서 힘들었음: 여름 더위)
11:20 종료 
12:30 중식(냉면, 화평동 황제갈비)  ==> 회에서 쏨
13:30 귀가 
13:40 대림3동운동장(축구화 안 가져옴: 구석에 있는 것 겨우 찾았음)
13:20 귀가 
14:00 TV 시청
18:00 쇼핑(수박 구입: 남구로시장)
18:20 구로리 공원(수종이 어린이집 친구 만나서 잘 놀았음)
18:50 귀가
19:30  석식(소갈비살: 집에서 구워 먹음)
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.23(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 
 
- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스)
==============================================================================================================

- MySQL 분석
- /context-datasource.xml 파일에서
<!-- mysql -->
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
	<property name="driverClassName" value="com.mysql.jdbc.Driver"/>
	<property name="url" value="jdbc:mysql://localhost:3306/test"/>
	<property name="username" value="nexacro"/>
	<property name="password" value="nexacro"/>
</bean>

- /sql-map-config.xml 파일에서
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE sqlMapConfig PUBLIC "-//iBATIS.com//DTD SQL Map Config 2.0//EN" "http://www.ibatis.com/dtd/sql-map-config-2.dtd">
<sqlMapConfig> 
	<sqlMap resource="egovframework/sqlmap/rte/sample/LogInOut.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/User.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Code.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Board.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Group.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/GroupUser.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Menu.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Page.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/GroupMenu.xml" />
	<sqlMap resource="egovframework/sqlmap/rte/sample/Sample.xml" /> 
</sqlMapConfig> 
==============================================================================================================

- eclipse console log 다른 프로그램에서 모니터 하기
1. i-Tail
http://mainia.tistory.com/169

2. mtail
http://egloos.zum.com/namomo/v/3586763
==> 둘 다 한글 깨짐.(사용 불가)
-------------------------------------------------------------------------------------------------------

- 이클립스(eclipse)에서 톰켓(tomcat) 콘솔(console) 로그(log) 파일 지정
1. 사용법: eclipse > Server > Tomcat v7.0 Server at localhost: 더블클릭 > Overview(새창)
> Open launch configuration: 클릭 > Edit Configuration(새창) > Common탭 클릭 후 로그파일 지정 > Standard Input and Output 
File ==> C:\eGovFrame-3.2\apache-tomcat7\logs\tomcat.log(직접 입력), Append: 체크 > Apply: OK: 클릭
==============================================================================================================

- Toad for MySQL 다운로드(http://www.toadworld.com/m/freeware)
1. ToadforMySQL_Freeware_7.7.0.579.zip 다운로드 후 설치
2. Dell Software Sign In(https://account.software.dell.com/)  ==> tamario@naver.com  / hptnwhd1601@
-------------------------------------------------------------------------------------------------------------------------------

- MySQL DB 연결
- Create New Connection
1. Connection type: TCP
2. Host: localhost
3. User: nexacro
4. Password: nexacro
5. Database: test
6. Port: 3306
-------------------------------------------------------------------------------------------------------------------------------

- MySQL Database test 경로
C:\eGovFrame-3.2\mysql-5.6.21\data\test
==============================================================================================================

- LG 모니터 지급 받음( (주)소프트원 서동근 과장으로 부터 받음) ==> 2016.05.23(월)
1. 모델명: LG FLATRON 23EA53VQ
2. S/N: 311NDPH5M920 
==============================================================================================================

- WebSquare 동영상
https://www.youtube.com/watch?v=sevB2h0NbKI&list=PLh3WQjkIHzwLlEi7gUtDPXCd4lCndNq3b
==============================================================================================================

- 쌀 구입
1. [B281763226] 소사뜰 2015 아침뜰애[20kg], 가격: 30,900원 ==> 옥션
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B281763226&frm3=V2
==============================================================================================================

- 노트북 거치대 구입
1. 아이매직 IM1000 블랙 5단 각도조절 일체형 구조 노트북거치대, 가격: 9,400원 ==> 11번가
http://deal.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=405943165&xzone=order^list&xfrom=order^list
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.05.24(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 비 많이 옴
 
- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스)
==============================================================================================================

- Chrome 브라우저에서 소스 변경이 안될 때
1. Chrome 설정 > 고급 설정 표시 > 개인정보 > 인터넷 사용 기록 삭제(새창)
 1) 쿠키, 기타 사이트 및 플로그인 데이터: 체크
 2) 캐시된 이미지 또는 파일: 체크 
==> 인터넷 사용 기록 삭제 버튼: 클릭
==============================================================================================================

- 서브원(MRO) 분석, 설계 제안
1. 최재식 이사님(커피 미팅): 중국 사이트 흡수(JAVA, JSP)
==============================================================================================================

[인터뷰] "한국 경제, 온탕 속 개구리처럼 죽어간다"
http://www.pressian.com/news/article.html?no=136889&ref=nav_mynews
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2016.05.25(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:30 ==> 휠라 코리아 프로젝트 투입(14시)

- (주)소프트원 본사 대기
1. nxui 분석(nexacro 소스) ==> 완료 @@@
==============================================================================================================

- (주)소프트원 본사 프린터 설치(실패) ==> 무선으로 안 잡힌다고 함(설치 안함)
01. 프린터: HP LaserJet 1536dnf MFP
http://support.hp.com/kr-ko/drivers/selfservice/HP-LaserJet-M1530-Multifunction-Printer-series/3974271/model/3974278 
02. 프린터(스캔용): HP Color LaserJet CM1312nfi MFP 
==============================================================================================================

- 휠라 코리아 차세대 통합ERP Proj 투입(9시, 공통) Prj[★] 
0. 프로젝트명: Fila Korea 차세대 통합ERP 프로젝트[10월말 예상 완료 예상]
 1) 위치: 서울 서초구 명달로 6(예술의 전당 근처)
 2) 역할: 물류/고객 개발
1. 전태욱 이사님((주)소프트원 영업 이사, HP: 010-8894-9086) 인솔
 1) 지문등록: 김승태 부장 자리에서 처리
2. 프로젝트 인력
 1) 김승태 부장(010-2328-2005, (주)LG CNS, PM) 
 2) 이진우 이사(010-8149-8520, (주)소프트원, 현장 관리자 겸 PM) 
 3) 정동국 부장(010-2499-9518, (주)소프트원, SCM PL)
==============================================================================================================

- 휠라 코리아 프로젝트 IP 주소 설정(IP 설정) 
1. IP 주소: 192.168.133.18
2. S/M: 255.255.255.0
3. GW: 192.168.133.202
4. 기본 DNS: 168.126.63.1
 보조 DNS: 168.126.63.2
-------------------------------------------------------------------------------------

- 파일 서버: 192.168.133.250
네트워크 > 네트워크 드라이브 연결(N)(새창)
폴더(D): \\192.168.133.250\작업용	 --> 마침(F)
-------------------------------------------------------------------------------------

- 프린터: 192.168.133.100
- SCM SVB 서버
1. svn://172.16.41.114:23033/repository ==> tamario / tama339
==============================================================================================================

- 모니터 에러
1. 현상: 모니터 케이블 연결[다중 디스플레이(M): 디스플레이 확장 선택]하면 2~30초 지나면 줄이 생겼다가 없어짐.
2. 원인: 
1) 모니터 케이블 연결 에러 문제이거나 모니터 노후화가 문제일 것으로 추정 ==> 아님
2) 노트북 그래픽 카드 문제일 것이라 추정됨(AMD Radeon HD 7650M Series)
 가. 모니터를 백재일 부장 노트북에 붙이면 정상.  --> 모니터 정상.
 나. 프리랜서 모니터(같은 기종)을 내 노트북에 붙이면 줄이 생기고 깜빡 거림 .--> 노트북 비 정상
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.26(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:30 ==>

- 휠라 코리아 차세대 통합ERP Prj[★]
- WebSquare5 기본 기능 교육 - 2014(동영상 강의)
https://www.youtube.com/playlist?list=PL7a9HhkvOVb0N5bNlkfuqPip0LvAwaMPH
==============================================================================================================

- 개발 환경 설정
1. C:\FilaKoreaERP ==> (주)소프트원 황정곤 사원이 설정해줌
2. PL/SQL 설치
==============================================================================================================

- WebSquare5 설치
1. MDI.xml
C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.web-resources\src\main\webapp\wqui\cm\MDI.xml
==============================================================================================================

- 공통코드관리
/CM_CmmCdMngm.xml
==============================================================================================================

- WebSquare5 로그
$w.log("[/CM_CmmCdMngm.xml] ==> [TEST_01]");
$w.log("[/CM_CmmCdMngm.xml] [doInit()] ==> [화면 초기화 정의] [TEST_01]");
------------------------------------------------------------------------------------------------

- Transaction 조회 결과 로그
alert(e.responseText);    // 조회 결과
alert(e.responseBody);
alert(e.responseJSON); 
alert(e.responseStatusCode);   // 조회 에러시
------------------------------------------------------------------------------------------------

- Grid 버튼 클릭시
scwin.grd_cmcdMstList_oncellclick = function(row,col) {
	var tmpID = gridView3.getColumnID(col):  // 칼럼 ID명

	if (tmpID == "btn") {
		alert(userList.getCellData( row, "name"));
	}
};
==============================================================================================================

- 휠라 코리아 안재우 부장 하소연
1. 분석, 설계는 정상적으로 되고 있는데 개발이 많이 지연된다고 함.(원인 분석을 원함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.27(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:30 ==>

- 휠라 코리아 차세대 통합ERP Prj[★]
- 휠라 코리아 차세대 통합ERP Proj 소스 분석
1. 윤정희 차장(공통PL, (주)소프트원 프리랜서)
==============================================================================================================

- DB 연결(휠라 코리아 차세대 통합ERP Proj) 에러
1. 현상:
2016-05-27 08:55:09,943  INFO [org.springframework.web.socket.config.WebSocketMessageBrokerStats] 
WebSocketSession[0 current WS(0)-HttpStream(0)-HttpPoll(0), 0 total, 0 closed abnormally (0 connect failure, 0 send limit, 0 transport error)], 
stompSubProtocol[processed CONNECT(0)-CONNECTED(0)-DISCONNECT(0)], stompBrokerRelay[null], 
inboundChannel[pool size = 0, active threads = 0, queued tasks = 0, completed tasks = 0], 
outboundChannelpool size = 0, active threads = 0, queued tasks = 0, completed tasks = 0], sockJsScheduler[pool size = 1,
active threads = 1, queued tasks = 0, completed tasks = 0]
==============================================================================================================

- WebSquare 실행 에러
1. 현상: Loading License. PATH: C:\FilaKoreaERP\workspace\FilaKoreaERP\FilaKoreaERP.web-resources\src\main\webapp\websquare_home\license\license
2. 원인: License 문제가 아님.(소스 수정 문제라고 추정됨)
3. 조치: 에러난 소스 수정 후 정상 작동
==============================================================================================================

- DB 연결(휠라 코리아 차세대 통합ERP Proj)
1. 개발서버 Oracle DB 연결: 172.16.41.114, PORT: 1521 --> ERPDEV: SCMADM/!dlatl00, FKDW: fkerp/fkerp, FS21: fkerp/!dlatl00
---------------------------------------------------------------------------------------------------

- /tnsnames.ora 파일에서
ERPDEV = 
	(DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = 172.16.41.114)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = ERPDEV)
    )
  )

FKDW =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = 172.16.0.2)(PORT = 1541))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = FKDW)
    )
  )
==============================================================================================================

- ibatis 주석처리
<select id="selectCommCdList" parameterType="HashMap" resultType="HashMap">
SELECT /* kr.co.fila.cm.dao.CommCodeDao.selectCommCatList - 공통코드 조회(/CommCode_sqlmap.xml) */  
SELECT /* selectCommCdList[공통코드 조회(/CommCode_sqlmap.xml)] */
       GRP_CD
     , CODE
FROM TB_T
</select> 

/* [02. 프로그램 진척현황 조회] hse.cm.cmm.dao.prgrArslMngmDAO.selectPrgrArslDgrMngm*/
==============================================================================================================

 - LG 노트북 재 지급 받음((주)소프트원 서동근 과장으로 부터 받음: 퇴근 후 본사로 다시 감) ==> 2016.05.27(금) 
1. 모델명: LG Xnote 15UD560-KX7DK
2. S/N: 605NZDC027786
3. 기본 정보: 
CUP: Intel i7-6500U(2.5GHz)
RAM: 8GB DDR3
HD: 1TB
그래픽카드: NVIDIA Geforce 940M 2GB
사이즈/해상도: 15.6인치/1920*1080 
시스템 종류: 64비트 운영 체제 
4. 노트북 시건 장치(노트북 잠금) ==> 03** 
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1421461641#tabProductReturn
==> 가격: 1,167,340원,  SSD 256G추가: 1,264,700원
-------------------------------------------------------------------------------------------------------

- LG 모니터 지급 받음( (주)소프트원 서동근 과장으로 부터 받음) ==> 2016.05.23(월) 
1. 모델명: LG FLATRON 23EA53VQ(23EA53VQ-PA.BKRHJVN)  
2. S/N: 311NDPH5M920  
==============================================================================================================

- 노트북 재지급
18:00 퇴근 
18:05 마을 버스(휠라코리아 -> 사당역)
18:15 지하철(사당역 -> 대림역)
18:30 귀가(삼성 SSD 256 찾아가 가지고 감)
18:40 집출발 
19:00 버스(대림역 -> 백석초교(등촌역)) : 노트북 재지급
20:00 귀사 ==> LG 노트북[LG Xnote 15UD560-KX7DK] 재 지급 받음((주)소프트원 서동근 과장으로 부터 받음)
        --> 포맷 안하고 가지고 옴, 노트북 케이블과 모니터 케이블이 바뀌었다는 것 인지
21:30 귀가 
21:40 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.28(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

- 주말
06:00 기상 
06:20 자전거(문영APT -> 대림운동장)
06:30 대림운동장
07:00 숏게임
08:00 종료 
08:20 귀가
08:50 조식(라면)
09:30 집출발
09:50 LG전자서비스 센터(관악서비스센터) 방문(자전거, 수종)
10:00 LG 노트북(울트라) USB 부팅 디스켓으로 WIN7 OS 설치시 USB2.0 인식 안됨 문의
       ==> 내장 드라이브 방식 설명, WIN7 OS 설치
11:10 종료
11:20 보라매 공원(수종)
11:50 귀가
12:30 중식
12:50 루옌, 수종 다오집에 놀러감
13:00 노트북 프로그램 설치
15:00 낮잠
18:00 기상
18:30 루옌, 수종 도착
19:30 석식(소갈비살, 밥, 냉면[42,000원]: 준수네 고기생각 ==> 피자 서비스)
23:00 취침
==============================================================================================================

- LG 노트북 최신 바이오스 USB 부팅하기  
0. 키보드의 F2번을 눌러줍니다. 초기 바이오스 화면으로 진입
1. advanced 부분에 UEFI BOOT 부분을 OFF  
2. security 부분에 bootconfiguration 을 마지막 사진처럼 secure boot option 을 off 해놓으시면 끝 !! 
http://blog.naver.com/skyeye7953/220648536056
==============================================================================================================

- LG 노트북(울트라) USB 부팅 디스켓으로 WIN7 OS 설치시 USB2.0 인식 안됨
1. 원인: WIN7 OS 설치시 USB2.0 인식 안됨.
2. 조치: 폴더 찾아보기(새창)에서 USB3 32bit용을 2번 설치하면 USB2.0 인식됨.
 1) 컴퓨터 > DnA(C:) > USB3\Drivers\Win7\x86
--------------------------------------------------------------------------------------------------------

- LG 노트북(울트라) 울트라용 SSD 설치
1. mSATA(SATA3) SSD를 별도로 설치해야 됨.
 1) 삼성 850 EVO mSATA 시리즈 ==> 256G -> 가격:109,490원, 526G -> 가격: 197,390원
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&firpg=01&sc.prdNo=3403703907&sc.dispNo=016001&sc.dispNo=016001
==============================================================================================================
 
- LG전자서비스 센터
1. 관악서비스센터: 서울 관악구 신림동   1444-8 LG BEST SHOP 관악점 2층
https://www.lgservice.co.kr/center/selectCenterSearchDetail.do?cSeq=194
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.29(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  

▦ 조기축구
06:00 기상
06:10 UEFA 챔스 결승(레알 M: AT M): 03:45 ==>  레알 마드리드 우승
07:20 자전거(문영APT -> 대림운동장)
07:30 대림운동장
08:00 숏게임
08:30 게임 ==> 5게임 함(아현팀 초청)
11:30 종료
12:30 중식(막걸리, 두부: 팔각정)  ==> 닭도리탕 배달
14:00 46번 고문님 지하 도박장
14:20 남구로시장(수박, 바나나 ==> 만 3천원)
14:30 귀가
15:00 낮잠
17:00 기상
19:30 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.30(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==> 회의실로 자리 이동

- 휠라 코리아 차세대 통합ERP Prj[★]
- 공통 교육
1. 윤정희 차장(공통PL), 이재현 과장(공통)
==============================================================================================================
 
- 기획, 구매, 생산, 협력업체 포탈 보완 작업  
1. 기획(사업계획기획): 13건
2. 구매: 15건  ===> 26건 
3. 생산: 11건
4. 협력업체: 0건(단위테스트 케이스 미존재)  ===> 11건
==============================================================================================================

- 개발서버(172.16.41.114)에 접속하여(계정명: svnadm/!dlatl00)
$ slog.sh  
$ tail -f
--------------------------------------------------------------------------------------------------------

- 개발서버
http://172.16.41.114:10090/websquare/websquare.html?w2xPath=/wqui/cm/MDI.xml#none
==============================================================================================================

- LG 울트라 노트북 랜선 연결 안됨
1. 울트라북용 랜선을 연결해야 함(USB 랜선 포트 있어야 함) 
==> USB 랜선 포트 구멍을 밑으로 내리면 연결 가능함
--------------------------------------------------------------------------------------------------------

- LG 울트라 노트북 모니터 연결 케이블 안됨
1. 노트북 모니터 연결 케이블 연결 단자가 없음
2. HDMI 케이블이 있어야 함.
==============================================================================================================

- msvcr71.dll 파일 오류 해결방법 
한글2007이나 각종 프로그램들을 사용하다 갑자기 msvcr71.dll이라는 파일이 없다면서 실행이 안되는 오류가
발생할 때가 있습니다. 바이러스나 파일 손상이 발생했을때 이런 에러가 발생하는데 그럴경우 간단하게 
저 아래 파일만 다운받아 시스템 폴더에 넣어주기만 하면 간단히 해결되는 경우가 많습니다. 
만약 msvcr71.dll 오류가 발생한다면 아래 파일을 다운받아 주세요.

윈도우XP : C:\Windows\System32
윈도우Vista : C:\Windows
윈도우7 (32bit) : C:\Windows\System32
윈도우7 (64bit) : C:\Windows\SysWOW64   ===> 붙여 넣기할 것 @@@
==============================================================================================================

- 소트프원 추가 인력 투입
1. 김종태 부장(010-4244346, 분석, 설계) 투입, 박광혁 사원(010-4244346, 공통 보완) 투입
==============================================================================================================

- 곽현준 차장에게 선물
1. USB 선풍기 빌려줌
2. 베트남 커피 1통 줌
==============================================================================================================
 
- 모바일 핫스팟 사용(KT 핸드폰으로 인터넷 연결)
1. 갤럭시 노트5에서 설정 >  모바일 핫스팟> 사용 설정
2. 노트북에서 설정 >  무선네트워크 연결
==============================================================================================================

- 고객등록(/CS_CustInput.xml)  ==> 샘플, 기준
1. 캠페인그룹관리(/CS_CmpgGrpMngm.xml) 
2. 쿠폰관리(/CS_CS_CponMngm.xml) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2016.05.31(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:30 ==> 박광혁 사원과 싸움

- 휠라 코리아 차세대 통합ERP Prj[★]
- 기획, 구매, 생산, 협력업체 포탈 보완 작업  
1. 기획(사업계획기획): 13건
2. 구매: 15건  ===> 26건  
3. 강봉주: 이전 기획, 구매, 생산, 협력업체 포탈 기획자
==============================================================================================================
 
- 기획 보완 작업  ==> 보완 예정 건수: 5건
1. PN-001 ITEM조회(/PN_ItemInqy.xml, R) ==> 완료(보완 예정)
2. PN-002 사이즈조회(/PN_SizeInqy.xml, R) ==>  완료(보완 예정)
3. PN-003 디자인샘플정보(/PN_DsgnSmplInfr.xml, CRUD)  ==> CRUD 프로그램(제외)
4. PN-005 디자인샘플납품요청(/PN_DsgnSmplDlvrAsk.xml, CR) ==> 개발 중
5. PN-006 디자인샘플입고확정(/PN_DsgnSmplInFix.xml, CRUD) ==> 개발 중

6. PN-007 디자인샘플정산(/PN_DsgnSmglSttl.xml, CRUD)  ==> 개발 중
7. PN-009 디자인샘플진행현황(/PN_DsgnSmplPrgsStat.xml, C) ==>  완료(보완 예정)
8. PN-010 스타일정보(/PN_StylInfr.xml, R)    ==> 개발 중
9. PN-016 QR Alert기준(/PN_QrAlertStdInput.xml, CRUD) ==> 개발 중
10. PN-019 거래처등록요청(/PN_CstrInputAsk.xml, CRUD)   ==> CRUD 프로그램(제외)

11. PN-021 거래처조회(/PN_CstrInqy.xml, R) ==> 완료(보완 예정)
12. PN-050 거래처등록승인(/PN_CstrAprv.xml, CRU)   ==> CRUD 프로그램(제외)
13. PN-011 확정소비자가 등록(/PN_FnlCnsmPrceInput.xml, R) ==> 완료(보완 예정)
14. PN-012 KAN코드등록(/PN_KanCdInput.xml, R):    ==> 개발 중
--------------------------------------------------------------------------------------------------------
 
- 구매 보완 작업 ==> 보완 예정 건수: 2건
1. PO-001 자재코드(/PO_MtrlCd.xml, CRUD): ==> CRUD 프로그램(제외)
2. PO-002 자재창고관리(/PO_MtrlWrhsMngm.xml, R):   ==> 개발 중
3. PO-003 BOM접수및소요량(/PO_BomSpecAccper.xml, CRUD)  ==> CRUD 프로그램(제외)
4. PO-004 자재소싱진행현황(/PO_MtrlSrcngPrgsStat.xml, R):   ==> 완료(보완 예정)
5. PO-005 자재발주등록(/PO_MtrlOrdrInput.xml, CRUD):  ==> 개발 중

6. PO-006 자재발주미발주현황(/PO_MtrlNotOrdrStat.xml, CRUD): ==> 개발 중
7. PO-007 자재발주현황(/PO_MtrlSrcngPrgsStat.xml, C):  ==> 개발 중
8. PO-008 자재발주수정취소(/PO_MtrlOrdrUpdtCanc.xml, R):  ==> 완료(보완 예정)
9. PO-009 자재발주수정취소현황(/PO_MtrlOrdrUpdtCancStat.xml, R) ==> 개발 중
10. PO-010 협력업체자재입고예정확정(/PO_VndrMtrlWinscFix.xml, R) ==> 개발 중

11. PO-011 자재입고반송요청(/PO_MtrlInInrtnAsk.xml, CRUD) ==> 개발 중
12. PO-012 기간별자재입고현황(/PO_TermLyMtrlInStat.xml, R) ==> 개발 중
13. PO-013 자재입고완료등록(/PO_MtrlInCmplInput.xml, CRUD) ==> 개발 중
14. PO-014 자재입고정산(/PO_MtrlInSttl.xml, CRUD) ==> 개발 중
15. PO-015 자재입고정산취소(/PO_MtrlInSttlCanc.xml, CRUD) ==> 개발 중
==============================================================================================================

- 분석 설계 문서 @@@
FILA Korea 회의록
FILA Korea 요구사항 정의서
FILA Korea To-Be 프로세스 리스트
FILA Korea To-Be 프로세스 정의서
FILA Korea 화면_보고서 정의서
==============================================================================================================

- 토스(송금) 비밀번호
1. 토스 비밀번호: 03**A --> 힌트: 339
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■