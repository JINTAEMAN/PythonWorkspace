

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2011.10) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2011.10.01(토) 작업 ■■■■■■■■■■■■■■■
 ---> 08:20 ~ 21:00  --> 토요근무, 오피(태영, 21:00 ~ 22:00) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 운영서버 테스트 
==============================================================================================================

- 카드결제 취소(반품교환) 개발 
1. 카드반품리스트(BYOMB75P) 수정 ==> 주문수정취소 카드취소(BYOMM90P) 
reqGetClmCardList  --> by.er.clmapp.ClmProcessSvcImpl  ==> dsRtnExCardList=rtnExCardList dsOrderCardInfo=orderCardInfo 
reqCancelCardRtn  --> by.er.clmapp.ClmProcessSvcImpl  ==> ClmProcessSVO=dsSearch rtnExCardList=dsRtnExCardList:U 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.02(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:50 기상 
06:52 예배(광림교회) ==> 설교(김정식 목사: 여호와를 앙망하는 자) 
08:20 종료 
08:40 조기축구(6:4 패, 1 G) 
10:30 종료 
11:00 중식(갈비탕(2그릇): 수인이형이 쏨) ==> 코스트코 스포츠 양말(태호형: 2만원) 
14:00 귀가 
16:00 취침 
21:30 석식(라면) 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.03(월) 작업 ■■■■■■■■■■■■■■■■
 ---> 09:30 ~ 23:00  --> 개천절(근무), 조기축구(07:20 ~ 08:50), 통합테스트 준비 

- IMK 차세대Prj
- MP Hub DashBoard 고객사 수정 
1. 완료 처리(추후 디자인 입히는 작업할 것) 
==============================================================================================================

- 이마트 양재점 
1. 포스코사거리 --> 이마트 양재점(1.6km), 포스코사거리 --> 선릉역(0.9km) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.04(화) 작업 ■■■■■■■■■■■■■■■
 ---> 07:20 ~ 21:50  --> 야근(포시즌), 통합테스트 준비2(DB 속도 느림) 

- IMK 차세대Prj
- MP Hub DashBoard 고객사 수정 
1. Hub DashBoard anchor 안 먹음 
1) 조치: Project 'imk_mall'에서 ADL 'imk_mall_mt' ==> MainFrame .....--> childFrame에서 Properites ==> Position 
> openstus: maximize 
==============================================================================================================

- 사업장 정보 변경 
1. 로그인(허브): JINNY(고상진) ==> 고객관리 > 사업장조회: 회사: 동국제강: 조회(클릭) --> 변경 --> 결재 상신(임시저장) 
2. http://www.stage.samsung.net, gonee.kwon/1qaz2wsx(권성욱)  ==> 결재 처리(변경 완료 됨) 
==============================================================================================================

- 이비인후과 예약 
1. 코모키 이비인후과 T)561-7582, 주소: 서울 강남구 삼성1동 158-12 서영빌딩 8층(http://www.komoki.com) 
2. 예약일: 2011년 10월 04일 17시 30분 
3. 귀염증(곰팡이균): 외이도염(약 없이 치료만 받고 옴) 
4. 외이도염 예방법: 외이도 피부에 과도한 자극을 가하지 않는 것이다. 면봉, 종이, 귀이개 등을 쓰지 않도록 하고, 
추운 곳에서 수영하거나 다이빙을 자주 하는 경우 귀마개를 사용하도록 한다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.05(수) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 21:50  --> 야근(포시즌), 보안과 함께하는 프로젝트 수행 동영상 청취 

- IMK 차세대Prj
- MP Hub DashBoard 고객사 수정 
1. 디자인 적용 완료 
==============================================================================================================

- 통합테스트 회의 
1. DB 튜닝 실시(반정규화) 
1) TORTG2110(주문품목 TB)에 7개 필드 추가 ===> 
- TORTG2160(TB):고객회사ID, 고객사업장ID 
- TORTG2200(주문관계자TB): 구매요청/주문자ID, DM ID, 인수자ID, 품목담당자ID, 주문대행자ID 
==============================================================================================================

- 시게이트(1TB, 2,5인치, USB 3.0) --> 가격: 112,820원  ==> 외장 Cable 
http://item.gmarket.co.kr/detailview/Item.asp?goodscode=218190292&interest_group_no=1 
- 외장하드 버팔로(1TB, 2,5인치, USB 3.0) --> 가격: 119,000원 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=213624458&GoodsSale=Y&jaehuid=200002657&service_id=pcdn 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.06(목) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 21:50  --> 야근(포시즌) 

- IMK 차세대Prj
- MP Hub DashBoard 고객사 수정 
==============================================================================================================

- 회사, 사업장 관계 정의 
1. MRO: 회사 --> 사업장 --> 조직 --> 사용자[실제 사용 -> 1:회사] 
2. IMK Shop: 회사(IMK Shop, 대한의사협회) --> 사업장[실제 사용 -> 2:사업장] 
3. 옥션: 회사 --> 사업장[실제 사용 -> 2:사업장] 
/* 고객사분류코드[HT080](1:회사, 2:사업장, 3:조직, 4:사원) */ 
[고객역할(HCUTG1170) TB]  <== [고객(HCUTG1110) TB] ===> [고객관계(HCUTG1160) TB] 
==============================================================================================================

- 3자 테스트 결함 처리 
1122: [05.영업-BYERB02P-69] 가능 수량 이상의 수량을 반품처리시 알림 메세지에 오탈자가 존재함 ==> 처리 
1450: 교환/반품처리현황(BYERM18M) 화면에서초기화 시 초기화값으로 전환되지 않음 ==> 처리 
1500: 반품교환요청 POP(BYERB05P) 화면에서 화면 하단 틀 통일 요망 ==> 처리 
1450: 반품교환처리현황(BYERM01M) 화면에서 복사한 값을 지운 후 조회하여도 값이 조회되지 않는다. ==> 처리 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.07(금) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 21:20  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환관리(BYERM18M) 수정 
1. 조회조건 수정 
==============================================================================================================

- 간소화 사이트 개발 
1. 반품교환관리(STERD10M) 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.08(토) 작업 ■■■■■■■■■■■■■■■■
 ---> 08:30 ~ 21:50  --> 조기축구(07:00 ~ 07:50, 4:1 패), 토요근무, 반품 최종 테스트 참석 

- IMK 차세대Prj
- G-ERP 사이트 개발 
1. 반품교환관리(GLOMGH0M) 수정 
==============================================================================================================

- 반품 배송추적조회(BYERB06P) 수정 
==============================================================================================================

- 공통코드 호출 다국어 적용 
// Session의 국가코드를 가져와 조회조건에 추가해 준다. 
timezoneSVO.setSessionLangCd((String)CommonDataService.get(IMKConstants.USER_LANG_CD));  
//세션언어코드값(sessionLangCd)  ===> VO에 수동으로 등록 

 ,(SELECT CD   FROM CCMTC0100  
       WHERE CD = A.RTN_EX_STU_CD  
        AND LANG_CD = NVL(:sessionLangCd ,'KO')  //세션언어코드값 
        AND CD_LST_ID = 'ST579') AS ORD_STU_CLSF_CD   
; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.09(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
06:00 기상 
06:52 예배(광림교회) ==> 설교(고종광 목사: 마지막 당부) 
08:20 종료 
08:40 조기축구(8:4 패) 
10:30 종료 
11:20 중식(갈비탕) 
12:20 종료 
13:20 남대문 시장 ==> 가방(40리터, 3만원) 
14:30 귀가 
15:00 영화 시청(고지전, 소스코드) 
16:30 야구 시청(준PO 2차, KIA:SK, 2:3 패) 
21:30 석식(과자) 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.10(월) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 21:30  --> 야근(포시즌), 통합테스트 착수 오리엔테이션(14:00 ~ 16:00) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 에러 
하나의 운송지시, 하나의 입고로 처리된 주문 수량 3개에 대해 1개 반품 처리 후, 추가 반품 요청시 해당 화면 
에서 반품 처리 로직에 오류 존재 
==============================================================================================================

--반품 정보 확인 조회(에러) @@@@@@@@@@@@@@@@@@  ===> 총 2건(201200001, 2015347710) 
SELECT T2.ORD_ID AS 주문ID 
      ,T1.CLM_ITM_ID as 클레임품목ID 
      ,T1.GR_ID as 입고ID 
      ,T1.CUST_GR_YN AS 고객입고여부 
      ,RTN_EX_STU_CD as 반품교환상태코드 /* 반품교환상태코드(A:요청, B:접수(승인), C:거부, D:완료, E:요청취소, F:미처리(요청, 거부)) */ 
      ,(SELECT CD_NM 
          FROM CCMTC0100 
         WHERE CD = T1.RTN_EX_STU_CD 
           AND CD_LST_ID = 'ST579') AS 반품교환상태 
      ,RTN_EX_TRNS_TP_CD AS 반품교환운송유형코드 /* 반품교환운송유형코드[ST613](10:운송사 대행, 20:공급사 배송, 30:공급사 직납) */ 
      ,(SELECT CD_NM 
          FROM CCMTC0100 
         WHERE CD = T1.STOK_TP_CD 
           AND CD_LST_ID = 'ST625') AS 재고유형 /* 재고유형[ST625](01:MTO-D, 02:MTO-TH, 03:MTS, 04:MTO-VMI) */ 
  FROM TORTG2230 T1, TORTG2110 T2 /* 주문클레임 TB, 주문 TB */ 
 WHERE T1.CLM_ITM_ID = T2.ORD_ITM_ID 
   AND T1.CUST_GR_YN = 'Y' /* 고객입고여부 */ 
   AND T1.GR_ID IS NOT NULL /* 입고ID */ 
 ORDER BY T2.ORD_ID 
--; 
-------------------------------------------------------------------------------------------------------- 

- 반품수량 정의 
1. 입고 
1) 수량(입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
2. 미입고 
1) 수량(운송수량 - 미입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
==============================================================================================================

- 반품 ERD 작성 
1. TOBE-ERD_반품.erwin 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.11(화) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 22:00  --> 야근(포시즌), 남권형 9월 이자 하루 연체(전화해서 송금 받음), IMK 자리 이동(3번쨰) 

- IMK 차세대Prj
- G-ERP 사이트 개발 
1. 반품교환관리(GLOMGH0M) 수정 
==============================================================================================================

- 외장하드, 키보드, 노트북 거치대, SD메모리카드리더기 구매 
1. 외장하드 버팔로(1TB, 2,5인치, USB 3.0) --> 가격: 124,900원 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=213624458&GoodsSale=Y&jaehuid=200002657&service_id=pcdn 
2. QSENN GP-K7000 미니 키보드 -->가격: 12,600원(14,200원:G탬프에서 1,600원 차감) 
http://item.gmarket.co.kr/detailview/Item.asp?goodscode=170777285&interest_group_no=1 
3. 올인원 핑크 Micro SD메모리카드리더기 SDHC -->가격: 6,500원 
http://item.gmarket.co.kr/detailview/Item.asp?goodscode=187738105&interest_group_no=1 
4. 크라디아 미니 CRF-103(노트북 거치대) -->가격: 25,500원 
http://www.interpark.com/product/MallDisplay.do?_method=Detail&sc.shopNo=0000100000&sc.dispNo=008006004&sc.prdNo=520378426 
==============================================================================================================

- Screen pen 프로그램 
http://file.naver.com/pc/download.html?fnum=107999 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.12(수) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 21:50  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 수정 
==============================================================================================================

- MP 영업 DashBoard 수정 
1. 왼쪽 메뉴 거래실적 일자 ==> 현재일이 아니라 조회된 날짜 기준으로 보여줄 것(적용 보류) 
- BigDecimal 비교문 
class BigDecimalTest { 
	public static void main(String[] args) {  
		java.math.BigDecimal amt =  new BigDecimal("100.11"); 
		java.math.BigDecimal zero =  new BigDecimal("0"); 

		if( amt.compareTo(zero) == 1 )  // compareTo :::: -1은 작다, 0은 같다, 1은 크다 
		{ 
			System.out.println("참"); 
		} 
	} 
} 

BigDecimal bdSrchDay = new BigDecimal("000000000000");	//조회된 날짜 
BigDecimal bdSrchLastDay = new BigDecimal("000000000000");  //조회 마지막날 
if( bdSrchLastDay.compareTo(bdSrchDay) == -1 ) {	// 조회 마지막날이 조회된 날짜 보다 적으면 
	bdSrchLastDay = bdSrchDay; 
} 
==============================================================================================================

- MP 구매 DashBoard Chart 
1. Y축 값 정의 
 1) Y축 최대값 ==> DB 필드에서 최고값을 찾아서 1.2를 곱함 
 2) Y축 최소값 ==> Y축 최대값/10 
 3) Y축 ==> Y축을 10분하여 최소값을 계속 더함(10개 생성) 
==============================================================================================================

- 경매 물건 분석 
01. 관악구 남현동 1054-42(2억2천4백)  ===> 1억 6천 
02. 관악구 남현동 1072-49(3억8백) ===> 2억 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.13(목) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 21:50  --> 야근(포시즌) 

- IMK 차세대Prj
- MP 영업 DashBoard URL 링크 
1. 매출목표 관리: 
http://bod.imarketkorea.com:8080/OpenDocument/opendoc/openDocument.jsp?iDocID=AWjIdcM0AUFHk.OxhqSTVgU&Refresh=Y&lsSYYYYMM=2011.07 
2. EP서버(SSO 연계): 유재원 책임: 운영서버(112.106.138.221)가 EP서버(SSO 연계) 밖에 존재하여 로그인 
해야만 URL 링크 가능  ===> 1. 매출목표 관리(클릭) --> 2. InfoView에 로그온(bwtest/bwtest) --> 3. 매출목표 관리 
# EP 접속 URL http://epd.imarketkorea.com:51000 
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.14(금) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 21:50  --> 잔여과업 설명회(17:30 ~ 18:30), IMK 전체회식(18:30 ~ 22:30): 화미가 노래방, 헤라(안: 키위, 모닝콜: 앵두) 

- IMK 차세대Prj
- MP 영업 DashBoard 이익률 데이타 확인 
1. 이익률: PO 이익률 = (PO 이익액 /PO 매출액)*100 
 ==============================================================================================================

- MP 영업 DashBoard 미결현황 미수채권 JCO 연결 
1. FI 강태구 선생에게 문의  ===> 사용불가로 통보 받음 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.15(토) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:40 ~ 20:00  --> 토요근무, 이마트 용산전(Y셔츠, 구두:신세계상품권 사용) 

- IMK 차세대Prj
- 01. 다국어처리개발 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.16(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
06:00 기상 
06:52 예배(광림교회) ==> 설교(김선도 감독: 세 안목에 비친 로마군인 백부장) 
08:20 종료 
08:40 조기축구(6:2 패) 
10:30 종료 
11:20 중식(수정식당: 만원) 
13:20 종료 
14:30 귀가 
14:30 야구 시청(PO 1차, 롯데:SK, 6:7 패) 
20:00 석식(라면) 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.17(월) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 22:00  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 수정 
1. MTS, VMI 반품/교환요청에서는 물류처리구분을 운송사대행으로 고정시켜야 함 
2. 개발, 주문번호 : 2015421518, OT상세, 운송지시번호 : 7100001128 로 반품요청해볼 것, 5개 입고된 건에 
대해서 2개 반품 처리 했는데 화면에 나오는 가능수량이 잘못됨 
------------------------------------------------------------------------------------------------------------------------------ 

- 반품수량 정의 
1. 입고 
1) 수량(입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
2. 미입고 
1) 수량(운송수량 - 미입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
------------------------------------------------------------------------------------------------------------------------------ 

--고객입고 정보 조회 @@@@@@@@@@@@@@@@@@@@@@@ 
SELECT CONNECT_BY_ROOT Y1.GR_ID ROOT_GR_ID 
      ,Y1.GR_ID        GR_ID 
      ,Y1.ORD_ITM_ID   ORD_ITM_ID 
      ,Y1.GR_QTY       GR_QTY 
  FROM TORTG0320 Y1 /* 고객입고 TB */ 
 START WITH Y1.GR_ID IN (SELECT A.GR_ID 
                           FROM TORTG0320 A, TORTG0340 B 
                          WHERE A.GR_ID = B.GR_ID 
                            AND A.ORD_ITM_ID = B.ORD_ITM_ID 
                            AND A.ORD_ITM_ID = '1200000745' /* 주문품목ID */ 
                            AND B.GR_STU_CD IN ('2000', '4000', '5000') 
                            AND A.GR_ID = '9200000079' /* 입고ID */ 
                         ) 
CONNECT BY PRIOR Y1.GR_ID = Y1.ORY_GR_ID 
       AND Y1.GR_QTY > 0      /* 입고수량이 0보다 큰 것(반품제외) */ 
--; 
==============================================================================================================

- 수량 테이블 기입 
TORTG2110 T1 /* 주문품목 TB */ --> ,T1.ORD_QTY AS ORD_QTY /* 주문수량 */ 
TLOTG3120 T11 /* 운송지시품목 TB */ --> ,T11.DLVR_QTY AS DLVR_QTY /* 납품수량 */ 
[수정 후] ==> TORTG2230 T4 /* 주문클레임 TB */  
--> ,T4.ORD_QTY /* 주문수량 */,  T11.TRNS_DIRN_QTY AS DLVR_QTY /* 운송지시수량(납품수량) */ 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.18(화) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 22:00  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 수정 
==============================================================================================================

- DB 쿼리 튜닝 분석 
1. SupGusDashBoardDQM.getGusDashBoardList  ==> 3.6초 
2. SupGusDashBoardDQM.getGusDashBoardChartList ==> 3.3초 
3. SupGusDashBoardDQM.getSupDashBoardList  ==> 5.1초 
4. SupGusDashBoardDQM..getGusDashBoardSubList ==> 15.4초 
5. 튜닝 가이드(권지윤 선임) 
==============================================================================================================

- 다국어 처리 
java -jar MultiLanguage-1.0.4.jar C:\workspace\imk_mall\HU\CU C:\91. tmpResult 
java -jar MultiLanguage-1.0.4.jar 00. tmpInput C:\91. tmpResult 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.19(수) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 22:30  --> 야근(포시즌), 통합테스트 준비 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 수정
1. 미입고 조회 수정(입고ID가 존재하지 않는 것(DLVR_SB_ITM_PLN_ID) 
2. 교환수량 수정 
3. 주문클레임 TB(TORTG2230)에 ORD_QTY(주문수량), TRNS_DIRN_QTY(운송지시수량) 추가 
==============================================================================================================

- 반품/배송 배송추적조회(BYERB06P) 수정 
1. by.om.ordertrackingapp.OrderTrackingSvcImpl  ==> reqGetTrnsPrgsDtld 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.20(목) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 22:00  --> 야근(포시즌), 통합테스트(반품) 

- IMK 차세대Prj
- 반품교환요청 POP(BYERB02P) 수정 
1. TORTG2230 테이블에 출고창고 정보(TORTG2150) 저장 
[원 주문의 출고창고] 
SELECT T1.LGI_WH_ID AS 물류창고ID 
      ,T1.LGI_WH_NM AS 물류창고명 
      ,T1.LGI_WH_LOC_CD AS 물류창고위치코드 
      ,T1.LGI_WH_LOC_NM AS 물류창고위치명 
  FROM TORTG2150 T1  /* 주문납품처 TB */ 
 WHERE 1=1 
 --AND T1.ORD_ITM_ID = '1200000963'  /* 주문품목ID */ 
--; 
==============================================================================================================

- 반품/배송 배송추적조회(BYERB06P) 수정 
1. 조회조건 변경(주문클레임ID --> 운송지시번호) 
==============================================================================================================

- 다국어 처리 
1. noMessage 
==============================================================================================================

- 휴대폰 검색 
1. 부모님, 자녀들에게 부담없이(12개월약정, 위약금3만원)/SHW-M290K갤럭시 지오/가입비면제/유심면제 2 
http://www.ppomppu.co.kr/zboard/view.php?id=pmarket2&page=1&sn1=&divpage=15&category=3&sn=off&ss=on&sc=off
&select_arrange=headnum&desc=asc&no=75141 
2.  [KT 신규/번이][갤럭시 지오(12개월약정, 위약금3만원)/올면제][디자이어HD 할부11.9/3개월유지/가입비분할/유심후납/채권후납] 4 
http://www.ppomppu.co.kr/zboard/view.php?id=pmarket2&page=1&sn1=&divpage=15&sn=off&ss=on&sc=off
&select_arrange=headnum&desc=asc&no=75234 
3. [올레KT] 갤럭시S2 일반기변 67 / SGP 5천원할인권 미반납 / 유심재사용 / 화이트 블랙 재고다량보유 
http://www.ppomppu.co.kr/zboard/view.php?id=pmarket2&page=1&sn1=&divpage=15&category=3&sn=off&ss=on&sc=off
&select_arrange=headnum&desc=asc&no=75230 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.21(금) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 21:20  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환 요청내역(BYERB05P) 수정 
1. 공급사정보와 물류처리구분값 추가 
- 반품교환요청 POP(BYERB02P) 수정 
1. 반품/교환요청 시 반품희망일 default 값 계산을 휴일 포함해서 설정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.22(토) 작업 ■■■■■■■■■■■■■■■■ 
 ---> 08:50 ~ 19:10  --> 조기축구(06:50 ~ 08:00, 3:0 승), 토요근무 

- IMK 차세대Prj
- 다국어 처리 
1. noMessage 
==============================================================================================================

- 간소화 확인 방법 
1. Projcect Explorer > ADL 'imk_maill_dm'(설정) 
간소화 메인(STTDD00M.xfdl) > 주문하기(Tab): 반품/교환처리현황(STERM) 
-------------------------------------------------------------------------------------------------------- 

- G-ERP 확인 방법 
1. 빌드 ==> http://88.1.117.21:8070  tamario/ssj****1 > T_XPlatform_Runtime 빌드 
2. 확인 ==> http://88.1.117.23/imk_mall/jsp/gERP/gerp_home.jsp ==> 반품교환관리(GLOMGH0M) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.23(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
06:00 기상 
06:52 예배(광림교회) ==> 설교(김정식 목사: 받은 은혜를 남용말라) 
08:20 종료 
08:40 조기축구(0:4 패) 
10:00 종료 
10:20 막걸리(박춘집 회원이 쏨) 
11:00 중식(문경세재) 
14:00 편의점(맥주): 수인형과 이승형 싸움(승열이형, 병춘이형) 
15:30 이발 
16:00 귀가 
16:10 야구 시청(PO 5차, 롯데:SK, 8:4 패 ==> SK 한국시리즈 진출(3승 2패)) 
17:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.24(월) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:15 ~ 22:00  --> 야근(포시즌) 

- IMK 차세대Prj
- 다국어 처리 
1. MP Hub DashBoard 
1) Grid내 왼쪽의 고정부분 다국어 처리
==============================================================================================================

- WEZEL 손목보호 젤마우스패드, 가격: 4,390원 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A564894550&frm3=V2 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.25(화) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:10 ~ 21:00  --> 야근(포시즌), 주문/반품 처리 시연(정재우 책임, 4셀) 

- IMK 차세대Prj
- 반품교환 요청내역(BYERB05P) 수정 
1. 반품/교환 배송추적 상세정보(Grid) 추가 
2. 운송방법이 공급사배송으로 했는데도 운송사대행으로 화면에 보여짐 
- 반품/교환 배송추적조회(BYERB06P) 수정 
1. 반품/교환 처리내역 정보(Grid: 요청, 승인, 완료) 추가 
-  반품교환관리(BYERM18M)수정 
1. 카드반품List는 팝업을 띄우는 기준은 카드주문만 팝업을 띄워준다., 카드주문이 아니면 링크정보도 표시하면 안됨 
==============================================================================================================

- Grid Style 처리 
EXPR((fsCardSearchYn == "Y") ? '#019cffff' : '') 
EXPR((fsCardSearchYn == "Y") ? 'pointer' : '') 
EXPR((fsCardSearchYn == "Y") ? 'Dotum,9,underline' : '') 
EXPR((fsCardSearchYn == "Y") ? '#019cffff' : '') 
EXPR((fsCardSearchYn == "Y") ? 'Dotum,9,underline' : '') 
==============================================================================================================

SELECT T2.APV_PRGS_STU_CD 
FROM HCUTG1170 T1,CCMTG0600 T2  /* 고객 역할TB, 결재TB */ 
 WHERE T1.APV_ID = T2.APV_ID 
   AND T2.APV_PRGS_STU_CD = '2' 
==============================================================================================================

- 조대상씨 결혼 
1. 장소: 용산 웨딩코리아 2층 컨벤션 홀(서울 용산구 한강로3가 40-19) 
2. 일시: 2011.10.29(토) 13시 30분 
3. 기타: 4호선 신용산역 3번 출구앞 예식장 셔틀버스 
==============================================================================================================

- IMK 차세대Proj 연락처 
1. 김영준 PM (삼성 SDS, PMO): * 
2. 김용근 수석(삼성 SDS, PMO): * 
3. 이승우 이사(삼성 SDS, PMO): * 
11. 강대성 과장(아엘포유, 영업): * 
12. 박찬일 차장(아엘포유, 영업) : * 
13. 박찬일 차장(아엘포유, 영업): * 
51. 제상화 수석(삼성 SDS, 영업): * 
52. 정승현 수석(삼성 SDS, 구매): * 
53. 권영오 책임(삼성 SDS, 공통): * 
54. 조대상 사원(삼성 SDS, 영업): * 
55. 한수진 사원(삼성 SDS, 구매): * 
56. 김화중 부장(아엘포유, 구매): * 
57. 최병석 과장(아엘포유, 구매): * 
58. 임보라 사원(IMK, PMO): * 
==============================================================================================================

- 남권이형 맛사지샵 오픈(방문) 
21:00 퇴근 
21:10 포스코사거리(7번 버스) --> 포스코사거리(7번 버스) --> 영동고 
21:40 강남구 청담동 92-4 삼이빌딩 5층 BMFM 맛사지샵 
21:50 발맛사지(5만원 ==> 남권이형이 무료로 해줌(돈대여는 거절) 
23:10 종료 
23:10 농협앞(4212번) --> 방배경찰서(643번) --> 행운동주민센터 
24:40 귀가 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.26(수) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 22:00  --> 야근(포시즌), 서울 시장 보궐선거(무소속 박원순 후보 당선), 정재우 책임과 트러블(서로 불만, 저녁) 

- IMK 차세대Prj
- 반품교환 요청내역(BYERB05P) 수정 
- 반품/교환 배송추적조회(BYERB06P) 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.27(목) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 21:40  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품교환 요청내역(BYERB05P) 수정 
1. 희망일이 휴일 체크 수정 ==> 싱크로 설정 
2. 입고취소 처리 수정 
3. 반품교환 상세 리스트 정보 조회 수정 
==============================================================================================================

- 반품수량 정의 
1. 입고 
1) 수량(입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
2. 미입고 
1) 수량(운송수량 - 입고수량), 2. 기존수량(반품수량),  3. 가능수량(1. 수량 - 2. 기존수량) 
==> 입고수량: 입고취소방법코드[입고처리 수량(90,91), 단순취소(20,21)] --> 반품취소(10,11,12,13)는 반품수량 
==============================================================================================================

- 입고쪽에서 에러 발생시 던지는 에러 코드 수정(R -> B): 노광선씨 처리 
1. bgoodsreceiptapp.ProcGRBiz 
exceptionDvo.setMsgId("BBYGM0005"); 
exceptionDvo.setMsgParamCn( BygmUtil.makeMsgParam(oryGrId, "0") ); 
==============================================================================================================

- 반품교환 승인 처리 
1. 납품관리 > 반품교환관리 
-- 처리자 ID 조회(공급사 승인 처리) @@@@@@@ 
SELECT T1.MICUST_ID AS 부고객ID, T1.* 
FROM MCUTG1160 T1		/* 고객간관계 TB */ 
WHERE T1.MACUST_ID = '10048277'	/* 주고객ID(공급사명) */ 
	AND T1.CUST_REL_CD = 'E23'		/* 고객관계코드 [공통코드-HT004] */ 
--; 
==============================================================================================================

- 다국어 처리 
공급\r\n사수 
"C:\workspace\imk_mall\BY\EC\BYECB08P.xfdl"(567,45):      
<Cell colspan="13" text="expr:gfn_getDomain(&quot;ttSum&quot;)"/> 
expr:gfn_getDomain("ttSum") 
==============================================================================================================

- R서버 접속 
telnet   88.1.118.21  ==> devuser/devuser 
> log_IMK1 
> log_IMK2 

- T서버 접속 
telnet   88.1.118.23  ==> devuser/devuser 
==============================================================================================================

R. 서버: 주문번호: 2012000406, 품목코드: 2404330600 -> 운송지시번호: 7100000287, 반품요청번호: RA21000124 
공급사명(부고객ID): Z0346721 
T. 서버: 주문번호: 2015421732, 품목코드: 4102865000 -> 운송지시번호: 7100001176 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.28(금) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 20:50  --> 야근(포시즌) 

- IMK 차세대Prj
- 반품/교환 배송추적조회(BYERB06P) 수정 
1. Gird asyn 처리 
 1) asynctp(싱크): false(동시에 발생한 건들을 순서대로 처리: Progress Bar 보임) 
 2) asynctp(no 싱크): true(싱크 없이 처리) 
==============================================================================================================

- 다국어 처리
1. MP 영업 DashBoard(BYTDM03M) 에서 콤보 영문 변환 안됨 
2. Dashboard_Hub(고객사)(HUCUM02M) 로딩 첫화면 Grid 다국어 적용 안됨 
 1) 처음 로딩할때 mpMainBlank에서 URL 링그(HUCU::HUCUM02M.xfdl)를 거는데..그것 때문에 영향을 받는 것 같아요.. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.29(토) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:00 ~ 13:00  --> 토요근무, 비 

- IMK 차세대Prj
- 다국어 처리 
1. MP 영업 DashBoard(BYTDM03M) 조회 조건 콤보 영문 변환 수정  ===> 중지(다국어 변환 대상 아님) 
1. dsRespList --> dslocalRespList   ==> reqGetRespList: 완료 
2. dsTeamList --> dslocalTeamList   ==> reqGetTeamList: 완료 
3. dsRespList --> dslocalRespList   ==> reqGetRespList: 완료 
4. dsTeamList --> dslocalTeamList   ==> reqGetTeamLis 
5. dsCompanyList --> dslocalCpList  ==> reqGetCompanyList: 완료 
6. dsCompanyList --> dslocalCpList  ==> reqGetCompanyList 
==============================================================================================================

- 조대상씨 결혼 
1. 장소: 용산 웨딩코리아 2층 컨벤션 홀(서울 용산구 한강로3가 40-19) 
2. 일시: 2011.10.29(토) 13시 30분 
3. 기타: 4호선 신용산역 3번 출구앞 예식장 셔틀버스 
==============================================================================================================

- 조대상씨 결혼 
06:20 기상 
07:00 출근 
12:50 퇴근(장영재 과장, 박성원 책임, 김명주 사원) 
12:51 버스(360번): 포스코 사거리 
13:22 버스(171번): 노들역 
13:33 용산 웨딩코리아 2층 컨벤션 홀(서울 용산구 한강로3가 40-19): 부주 5만원 
13:50 중식(6층 부페) 
15:20 종료 
15:50 용산 전자상가(나진 상가): 박책임 SSD 구매 
16:00 종료 
16:10 이마트(용산점) 
16:30 귀가 
16:30 야구 시청(한국시리즈 4차전, 삼성:SK, 8:4 패 ==> 삼성(3승 2패)) 
17:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.30(일) 작업 ■■■■■■■■■■■■■■■ 
---> 07:00 ~ 18:00  --> 신사조기회 창립기념일 

▦조기축구
06:00 기상 
07:03 예배(광림교회) ==> 설교(김정식 목사: 참된 생명을 취하라) 
08:20 종료 
09:30 평택(2:1 승) 
10:30 두레FC(여자축구팀)(3:1 승, 1G 1AS) 
12:30 종료(양복 갈아 입음) 
12:40 버스(362번): 광림교회앞 
13:50 천호역 10번 출구 
13:55 이스턴 베니비스(서울 송파구 풍납동 473-1(8호선 천호역 10번 출구)): 신철수(외5촌 아제) 자 결혼식 
       - 정식이 아제 내외, 명식이 아제 내외(덕은조명, 신혜주(중3)), 정임 이모 내외 
14:10 중식(3층 부페) 
15:30 외5촌 아제집(아차산 근처) 
20:10 종료 
20:30 택시(아차산역 근처): 만 8천원(어머니집와 같이 옴) 
21:15 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2011.10.31(월) 작업 ■■■■■■■■■■■■■■■■
 ---> 07:20 ~ 17:30  --> 어머니집(석식: 삽겹살, 빨래판 장보기) 

- IMK 차세대Prj
- 다국어 컨텐츠(품명, 고객사명, 공급사명) 관련 SQL 적용 
1. 진행 중 
==============================================================================================================

- DB 연결 
1. 01. R Server(운영 DB): 88.1.118.29, 1543, mpusr/usrmp 
2. 21. Test Server(테스트 DB): 88.1.118.24, 1546, mpusr/usrmp 
3. 22. Test Server(테스트 DB): 88.1.118.24, 1546, msusr/msusr 
4. 51. Dev Server(개발 DB): 88.1.118.22, 1545, mpusr/usrmp 

#MP JDBC URL[01. R Server] 
#mp.url=jdbc:log4jdbc:oracle:thin:@88.1.118.29:1543:DBPMRO2 
#MP JDBC URL[02. Test Server] 
#mp.url=jdbc:log4jdbc:oracle:thin:@88.1.117.24:1546:DBTMRO 
#MP JDBC URL[51. Dev Server] 
mp.url=jdbc:log4jdbc:oracle:thin:@88.1.117.22:1545:DBDMRO 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■