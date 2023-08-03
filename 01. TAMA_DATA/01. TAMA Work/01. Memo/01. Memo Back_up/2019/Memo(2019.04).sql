

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2019.04) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2019.04.01(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 식권 구입(15시, 새마을금고): 42장(18만 9천원)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
1. 하위품목 Roll-up 시 견적가 재 산출 
2. 견적 작성 시 Stock 정보 표기

- INQ_QUOT_ALL_LINE_01_V에서
SELECT IQL.I_SPEED, -- Category(L:저속, M:중속) 
	   ROUND(NVL(IQL.UAMT_BUY_H, 0), 2) AS UAMT_BUY_H, 	-- 상위품목 단가(외화)  ==> 구매단가(외화)	==> 수정 가능
	   ROUND(NVL(IQL.UAMT_BUY_L, 0), 2) AS UAMT_BUY_L, 	-- 하위 구매단가(외화)  
	    ROUND(NVL(IQL.UAMT_BUY, 0), 2) AS UAMT_BUY, 		-- 구매단가(외화): 총구매단가(외화)	==> 수정 불가
FROM INQ_INQUIRY_HEADER     IIH,
		   INQ_QUOTATION_HEADER   IQH,
		   INQ_QUOTATION_LINE  IQL
WHERE IIH.I_SPEED = IQH.I_SPEED(+)
	AND IIH.NO_INQUIRY = IQH.NO_QUOTATION(+)
	AND IQH.I_SPEED = IQL.I_SPEED
	AND IQH.NO_QUOTATION = IQL.NO_QUOTATION
	AND IQH.NO_REVISION = IQL.NO_REVISION
;

if ( colid == "UAMT_BUY" ) {		// 칼럼이 구매단가(외화) 이면
==> if ( colid == "HRNK_ITEM_UPRC_FRCR" ) {		// 칼럼이 구매단가(외화) 이면 
-----------------------------------------------------------------------------------------------------------------------------

Stock 가용수량(STOCK_AVAL_QTY), 상위품목 단가(외화): HRNK_ITEM_UPRC_FRCR), 하위품목 단가(외화): LOW_ITEM_UPRC_FRCR) 
, 총구매 단가(외화)(TOT_PRCH_UPRC_FRCR)

Stock 사용(STOCK_USE),	Stock 재고수량(STOCK_INVN_QTY), Stock 미입고 수량(STOCK_UNIN_QTY)
==============================================================================================================

- 코쿤 하우스 관리비 납부 ==> 완료 
1. 카카오톡 송금으로 보낼 것 @@@
가상계좌번호: 578-07-0058598(578070058598), 받는 사람: 공성종합상가
납부자번호: 6-3006-0001-0546-1(63006000105461)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.02(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 주간보고(10시 ~ 11시)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정 ==> 1차 개발 완료
1. Grid에서 이중 for문
if(ds_itemInfoNew.getRowCount() > 0)
{
	for(var i = 0; i < ds_itemInfoNew.getRowCount(); i++) 
	{ 
		if(ds_itemInfoNew.getCellData(i, "SUB_DS_CNT") > 0)   	// 하위 구성품이 존재하면 ==> Line은 옅은 하늘색으로 색깔 표기
		{
			// console.log("[/INQ000150.xml] [pmAllSearch()] ==> [조회 결과] [TEST_54] [i_번째]"+ i +"[ds_itemInfoNew.SUB_DS_CNT]"+
				ds_itemInfoNew.getCellData(i, "SUB_DS_CNT") );
			
			for(var j = 0; j < 44; j++)
			{
				grd_itemInfoNewView.setCellBackgroundColor(i, j, "#BDD7EE" );   	// Grid에서 배경색 셋팅
			}
		} 
	} 
}
-------------------------------------------------------------------------------------------------------------------

- Grid에서 RowStatus
for(var i = 0; i < ds_itemInfoSub.getRowCount(); i++) 
{ 
	var status = ds_itemInfoSub.getRowStatus( i );
	
	if(!(status == "D" || status == "V") && (ds_itemInfoSub.getCellData(i , "QTY_QUOTATION" ) <= 0) ) 
	{
		tab_user.setSelectedTabIndex( 1 );
		var promise = $util.promise.alert(" Q'ty 항목은 0개 이상입력 바랍니다.");   // 필수값 체크
		
		promise = promise.then(function(){
			grd_itemInfoSub.setFocusedCell( i , "QTY_QUOTATION" , true );
		});
		
		return false; 
	}             
}
 
ds_itemInfoNew.modifyRowStatus( i, "U");  	// Grid에서 RowStatus 수정 모드로 일괄 변경 @@@ 
==============================================================================================================

- 지출결의서_진태만(2019.03) 작성
1. 2019년 3월: 667,800원  ==> 금액 오류
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.03(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 4.3 재보선(창원 성산구), 중식(벚꽃맞이 도시락 나들이, 진해 장복산 조각공원 내)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
1. 1차 개발 완료 소스 개발서버에 커밋 처리
	1) 견적작성 수정[2019.04.03 by 진태만]
2. Stock 적용, Stock 해제 ==> 1차 개발 완료
==============================================================================================================

1. 저장 기능 ==> 수정 완료 @@@
 1) 저장시 모든 상위품목에 하위품목이 존재한다고 함 (모든 품목에 칼라링) 

2. 행삭제 기능 ==> 수정 완료 @@@
 1) 행삭제가 정상적으로 반영이 안됨
 2) 행삭제시 처리도중 오류가 발생

3. 하위그리드 구매금액 Summary
 1) 하위그리드 구매가(Amount) Sum 처리하여, 상위그리드 하위품목단가(외화) 표기가 안됨

4. POS No 채번
 1) 커서에 위치한 상위 그리드 기준으로 pos no 채번 되어야 되나 잘못된 pos no 채번되고 있음

5. 하위그리드 정렬 ==> 수정 완료 @@@
 1) 좌측 NO 부분이 짤리고 있음. 상위 그리드와 좌측 정렬 하도록 함
==============================================================================================================

- 롯데카드 사용 내역(2019) 확인
1. 2019년 3월 카드 사용 내역 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.04(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 05:33 인슐린 약 교체(230U), 07:32 DU_BATCH 이관, 4.3 재보선(창원 성산구: 정의당 여영국 후보 당선), 빨래(처음)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정  
3. 하위그리드 구매금액 Summary ==> 수정 완료 @@@
 1) 하위그리드 구매가(Amount) Sum 처리하여, 상위그리드 하위품목단가(외화) 표기가 안됨
==> 저장시 하위그리드 구매가(Amount) Sum 처리하여 상위그리드 하위품목단가(외화) 칼럼에 저장

4. POS No 채번 ==> 수정 완료 @@@
 1) 커서에 위치한 상위 그리드 기준으로 pos no 채번 되어야 되나 잘못된 pos no 채번되고 있음 
 
5. Item Info.(작성용) Grid에서(rd_itemInfoNewView) 구매단가 (외화) 칼럼(HRNK_ITEM_UPRC_FRCR)을 Enter 치면 발주단가 찾기 
팝업 함수[scwin.ext_btn_orderPrice_onclick();]호출로 수정 ==> 수정 완료 @@@
==============================================================================================================
 
- 자바에서 금액 형변환
int iPrchPrce = 0;		// 구매가(Amount) 
for(int i = 0; i < recordCount4; i++)	// 04. Sub Materi Material and additional item 정보 List(ds_itemInfoSub) 
{  
	Map map8 = (Map<String, Object>) list4.get(i);
	ger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [TEST_45] [i_번째]"+ i );
		
	String recStatus = record4.get("rowStatus").toString();

	if( !"D".equals( recStatus ) && !"E".equals( recStatus ) )	 	// 저장 모드가 삭제나 에러가 아니면
	{    
		iPrchPrce = Integer.parseInt(map8.get("PRCH_PRCE").toString()) + iPrchPrce;	// 구매가(Amount) 합산
		 
		iInsMod += cuddao.insert_INQ_QUOTATION_LINE_SUB(map8);	 	// 견적작성 Line(제출용) 정보 등록
		iUpModCnt = iUpModCnt + 1; 
		logger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [TEST_52] [i_번째]"+ i +"[NO_POS]"+ map8.get("NO_POS") 
			+"[구매가(Amount) 합산 처리 중]"+ iPrchPrce +"[저장_갯수]"+ iUpModCnt );
	} 
}
==============================================================================================================
 
- Stock 찾기
1. 도면번호 기준 Stock Master의 가용수량이 견적수량보다 많으면 Default Stock 사용 Matching "Y"					
2. Stock Master에 등록 된 품목의 가용수량이 견적수량보다 작아 Default Stock 사용이 안되더라도, 수기로 Check Box Check 후 
Stock 적용 버튼으로 Stock Matching "Y" 적용 가능					
  (Stock Master에 등록 되지 않은 품목은 Check 후 Stock 적용 버튼 클릭 시 Warning 창 팝업 및 Stock 적용 안됨)					
3. Stock Matching "Y" 인 품목에 대해 Check Box Check 후 Stock 해제 버튼 클릭 시 Stock Matching "N" 으로 적용 가능		 
==============================================================================================================
 
- 2차 수정 작업
1. 칼라링 여부 ==> 수정 완료 @@@
- 하위품목은 없는 경우도 칼라링이 되고 있음 Quote No : LIK819

2. 구매통화  ==> 수정 완료 @@@
- 하위품목 구매통화는 상위품목 구매통화를 그대로 가져오도록 함

3. 하위품목 추가 시 ==> ID_LINE 값이 삭제되는 것으로 추정됨 @@@
- 신규 추가시 상위품목 ID_LINE 값을 그대로 가져와서 저장하도록 함
- 저장시 오류 발생

4. 하위품목 저장 시  ==> 수정 완료 @@@
- 하위품목 단가는 정상반영,  총구매단가 또한 저장하도록 함 (구매단가(외화) + 하위품목 단가(외화) ) 조회시 event (x)
 
5. 팝업 위치
- 발주단가 팝업 위치는 정상이나, 더블클릭 시 구매단가(외화) 변경되어야 함.
- 구매단가(외화) 변경되면 총구매단가(외화) 동시에 변경이 되어야함  ==> 에러 ●

5.1 하위그리드
- 하위그리드 구매단가(외화) 발주단가 팝업이 떠야되며, 클릭시 반영 되어야함
- 하위그리드 수량 변경 시 구매단가(외화) * Qty 하여 구매가(Amount) 반영(LHX386)

6. 칼럼매칭 
- 하위품목 Sub query 변경한다
       IQL.QTY_STOCK, -- STOCK 가용 수량 (Quoation 시점)      
       IQL.QTY_ONHAND,  -- Stock 재고수량 (Quoation 시점)
       IQL.QTY_RECEIPT  -- Stock 미입고 수량 (Quoation 시점)

7. Stock 적용/해제 ==> 수정 완료 @@@
- LHX386 1.01 체크하여 Stock 적용하였는데, DB 에는 1.01, 2.01 모두 Y 처리됨
- DB 표기가 화면에 보이지 않음(Y)
 
8. Stock Master 존재여부 ==> 수정 완료 @@@
- 상위그리드 칼럼 : STOCK_MASTER_YN
- 하위그리드
       DECODE((SELECT COUNT(1)
        FROM STD_STOCK_MASTER SSM
        WHERE SSM.NO_DWG = IQL.NO_DWG
        ),0,'N','Y') AS STOCK_MASTER_YN   		-- Stock Master 존재여부
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.05(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 주간보고서 작성, 서울행[마산(18:11) -> 광명(20:44), KTX] 

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
5. 팝업 위치 ==> 수정 완료 @@@
- 발주단가 팝업 위치는 정상이나, 더블클릭 시 구매단가(외화) 변경되어야 함.  
- 구매단가(외화) 변경되면 총구매단가(외화) 동시에 변경이 되어야함 ==> 수정 완료 @@@
- 하위그리드 구매단가(외화) 발주단가 팝업이 떠야되며, 클릭 ==> 수정 완료 @@@

5.1 하위그리드시 반영 되어야함 ==> 수정 완료 @@@
- 하위그리드 수량 변경 시 구매단가(외화) * Qty 하여 구매가(Amount) 반영(LHX386)  

6. 칼럼매칭 ==> 수정 완료 @@@
- 하위품목 Sub query 변경한다
       IQL.QTY_STOCK, 		-- STOCK 가용 수량 (Quoation 시점)      
       IQL.QTY_ONHAND,  	-- Stock 재고수량 (Quoation 시점)
       IQL.QTY_RECEIPT  	-- Stock 미입고 수량 (Quoation 시점)
==============================================================================================================

- 3차 수정 작업
1. 하위 Grid에서 구매통화, 가용 수량 readOnly 처리 ==> 수정 완료 @@@
2. Grid에서 구매단가(외화) 칼럼값이 300 보다 적으면 300 처리 ==> 수정 완료 @@@
3. Stock 해제시 STOCK_YN ==> Y, ""로 표기  ==> 수정 완료 @@@
4. 저장시 ID_LINE 처리 에러 ==> 수정 완료 @@@
==============================================================================================================

- SELECT에서 바로 업데이트 처리(DBeaver에서)
-- 견적작성 Line(제출용) _SUB 정보 조회 @@@
SELECT A.ID_LINE, A.* 
FROM INQ_QUOTATION_LINE_SUB A
WHERE 1=1
	AND EXISTS ( SELECT 1
						 FROM INQ_INQUIRY_HEADER A1
						 WHERE A1.NO_INQUIRY = A.NO_QUOTATION
						 AND A1.ST_INQUIRY IN ('05','06','04'))
	AND 1=1
	AND A.NO_QUOTATION = 'LJP907'  		 --  FOR UPDATE    -- 업데이트 처리
; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.06(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 

- 주말
05:40 기상 
05:50 조식
06:20 집출발
06:40 대림역 정류장(6411번 버스): 조조할인 안됨
07:30 선릉역 정류장
07:30 도보
07:50 삼성제일빌딩 20층(본사)
08:00 지출결의서 영수증(안 가지고 옴)
08:50 도보
09:30 양재 최의원
09:40 다나메티칼(양재)에서 당뇨 소모품 구입 구입
		1. 슈퍼라인-ST[바늘 길이: 6.5mm]: 50개, 3,500원, 총  175,000원
		2. 다나 3cc 주사기(다나 플러스, 다나 용): 50개, 1,500원, 총 75,000원
		===> 총 가격: 250,000원 ==-> 건강 보험 지원: 202,500원 환급 예정 
		3. 3M 반창고: 2개	 5,000원, 총: 10,000원[비급여)
09:50 진료(박황현 원장): 중추 건대병원에서 받은 처방약 문의(알 수 없다고 함) ==> 너무 황당[돌파리 같음]
10:20 종료
10:30 군인공제회관 정류장(6511번 버스)
11:40 대림역 정류장 도착
11:50 귀가 ==> 루옌 인플란트 치료하러 치과에 감
12:00 중식
13:00 도림천로 도보 
13:30 귀가
14:10 집출발(수종)
14:30 대림역 정류장(6411번 버스)
15:30 서울대 정류장
15:50 관악 도서관(수종 혼자서 책 봄)
16:20 종료
16:30 서울대 정류장(6511번 버스)
17:30 대림역 정류장: 비 약간 옴 
17:40 귀가
17:50 집출발
18:00 석식(비빕밥, 치즈돈가스, 김밥천국 남구로점): 수종
18:30 밀크 플러스 900ml(우유, 4통, [1통 3,330원]): 수종 
18:40 귀가 
19:00 도림천로 도보
19:30 귀가
20:00 야구(수종)
20:30 눈높이 한글 공부 도와주기(수종)
21:10 종료
21:10 취침(수종)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.07(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 체중: 70.6kg

- 주말2
06:30 기상
07:00 인터네 서핑 ==> 지출결의서_진태만(2019.03) 작성(재작성)
08:10 조식
09:30 집출발
09:30 도림천로 도보
10:00 귀가  
10:10 아파트 놀이터(수종이와 같이 야구, 축구)
12:00 중식 
12:30 도림천로 도보
13:30 귀가
13:50 루옌, 수종 언니집에 놀러감(봄 꽃 구경, 자전거)
14:00 문영A 보일러(도시가스) 난방 끄기(싱크대 밑 보일러 밸브 모두 잠그기)
14:10 인터넷 서핑
15:40 집출발(자전거) 
15:50 영동중학교 도착(맨땅, 인슐린 펌프 제거)
16:15 축구 게임(은혜교회팀: 어울림팀) ==> 2쿼터 뜀(1시간 45분): 8:8 --> 숏게임, 컨디션 좋음, 날씨 따듯(반바지) 
18:00 종료
18:20 귀가
18:30 샤워
18:46 인슐린 약 교체(189U) ==> 인슐린이 조금 남아 있어서 공기가 많이 주입됨.
18:55 인슐린 펌프 착용 
19:00 석식
19:30 집출발 ==> 슈퍼라인-ST, 다나 3cc 주사기 15개씩 가방에 넣어 가지고 감
19:50 영림초교 정류장(505번 버스 탑승)
20:30 광명역 도착(약 40분 소요)
20:56 창원행[광명(20:56) -> 창원중앙(23:31), KTX]
23:31 창원중앙역 도착
24:10 귀가(약 40분 소요)
24:30 취침
==============================================================================================================

- 지출결의서_진태만(2019.03) 작성(재작성)
1. 2019년 3월: 731,700원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.08(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==> 20:30 인슐린 약 추가(40U): 오토 셋트로 인슐린 약 세팅 

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping 
 1) 최초 Default BOM 자동 Mapping 시 도면번호 기준으로 Stock 수량 정보 개선(가용수량, On-hand 수량, L/T, 발주수량, Stock 예약 Flag)
 2) COST 및 판매가 계산
  가. EBIT 항목 추가하여, 산출 및 화면표기 기능 개선
===> C3: update만 처리
===> C4 ~ : insert, update 처리
==============================================================================================================

- Oralce에서 CURSOR, FETCH
- 1. 커서란? : 쿼리문에 의해서 반환되는 결과값들을 저장하는 메모리 공간
2. Fetch란 : 커서에서 원하는 결과값을 추출하는 것.
==> https://rongscodinghistory.tistory.com/103

declare
  emp employees%rowtype;
  
  Cursor cur1 IS
	select employee_id, last_name, salary
	from employees;
	
begin
  for emp IN cur1 loop
	exit when cur1%notfound;
	dbms_output.put_line(emp.employee_id||' '||emp.last_name||' '||emp.salary);
  end loop;
end;
/

-- 커서 사용하지 않고도 할 수 있는 방법
declare
begin
  For emp in (select employee_id, last_name, salary from employees) loop
	 dbms_output.put_line(emp.employee_id||' '||emp.last_name||' '||emp.salary);
  end loop;
end;
/

/* 묵시적 커서 사용 예 */
declare
  cnt1 number;
  cnt2 number;
  
begin
  select count(*) into cnt1
  from employees
  where department_id = 50;
  
  -- rowcount : 커서 오픈시 0값을 가지고 생성되며,
		--      Fetch할 때마다 값이 1씩 증가한다.
		--      묵시적 커서의 경우 속성 사용시에 sql%속성명 으로 접근한다.
		--      ex) sql%notfound, sql%rowcount, sql%found, sql%isopen
  cnt2 := sql%rowcount;
  
  DBMS_OUTPUT.PUT_LINE('cnt1의 값 : '||cnt1); -- 45(count(*)의 값)
  -- 위의 select문에서 한번 결과를 끄집어내서 cnt1에 넣을 때
  -- fetch가 발생해 rowcount값이 1증가 됨(묵시적 커서로 동작하게 된 것)
  DBMS_OUTPUT.PUT_LINE('cnt2의 값 : '||cnt2); -- 1
  
end;
------------------------------------------------------------------------------------------------------------------------

- 커서 변수를 미리 만들어 놓고 불러서 사용하는 방법
DECLARE
	I_ID   VARCHAR2(100);			-- 변수 정의				
	C_LIST SYS_REFCURSOR;	-- 커서 정의
  
BEGIN

  OPEN C_LIST FOR
  
  SELECT MY_ID   
    FROM MY_TABLE
    WHERE 조건;
	
  LOOP					-- LOOP 돌기.
      FETCH C_LIST
      INTO  I_ID;			--  하나씩 변수에 넣기.
      EXIT WHEN C_LIST%NOTFOUND;	-- 더이상 없으면 끝내기.
      DBMS_OUTPUT.put_line(I_ID);    --  출력
  END LOOP;
  
  CLOSE C_LIST;
END;
 
-- 출처: https://blog.kjslab.com/20 [새 보다 자유롭게 - 자바 프로그래머 갈매기S(Jonathan Livingston Seagull)]
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.09( 화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==> 20시 HSD_batch 수정(숙소, pom.xml 수정)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping 
 1) 최초 Default BOM 자동 Mapping 시 도면번호 기준으로 Stock 수량 정보 개선(가용수량, On-hand 수량, L/T, 발주수량, Stock 예약 Flag)
 2) COST 및 판매가 계산
  가. EBIT(매출이익율) 항목 추가하여, 산출 및 화면표기 기능 개선 EBIT
==============================================================================================================

- dbms_output 로그 처리(오라클 프로시저)
dbms_output.put_line('[/INQ_QUOTATION_PKG_T] [CREATE_ITEM_INFO()] ==> [TEST_22]' );
dbms_output.put_line('[/INQ_QUOTATION_PKG_T] [CREATE_ITEM_INFO()] ==> [TEST_21] [V_PO_CURRENCY]'|| V_PO_CURRENCY );  
dbms_output.put_line('[/INQ_QUOTATION_PKG_T] [CREATE_ITEM_INFO()] ==> [TEST_05] [R2.NO_PJT1]'|| R2.NO_PJT1 ||'[R2.NO_PLATE]'|| R2.NO_PLATE );
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.10(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 5시 기상 후 출근(처음), 20:37 인슐린 약 교체(227U) ==> 공기 빼기 실패(재 실행, 300U), DOO_CORE_PKG 이관

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- 견적작성(/INQ000150.xml) 수정
1. Return, Complete, Approve, Order Confirm, Qute.Rew, Rev.Del 수정
==============================================================================================================

- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping
 1) 김보훈 대리가 C2, C3 CURSOR 만들어 줌.
==============================================================================================================

- ellipse 실행 에러
1. 현상: [오류]The Eclipse executable launcher was unable to locate its companion shared library
2. 원인: launcher가 실행될 때 필요한 공유라이브러리를 찾을 수 없어 실행하지 못하는 오류
3. 조치: 이클립스 경로 > eclipse.ini 파일을 수정한다.
-launcher.library=[이클립스경로]\plugins~  ==> plugins/..로 경로 설정해도 됨
-startup=[이클립스경로]\plugins~  ==> plugins/..로 경로 설정해도 됨
--launcher.library
plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.900.v20180922-1751 ==> 폴더가 존재하지 않으면 에러 발생(복사할 것)
-startup
plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar ==> 파일이 존재하지 않으면 에러 발생(복사할 것)

출처: https://zzangprogrammer.tistory.com/262
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.11(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]  
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping
 1) INSERT, UPDATE 수정
==============================================================================================================
 
- PL/SQL에서 나는 에러
1. 현상: ORA-06502: PL/SQL: numeric or value error: character string buffer too small
2. 원인: 변수가 담을 값보다 작아서 발생합니다.
3. 조치:
http://blog.naver.com/darkturtle?Redirect=Log&logNo=50100464305 
==============================================================================================================
 
- PL/SQL에서 나는 에러
1. 현상: ORA-20000: ORU-10027: buffer overflow, limit of 10000 bytes
ORA-20000: ORU-10027: buffer overflow, limit of 2000 byte
ORA-06512: "SYS.DBMS_OUTPUT", 줄 32에서
ORA-06512: "SYS.DBMS_OUTPUT", 줄 97에서
2. 원인: 출력되는 text 또는 문자 길이가 너무 길어나는 현상 ==> 제한된 메모리 사용량을 초과하여 오버 플로우를 발생시킴
3. 조치:
 1) 프로시저 내에 DBMS_OUTPUT.PUT_LINE 명령문을 삭제  
 2) 버퍼 메모리 사이즈 증가 명령문을 실행 ==> -- dbms_output.enable('500000000');  
   dbms_output.enable('5000000');   -- 버퍼 메모리 사이즈 증가
 ==> https://nunbu.tistory.com/10
==============================================================================================================
 
- Prj 회식(18시, 창원HSD) 
1. 일시: 4.11(목) 18:00 (저녁 6시) 
2. 장소: 브라바스(스페인 음식: 창원시 성산구 마디미로16번길 7(상남동 14-3)
3. 인원: 오은식 차장(PI팀: 쏨), 정진용 과장(부품사업팀, 아들 보러 중간에 나감), 김보훈 대리, 허민준 대리
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.12(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 중식(오리 바베큐 정식, 박윤호 맑은 농장), 로지텍 무선콤보 MK240 NANO 밧데리 교체(사업장)
									, 그룹웨어 오픈 후 문제 발생(결재, 이메일 ==> 주말 두산 전산팀 전원 출근 요청), 주간보고서 작성
									, 서울행[마산(18:11) -> 광명(20:44), KTX]

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping
 1) INSERT, UPDATE 수정 ==> 완료 @@@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.13(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 

- 주말
07:00 기상
07:10 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:20 종료
08:30 조식
09:00 집출발(자전거)
09:10 서울가정의학과 ==> 수종 목 감기
09:20 종료
09:20 문영 아파트 놀이터 ==> 수종이랑 축구
09:40 귀가
09:40 도림천로 도보
10:10 귀가
10:15 문영 아파트 벽걸이 에어컨 설치(미스터 에어컨: 22만원 요구 ==> 21만원에 설치함)
11:15 종료
12:00 중식
13:00 도림천로 도보 
13:30 귀가 ==> 루옌 친구(핸드폰 판매업) 방문
13:40 눈높이 한글 공부 도와주기(수종)
14:20 집출발(수종, 자전거)
14:30 보라매 공원
17:10 종료 
17:30 수협 대림점 ATM(통장 확인)
17:40 엘마트(우우 4통 구입)
18:00 석식(비빕밥, 치즈돈가스, 김밥천국 남구로점): 수종 
18:40 귀가 
19:00 도림천로 도보
19:30 귀가
20:00 야구(수종)
21:10 종료
21:10 취침(수종)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.14(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 체중: 70.6kg

- 주말2
07:00 기상
07:10 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:30 조식
09:30 집출발
09:30 도림천로 도보 ==> 비 조금 옴
10:00 귀가
12:00 중식 
12:30 도림천로 도보
13:30 귀가 
14:10 인터넷 서핑 
15:30 집출발(자전거) ==> 비 그침
15:50 대림운동장) ==> 인슐린 펌프 제거
16:00 축구 게임(은혜교회팀: 어울림팀) ==> 3쿼터 뜀(1시간 반): 컨디션 좋음, 날씨 따듯(반바지) 
18:00 종료 
18:20 귀가
18:30 샤워
18:46 인슐린 약 교체(196U)
18:55 인슐린 펌프 착용 ==>  
19:00 석식
19:30 집출발
19:40 영림초교 정류장(505번 버스 탑승)
20:20 광명역 도착(약 40분 소요)
20:56 창원행[광명(20:56) -> 창원중앙(23:31), KTX]
23:31 창원중앙역 도착
24:10 귀가(약 40분 소요)
24:30 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.15(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 07:22 DU_설계 이관

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping
 1) INQ_QUOTATION_LINE UPDATE 추가 ==> 완료 @@@
==============================================================================================================

- BOM ID 테스트
1. 부품판매 BOM 관리(/INQ000040.xml)화면에서 Project No: DML0101238 ==> 조회
==> Working Verision Grid에서 BOM보기: 클릭 --> 90201-143-084
LHU030, LHW686, LJP907
2. 부품판매 BOM관리(Plate No입력)(/INQ000050.xml)화면에서 Plate No.: 90201-143-084 ==> 조회
==> Working Verision Grid에서 Plate No. 확인 
==============================================================================================================

- 두산 이메일 서버에 문제가 발생하여 전자 결재 안됨
1. 두산 .com에서 HSD 엔진. com으로 도메인 변경을 하면서 발생한 문제로 추정됨.
2. 저번주 부터 문제 발생했는데 현재까지 해결 못하고 있음 ==> HSD 엔진 전사적으로 문제가 심각하다고 인식하고 있음
==============================================================================================================

- 이어폰 구입
1. 애플 이어폰 아이폰 이어팟 정품[선택 / 애플이어팟 벌크포장], 가격: 10,610원
http://shopping.interpark.com/product/productInfo.do?prdNo=4644928710
==============================================================================================================

- Maven Dependency를 로컬 라이브러리에 추가(19:30 ~ 22:10, 숙소)
1. Maven Dependencies에 위치한 파일 확인하여 복사
 1) 프로젝트: 우클릭 > [Properties]: 클릭 > BuildPath > Configure Build Path > Libraries(탭) > Maven Dependencies: 클릭 
 2) jstl-1.2.jar 파일 확인, 복사 --> C:\DOOSANENGINE_BATCH\WORKSPACE\HSD_batch\src\main\webapp\WEB-INF\lib\jstl-1.2.jar
 
2.  /HSD_batch/src/main/webapp/WEB-INF/lib 폴더에 jstl-1.2.jar파일을 붙여넣기
 1) 절대 경로 --> C:\DOOSANENGINE_BATCH\WORKSPACE\HSD_batch\src\main\webapp\WEB-INF\lib
 
3. pom.xml 파일에서 systemPath 설정
<!--// jstl-1.2.jar 추가 ==> 2019.04.15, by 진태만 //-->
	<dependency>
		<groupId>javax.servlet</groupId>
		<artifactId>jstl</artifactId>
		<version>1.2</version>
		<scope>system</scope>
		<systemPath>${local.library.dir}/jstl-1.2.jar</systemPath>
	</dependency>     
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.16(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 주간보고회(10시 ~ 11시, PI회의실): 취소

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. BOM Mapping
 1) 테스트 ==> 완료 @@@
==============================================================================================================

- 견적작성(/INQ000150.xml) 수정 ==> 완료 @@@
1. Stock Master 수주 예약수량 관리 개발 ==> Order confirm 버튼 클릭시 이벤트 발생
 1) Order confirm 버튼 enable 조건
  가. 견적진행상태(INQ002) ==> 07: Quotation
  나. Approve Status(INQ056) ==> 03: Withdraw
 2) STD000040ServiceImpl.java cancelReserve() 참조
    ==> GUBUN : INQ, INQ_SUB, RESERVE_TYPE : 06 (고정 값)
    ==> iRst = setOordBkngQtyMngm(param, "01");		 	// Stock Master 수주 예약수량 관리 ==> 추가: 2019.04.16, by 진태만
--------------------------------------------------------------------------------------------------------------------------

--   iRst = setOordBkngQtyMngm(param, String sReserveType);  		// Stock Master 수주 예약수량 관리 ==> 추가: 2019.04.16, by 진태만 
/* 02. 수주 구분값 조회 ==> [selectINQ_QUOTE_ST_LINE_V.STD000040_mapper.xml] [2019.04.16, by 진태만] */ 
SELECT GUBUN  
FROM INQ_QUOTE_ST_LINE_V 
WHERE NO_PLATE  = '00.652.223563' 
	AND NO_QUOTATION = 'LIS363'  	-- 견적번호
;  
----------------------------------------------------------------------------------------------------------

/* Stock 사용여부 수정 ==> [updateStockYnINQ_QUOTATION_LINE_SUB.STDComm_mapper.xml] [2019.04.16, by 진태만] */ 
UPDATE INQ_QUOTATION_LINE_SUB A	  
SET A.CD_MODIFIER = 'taeman1.jin'			-- 수정자
		, A.DATE_MODIFY = SYSDATE			-- 수정일시
		, A.STOCK_YN = (case	when  '06' IN ('01','02') then 'Y'
	 						when  '06' IN('03','04')   then NULL   		---> RESERVE_TYPE : 06 으로 설정 ==>  NULL 처리됨
	          				when  '06' = '08'       then 'F' 
										else a.stock_yn
								   end)  	-- Stock 사용여부
WHERE 1=1
	AND A.NO_PLATE  = '00.652.223563' 
	AND A.NO_QUOTATION = 'LIS363'		-- 견적번호
;  
==============================================================================================================
  
- 공통코드 관리
1. 견적진행상태(INQ002)
 1) 01: Inquiry Temp, 02: New  Inquiry, 03: Withdraw, 04: Inquiry Return, 05: Processing, 06: Completed, 07: Quotation
    , 08: Order Return, 10: New Order, 11: Ordered, 12: Order Cancel, 13: Order Temp
2. Approve Status(INQ056)
 1) 01: Await, 02: Submitted, 03: Approved, 04: Withdraw, 05: Return, 06: Rejected
==============================================================================================================

- IBIZ 실행 방법
1. /websquareConfig.properties 파일에서
# login.setting.service.type는 (IBIZ/EBIZ)
login.setting.service.type=EBIZ 		-- EBIZ로 실행
2. 로그인 정보 ==> CEL-01/CEL-01
 1) 로그인 에러 ==> SYSTEM_GBN 값이 올바르지 않습니다. 
 2) 조치:
 /**
 * SYSTEM 구분값 검증 
 */
private boolean checkSystemGubun(String system_gbn) {  
	logger.info("[/LoginAdminController.java] [checkSystemGubun()] ==> [TEST_41] [SYSTEM 구분값 검증] [system_gbn]"+ system_gbn );	
	
	if("EBIZ".equals(system_gbn.trim())){   // SYSTEM 구분값 trim 처리 
		return true;
	} 
}
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.17(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 인슐린 펌프 밧데리 교체(13시)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. Stock Master 견적 예약수량 관리 개발[EBIZ에서 실행] ==> 
 1) Order Registration(/ORD000020.xml) 화면 > 조회 버튼: 클릭 ==> Status가 Order Temp[13] 일 때 updateStockYn 함수 호출 ==> 완료 @@@
  가. STD000040ServiceImpl.java cancelReserve() 참조
    ==> GUBUN: ORD, ORD_SUB, RESERVE_TYPE : 05 (고정 값) 
 2) Order Request 버튼 클릭 ==> GUBUN: ORD, ORD_SUB, RESERVE_TYPE : 06 (고정 값)  ==> 완료 @@@
    ==> iRst = setEstiBkngQtyMngm(param, 1);		// Stock Master 견적 예약수량 관리 ==> 추가: 2019.04.16, by 진태만  
 3) Order Registration(/ORD000020.xml) 화면 > Quote Search 버튼 클릭 > Quote Search(/ORD000010_pop.xml) 화면
 Inquiry date: 20110102 ~ 20190417 로 조회 > Quotation List Grid에서 조회된 데이타 row 더블 클릭 
 ==> .ord_order_line_sub INSERT처리(inq_quotation_line_sub 값으로)
 4) 화면 칼럼 추가 ==> 완료 @@@
  가. FD 표기된 칼럼을 추가 한다 (Stock 가용수량, Stock 사용 등)
  나. Item Tab> 견적예약 품목 중에서, Stock 사용 Y이고, 수주수량(QTY_ORDER)이 가용수량(QTY_ONHAND)보다 부족할 경우 색상 표기
 5) 체크 로직 
  가. " This order has out of stock item(s) , Please check stock item(s) before order request " Warning 팝업창 뛰우고 
  Order Request 버튼 누르면 진행 또는 Close 버튼을 클릭하면 팝업창이 닫히고 진행하지 않음 
==============================================================================================================

- 테스트 방법
1. Order Status(/ORD000035.xml) 화면에서 Request date: 20160102 ~ 20190417로 조회
2. Quotation List Grid에서 조회된 데이타 row 더블 클릭  
==============================================================================================================

- DU_BATCH eclipse 실행 에러(20:00 ~ 21:20, 숙소)
1. 현상: "must override a superclass method" 에러
 java.lang.Error: Unresolved compilation problem: 
	The method updateVldtTermExtmDln() of type AutoBatchServiceImpl must override a superclass method 
2. 원인: 어노테이션 기능에 대해서 제대로된 기능이 작동되지 않는 것인데 JDK 컴파일러의 버전이 맞지 않아서 발생하는 문제
3. 조치:
 1) 프로젝트: 우클릭 > Java > Compiler>  Compiler compliacnce level을 프로젝트 제작 당시의 환경 버전과 똑같이 맞추어줌.
==============================================================================================================

- DU_BATCH eclipse 실행 에러2 
1. 현상: Eclipse (STS 3.6.3.RELEASE)에서 다음과 같은 에러가 표시됨
Java compiler level does not match the version of the installed Java project facet.
2. 원인: 컴파일러의 레벨과 Eclipse설정된 버전이 일치되지 않아서 생기는 문제
3. 조치:
 1) 프로젝트: 우클릭 > properties > Project Facets > Java 를 자신이 사용하고있는 컴파일러 버전과 맞춤 ==> java 1.8
==============================================================================================================

- DU_BATCH eclipse 실행 에러3 
1. 현상:
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanDefinitionStoreException: Failed to read candidate component class: file
[C:\DOOSANENGINE_BATCH\WORKSPACE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HSD_batch\WEB-INF
\classes\doosanengine\bizcom\cmm\scheduled\AutoBatchScheduled.class]; nested exception is org.springframework.core.NestedIOException: 
ASM ClassReader failed to parse class file - probably due to a new Java class file version that isn't supported yet: file 
[C:\DOOSANENGINE_BATCH\WORKSPACE\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HSD_batch\WEB-INF
\classes\doosanengine\bizcom\cmm\scheduled\AutoBatchScheduled.class]; nested exception is java.lang.IllegalArgumentException
	at org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider.findCandidateComponents
	(ClassPathScanningCandidateComponentProvider.java:290)\
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.18(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 05:37 인슐린 약 교체(232U)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. Stock Master 견적 예약수량 관리 개발[EBIZ에서 실행] ==>  
 4) 화면 칼럼 추가 ==> 완료 @@@
  가. FD 표기된 칼럼을 추가 한다 (Stock 가용수량, Stock 사용 등)
  나. Item Tab> 견적예약 품목 중에서, Stock 사용 Y이고, 수주수량(QTY_ORDER)이 가용수량(QTY_ONHAND)보다 부족할 경우 색상 표기
 5) 체크 로직 ==> 완료 @@@
  가. " This order has out of stock item(s) , Please check stock item(s) before order request " Warning 팝업창 뛰우고 
  Order Request 버튼 누르면 진행 또는 Close 버튼을 클릭하면 팝업창이 닫히고 진행하지 않음 
==============================================================================================================
 
- 견적작성(/INQ000150.xml) 수정
1. Stock Master 견적 예약수량 관리 개발[EBIZ에서 실행] ==> 
 1) Order Registration(/ORD000020.xml) 화면 > Quote Search 버튼 클릭 > Quote Search(/ORD000010_pop.xml) 화면
 Inquiry date: 20080102 ~ 20190417 로 조회 > Quotation List Grid에서 조회된 데이타 row 더블 클릭 
 ==> .ord_order_line_sub INSERT처리(inq_quotation_line_sub 값으로) ==> 완료 @@@
==============================================================================================================
 
- Stock 찾기, 적용, 해제 기능 보완 (4/19) ==> 완료 @@@
1. GUBUN: INQ, INQ_SUB
2. Stock 찾기(RESERVE_TYPE:03) ==> 확인, 적용(RESERVE_TYPE:02), 해제(RESERVE_TYPE:04)
==> 공통 함수로 호출 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.19(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 주간보고서 작성, 서울행[마산(18:11) -> 광명(20:44), KTX] 

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. INQ_QUOTATION_LINE 등록
 public Map<String, Object> pmAllSave(Map<String, Object> param) throws Exception{
	//logger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [저장] [TEST_01]" );  
	
	for(int i = 0; i < recordCount2; i++)		// 02. Item Info.(작성용) 정보 List(ds_itemInfoNew)
	{ 
		Map<String, Object> record = (Map<String, Object>) list2.get(i);
		iPrchPrce = Integer.parseInt(map8.get("PRCH_PRCE").toString()) + iPrchPrce;		// 구매가(Amount) 합산

		Map map7 = (Map<String, Object>) list2.get(i);
		map7.put("LOW_ITEM_UPRC_FRCR" , iPrchPrce);		// 하위 품목 단가(외화) [구매가(Amount) 합산하여 저장]
		==> 추가: 2019.04.04, by 진태만 */
		map7.put("UAMT_BUY", Integer.parseInt(map7.get("HRNK_ITEM_UPRC_FRCR").toString()) + iPrchPrce);		
		// 총구매단가(외화) = 구매단가(외화) + 하위품목 단가(외화)
	}
}
-----------------------------------------------------------------------------------------------

<insert id="insertAll_INQ_QUOTATION_LINE" parameterType="Map">
	/* 견적작성 Line(제출용) 정보 등록 ==> [insertAll_INQ_QUOTATION_LINE.InqCUDComm_mapper.xml] [2019.03.27, by 진태만] */ 
	INSERT INTO INQ_QUOTATION_LINE( 
		NO_QUOTATION                         /*견적번호(=안건번호)*/
		, NO_REVISION                         /*견적번호 REV*/
		, NO_SEQ                         /*순번*/ 
		, ID_LINE  
		, NO_POS                         /*POS No.*/
		, UAMT_BUY_H                         /* 구매단가(외화): 상위 품목 단가(외화) => 추가: 2019.04.04, by 진태만 */ 
		, UAMT_BUY_L                         /* 하위 품목 단가(외화) => 추가: 2019.04.04, by 진태만 */ 
		, UAMT_BUY                         	/* 총구매단가(외화): 총구매단가(외화) =>수정: 2019.04.04, by 진태만 */ 
	  )
	VALUES( 
		#{NO_QUOTATION}         		/*견적번호(=안건번호)*/
		, #{NO_REVISION}            		/*견적번호 REV*/
		, #{NO_SEQ}                         /*순번*/
		, #{ID_LINE}                     	 /* ID_LINE */ 
		, #{NO_POS}                         /*POS No.*/ 
		, #{HRNK_ITEM_UPRC_FRCR}  			/* 구매단가(외화) ==> 상위 품목 단가(외화): UAMT_BUY_H => 추가: 2019.04.04, by 진태만 */ 
		, #{LOW_ITEM_UPRC_FRCR}    			/* 하위 품목 단가(외화) ==> UAMT_BUY_L=> 추가: 2019.04.04, by 진태만 */ 
		, #{UAMT_BUY} 								/* 총구매단가(외화) ==> 구매단가(외화) => 수정: 2019.04.04, by 진태만 */ 
	}					
 </insert>			
==============================================================================================================

- Bom 매핑 ==> Stock Master 수주 예약수량 관리 추가 @@@ ==> 완료 @@@
1. GUBUN: INQ, INQ_SUB
2. RESERVE_TYPE: 01 
==============================================================================================================

- Stock 찾기, 적용, 해제 기능 보완 ==> 완료 @@@  
1. GUBUN: INQ, INQ_SUB
2. Stock 찾기(RESERVE_TYPE:03)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.20(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 

- 주말
07:00 기상
07:10 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:10 종료
08:15 조식
09:00 도림천로 도보  
09:30 귀가
10:10 집출발(자전거)
10:20 다이소 대림2호점 ==> 베이스볼 세트(야구 장난감): 수종, 이어맥 알루미늄 일반형 이어폰(5천원) 구입 
10:40 귀가
11:10 수종이랑 야구 놀이(집)
11:40 종료
12:00 중식 ==> 루옌 친구 만나러 감
12:30 운동(워킹 머신에서 빠르게 걷기: 6km): 15분
12:45 종료  
13:00 집출발(수종, 자전거)
13:20 보라매 공원
13:25 보라매 공원 도보
14:00 종료  
14:20 귀가
14:30 휴식 ==> 수종 응가하고 뒷처리 혼자서 한다고 함(다 키웠음) 
18:00 집출발
18:10 치킨(맛닭코: 칼릭 베이크[10,900원], 포장) 
18:20 귀가 
18:40 석식(치킨)
19:00 도림천로 도보 ==> 비 약간 옴
19:30 귀가
20:00 눈높이 한글 공부 도와주기(수종)
21:10 종료
21:10 취침(수종)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.21(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 체중: 70.7kg

- 주말2
07:00 기상
07:10 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:30 조식
09:30 집출발
09:30 도림천로 도보
10:10 집출발(자전거)
10:20 다이소 대림2호점 ==> 미술용 4B 연피(5P/SET), 심조절 가능 연필 깍이(5000) 구입
10:40 귀가 
12:00 중식 ==> 루옌(수종) 언니 만나러 감
12:30 도림천로 도보
13:30 귀가
14:10 인터넷 서핑 
15:30 집출발(자전거)
15:50 대림운동장) ==> 인슐린 펌프 제거
16:00 축구 게임(은혜교회팀: 어울림팀) ==> 3쿼터 뜀(2시간): 컨디션 보통, 날씨 따듯(반바지)
		==> 부활절(계란 대기에서 짐), 헤딩하다가 상대 발에 머리 맞음(충격 크지 않음), 어깨는 아직도 충격 받으면 아픔
18:00 종료 
18:20 귀가 ==> 루옌(수종) 귀가 안해서 혼자 밥 차려 먹음
18:30 샤워
18:56 인슐린 약 교체(207U)
18:55 인슐린 펌프 착용 ==>  
19:00 석식
19:30 집출발
19:40 영림초교 정류장 도착
19:56 505번 버스 탑승
20:30 광명역 도착(약 34분 소요)
20:56 창원행[광명(20:56) -> 창원중앙(23:31), KTX]
23:37 창원중앙역 도착
24:20 귀가(약 40분 소요)
24:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.22(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- BOM 맴핑 수정
1. CURSOR C3 쿼리 수정
 1) A.NO_PLATE, A.NO_PLATE_KIT가 동시에 존재할 때 갯수가 1이하 이면 하위 데이타 생성(NO_PLATE_KIT필드 NULL 처리)
==============================================================================================================

-   [에러] ORA-01722: invalid number, ORA-01722 ...
https://javafactory.tistory.com/961 
▶ 발생 원인
 → 1. 데이터 Insert/Updata 시, 데이터 형에 맞지 않는 값 입력
         Ex) Data 형식 컬럼에 문자(VarChar) 형식 데이터를 넣는 경우
     2. 쿼리에서 사용 하는 조건식에 데이터 형식이 잘못 된 경우
         Ex) SUBSTR(TEST.COL, 1, 1) <> 0 는 SUBSTR(TEST.COL, 1, 1) <> '0' 이렇게 하는게 맞음 

▶ 해결 방법
 → 1. Insert 하는 쿼리/프로시져가 테이블의 데이터 형식에 맞게 데이터를 넣고 있는지 확인한다.
     2. 조건식(비교 등)에서 문자와 숫자를 비교하는 부분이 있는지 확인 한다.
     3. 문자를 숫자로 변경 할려고 하는 부분이 있는지 확인 한다.
     4. MOD 함수를 사용할 때, 문자를 넣은 곳이 있는지 확인 한다. 
==============================================================================================================

- 용어 정리
발주: 물건을 보내 달라고 주문함. 
견적: 어떤 일을 하는 데 필요한 비용 따위를 미리 어림잡아 계산함. 
수주: 주문을 받음.  
==============================================================================================================

- 2019.02(HDS 엔진 Prj)
01.일정관리
02.이슈관리
03.산출물관리
	01. 분석단계(RQM)
		모바일 FD
		웹UI FD
		FD Template2.xlsx
	02. 설계단계(DES)
		3 1 1_UserInterface_ibiz2_기준정보관리.pptx
		3 1 1_UserInterface_ibiz2_기준정보관리_퍼블리싱.pptx
	03. 구축단계(CON)
		DS2017001-DEV-10 개발표준정의서.docx
	04. 테스트단계(TES)
		01.UNIT TEST
	05. 인수단계(ACC)
06.참고문서
91. 기타
99. 개발관련
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.23(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 주간보고회(10시 ~ 11시, PI회의실): 직거래 운송/출하 프로세스 교육(정진용 과장), 17시 보슬비
								, 3달 후 진료(08:30, 건대 충주 병원): 취소

- HSD 엔진 Stock 운영 시스템 구축 Prj[★] 
- BOM 맴핑 수정 ==> 완료 @@@  
1. CURSOR C3 쿼리 수정
 1) 전체 조회 건수가 1건이고 NO_PLATE, NO_PLATE_KIT가 동시에 존재하면 ==> 하위 데이타 생성(NO_PLATE_KIT 필드 NULL 처리)[비정상]
 2) 전체 조회 건수가 1건 이면 ==> NO_PLATE_KIT 필드 그래도 유지
 3) 전체 조회 건수가 1건 이상 이면 ==> 정상
==============================================================================================================
  
- 견적작성(/INQ000150.xml) 수정 ==> 완료 @@@  
1. General Info. Tab에서 Order Confirm ==> GUBUN : INQ, INQ_SUB, RESERVE_TYPE : 06 (고정 값) 
public Map<String, Object> pmAllSave(Map<String, Object> param) throws Exception{
	if( "10".equals(st_mode) ){ 	 // save_mode가 OrderConfirm 일 때 ==>  추가: 2019.04.15, by 진태만 
		logger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [OrderConfirm 일 때] [TEST_30][st_mode]"+ st_mode );
		
		dao.insert_ORD_ORDER_LINE_SUB(map);  	// 수주 등록 SUB 추가: 2019.04.22, by 진태만   
		
		iRst = setOordBkngQtyMngm(param, "06");  		// Stock Master 수주 예약수량 관리 ==> 추가: 2019.04.16, by 진태만 
	}
}
==============================================================================================================

- 수주등록 및 상세내용(/ORD000050.xml) 수정
1. Item Info. Tab에 Stock 정보 추가, 하위 Grid 추가
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.24(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 6시 보슬비(비 약간 맞고 도보)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]  
- 수주등록 및 상세내용(/ORD000050.xml) 수정
1. Item Info. Tab에 Stock 정보 추가, 하위 Grid 추가
2. Stock 적용: 06, Stock 해제: 07
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2019.04.25(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 05:13 인슐린 약 교체(246U)  

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]  
- 수주등록 및 상세내용(/ORD000050.xml) 수정
1. Stock 적용 대상 품목의 Stock 재고수량이				
    1) 큰 경우 Line 색깔 표시 없음 , Stock 코드(Stock 사용) S 변경				
    2) 작은 경우 노란색 Line으로 표기하고 Stock 코드(Stock 사용)는 자동 견적 Table F 로 변경				
2. Stock 적용: 06, Stock 해제: 07
-----------------------------------------------------------------------

-- 수주등록 Line 조회, 수정 @@@
SELECT A.NO_ORDER, A.ID_LINE, A.NO_POS
			, A.QTY_ORDER AS "수주수량", A.QTY_STOCK AS "Stock 가용수량", A.QTY_STOCK 
			, A.*
FROM ORD_ORDER_LINE  A 		-- 수주등록 Line TB
WHERE 1=1
	AND A.NO_ORDER = 'LIS363'			-- 주문번호
	AND A.NO_REVISION = '00'	-- 주문번호 REV
	FOR UPDATE
; 
==============================================================================================================

-- 수주등록 Line_SUB 조회, 수정 @@@
SELECT A.NO_ORDER AS "수주번호", A.NO_POS, A.NO_PLATE	--, A.ID_LINE
			, A.STOCK_YN AS "Stock 사용여부", A.STOCK_VALID   -- Stock 판매
			, A.DATE_MODIFY AS 수정일시, A.DATE_CREATE AS 등록일시
			, A.QTY_ORDER AS "수주수량", A.QTY_STOCK AS "Stock 가용수량", A.QTY_ONHAND AS "Stock 재고수량"
			, A.QTY_RECEIPT AS "Stock 미 입고 수량" 
			, A.*
FROM ORD_ORDER_LINE_SUB  A 		-- 수주등록 Line_SUB TB
WHERE 1=1
	AND A.NO_ORDER = 'LIS363'			-- 주문번호
  -- AND A.NO_POS = '1.02'	 
	AND A.NO_REVISION = '00'	-- 주문번호 REV
	FOR UPDATE
;
==============================================================================================================

- Grid에서 체크박스 클릭시 Row 상태 자동으로 '수정'으로 처리 
/* Sub Material and additional item 조회 ==> [selectOrd000050_Dtl.ORD000050_mapper.xml] [2019.04.23, by 진태만] */ 
SELECT '0' AS CHK
		, A.NO_ORDER -- 수주번호
		, A.NO_REVISION -- 수주번호 REV
		, A.ID_LINE 
FROM ORD_ORDER_LINE_SUB A -- 견적작성 Line(제출용) _SUB TB
WHERE 1 = 1
	AND A.NO_ORDER = '' -- 수주번호
	AND A.NO_REVISION = '00' -- 수주번호 REV
	AND A.ID_LINE = '1'
;
--------------------------------------------------------------------------------------------------

<list id="ds_itemList">
    <map index="0">
        <CHK>0</CHK>
		<NO_ORDER>LBN954</NO_ORDER>]]
		<NO_REVISION>00</NO_REVISION>
        <NO_PLATE>90805-0154-015</NO_PLATE>
        <NO_POS>1.01</NO_POS> 
    </map>
</list>
--------------------------------------------------------------------------------------------------

<!--// 03. Item Info.(작성용) SUB 정보 List(ds_itemInfoSub) //--> 
<w2:dataList baseNode="list" id="ds_itemInfoSub" repeatNode="map" saveRemovedData="true" 
style="" ev:oncelldatachange="scwin.ds_itemInfoSub_oncelldatachange">
	<w2:columnInfo>
		<w2:column id="CHK" name="CHK" dataType="text" ignoreStatus="false"></w2:column>  
			==> ignoreStatus: true에서 false로 변경해야 함 @@@
		<w2:column id="ID_LINE" name="ID_LINE" dataType="text"></w2:column>
		<w2:column id="F_LEVEL" name="F_LEVEL" dataType="text"></w2:column>
		<w2:column id="I_SPEED" name="I_SPEED" dataType="text"></w2:column>
		<w2:column id="NO_ORDER" name="수주번호" dataType="text"></w2:column>
	</w2:columnInfo>
	<w2:data use="true"></w2:data>
</w2:dataList>		
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.26(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 주간보고서 작성, 서울행[마산(18:11) -> 광명(20:44), KTX] 
 
- HSD 엔진 Stock 운영 시스템 구축 Prj[★]  
- 수주등록 및 상세내용(/ORD000050.xml) 수정
1. STOCK_VALID: Stock 해제 추가 ==> 완료 @@@
==============================================================================================================

-- 수주등록 Line  조회, 수정 @@@
SELECT A.NO_ORDER AS "수주번호" --, A.NO_DWG  --, A.NO_POS, A.NO_PLATE	--, A.ID_LINE
				/* B: 이력용 견적/수주 가용수량, 재고수량  */
 			 , A.QTY_STOCK AS "Stock 가용수량", A.QTY_ONHAND AS "Stock 재고수량", A.QTY_RECEIPT AS "Stock 미 입고 수량"  	 
			 , A.QTY_ORDER AS "수주수량", A.QTY_STOCK AS "Stock 가용수량"
			, A.STOCK_YN AS "Stock 사용여부", A.STOCK_VALID   -- Stock 판매  	 
			, A.QTY_ONHAND AS "Stock 재고수량", A.QTY_RECEIPT AS "Stock 미 입고 수량" 
			, A.QTY_ORDER AS "수주수량", A.QTY_STOCK AS "Stock 가용수량", A.QTY_ONHAND AS "Stock 재고수량"
			, A.DATE_MODIFY AS 수정일시, A.DATE_CREATE AS 등록일시
			, A.QTY_RECEIPT AS "Stock 미 입고 수량" 
			, A.*
FROM ORD_ORDER_LINE   A 		-- 수주등록 Line  TB
WHERE 1=1
AND   A.NO_ORDER = 'LIS363'
		-- AND A.NO_PLATE = '00.652.223563'
		AND   A.NO_POS = '2.01'; 
;
-----------------------------------------------------------------------------------------------------------

- [/STDCommServiceImpl.java] [compareQtyAvailable()] ==> [TEST_01] [가용수량 비교 (A) 처리
/*	A: 가용수량 비교(도면번호 기준)  QTY_QUOTATION	*/
SELECT 
	A.QTY_ORDER AS QTY_QUOTATION  
	, A.NO_DWG
FROM ORD_ORDER_LINE A
WHERE 1=1
	AND	A.NO_ORDER = 'LIS363'   -- 수주번호
	AND A.NO_PLATE = '00.652.223563'
	AND A.NO_POS = '1.01'
	AND A.NO_REVISION = '00';
-------------------------------------------------------------------------------------

/*	A: 가용수량 비교(도면번호 기준)  QTY_AVAILABLE	*/
SELECT  A.QTY_AVAILABLE AS 가용수량
FROM STD_STOCK_MASTER A
WHERE 1=1
	AND	A.NO_DWG = '00.652.223563';  -- 도면번호
==============================================================================================================

- Grid에서 이중 for문
if(ds_itemInfoNew.getRowCount() > 0)
{
	for(var i = 0; i < ds_itemInfoNew.getRowCount(); i++) 
	{ 
		var qtyOrder = parseFloat(combiz.nvl(ds_itemList.getCellData(i, "QTY_ORDER"), 0));   // 수주수량
		var qtyStockAval = parseFloat(combiz.nvl(ds_itemList.getCellData(i, "STOCK_AVAL_QTY"), 0));   //  Stock 가용수량 
		console.log("[/ORD000050.xml] [selectOrd000050All()] ==> [조회 결과] [TEST_53_1] [i_번째]"+ i +"[수주수량]"+ 
		ds_itemList.getCellData(i, "QTY_ORDER") +"[Stock 가용수량]"+ ds_itemList.getCellData(i, "STOCK_AVAL_QTY") ) ;

		if((ds_itemList.getCellData(i, "QTY_ORDER") != '0' && ds_itemList.getCellData(i, "QTY_ORDER") == "") 
			|| (ds_itemList.getCellData(i, "STOCK_AVAL_QTY") != '0' && ds_itemList.getCellData(i, "STOCK_AVAL_QTY") == ""))
		{    // "" 값 처리...
		} 
		else
		{
			if(qtyStockAval < qtyOrder) 		// Stock 가용수량이 수주수량 보다 적으면 ==> Line은 노란색으로 색깔 표기
			{
				console.log("[/ORD000050.xml] [selectOrd000050All()] ==> [조회 결과] [TEST_53_2] [i_번째]"+ i
					+"[수주수량]"+ qtyOrder +"[Stock 가용수량]"+ qtyStockAval ) ;
				
				ds_itemList.setCellData(i, "STOCK_USE_YN", ""); 		// Stock 사용여부
				for(var j = 0; j < 32; j++)
				{
					grd_itemList.setCellBackgroundColor(i, j, "#FFFF00" );   	// 배경색 셋팅(상위 Grid row에 배경색 설정)
					
					vStockAvalQtyLckYn = "Y";   // Stock 가용수량 부족 여부
				}
			} 
		}
	} // end of for()
}
-----------------------------------------------------------------------------------------

/** * null 이나 빈값을 기본값으로 변경 */
combiz.nvl = function(str, defaultVal) {
    var defaultValue = "";
     
    if (typeof defaultVal != 'undefined') {
        defaultValue = defaultVal;
    }
     
    if (typeof str == "undefined" || str == null || str == '' || str == "undefined") {
        return defaultValue;
    }
     
    return str;
}
==============================================================================================================

- 두산 이메일 서버에 문제 안정화
1. 두산 정보통신 전직원이 2주 동안 공장 방문해서 PC에 해당 작업을 했다고 함 ==> PI 팀장이 오늘 직원들에게 중식 사줬다고 함.
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.27(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 

- 주말
07:00 기상
07:10 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:10 종료
08:15 조식
09:00 도림천로 도보  
09:30 귀가
11:10 집출발(자전거): 앞 바퀴 빵구남
11:20 자전거 앞 바퀴, 튜브 교체(2만 5천원 ==> 만 천원에 타결, 대림역 근처 자전거점)
12:00 다이소 대림2호점 ==> 에어 시스템 깔창(여성용: 250cm) 구입
12:10 엘마트 ==> 밀크 플러스 900ml(우유, 4통, 2통 3,300원): 수종
12:30 귀가 
12:40 중식 ==> 루옌 친구 만나러 감
13:00 도림천로 도보
13:30 귀가  
14:10 집출발(수종)
14:30 대림역 정류장(6411번 버스)
15:30 서울대 정류장
15:50 관악 도서관(수종 혼자서 책 봄)
16:20 종료
16:30 서울대 정류장(6511번 버스)
17:30 대림역 정류장
17:50 석식(비빕밥, 치즈돈가스: 김밥 천국 남구로점): 수종
18:10 종료
18:20 이마트 구로점 ==> 수종 어린이날 선물 구경(레고 60216), 트래킹 샌들 구경
18:50 종료
19:00 귀가
19:10 도림천로 도보
19:40 귀가  
19:50 TV 시청
20:45 취침(수종)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.28(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 21:00 ==> 체중: 70.7kg

- 주말2
06:30 기상
06:40 인터넷 서핑 ==> 수종이랑 야구, 축구 시청
08:10 조식 
09:00 도림천로 도보(루옌이 베트남에서 가져온 하얀 아디다스 운동화로 신발 교체)
09:40 귀가 
10:10 눈높이 한글 공부 도와주기(수종)
12:00 중식 
12:30 아파트 놀이터(수종 골기퍼 연습)
13:00 도림천로 도보
13:30 귀가 ==> 루옌(수종) 보라매 공원 놀러감
14:10 인터넷 서핑 
15:30 집출발(자전거)
15:50 대림운동장) ==> 인슐린 펌프 제거
16:00 축구 게임(은혜교회팀: 어울림팀) ==> 4쿼터 뜀(2시간): 컨디션 보통, 날씨 쌀쌀(반바지)
		==> 어깨는 아직도 충격 받으면 아픔, 오른쪽 종아리 차임(약간 아픔)
18:00 종료 
18:20 귀가
18:30 샤워
18:52 인슐린 약 교체(205U) ==> 공기 빼기를 누르고 5분 지나도 인슐린 방울이 안 떨어짐 --> 그냥 착용
18:55 인슐린 펌프 착용 ==>  
19:00 석식 ==> 수종 어린이날 선물로 자전거 사달라고 함
19:38 집출발
19:45 영림초교 정류장 도착
20:04 505번 버스 탑승
20:40 광명역 도착(약 34분 소요)
20:56 창원행[광명(20:56) -> 창원중앙(23:31), KTX]
21:00 저녁 식후 혈당 체크(286 나옴)
23:37 창원중앙역 도착
24:20 귀가(약 40분 소요)
24:30 취침 전 혈당 체크(118 나옴)
24:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.29(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 7시부터 비옴(6시에 도보로 출근)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
==============================================================================================================

- 구매단가(원화)
UAMT_BUY_KRW_H: 상위품 구매단가(원화)	==> // 구매단가(원화)
UAMT_BUY_KRW_L: 하위품 구매단가(원화)	 
UAMT_BUY_KOR: 총 구매단가 (원화)   ==> // 총 구매단가 (원화) = 상위품 구매단가(원화)[구매단가 (원화)] + 하위품 구매단가(원화)
---------------------------------------------------------------------------------------------------

- 재료비(Unit cost)
UAMT_MATERIAL_H: 상위품 Unit cost
UAMT_MATERIAL_L: 하위품 Unit cost
UAMT_MATERIAL: Total Unit Cost(총 재료비 단가) ==> // 총 재료비 단가 = 상위품 Unit cost[재료비 단가] + 하위품 Unit cost

UAMT_MATERIAL_C: Amount Cost ==> 계산값(COST X 수량) 
==============================================================================================================
 
- Order Confirm 수정 ==> 완료 @@@
iInsMod += dao.insert_ORD_ORDER_LINE_SUB(map);  	// 수주 SUB 정보 등록 수정(해당 견적번호 전체 등록): 2019.04.29, by 진태만 
logger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [TEST_83_4] [iInsMod]"+ iInsMod );
==============================================================================================================

- 수종 자전거 구입
1. 스페이스넘버원1. 스페이스넘버원 어린이 자전거(18인치, 블랙, 80프로 미조립), 가격: 155,590원
http://itempage3.auction.co.kr/DetailView.aspx?itemNo=B334477798&frm3=V2
==============================================================================================================

- [프로스펙스]남성 스포츠샌들 드레인 01[PS0MP17S311], 2.01(블랙)/260㎜, 가격: 21,560원
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=2127396897&xzone=order^list&xfrom=order^list
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2019.04.30(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 주간보고회(9시 ~ 10시, PI회의실)

- HSD 엔진 Stock 운영 시스템 구축 Prj[★]
- 견적작성(/INQ000150.xml) 수정
1. 구매단가(원화)[UAMT_BUY_KOR], 재료비(Unit cost)[UAMT_MATERIAL] 저장 ==> 완료 @@@
2. 저장시 UAMT_SALE_DC(견적환율 적용 재료비 DC  판매 단가), QTY_ONHAND(Stock 재고수량) 필드 저장 안됨 수정
==============================================================================================================

- JAVA에서 조회 결과 확인
@RequestMapping("/inq/pmAllSearch.do")
public ModelAndView pmAllSearch(Map<String, Object> param) throws Exception { 
	logger.info("[/INQ000150Controller.java] [pmAllSearch()] ==> [TEST_01] [정보 조회]" ); 
	
	WqModel wqModel = new WqModel();
 
	try {		
		List generalList       = service.selectInq000150NewGeneral((Map) param.get("ds_input1"));
		logger.info("[/INQ000150Controller.java] [stockInqyApltCancl()] ==> [조회 결과] [TEST_51] [generalList.size()]"+ generalList.size() );
		
		if(generalList.size() > 0)
		{
			Map<String, Object> map2 = (Map<String, Object>)generalList.get(0);
			map2.put("NO_QUOTATION", map2.get("NO_QUOTATION"));  
			 
			List itemNewList       = service.selectInq000150NewItem( map2 );
			logger.info("[/INQ000150Controller.java] [stockInqyApltCancl()] ==> [조회 결과] [TEST_53] [itemNewList.size()]"+ itemNewList.size() );
			
			for(int i = 0; i < itemNewList.size(); i++)		// ds_itemInfoSub List
			{  
				Map map8 = (Map<String, Object>) itemNewList.get(i);
				logger.info("[/INQ000150ServiceImpl.java] [pmAllSave()] ==> [TEST_51] [i_번째]"+ i +"[NO_POS]"+ map8.get("NO_POS") 
				+"[sNO_PLATE]"+ map8.get("NO_PLATE")  +"[상위품 구매단가(원화)]"+ map8.get("UAMT_BUY_KRW_H") +"[하위품 구매단가(원화)]"+ 
				map8.get("UAMT_BUY_KRW_L")  +"[총 구매단가 (원화)]"+ map8.get("UAMT_BUY_KOR")  +"[상위품 Unit cost]"+ 
				map8.get("UAMT_MATERIAL_H")  +"[UAMT_MATERIAL_H_2]"+ map8.get("UAMT_MATERIAL_H_2") );
			}  // end of for()
			logger.info("[/ORD000020ServiceImpl.java] [selectOrd000020ItemList()] ==> [TEST_71] [itemNewList]"+ itemNewList );
			
			List itemApprovalList  = service.selectInq000150AprovalItem( map2 );
	 
			wqModel.setData("ds_output2", itemNewList); 
		}
		
		wqModel.setMsg( WqModel.STATUS_SUCESS );
		
	} catch (Exception ex) {// DB커넥션 없음
		wqModel.setErrorMsg(WqModel.STATUS_ERROR, ex);
	}
	return wqModel.getResult();
}
==============================================================================================================

- 반바지 구입
1. 축구 반바지(택01) 캡스록 4부 무지: 블랙/105(2XL], 네이비/85(S)), 가격: 14,460원
http://www.enuri.com/detail.jsp?modelno=14113634&cate=&IsDeliverySum=N
http://item.gmarket.co.kr/detailview/item.asp?goodscode=682782971
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■