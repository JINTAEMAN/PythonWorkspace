

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2006.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2006.06.01(목) 작업 ■■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
-- 시제정보 조회(현금입금 확인) @@@@@@@@@@@@@ 
SELECT ORDER_DT AS 주문일자, 
   AR_DT AS 입금일자, 
   (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) AS 현금입금일_차,     
   AR_PERSON_NM AS 입금자명, 
   AR_BANK_ACCOUNT AS 입금은행_계좌번호, 
   (CASE WHEN AR_STS = '11' THEN '현금입금 예정' WHEN AR_STS = '12' THEN '현금입금 취소'  
WHEN AR_STS = '13' THEN '현금입금 완료' WHEN AR_STS = '14' THEN '현금환불 예정'  
WHEN AR_STS = '15' THEN '현금환불 예정' WHEN AR_STS = '16' THEN '현금환불 취소'  
WHEN AR_STS = '17' THEN '현금환불 완료'  
ELSE AR_STS END) AS 결제상태,     
       AR_AMT AS 결제금액,  
       '현금' 시제유형  --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰)   
-- SELECT COUNT(*) 
FROM T_AR 
WHERE ORDER_DT >= '20060101' --주문일자 
AND ORDER_DT <= '20060531'  
AND AR_WAY_CD ='10' --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰) 
AND AR_STS ='13' --결제상태(11:현금입금 예정, 13:현금입금 완료) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --현금입금일자가 2일 이내 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) > 2  --현금입금일자가 3일 이후   
ORDER BY 현금입금일_차 
--; 
==============================================================================================================

- 세금계산서 오픈 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.02(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
현금미입금건 예약(06) 발송 개발 
1. 예약관리 리스트(frmPopReservP) 
==============================================================================================================

- 카드 오류 
김형순   jin1103   Member   *전-조정훈   21job   Gold-M 
확인 후 연락드리기로 함. *조정훈  * 
★확인되는 오류메세지 : 카드사 한도초과  8326 
★카드번호:국민카드  5409-3547-8466-6015   (CVC :458)  
------------------------------------------------------------------------------------------------------------ 
원인: 국민카드에서 개인 신량 불량이거나 한도가 차면 "카드사 한도초과"라는 메세지를 보내는데 이런 경우 
국민카드와 개인 카드사용자의 문제임. 
이번건은 추측건데 김형순 회원이 조정훈 회원의 카드를 사용하다가 이런 에러가 메세지가 나니깐 카드사에 
연락도 안 해보고 우리쪽에 전화해서 민원을 넣을 것으로 추정됨. 
==============================================================================================================

-- 주문 정보 조회 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT A.ORDER_DT, A.ORDER_NO, 
       A.ORDER_STS,    --주문상태(00:카드승인오류, 01:주문접수, 02:접수취소, 03:결제완료, 04:배송중, 09:배송완료         
       A.MEM_NM,   
   A.RECEIVER_NM AS 수령자명, A.RECEIVER_HP AS 수령자핸드폰, 
    TO_DATE(SYSDATE) AS 현재일, 
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS 주문일자의_차,      
   A.REG_ID, A.AMT AS 주문금액 
FROM T_ORDER A, T_AR B 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS NOT IN ('00', '02')   --주문상태(03:결제완료) 
AND A.ORDER_DT >= '20060501'    --주문일자 
AND A.ORDER_DT <= '20060602'     
AND B.AR_WAY_CD ='10'    --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰) 
AND B.AR_STS ='11'    --결제상태(11:현금입금 예정, 13:현금입금 완료) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --현금입금일자가 2일 이내 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --현금입금일자가 3일 이후 
ORDER BY A.ORDER_DT DESC, A.ORDER_NO DESC 
--; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.03(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 13:00 

- 쇼핑몰 수정
- SMS VB 개발 
현금미입금건 예약(06) 전송 개발 
1. SMS예약 전송관리(frmSmsListReservP) 
---------------------------------------------------------------------------------------------------------------------------- 

-- 인덱스 생성  @@@@@@@@ 
CREATE INDEX XIF56T_T_SMS_SEND_RESERVATION ON  
  "IIISHOP".T_SMS_SEND_RESERVATION(SEQ_NO) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
; 
----------------------------------------------------------------------------------------------------------------------------

- SMS전송 예약 정보 조회(MAX 값 구하기) 
SELECT /*+ INDEX_DESC(T_SMS_SEND_RESERVATION XIF56T_T_SMS_SEND_RESERVATION) */  
   NVL(MAX(SEQ_NO),0)+1  
FROM T_SMS_SEND_RESERVATION 
WHERE ROWNUM = 1  
==============================================================================================================
  
--시제정보 조회(현금입금 확인) @@@@@@@@@@@@@   
SELECT A.ORDER_DT, A.ORDER_NO, 
   TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS 오늘일자,  
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS 현금입금일차, 
       A.ORDER_STS,    --주문상태(00:카드승인오류, 01:주문접수, 02:접수취소, 03:결제완료, 04:배송중, 09:배송완료         
       A.MEM_NM,   
   A.RECEIVER_NM AS 수령자명, A.RECEIVER_HP AS 수령자핸드폰, 
    TO_DATE(SYSDATE) AS 현재일, 
   (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS 주문일자의_차,      
   A.REG_ID, A.AMT AS 주문금액 
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND B.DISPLAY_STORE_CD NOT IN ('S013')  --R&F상품이 아닌 것     
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS전송 구분(06:현금미입금공지) 
) < 1    --현금미입금공지가 한번도 전송 안 된 것 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS NOT IN ('00', '02')   --주문상태(03:결제완료) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 15),'YYYYMMDD')    --주문일자 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰) 
AND C.AR_STS ='11'    --결제상태(11:현금입금 예정, 13:현금입금 완료) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --현금입금일자가 2일 이내 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --현금입금일자가 3일 이후 
ORDER BY A.ORDER_DT DESC, A.ORDER_NO DESC 
--;  
==============================================================================================================

- DB 교육용 PT자료 작성 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.05(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 20:00 

- 쇼핑몰 수정
- SMS VB 개발 
--시제정보 조회(현금입금 확인) @@@@@@@@@@@@@   
SELECT A.ORDER_DT, A.ORDER_NO, REPLACE(A.RECEIVER_HP , '-' , '') AS CEL_PHONE 
   --TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS 오늘일자,  
   --(TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) AS 현금입금일차,    
   --A.RECEIVER_HP AS 수령자핸드폰 
   --TO_DATE(SYSDATE) AS 현재일, 
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
--AND B.DISPLAY_STORE_CD IN ('S013')  
AND B.DISPLAY_STORE_CD NOT IN ('S013')  
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS전송 구분(06:현금미입금공지) 
) < 1    --현금미입금공지가 한번도 전송 안 된 것 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS NOT IN ('00', '02')   --주문상태(03:결제완료) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 15),'YYYYMMDD')    --주문일자 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰) 
AND C.AR_STS ='11'    --결제상태(11:현금입금 예정, 13:현금입금 완료) 
--AND (TO_DATE(AR_DT,'yyyymmdd') - TO_DATE(ORDER_DT,'yyyymmdd')) < 3  --현금입금일자가 2일 이내 
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --현금입금일자가 3일 이후 
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, A.RECEIVER_HP 
ORDER BY A.ORDER_DT 
--; 
==============================================================================================================

- WC 경품 이벤트 결과 출력 
WC경품이벤트 결과, WC 주문내역 

-- WC 상품별, 개인별 응모수 조회 @@@@@@@@@@@@@  
--SELECT COUNT(*) FROM (   
SELECT O.MNO AS 회원번호, O.MEM_ID AS 회원ID, M.MEM_NM AS 회원명, 
   (SELECT GRADE_NM FROM T_GRADE WHERE GRADE_CD = M.GRADE_CD) AS 직급, --A.GRADE_CD AS 직급CD, 
   (SELECT BIZCENTER_NM FROM T_BIZCENTER WHERE BIZCENTER_CD = M.BIZCENTER_CD) AS 비즈센타, 
     O.ENTRY_CNT AS 응모수, 
   M.POST AS 우편번호, M.FIX_ADDR AS 주소, M.DTL_ADDR AS 주소상세,  
   M.PHONE AS 전화, M.HPHONE AS 휴대폰 
FROM (   
SELECT B.MNO, B.MEM_ID, A.MEM_NM, SUM(B.ENTRY_CNT) AS ENTRY_CNT 
-- SELECT COUNT(*) 
FROM T_MEMBER A, T_WC_ENTRY_TRY B  -- WC 응모 시도  
WHERE A.MNO = B.MNO 
 AND B.ITEM_CD = '00200601'    --상품코드 
 AND ( 
  -- WC 주문 정보 조회 @@@@@@@@@@@@@ 
SELECT MNO 
-- SELECT COUNT(*) 
FROM T_WC_ENTRY_ORDER 
WHERE MNO = B.MNO 
GROUP BY MNO, ITEM_CD 
   ) > 0  -- WC 주문 정보가 존재하는 것  
GROUP BY B.MNO, B.MEM_ID, A.MEM_NM 
ORDER BY A.MEM_NM 
) O, T_MEMBER M 
WHERE O.MNO = M.MNO 
--; 
--------------------------------------------------------------------------------------------------------- 

-- WC 주문 정보 조회 @@@@@@@@@@ 
SELECT A.COMPANY_CD  A.MERCHANT_CD  A.ORDER_DT  A.ORDER_NO AS 주문번호, 
   A.REG_ID AS 회원ID, A.MEM_NM AS 회원명, 
   (SELECT BIZCENTER_NM FROM T_BIZCENTER WHERE BIZCENTER_CD = A.BIZCENTER_CD) AS 비즈센타, 
   SUM(B.REAL_QTY) AS 구매수량, SUM(B.REAL_SALE_PRICE) AS 구매금액,   
   SUM(B.BUYING_PRICE) AS 매입가,    
   SUM(B.SHIP_PRICE) AS 택배비, 
   (CASE WHEN A.AR_WAY_CD= '01' THEN '현금' 
     WHEN A.AR_WAY_CD = '02' THEN '카드' 
 WHEN A.AR_WAY_CD = '03' THEN '현금/카드' 
 WHEN A.AR_WAY_CD = '04' THEN 'R_F머니' 
 ELSE A.AR_WAY_CD END) AS 결제방법,   
   (SELECT REPLACE(CARD_NM,'card','') FROM T_CARD_BIN WHERE CARD_BIN = SUBSTR(D.CARD_NO,1,6)) AS 카드명 
FROM T_ORDER A, T_ORDER_DTL B, T_WC_ENTRY_ORDER C, T_CARD_LOG D 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND A.COMPANY_CD = D.COMPANY_CD 
AND A.MERCHANT_CD = D.MERCHANT_CD 
AND A.ORDER_DT = D.ORDER_DT 
AND A.ORDER_NO = D.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS >= '03'    --주문상태(03:결제완료) 
AND A.ORDER_DT >= '20060501'  
AND A.ORDER_DT <= '20060604'  
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, C.ENTRY_CNT,  
    A.MEM_NM, A.REG_ID, A.BIZCENTER_CD, A.AR_WAY_CD, D.CARD_NO 
ORDER BY A.ORDER_DT, A.ORDER_NO 
--; 
--=================================================================================================== 

- 신용카드 에러 
박상하        bcmarket        Member    *전-> 고미현/hyuni26/mm 
노블 cd 결제 할려고 하는데, [주문입력에 실패했습니다, 할부개월 입력오류] 라고 오류메세지 뜬다심.  
한 아이디당 한도 300만원인데, 넘지 않았느냐 여쭤보니 안넘었다고 하심.  
* 카드번호: 9430-0300-2475-8912  기업비씨카드 
에러메세지: 할부개월입력오류할부개월수정요망 
원인: 카드 자체 문제 인 것 같네요..카드소유자가 직접 카드사에 문의를 해야 합니다. 
--=================================================================================================== 

- 공인인증서(명의변경 수정) 
양도인: 김미정(zizon05/*)   양수인: 최기백(zizon05/*)    
공인인증서 개인정보 ===> 최기백 으로 변경   
--------------------------------------------------------------------------------------------------------- 
양도인: 최기백(tepung/*)   양수인: 김미정(tepung/()    
공인인증서 개인정보 ===> 김미정 으로 변경   
==============================================================================================================

- 세금계산서 에러 
과세 --> 비과세로 등록 됨 
진덕수  sususu02  Management-M 
20060605, (주)대홍철강, 0100012006060500154, 20060605 
--=================================================================================================== 

- 발행일 수정 
강동화    tittat   Master 
발행일: 20060529로 수정 했어요. 
(발행일 =  매출일자) 
발행일 --> 여러 건이면 최근 주문번호의 매출일자 
--------------------------------------------------------------------------------------------------------- 

- 세금계산서 정보 수정 @@@@@@@@ 
-- UPDATE T_TAX_BILL 
SET REPUBLISH_DT = TO_DATE('20060529 16:50:55', 'YYYY-MM-DD HH24:MI:SS') --발행일자 
WHERE PUBLIC_NO IS NOT NULL            
 AND REG_ID = 'tittat' 
--;   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.06(화) 작업 ■■■■■■■■■■■■■■■■
---> 10:30 ~ 20:00 --> 국경일 

- 쇼핑몰 수정
- 세금 계산서 수정 
발행일 수정 --> (발행일 =  매출일자): 여러 건이면 최근 주문번호의 매출일자 
같은 달만 세금계산서 취합 가능 
--------------------------------------------------------------------------------------------------------- 
-- 세금계산서 상세 정보 조회(MAX 값 구하기) 
SELECT /*+ INDEX_DESC(T_TAX_BILL_DTL XIF02_T_TAX_BILL_DTL) */  
  (COMPANY_CD  MERCHANT_CD  ORDER_DT  ORDER_NO) AS ORDER_NO_FULL 
FROM T_TAX_BILL_DTL 
WHERE PUBLIC_NO = '35336214'  
  AND ROWNUM = 1  
--------------------------------------------------------------------------------------------------------- 
-- 인덱스 생성  @@@@@@@@ 
CREATE INDEX XIF02_T_TAX_BILL_DTL ON  
  "IIISHOP".T_TAX_BILL_DTL(ORDER_DT,  ORDER_NO) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
==============================================================================================================

-- 인덱스 생성  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_ORDER ON  
  "IIISHOP".T_ORDER(COMPANY_CD, MERCHANT_CD, ORDER_DT, ORDER_NO, ORDER_TP, ORDER_STS) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
-- 인덱스 생성  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_ORDER_DTL ON  
  "IIISHOP".T_ORDER_DTL(COMPANY_CD, MERCHANT_CD, ORDER_DT, ORDER_NO, DISPLAY_STORE_CD) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
-- 인덱스 생성  @@@@@@@@@@@@@ 
CREATE INDEX XIF01_T_MEMBER ON  
  "IIISHOP".T_MEMBER(MEM_ID, MEM_STS) 
  TABLESPACE IIISHOPX PCTFREE 10 STORAGE(INITIAL 64K) 
;  
==============================================================================================================

-- SMS전송 미리보기 정보 조회  @@@@@@ ====> 최근 3개월 내 MART매장 최다고객 2,500명 (매출순) 
SELECT T_SMS_SEND_PREV_SEQ.nextval, 
'79' AS SMS_GB, X.MNO, X.REG_ID AS MEM_ID, X.MEM_NM, X.CEL_PHONE, 
TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') AS SMS_CAUSE_DT, 'test01' AS REG_ID, X.MEM_GRADE, 
X.ORDER_NO_FULL, '210.123.1333.31' AS REG_IP, SYSDATE AS REG_DT   
FROM ( 
SELECT A.MNO, A.REG_ID, A.MEM_NM, REPLACE(A.RECEIVER_HP, '-' , '') AS CEL_PHONE, A.MEM_GRADE,        
   SUM(B.REAL_SALE_PRICE) AS ORDER_NO_FULL 
FROM T_ORDER A, T_ORDER_DTL B 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS IN ('03', '04', '09')   --주문상태(03:결제완료, 04:배송중, 09:배송완료) 
AND A.ORDER_DT >= '20060306'  
AND A.ORDER_DT <= '20060606'  
AND B.DISPLAY_STORE_CD = 'S019'  --매장코드(S001:L&B매장, S013:R&F매장, S019:I3MART) 
--AND B.DEPART1_CD = '980'   --DEPART1코드 
--AND A.AMT >= 50000      --주문 금액이 5만원 이상 
AND ( 
   SELECT COUNT(*) 
   FROM T_MEMBER 
   WHERE MEM_ID = A.MEM_ID 
AND MEM_STS = '01'  --회원상태코드(01:정상, 06:탈퇴완료) 
) > 0   --정상 회원인 것 
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, 
 A.MNO, A.REG_ID, A.MEM_NM, A.RECEIVER_HP, A.MEM_GRADE 
ORDER BY ORDER_NO_FULL 
) X 
--; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.07(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
현금미입금건 예약(06) 전송 개발 
1. SMS예약 전송관리(frmSmsListReservP) 

- 함수기반 인덱스 사용 
CREATE INDEX T_SMS_SEND_PREV_idx_ORDER_DT ON T_SMS_SEND_PREV (SUBSTR(ORDER_NO_FULL,7, 8));    
CREATE INDEX T_SMS_SEND_PREV_idx_ORDER_NO ON T_SMS_SEND_PREV (SUBSTR(ORDER_NO_FULL,15, 5));    

--시제정보 조회(현금입금 확인) @@@@@@@@ 
SELECT  REPLACE(A.HPHONE, '-', '') AS CEL_PHONE, 
   A.MEM_NM, A.MEM_ID, C.ORDER_DT, SUBSTR(C.ORDER_DT,5,2) '/' SUBSTR(C.ORDER_DT,7,2) AS ORDER_DT2, C.AR_AMT, 
   (SELECT  (CASE WHEN REPLACE(ENTR_NM,'중앙회','') = '농협' THEN REPLACE(ENTR_NM,'중앙회','') 
        WHEN ENTR_NM = '22' THEN '취소승인' 
  ELSE REPLACE(ENTR_NM,'은행','') END) AS BANK_NM  
   FROM T_ENTERPRISE WHERE COMPANY_CD = '01' AND ENTR_NO = C.AR_BANK_ENTR_NO) AS BANK_NM, 
   REPLACE(C.AR_BANK_ACCOUNT, '-', '')  AS BANK_ACCOUNT 
-- SELECT COUNT(*) 
FROM T_SMS_SEND_PREV A, T_AR C 
WHERE SUBSTR(A.ORDER_NO_FULL, 7, 8) = C.ORDER_DT 
AND SUBSTR(A.ORDER_NO_FULL, 15, 5) = C.ORDER_NO   
AND A.SMS_GB = '06'   --SMS전송 구분(04:배송 시작, 06:현금미입금공지, 03:고객관리)   
AND C.AR_WAY_CD = '10' --시제유형코드(10:현금)  
ORDER BY A.SEQ_NO, A.ORDER_NO_FULL DESC, A.HPHONE ASC, A.MEM_NM ASC 
--;  
------------------------------------------------------------------------------------------------------------------------ 

--시제정보 조회(현금입금 확인) @@@@@@@@@@@@@   
-- SELECT COUNT (*) FROM ( 
SELECT  REPLACE(A.RECEIVER_HP, '-', '') AS CEL_PHONE, 
   A.MEM_NM, A.ORDER_DT, C.AR_AMT,      --C.AR_PERSON_NM, 
   (SELECT  (CASE WHEN REPLACE(ENTR_NM,'중앙회','') = '농협' THEN REPLACE(ENTR_NM,'중앙회','') 
        WHEN ENTR_NM = '22' THEN '취소승인' 
  ELSE REPLACE(ENTR_NM,'은행','') END) AS BANK_NM  
   FROM T_ENTERPRISE WHERE COMPANY_CD = '01' AND ENTR_NO = C.AR_BANK_ENTR_NO) AS BANK_NM, 
   REPLACE(C.AR_BANK_ACCOUNT, '-', '')  AS BANK_ACCOUNT      
FROM T_ORDER A, T_ORDER_DTL B, T_AR C 
WHERE A.COMPANY_CD = B.COMPANY_CD 
AND A.MERCHANT_CD = B.MERCHANT_CD 
AND A.ORDER_DT = B.ORDER_DT 
AND A.ORDER_NO = B.ORDER_NO 
AND A.COMPANY_CD = C.COMPANY_CD 
AND A.MERCHANT_CD = C.MERCHANT_CD 
AND A.ORDER_DT = C.ORDER_DT 
AND A.ORDER_NO = C.ORDER_NO 
AND B.DISPLAY_STORE_CD NOT IN ('S013')  --R&F상품이 아닌 것 
AND ( 
   SELECT COUNT(*)  
   FROM T_SMS_SEND_INFO 
   WHERE ORDER_NO_FULL = C.COMPANY_CD  C.MERCHANT_CD  C.ORDER_DT  C.ORDER_NO 
AND SMS_GB = '06'     --SMS전송 구분(06:현금미입금공지) 
) < 1    --현금미입금공지가 한번도 전송 안 된 것 
AND A.COMPANY_CD = '01' 
AND A.MERCHANT_CD = '0001' 
AND A.ORDER_TP IN ('01')         --주문유형(01:정상주문, 03:반품주문) 
AND A.ORDER_STS NOT IN ('00', '02')   --주문상태(03:결제완료) 
AND A.ORDER_DT >=  TO_CHAR(TO_DATE(SYSDATE - 3),'YYYYMMDD')    --주문일자 
AND A.ORDER_DT <= TO_CHAR(TO_DATE(SYSDATE),'YYYYMMDD') 
AND C.AR_WAY_CD ='10'    --시제유형코드(10:현금, 20:카드, 30:포인트, 40:쿠폰) 
AND C.AR_STS ='11'    --결제상태(11:현금입금 예정, 13:현금입금 완료)   
AND (TO_DATE(SYSDATE) - TO_DATE(A.ORDER_DT,'yyyymmdd')) > 2  --현금입금일자가 3일 이후 
AND LENGTH(RTRIM(REPLACE(A.RECEIVER_HP, '-', ''))) > 8   --휴대폰번호_길이 
AND (REPLACE(A.RECEIVER_HP, '-', '') LIKE '010%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '011%'  
OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '016%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '017%'  
OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '018%' OR REPLACE(A.RECEIVER_HP, '-', '') LIKE '019%')  
GROUP BY A.COMPANY_CD, A.MERCHANT_CD, A.ORDER_DT, A.ORDER_NO, A.RECEIVER_HP, A.MEM_NM, 
    C.AR_BANK_ACCOUNT, C.AR_PERSON_NM, C.AR_AMT, C.AR_BANK_ENTR_NO 
ORDER BY A.ORDER_DT 
-- ) 
==============================================================================================================

- 유아전집 행사(78) SMS 전송 
대상 : 최근 3개월 Dept 980 최다고객 2,500명 (매출순) 
문구: [i3shop] 대한민국 축구 승리기원 행사!! 최저가세일+상품별 막강 사은품 증정행사!! 
==============================================================================================================

-- 세금계산서 상세 정보 조회(MAX 값 구하기) 
SELECT /*+ INDEX_DESC(T_TAX_BILL_DTL XIF02_T_TAX_BILL_DTL) */  
   SUBSTR(ORDER_DT,5,2) AS ORDER_MONTH, SUBSTR(ORDER_DT,7,2) AS ORDER_DAY,  
   ORDER_DT AS ORDER_DT, ITEM_NM AS ITEM_NM  
FROM T_TAX_BILL_DTL 
WHERE PUBLIC_NO = 35336215 --발행번호  
  AND ROWNUM = 1 
==============================================================================================================

- 공인인증서 에러 
아이디 : csb61(최순복) lg카드 
에러내용: 등록 후 30일이 지나 인증서를 발행할 수 없습니다. 
조치: 이전 공인인증 신청 정보 지움 

-- 공인인증 정보 
-- UPDATE T_KICA_REQ 
SET REQ_YN = 'Y', REQ_DATE = '', DN_YN = 'N', DN_DATE = '',  
BILL_METHOD = 'N', BILL_SEQ = NULL, BILL_DATE = NULL, USER_DN = NULL  
WHERE MEM_ID = 'csb61'  
--; 
----------------------------------------------------------------------------  
- 공인증서 확인(한국정보인증)  --> 인증서 관리 --> 4. 인증서 보기 
http://www.signgate.com/business/bus05.htm 
==============================================================================================================

- 공인인증서(명의변경 수정) 
양도인: 류재수(rjs57/*)   양수인: 유재수(rjs57/*)    
공인인증서 개인정보 ===> 유재수 으로 변경 
==============================================================================================================

- 구매 예정 서적 
1. 알기 쉽게 해설한 오라클 SQL튜닝& 서버튜닝   ==> 도서 상품권으로 구매 예정 
이한 / 주종면 27,000원  
2. 오라클 실무 튜닝과 SQL 패턴 학습 ==> 도서 상품권으로 구매 예정 
사이텍미디어 / 주경호  25,000원 
3. 30가지 장애 유형별 오라클 백업과 복구 
한빛미디어 / 문성기  20,000원 
4/ 조엘 온 소프트웨어 : 유쾌한 오프라인 블로그 
에이콘 / Joel Spolsky  22,000원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.08(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
현금미입금건 예약(06) 전송 개발 
1. SMS예약 전송관리(frmSmsListReservP) 
04:배송시작, 06:현금미입금공지, 기타 이벤트 
==============================================================================================================

- 반품 삭제 요청 
이은경  bori1004   Active-Master 
20060608, 이은경, 0100012006060800104, 20060608 
1 - I3MART - 밀키퀸 쌀 3kg() -  - 26000 - 1 
-------------------------------------------------------------------------------------------------- 
에러내용: Warning: ORA-02292: integrity constraint 
-- 삭제 불가능하게 하는 차일드 테이블 조회 
SELECT CONSTRAINT_NAME, TABLE_NAME, R_CONSTRAINT_NAME 
FROM user_constraints 
WHERE CONSTRAINT_NAME = 'SYS_C004497'    --> 삭제에 영향을 미치는 테이블 
; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.09(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
예약 발송 
04:배송시작, 06:현금미입금공지, 기타 이벤트  --> 완료 
==============================================================================================================

-- 인덱스 생성  @@@@@@@@@ 
CREATE INDEX I_01_I2_T_SMS_SEND_INFO ON T_SMS_SEND_INFO(SMS_GB, ORDER_NO_FULL) 

-- 배송시작 정보 조회 @@@@@@@@@   
SELECT    A.MNO, A.MEM_ID, A.MEM_NM, REPLACE(A.RECEIVER_HP, '-', '') AS RECEIVER_HP,       
                (A.COMPANY_CD  A.MERCHANT_CD  A.ORDER_DT  A.ORDER_NO) ORDER_NO_FULL      
FROM T_ORDER A, T_STOREOUT B                      
WHERE A.COMPANY_CD = B.COMPANY_CD                   
   AND A.MERCHANT_CD = B.RECV_MERCHANT_CD           
   AND A.ORDER_DT = B.RECV_DT                       
   AND A.ORDER_NO = B.RECV_NO                       
   AND A.COMPANY_CD = '01'                          
   AND B.MERCHANT_CD = '9001'       
   AND B.STOREOUT_CL ='01'          
   AND B.STOREOUT_TP ='01'          
   AND B.STOREOUT_STS ='09'         
   AND B.INVOICE_PRINT_YN = 'Y'     
   AND B.STOREOUT_END_DT >= TO_CHAR(TO_DATE(SYSDATE - 1),'YYYYMMDD')        
   AND B.STOREOUT_END_DT <= TO_CHAR(TO_DATE(SYSDATE - 1),'YYYYMMDD')        
   AND NOT EXISTS (                                 
       SELECT SEQ_NO                                
       FROM T_SMS_SEND_INFO                         
       WHERE ORDER_NO_FULL = '010001'  A.ORDER_DT  A.ORDER_NO       
   AND SMS_GB = '04'                        
   )   
------------------------------------------------------------------------------- 

-- 인덱스 테이블 상태 조회 @@@@@@@@@@@@@ 
SELECT x.table_name as 테이블명, x.num_rows num_rows, 
a.index_name as 인덱스명, b.column_name as 칼럼명,  
decode(a.uniqueness, 'UNIQUE', 'U', 'N') as 유니크인덱스여부,  
a.tablespace_name as 테이블스페이스명, y.num_distinct num_distinct, 
a.pct_free, a.clustering_factor, a.blevel, a.leaf_blocks, 
(c.del_lf_rows_len / c.del_lf_rows_len) *100 as Balance 
FROM dba_tables x, dba_tab_columns y , dba_indexes a, dba_ind_columns b, index_stats c 
WHERE  x.owner = 'IIISHOP'   
AND x.table_name = 'T_SMS_SEND_INFO'   -- 테이블명(T_SMS_SEND_PREV, T_SMS_SEND_INFO) 
AND a.owner = x.owner 
AND a.table_owner =  b.index_owner 
AND x.table_name =  a.table_name 
AND a.table_name =  b.table_name 
AND a.index_name = b.index_name 
AND x.owner = y.owner 
AND x.table_name =  y.table_name 
AND b.column_name =  y.column_name 
AND b.index_name =  c.name(+) 
ORDER BY x.table_name 
==============================================================================================================

 -- 인덱스 생성  @@@@@  ---> 인덱스 생성 샘플 
CREATE INDEX I_01_I2_T_SMS_SEND_INFO ON T_SMS_SEND_INFO(SMS_GB, ORDER_NO_FULL) 
==============================================================================================================

- 미피 아동복Event(79) SMS 전송 
6월 9일 미피 아동복 브랜드 신규 입점 최고 50% 할인!! 
문구 : [i3shop] 미피아동복 신규 입점 기념행사! 여름신상품 최고 55%할인!! 6,500원부터~ 
대상 : 최근 3개월 내 MART매장 최다고객 2,500명 (매출순) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.10(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:00 --> 격주 휴무 

- 쇼핑몰 수정
- SMS VB 개발 
- 리치텍스트박스 배포시 메모리가 부족 문제(RICHTX32.OCX): 이태형 주임 컴퓨터(XP Pro) 
Load frmLog '기록 로그 PopUp 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.12(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 쇼핑몰 수정
- SMS VB 개발  
- 리치텍스트박스 배포시 메모리가 부족 문제(RICHTX32.OCX): 이태형 주임 컴퓨터(XP Pro) 
Load frmLog '기록 로그 PopUp 
==============================================================================================================

- 에러내용: '7'런타임 오류, 메모리가 부족합니다.  
 "7" 런타임 "메모리 부족" 문의 
 xp에서 프로그램을 실행하면 "7" 런타임 "메모리부족" 에러가 뜹니다. 
제가 알기로는 프로그램 문제는 아니고 시스템 문제로 알고 있습니다. 
그전에도 이런일이 있어서 해결을 했는데 영 생각이 나지 않아서 글을 올립니다. 
모든 컴퓨터에서 이런 에러가 뜨는게 아니고 일부 컴에서 뜨는데 조치방법이 영 기억이 안나서... 
레지트트리던가 시스템에서 뭔가를 수정했던 기역이....(2년전에 이런 에러가 발생해서 조치를 했는데) 
알고 계시는분 연락주시면 감사... 
  ====>  
원인: 일단 msg 내용으로 보면 ms사의 os 오류로 보아야 되겠습니다. 
어떠한 문제 때문에 그 메세지가 발생했는지 유저가 알수 있도록 메세지를 주어야 하는데 부족한점이 많은것 같습니다. 
그런점을 보면 ms사도 아직 ..... 
개발pc의 환경 설정과 설치 pc의 환경이 틀린경우 이런 오류 메세지가 많이 나타나는것 같습니다 
프로그램에서 입력, 수정한 날자를 db에 저장하는 경우 개발환경의 pc는 국가 설정이 한국어로 되어 있는데  
설치할 pc의 국가 설정이 한국이 아닌 타국가로 되어 있을때 메세지가 엉뚱한 메모리부족으로 뜨는군요. 
메모리 부족 메세지가 뜨면 프로그램 문제도 있겠지만 환경설정을 확인하는것이 좋을듯... 
쓸데없이 토만 많이 달은것 같은데... 
우리가 생각하지 못하는 엉뚱한곳에 의뢰로 답이... 
이 글을 보시는 분 도움이 되었는지 모르겠네요. 
--------------------------------------------------------------------------------------------------------- 

해결책1:  Install Factory 로 OCX 파일 만들 때 꼭 서버 등록을 할 것 
해결책2: VB 6.0 프로그램 설치 후 삭제를 함  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.13(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:20 

- 쇼핑몰 수정
- SMS VB 개발  
SMS VB 문서화 작업(예약 전송 추가) 
---------------------------------------------------------------------------------------------------------
- 오라클 9i Clinet 설치에러 
XP Pro에 오라클9i 클라이언트를 설치하는데 
관리자(560M), 런타임(150M)에서 런타임 체크하고 다음 누르면 33%에서 더이상 설치가 안된다. 
해결책: XP Pro 다시 설치 함 
---------------------------------------------------------------------------------------------------------
에러: 예기치 않은 오류(이태형 XP Pro 컴퓨터) 
원인: 1. ico_i3shop_4.ico 아이콘이 XP 규격에 안 맞는 것으로 추정됨  --> ico_i3shop.ico 아이콘으로 변경 
2. MSFLXGRD.OCX 에러 --> Server 등록 으로 MSFLXGRD.OCX 파일 재 컴파일 
==============================================================================================================

210.123.133.93 이태형(EC팀) (VNC PWD: i3shop2006)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.14(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:00 

- 쇼핑몰 수정
- SMS VB 개발 
에러: 예기치 않은 오류(이태형 XP Pro 컴퓨터) 
원인: 1. ico_i3shop_4.ico 아이콘이 XP 규격에 안 맞는 것으로 추정됨  --> ico_i3shop.ico 아이콘으로 변경 
2. MSFLXGRD.OCX 에러 --> Server 등록 으로 MSFLXGRD.OCX 파일 재 컴파일 
==============================================================================================================

- SMS전송 오류 
에러: i3shop_sendSMS.exe 가 문제가 있어 프로그램 종료 하겠습니다. 
원인: Log Directory :C:\Program Files\i3shop_sendSMS\SMS_log 폴더 미 생성 
(C:\Program Files\i3shop_sendSMS 폴더 아래에 SMS_log 폴더 생성 꼭 할 것) 

- SMS전송 오류2 
에러: '3706' 런타입 오류발생. 공급자를 찾을 수 없습니다. 
원인: DB OPEN을 Conn_Open에서 fun_DB_Connection로 수정 

- SMS전송 오류3 
에러: '50003' 런타입 오류발생.  예기치 않은 오류 
원인: frmLog2 아이콘 문제(ico_i3shop_4.ico) --> ico_i3shop.ico 로 변경 
==============================================================================================================

- 정수기 수정 
0100012003121000710(6060) 
반품으로 표기 되어있습니다.  --> 주문으로 다시 표기 함(반품일자(RETURN_DT) 없앰) 
==============================================================================================================

- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니) 
display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.15(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30   --> 경영지원팀과 조인트 회식 

- 쇼핑몰 수정
- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니) 
display/event/com/mainP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  

- 하이 이머니 카테고리 
W51010101:건강기능식품, W51010102:1차식품/가공식품 
W51020101:화장품, W51020201:퍼스널케어, W51020301:생활용품/세제, W51020401:패션 
----------------------------------------------------------------------------------------------------------------------- 

- 쿼리 분석 
select level, id, sort 
connect by prior id = sort  ... (2) 
start with id = 1  ... (1) 
트리검색이라는 것인데... 
(1) id 값이 1인 자료를 찾아서 출력하고 
(2) 출력된 id 값과 같은 sort 값을 갖는 자료를 찾아 출력하는 것을 반복하게 됩니다. 
이와같이 level 을 같이 출력해 주면 각 자료의 깊이를 알 수가 있는데 
같은 level 에 위치하는 자료가 id 값으로 정렬되진 않을 것 같네요. 
==============================================================================================================

- 정수기 수정 
주문번호 : 19988 
옮길 주문번호 : 0100012004083111402 
주문자 : 김옥규 
수령자 : 김옥규 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.16(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:30    ---> 종근이 아제 횟집 개업(해운정 횟집) 

- 쇼핑몰 수정
- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  

- 하이 이머니 카테고리 
W51010101:건강기능식품, W51010102:1차식품/가공식품 
W51020101:화장품, W51020201:퍼스널케어, W51020301:생활용품/세제, W51020401:패션 
----------------------------------------------------------------------------------------------------------------------- 

- 식품 --> 냉동식품: 배송비 추가(업체배송) 
온라인점: 거래처에 가서 택배비 여부 설정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.19(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 쇼핑몰 수정
- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니)
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp  
==============================================================================================================

- 오즈 출력 오류 
강선화   07tjsk    무료회원(*) 
20060519, 강선화, 0100012006051900318, 20060519 salle.i3shop.cc 
상호 : (주)이건창호시스템 
세금계산서 발행요망!(*->사업장소재지로.. 면세 있으면 제외....) 
현상: 출력 에러, 개시자가 디지털서명을 하지 않았다. 파일이 차단되었다라고 확인된다고함. 
원인: 사용자가 컴퓨터를 좀 안다고 http://www.i3shop.com 자료실에서 다운을 받을 때 저장을 누르지 않고 
바로 실행을 눌러서 나는 에러(디지털서명 에러가 떠서 Windows XP용 JVM이 설치 되지 않음) 
----------------------------------------------------------------------------------------------------------------------- 

- 오즈 레포트 출력 에러(Windows XP용 일 경우) 
1. Windows XP용 JVM 를 다운 받아서 설치 하시고 재부팅 해보세요. 
(http://www.i3shop.com/board/data_view.asp?i_id=169) 
2. 레포트(영수증 출력등) 출력창 오류 시 조치방법(1번을 설치 했는데도 안되면) 
(http://www.i3shop.com/board/data_view.asp?i_id=189) 
 가. appletregistry.zip (621K) 을 내려 받고 appletregistry.zip를 압축을 푼다. 
 나. 압축을 푼 appletregistry 폴더에서 ozappletviewer_xp.reg를 더블 클릭 
 다. 레지스터리 등록 여부를 물으면 "예"를 클릭 
 라. 레지스터리 등록 성공 
 마. 재부팅 후 출력이 가능해짐 
-----------------------------------------------------------------------------------------------------------------------
- 데이콤 네트로 설치(원격 연결: 무료) ---> http://neturo.dacom.net/main/main.html  ewds/ewds  
==============================================================================================================

- 신용카드 에러 
강문숙    kms3414  
카드번호 : 4599-3052-6851-7903  외환 
에러내용: 할부불가카드    일시불거래요망 
==============================================================================================================

- 영어스터디 수업 변경 
수(21), 화(27), 목(29), 금(30) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.20(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 쇼핑몰 수정
- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp 
-----------------------------------------------------------------------------------------------------------------------
식품: 건강기능식품, 1차식품/가공식품, 냉동식품/추출음료 --> 3개 
비식품: 화장품, 퍼스널케어, 생활용품/세제, 패션 --> 4개 
==============================================================================================================

- 정수기 수정 
주문번호 : 17800 
처리일자를 20060619 로 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.21(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:00 

- 쇼핑몰 수정
- 하이 이머니 수정 
- 하이 이머니 매장(메인) 
/emoney/highEmoneyCatalogP.jsp?p_order_store=mart(하이 이머니) 
/emoney/itemHiE_ListP.jsp?p_store_cd=S063&p_category_cd=W51000000&p_display_cd=51 
--> /display/prdlist/tpl/type51/itemHiE_ListP.jsp 
-----------------------------------------------------------------------------------------------------------------------
식품: 건강기능식품, 1차식품/가공식품, 냉동식품/추출음료    --> 3개 
비식품: 화장품, 퍼스널케어, 생활용품/세제, 패션  --> 4개 
==============================================================================================================

- 킬러앱 수정 
1. 킬러앱 회차 조회 수정 
기존의 ORDER BY 절 삭제( 회차, 다음 회차 조정) 
2. 킬인킬 메뉴 삭제(한번도 사용하지 않음) 
-----------------------------------------------------------------------------------------------------------------------
SELECT TIMES_CD, ST_DT, ED_DT 
FROM T_BUYTIMES 
WHERE ITEM_TP = '02' 
AND ( TIMES_CD  IN ( 
SELECT LTRIM(TO_CHAR(NVL(NVL(TIMES_CD,0)+1,0), '000000')) 
FROM T_BUYTIMES  
WHERE ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')  
AND ITEM_TP = '02' 
) 
OR TIMES_CD  IN ( 
SELECT TIMES_CD 
FROM T_BUYTIMES  
WHERE ST_DT <= TO_CHAR(SYSDATE, 'YYYYMMDD')   
AND ED_DT >= TO_CHAR(SYSDATE, 'YYYYMMDD')  
AND ITEM_TP = '02' 
) 
) 
ORDER BY REG_DT DESC   ---> ORDER BY 절 삭제 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.22(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:40 

- 쇼핑몰 수정
- 재고조사 사전 점검 
- 재고조사_VB 수정 
211.33.193.151 '백환일 대리(VNC PWD: i3shop2006)  
==============================================================================================================

▦풋살(첫날)
18:30 퇴근 
18:40 지하철 동대구역 
19:30 지하철 계명대역 
19:40 성서 첼시구장 
20:00 게임(8:8) 
21:00 게임 종료 
21:30 숱뚜겅 식당(삼겹살: 자호, 자호 친구)
01:40 종료 
02:00 귀가(택시) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.23(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:10 ~ 18:40 

- 쇼핑몰 수정
- 재고조사 사전 점검 
- 재고조사_VB 수정 
==============================================================================================================

- Win XP Professional 
조의재 대리, 김정순, 김윤정, 이태형  
- Win XP Home Edition 
백환일 대리(오라클 연결 에러) 
"Microsoft OLE DB Provider for Oracle" 이 에러 발생 
원인: Win XP Home에서 MSDAORA(DB에 직접 접속하는 방법으로 연결이 안됨) 
해결: 1. Oracle client 정확히 설치 되었는지 확인 
2. ODBC로 DB에 접속하는 방법(OraOLEDB)으로 연결  --> 차선책 

Public Function Conn_Open(Con As ADODB.Connection) As Integer  --> ODBC로 DB에 접속하는 방법 
Public Function fun_DB_Connection(ByRef Conn As ADODB.Connection) As Boolean  --> DB에 직접 접속하는 방법 
--------------------------------------------------------------------------------------------------------------------------- 

1. 최신 OS 서비스팩 설치 
2. SLQ PLUS로 Oracle client 로그인(IIISHOP/IIISHOP) 
3. 다른 XP홈에 Oracle client 설치 및 프로그램 설치 테스트 
==============================================================================================================

- 오즈 출력 오류 
고객 연락처: 김정택 과장(*) 
상호 : (주)이건창호시스템 
세금계산서 발행요망!(*->사업장소재지로.. 면세 있으면 제외....) 
현상: 출력 에러, 개시자가 디지털서명을 하지 않았다. 파일이 차단되었다라고 확인된다고함. 
원인: 사용자가 컴퓨터를 좀 안다고 http://www.i3shop.com 자료실에서 다운을 받을 때 저장을 누르지 않고 
바로 실행을 눌러서 나는 에러(디지털서명 에러가 떠서 Windows XP용 JVM이 설치 되지 않음) 
----------------------------------------------------------------------------------------------- 
- 오즈 레포트 출력 에러(Windows XP용 일 경우) 
1. Windows XP용 JVM 를 다운 받아서 설치 하시고 재부팅 해보세요. 
(http://www.i3shop.com/board/data_view.asp?i_id=169) 
2. 레포트(영수증 출력등) 출력창 오류 시 조치방법(1번을 설치 했는데도 안되면) 
(http://www.i3shop.com/board/data_view.asp?i_id=189) 
 가. appletregistry.zip (621K) 을 내려 받고 appletregistry.zip를 압축을 푼다. 
 나. 압축을 푼 appletregistry 폴더에서 ozappletviewer_xp.reg를 더블 클릭 
 다. 레지스터리 등록 여부를 물으면 "예"를 클릭 
 라. 레지스터리 등록 성공 
 마. 재부팅 후 출력이 가능해짐 
 -------------------------------------- 
 - 데이콤 네트로 설치(원격 연결: 무료) ---> http://neturo.dacom.net/main/main.html  ewds/ewds 
----------------------------------------------------------------------------------------------- 
- 오즈 출력 에러(오즈 콜센타) 
연락처: *@*.*  02)828-1488 
==============================================================================================================

- [i3shop회식] 
18:30 퇴근 
18:50 아제 횟집(내 생일 축하: 김과장 빠짐) 
21:30 종욱이 아제가 계산(14만원: 실제 22만원 정도 나왔음) 
22:00 노래방(116,000원 내가 계산) 
23:50 종료 
24:10 귀가 
----------------------------------------------------------------------------------------------- 

- 해운정 횟집 T:053)745-1288 
MBC방송국에서 GS카드 충전소 삼거리에서 2군 사령부 방향으로 가다가 동원 초등학교 4거리  --> 동원 초등학교 옆 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.24(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 

- 쇼핑몰 수정
- 재고조사 사전 점검 
-- 판매분 조회 @@@@@@@ 
SELECT * 
FROM T_STOCK_INQUIRY_PANMAEBUN 
WHERE USE_YN = 'Y' --사용여부 
==============================================================================================================

- SMS 전송 사전 조사 
4,5월 160, 130 dept 구매자 수 조사 
dept: 130  --> 588 명 
dept: 160  --> 2,350 명 
==============================================================================================================

- 카드 결제 에러 
20060615, 김효지, 0100012006061500394, \4,217,200(현금\2,517,200 + 카드\1,700,000)  
└-> 카드만 결제된 상태에서 승인취소요청하여 주문건 접수취소상태! (*-> 카드사에 어제 전화해봤는데  
취소되었다고 확인했다심) 
>>> 비씨카드 결제하려고 한다심! 결제금액은 현금(2백얼마) + 카드 \1,700,000원이라심.  
이전에 노블 cd 결제한게 있고 이번에 카드 부분 170만원 결제하면 300만원 미만인데, 결제시 300만원 한도초과로  
결제불가라고 오류멘트 뜬다심!  
★ 카드번호: 4553-1140-9094-6874 비씨카드  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.26(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 쇼핑몰 수정
- 재고조사 사전 점검  
==============================================================================================================

- 하이이머니 수정  
1. 패션카테고리를 생활/세제 카테고리 앞으로 좀 빼주세용. 
2. 냉동식품/추출음료(업체 배송)문구 좀 추가 해달라고 합니다    
3. 그리고 매장 이미지가 약하다고 합니다.(서울지사 대부분의 사람들의 의견 입니다.) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.27(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- 쇼핑몰 수정
- 재고조사 사전 점검 
테스트 재고조사 
==============================================================================================================

- 세금계산서 월발행 수정 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.28(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 01:00 --> 상반기 재고조사 

- 쇼핑몰 수정
- 상반기 재고조사 
stockInquiryStatDeclinP.jsp 에서 
장부재고와 실사재고의 차인 편차재고로 엑셀 출력(편차수량 내림차순 정렬) 
하여 재고 원인을 파악 
----------------------------------------------------------------------------------------------------------------------------
1. 바코드 추가 안됨 
원인: Unique 인덱스 잘못 설정 
해결: Unique 인덱스 삭제 
INSERT INTO T_STOCK_INQUIRY_TEMP (.... 
java.sql.SQLException: ORA-00001: unique constraint (IIISHOP.I_01_T_STOCK_INQUIRY_TEMP) violated 

2. 상품 찾기에 상품코드를 조회 후 적용시 바코드 자리에 상품코드 들어감 
505-A 8809053011023(00145208) 
----------------------------------------------------------------------------------------------------------------------------

- 프린터 설정(백환일 대리 프린터) 
MSHOME --> I3SHOP의 HP LaserJet 2200 Series PCL 
==============================================================================================================

--'20051230', '20060628'  VAT포함여부(01:제외)   ---> 6월 28일(수) 21시 50분 현재  
MECHUL_WONGA_LNB = 3684303467,    MECHUL_MEGA_LNB = 4624660254, 
MECHUL_WONGA_RNF = 2243000099, MECHUL_MEGA_RNF = 14762049569 

--'20051230', '20060628'  VAT포함여부(00:포함) 
MECHUL_WONGA_LNB = 4040637038,   MECHUL_MEGA_LNB = 5073056851, 
MECHUL_WONGA_RNF = 2467296109,   MECHUL_MEGA_RNF = 2467296109 
---------------------------------------------------------------------------------------------------------------------------- 

--'20051230', '20060628'  VAT포함여부(01:제외)   ---> 6월 28일(수) 21시 이전 꺼  ---> 
MECHUL_WONGA_LNB = 3681995334,    MECHUL_MEGA_LNB = 4620835877, 
MECHUL_WONGA_RNF = 2236382773, MECHUL_MEGA_RNF = 14725768023 

--'20051230', '20060628'  VAT포함여부(00:포함) 
MECHUL_WONGA_LNB = 4038239685,   MECHUL_MEGA_LNB = 5068960691, 
MECHUL_WONGA_RNF = 2460017051,   MECHUL_MEGA_RNF = 16198304826  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.29(목) 작업 ■■■■■■■■■■■■■■■■
---> 08:20 ~ 18:40 --> 풋살 

- 쇼핑몰 수정
- 재고조사 결과 요약 보고서 작성(엑셀) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2006.06.30(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:30 --> 물류팀 회식 참석 

- 쇼핑몰 수정
- 세금계산서 수정 
세금계산서발행관리, 세금계산서합계표관리 차이 수정 
==============================================================================================================

- 신용카드 에러 
※오류메시지: 카드승인실패 온라인가맹점 거래불가 8375 
※카드번호 : 4518-4300-8228-2696  신한은행 
└->확인 후 연락드리기로 함. 최승혁  * 
----------------------------------------------------------------------------------------------------------------------------
원인: 결제시 카드사에서 인증값이 안 넘어와서 그렇게 될 수 있음 
해결책: 일단은 다른 컴퓨터에서 결제를 다시 해보고 그래도 안 되면 본인이 직접 카드사에 문의 
하라고 하세요. 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■