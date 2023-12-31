

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2004.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2004.06.01(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 ==> 맑음 
  
- 통합 수정
- 주문접수한 상품 15일후 주문취소 SP 수정
- 다중 CURSOR 사용  --- 
CURSOR cur_limit_qty IS 
SELECT B.ITEM_CD, B.QTY 
FROM T_ORDER A, T_ORDER_DTL B 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_NO =  B.ORDER_NO 
AND A.ORDER_DT = B.ORDER_DT 
AND A.COMPANY_CD = H_COMPANY 
AND A.MERCHANT_CD = H_MERCHANT --협력업체분만 처리 
AND A.ORDER_TP = '01'   --주문유형(01:정상주문) 
AND A.ORDER_STS = '01'   --주문상태(01:주문접수, 02:접수취소, 03:결재완료, 04:배송중) 
AND A.AR_WAY_CD = '01'    --결재방법코드(01:현금, 02:카드) 
AND A.ORDER_DT <= TO_CHAR(SYSDATE - 80, 'YYYYMMDD') --80일 후 기간 
ORDER BY A.ORDER_DT ASC, B.ITEM_CD ASC; 


FOR var_cur_limit_qty IN cur_limit_qty LOOP 
BEGIN 
--한정판매 상품 재고조정 @@@@@@@@@@@@@@@@@@ 
UPDATE T_MERCHANT_ITEM 
SET LIMIT_SALE_QTY = LIMIT_SALE_QTY + NVL(var_cur_limit_qty.QTY, 0) 
WHERE COMPANY_CD = H_COMPANY 
AND MERCHANT_CD = H_MERCHANT --협력업체분만 처리 
AND ITEM_CD = var_cur_limit_qty.ITEM_CD --상품코드 
AND LIMIT_SALE_YN = 'Y'; --한정판매여부 

COMMIT; 
EXCEPTION  WHEN OTHERS THEN  DBMS_OUTPUT.PUT_LINE ( SQLERRM ) ; ROLLBACK ; RETURN; 

END; 
END LOOP; 
==============================================================================================================

- PDA EVB 세팅
- MS Embedded Visual Tools 3.0  
==============================================================================================================

- 회의
장바구니 통합에 관한 건 
==============================================================================================================

- R&F상품, 일반 상품 통합에 따른 반품 문제 
- 가상계좌 사용에 따른 비용 문제 분석(월 사용료: 50만원, 건당 300원): http://www.cybercvs.com 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 ==> 맑음 
  
- 통합 수정
- 수불장 엑셀 출력 
http://support.i3shop.com/VendorMgr/SettleInfo/storeOutDtlP.jsp 
String p_no_page = (request.getParameter("p_no_page")== null) ? "": request.getParameter("p_no_page");  //요청페이지 없음 
System.out.println("[ToExcel.jsp]::[outHash]"+ outHash); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.03(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 
  
- 통합 수정
- 수불장 엑셀 출력 
http://support.i3shop.com/VendorMgr/SettleInfo/storeOutDtlP.jsp 
http://210.123.133.31:5001/BizMgr/ReportMgr/reciveAndPayP.jsp 

String p_no_page = (request.getParameter("p_no_page")== null) ? "": request.getParameter("p_no_page");  //요청페이지 없음 
System.out.println("[reciveAndPay_ExcelP.jsp]:[str_p_merchant_cd]"+ str_p_merchant_cd); 

<form name="searchForm" method="post" onsubmit="return wait_searchDataSet(DS_report, './reciveAndPayB.jsp', '1' )"> 
	<input type=image src="<%=PATH%>/images/bt_search2.gif" alt="조회" style="border-width:0px;"> 
</form> 
==============================================================================================================
에러내용 : java.lang.OutOfMemoryError 
===> 메모리 부족으로 추정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 ==> 맑음 
  
- 통합 수정
- 장바구니 통합 장단점 보고서 작성 
==============================================================================================================

- 결재 소스 모듈화 
ISP결제, VISA안심클릭 결제 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.05(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 16:00 ==> 맑음 
  
- 통합 수정
- 결재 소스 모듈화 
ISP결제, VISA안심클릭 결제 
==============================================================================================================

- 우편물 도착통지서(등기)  
동대구 우체국 
평일 08:00 ~ 22:00 민원창구 T)940-6414 당직실 T)940-66316 
담당자 * 
==============================================================================================================

http://cafe.daum.net/1000doong 
http://cafe.daum.net/winnereleven
http://cafe.daum.net/FCtaekeuk 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:30 ==> 흐린 후 비 
  
- 통합 수정
- 신규 공인인증서(국민은행) 발급 오류 분석 
등록자의 오류로 추정 
==============================================================================================================

- 입금확인 인덱스 분석 
T_ORDER TB ORDER_DT 인덱스 오류로 추정 

CREATE INDEX IDXT_ORDER_DT ON  
  "IIISHOP".T_ORDER(ORDER_DT) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 16K); 

CREATE UNIQUE INDEX XPKT_ORDER ON  
  "IIISHOP".T_ORDER(COMPANY_CD,MERCHANT_CD,ORDER_DT,ORDER_NO) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K); 
==============================================================================================================

- 점간 이동(마트 -> 물류) 
재고 이동내역 확인(윤승한 차장) ===> 수불장 확인 
결과: 자인물류에서 받아서 확인하고 있음(현재 미승인 상태) 
/BizMgr/ItemStockMgr/merchantMoveStatP.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 ==> 흐린 후 비 
  
- PDA 분석
- 통신 프로그래밍 
서버: 210.123.133.31 PORT: 8082 
==============================================================================================================

- DB 프로그래밍 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 맑음 
  
- PDA 분석
- PDA 통신 프로그래밍 분석 
서버: 210.123.133.31 PORT: 8082 
==============================================================================================================

- 회의
- 장바구니 통합에 관한 건 
통합 취소하는 것으로 결론 남 
==============================================================================================================

- 발주 발송 관리에서 발주 번호 바코드화 
==============================================================================================================

- 주문취소_한정수량 증감 
제한 수량 0 으로 되어 버린 후 DELETE 안 시킴: ACTIVE상태(제한 수량 증가 후 수량 증가 ==> 상품이 자동 등록됨) 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.06.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 ==> 맑음 
  
- PDA 분석
- 발주 발송 관리에서 발주 번호 바코드화 
바코드 분석기가 인식 못 하는 것으로 추정됨 
==============================================================================================================

- 일정관리 내용(cc_dsc) 안보임
Oracle ODBC Driver 수정되어 있어서 수정 
'set rsList=dbcon.Execute(sqlList)    -------> 
set rsList = server.createobject("ADODB.recordset") 
rsList.Open sqlList, dbcon,1  
---------------------------------------------------------------------------------------------------------- 

그문제는 odbc문제 같습니다 
odbc에서 Oracle ODBC Driver와 Microsoft ODBC for Oracle이렇게 2개가 있는데 
아마 1번째 걸로 하신 모양이네요 그것을 Microsofr.... 이것으로 바꾸어주시고  
해보세요 absolutepage가 될겁니다.. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> 맑음 
  
- 쇼핑몰 수정
- 자료실 정렬 수정 
http://test.mart.cc/etc/materialListP.jsp?p_store_cd=S013 
==============================================================================================================

- R&F 건의사항 담당자 메일 변경 
http://test.mart.cc/etc/sendMailfP.jsp?p_store_cd=S013 
==============================================================================================================

- 티지 코드 결재 수정 
- (주) TG CORP 
---------------------------------------------------------------------------------------------------------------------------- 

- 정진욱  기술개발3팀 
T) 02)528-2543 Fax) 02)528-2525 H) * 
이승환 대리 
T) 02)3438-3564 ~ 5 
---------------------------------------------------------------------------------------------------------------------------- 

https://npg.tgcorp.com/mdbop/login.jsp i3shop9031/i3shop9001(R&F) i3shop9032/i3shop9001(L&B) 
사업자번호: 504 81 32871  
==============================================================================================================

- PDA 분석
- 황영주 주임 * 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.12(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 13:00 ==> 맑음 
  
- 쇼핑몰 수정
- 결재 분석 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.14(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 ==> 맑음 
  
- 쇼핑몰 수정
- 결재 수정 
안심클릭 신용카드(LG) - TG CORP 결재 
http://support.nbluepay.com/sc/main.jsp testcorp/xlwlakstp(티지만세) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.15(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 23:00 ==> 맑음 
  
- PDA 분석
- PDA DB 프로그래밍 분석 
바코드 번호 
8801166345828   -- 13자리 
9788979142280 
----------------------------------------------------------------------------------------------------------  

http://groups.msn.com CE FAN 
무선 인터넷 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.16(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 ==> 맑음 

- PDA 분석
- PDA DB 프로그래밍 분석 

- AP IP 설정 
MAC ADDRESS: 00904B0809E0  
\WINDOWS\Airoent Client Utility 에서 SSID: I3SHOP 설정 
IP: 210.123.133.25 
---------------------------------------------------------------------------------------------------------- 

- AP IP 설정 
MAC ADDRESS: 00904B080971 
\WINDOWS\Airoent Client Utility 에서 SSID: I3SHOP2 설정 
IP: 210.123.133.26 ======> 새로 설치 
---------------------------------------------------------------------------------------------------------- 

- CISCO 랜카드 설치(C:\TAMA_DATA\My_DOCUMENT\My_Software\Program\PDA\CISCO 랜카드/) 
1. ceInstall.exe 설치 
2. pkg_300.exe 설치 
---------------------------------------------------------------------------------------------------------- 

1. PDA 제품모델명 
PA960(유니텍) 
WIN CE3.0 PA960용 SDK설치 
PDA IP: 210.123.133.26  ==> 기존에 사용 
==============================================================================================================

- PDA 포맷 
내컴퓨터/Utiliy/BootMode
Warm Boot 
Update OS  ===> 커먼 화면 - 5번 누름   
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2004.06.17(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 ==> 맑음 
  
- PDA 분석
- PDA DB 프로그래밍 분석 
ADO CE 3.1 연결 문제 
==============================================================================================================

REGSVR32 C:\Windows CE Tools\dataaccess31\wce300\x86em\adoce31.dll 
REGSVR32 C:\Windows CE Tools\dataaccess31\desktop\adocedt31.dll 
adoce31.dll 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.18(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 ==> 맑음 
  
- PDA 개발
- PDA DB 프로그래밍 분석  
==============================================================================================================

- ADO CE 3.1 다시 설치 
C:\Downloads\adocesdkzip\adocesdk\setup.exe 
==============================================================================================================

- PDA 재고 조회 
SELECT ITEM_CD, ITEM_NM, BOOK_QTY, REAL_QTY, BARCODE FROM DB_INQUIRY  
WHERE BARCODE = '8809073950661' ' ==> 8809073950678, 8809073950685 
==============================================================================================================

The operation is not allowed if the object is closed. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.19(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 17:30 ==> 비 
  
- PDA 개발
- 재고 관리 조회, 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.21(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 ==> 비 온 후 구름 

- PDA 개발
- 재고 관리 Grid 수정 
- 재고관리 바코드 Scan 
9788979142280   9788988751206 
==============================================================================================================

- 수도 검침: * 
951-0091  953-0091 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2004.06.22(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:30 ==> 맑음 
  
- PDA 개발
- 재고관리 바코드 Scan 
9788979142280 9788988751206 9000000000000  
0014698700000 
9000000146987 
------------------------------------------------------------------------------------------------------------- 

UPD ATE DB_INQUIRY SET BARCODE =  "90000" &+ BARCODE 
------------------------------------------------------------------------------------------------------------- 

- 오즈Report 에서 출력 가능한 바코드 타입 
CODE39 CODE128AUTO(MOD1030)  =========> 현재 사용 적합   
==============================================================================================================

- 발주 발송 관리에서 발주 번호(PO_NO) 바코드화 
http://210.123.133.31:5001/BizMgr/BuyingMgr/PlacingOrderMgr/poSendP.jsp 
PO_NO: 0100012004062100001 
==============================================================================================================

- 신용카드
- LG 카드 정보 존재(주문 자료 없음) 
SELECT * FROM T_ORDER WHERE COMPANY_CD = '01' AND MERCHANT_CD = '0001' AND ORDER_DT = '20040622' 
AND ORDER_NO IN ('00244','00321') 
==============================================================================================================

- 신용카드 결재 
나이스 http://www.nicepay.co.kr/nicepay/login.htm  
L&B ==> ID: ith3597 pass: 3597 02-2187-2778 
R&F ==> ID: its2023 pass: its2023 
-------------------------------------------------------------------------------------------------------------

- 티지 (I-yes 서울, I-yes 인천)  
https://npg.tgcorp.com/mdbop/login.jsp  
ID: i3shop9032 pass: i3shop9001 kvp 02-871-6622 
==============================================================================================================

- 쇼핑몰 수정
L&B 유아용품 
/display/big/bigctg.jsp?p_store_cd=S001&p_category_cd=T07000000&p_display_cd=02 
/display/midvtpl/type31/categoryP.jsp 
-------------------------------------------------------------------------------------------------------------

- I3MART 유아용품 
/display/big/bigctg.jsp?p_store_cd=S019&p_category_cd=T09000000&p_display_cd=31 
/display/midvtpl/type02/categoryP.jsp 
==============================================================================================================

- 명품관  
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 
/display/event/T32000000/categoryP.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.23(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 ==> 맑음 
  
- 통합 수정
출고 정보 삭제시_다시 저장 
==============================================================================================================

-- 출고상세정보 갯수 조회 @@@@@@@@@@@@@   
SELECT B.COMPANY_CD, B.MERCHANT_CD, B.ORDER_DT, B.ORDER_NO, A.ITEM_CD, A.ITEM_NM,  
A.SEQ_NO, B.ORDER_STS, B.ORDER_TP  
FROM 
T_ORDER_DTL A 
INNER JOIN 
T_ORDER B 
ON A.COMPANY_CD = B.COMPANY_CD AND 
A.MERCHANT_CD = B.MERCHANT_CD AND 
A.ORDER_DT = B.ORDER_DT AND 
A.ORDER_NO = B.ORDER_NO 
WHERE 
B.COMPANY_CD = '01' AND 
B.MERCHANT_CD = '0001' AND 
A.ORDER_DT = '20040622'AND 
A.ITEM_CD = '00148347' AND   --상품코드(식이섬유 GI발란스) 
B.ORDER_STS < '03' AND       --주문상태(01:접수, 02:취소, 04:배송중, 09:배송완료) 
B.ORDER_TP ='01' AND         --주문유형(00:접수취소, 01:정상, 02:취소, 03:반품)     
--A.ORDER_NO ='00795' AND    --추가 
--A.SEQ_NO = 1 AND      --추가 
( 
SELECT COUNT(*) FROM T_STOREOUT_DTL WHERE 
B.COMPANY_CD = '01' AND 
B.MERCHANT_CD = '9001' AND  --점코드(온라인(0001)에서 주문했더라도 R&F출고는 물류(9001)에서 나가므로 강제 세팅) 
COMPANY_CD = B.COMPANY_CD AND 
RECV_MERCHANT_CD = B.MERCHANT_CD AND   --수주점코드 
RECV_DT = B.ORDER_DT AND 
RECV_NO = B.ORDER_NO 
) = 0   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.24(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 ==> 맑음 
  
- 쇼핑몰 수정
- 명품관 수정 
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 
/display/event/T32000000/categoryP.jsp 
==============================================================================================================

- 명품관  ==================> 
/display/big/bigctg.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 

- 브랜드 SHOP  =========> 
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52&p_Luxury=1 
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52p_mid_category_cd=T32010000&p_Luxury=1 

- DKNY  
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32011300&p_display_cd=52&p_mid_category_cd=T32010000 
-  Etro 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32010200&p_display_cd=52&p_mid_category_cd=T32010000 

- 아이템 SHOP  =========> 
/display/big/bigctg.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 

- 시계 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32021500&p_display_cd=52&p_mid_category_cd=T32020000 
- 지갑/키홀더 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32020200&p_display_cd=52&p_mid_category_cd=T32020000 
==============================================================================================================

- 명품관  ==================> 
/display/big/bigctg.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 

- 브랜드 SHOP  =========> 
- DKNY  
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32011300&p_display_cd=52&p_mid_category_cd=T32010000  
Etro 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32010200&p_display_cd=52&p_mid_category_cd=T32010000 

- 아이템 SHOP  =========> 
- 시계 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32021500&p_display_cd=52&p_mid_category_cd=T32020000 
지갑/키홀더 
/display/sml/smlctg.jsp?p_store_cd=S063&p_category_cd=T32020200&p_display_cd=52&p_mid_category_cd=T32020000 
==============================================================================================================
  
*** 김미희    insik26 
유아용품을 주문했다고함...  BC카드 이용...  
주문품목 : [미키클럽]7부기획바지(여름)  
               [미키클럽]백프론트배색바지(여름)  
위 상품 주문했는데,매개변수가 올바르지않다라는 메세지가 확인된다고함. 
확인후 연락요망함.    043-732-7076  / 김미희  
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2004.06.25(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:30 ==> 맑음 
  
- 쇼핑몰 수정
명품관 수정  
/display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=T32000000&p_display_cd=52 
/display/event/T32000000/categoryP.jsp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.26(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:00 ==> 맑음 
  
- 쇼핑몰 수정
명품관 수정 
- 최종 수정  
==============================================================================================================

\\210.123.133.55(쇼핑몰 Test서버) i3shop/i3shop550506(Linux 7.3) su/i3shop559121 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.28(월) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 08:00 ==> 맑음 
  
- PDA 수정
- 로케이션 TB 저장, Load, 바코드 조회 
------------------------------------------------------------------------------------------------------------------------- 

'장부 재고 TAble Create 
paramSQL = "CREATE table tbNoteStock (ITEM_CD text, ITEM_NM  text, S_Count integer , N_Count integer ,Barcode text)" 

'로케이션 Table Create 
paramSQL = "CREATE table tbLocStock (Location Text,ITEM_CD text, ITEM_NM  text, N_Count integer ,Barcode text)" 
==============================================================================================================

SELECT ITEM_CD, ITEM_NM, N_Count, BARCODE FROM tbLocStock 
SELECT ITEM_CD, ITEM_NM, S_Count, N_Count, BARCODE FROM tbNoteStock 
==============================================================================================================

- 쇼핑몰 수정
명품관 수정 
- 최종 수정  
[DKNY] ==> T32021502 
p_store_cd=S063&p_display_cd=52&p_category_cd=T32011300&p_mid_category_cd=T32010000&p_brand_nm=DKNY&p_Luxury=1 
p_store_cd=S063&p_category_cd=T32011300&p_display_cd=52&p_mid_category_cd=T32010000 

[시계] ==> T32021502 
p_store_cd=S063&p_display_cd=52&p_category_cd=T32021500&p_mid_category_cd=T32020000&p_brand_nm=WATCH&p_Luxury=2 
p_store_cd=S063&p_category_cd=T32021500&p_display_cd=52&p_mid_category_cd=T32020000 
==============================================================================================================
      
- PRADA BAG [V158 NERO]  PRADA   
Ferragamo  
T32021502ETRO Keycase [00084 729 600]  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.29(화) 작업 ■■■■■■■■■■■■■■■■
---> 00:00 ~ 23:00 ==> 맑음 
  
- PDA 수정
- 자인물류에서 수정 
==============================================================================================================

PDA.mdb ---> jego.mdb ---> jego.cdb 
PDA.mdb  ==> 3965 개  ==> 4005개 
SELECT count(*) FROM Item; 

jego.cdb  ==> 3965 개 
SELECT count(*) FROM tbNoteStock; tbLocStock 
==============================================================================================================

Dim ch As String 
Dim ascii As Integer 

Private Sub TextBox1_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox1.KeyPress 
ch = e.KeyChar() 
ascii = Asc(ch) 
If ascii <> 8 And (ascii < 47 Or ascii > 58) Then e.Handled = True 
End Sub 
If ascii <> 8 And (ascii < 47 Or ascii > 58) Then 
e.Handled = True 
Else 
e.Handled = False 
End If 
==============================================================================================================

http://msdn.microsoft.com/library/default.asp?url=/library/en-us/adoce31/html/ado30ref_81.asp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2004.06.30(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 맑음 
  
- PDA 수정
==============================================================================================================

- 자인 바코드 조회 
SELECT A.item_CD,('('  B.item_nm  ')'  B.Model_Nm ) as Item_NM,  
--A.Now_Stock, 0 as S_Stock, C.Barcode  
A.Now_Stock as N_Count, 0 as S_Count, C.Barcode 
FROM t_merchant_item A 
inner join t_item B  
  On A.Company_CD=B.Company_CD  
    And A.item_CD = B.item_CD 
inner join T_item_Barcode C  
  On A.Company_CD = C.Company_CD 
    And A.item_CD = C.Item_CD 
WHERE A.Company_CD = '01'  
  and A.Merchant_CD = '9001' 
==============================================================================================================

- 데이타 받기 09:16 ~ 09:20 
txt -> cdb 전환 09:22 ~ 09:51 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■