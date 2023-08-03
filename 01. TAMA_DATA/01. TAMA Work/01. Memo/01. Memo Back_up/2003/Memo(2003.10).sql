

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.10) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2003.10.01(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 흐림 

- 경매수정
- 입찰가 같은 금액 못 넣게 할 것 
- DB에서 시간 거르기 
- 낙찰 확정은 같은 금액이라도 먼저 넣은 사람이 낙찰 
-------------------------------------------------------------------------------------------------------------------------

/shop/main/usrauctionbid?aucroundid=21&model_code=RN-20CB11&time=231064316549147(입찰 참여):
/auction/usrAuctionList.jsp 에서 

/framework/MasterController.java 
commands.put("/usrauctionbid", new AuctionBidCmd("$/www/auction/usrAuctionBidDetail.jsp",
"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AuctionBidEntity.java /db/AuctionDetailDb.java 
===============================================================================================================

/shop/main/usrauctionbidmsg(입찰 하기): /auction/usrAuctionBidDetail.jsp 에서(actType=bid)
/framework/MasterController.java 
commands.put("/usrauctionbidmsg", new AuctionBidCmd("$/www/auction/usrAuctionBid.jsp",
"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AucBidEntity.java /db/AuctionBidDb.java 
===============================================================================================================

Script에서 해당 부분을 복사(input type:hidden, text) 
http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=22&model_code=LC-D650
&bid_date=20010930&bid_time=112400&bid_amt=490000  
http://www.hiplaza.co.kr/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=46&model_code=LC-D650
&bid_date=20031002&bid_time=164715&bid_amt=10000 
===============================================================================================================

- [경매 일자 쿼리]  
select start_date  start_time from auc_round  
where auc_round_id = 22 
   and start_date  start_time <= '20030928112000' 
   and end_date  end_time >= '20030928112000' 
-------------------------------------------------------------------------------------------------------------------------

- [추천 서적: Mobile]  
Mobile Java Programming, 김명호 , 오용석 , 유제정, 출판사 :  가남사  
===============================================================================================================

- CRM 수정
UPDATE cust_master  
SET home_ddd = nvl('02',' '), home_tel_no = nvl('393-9861',' '), zip_code = nvl('120030',' '),  
    new_town = nvl('&#49436;&#50872;&#53945;&#48324;&#49884;',' '), new_districT = nvl('&#49436;&#45824;&#47928;&#44396;',' '),  
new_street = nvl('&#54633;&#46041;',' '), addr = nvl('?8-61',' '), person_no = nvl('-',' '), hand_no = nvl('--',' '),  
birthday = nvl('',' '),   
birth_gb = nvl('01',' '), marryday = nvl('',' '), e_mail = ' ', ocu_ddd = nvl('',' '),  
ocu_tel_no = nvl('',' '), job = nvl('',' '), from_dm = nvl('01',' '), cust_gb = nvl('01',' '), gender = nvl('',' '),  
children_coUT = nvl('0',0), oldest_age = nvl('0',0), orldet_year = nvl('2004',' '), family_top_JOB = nvl('',' '),  
house_type = nvl('',' '), house_size = nvl('0',0), etc = nvl('',' '),  

reg_mail = nvl('Y',' '), agree_fg = NULL,  
agree_date = nvl('',' '), emp_code = nvl('11223',' '), update_date = to_char(sysdate,'yyyymmdd'),  
system_date = to_char(sysdate,'yyyymmdd'), marry_gb = nvl('01',' '), dm_gb = nvl('01',' '), grade = nvl('',' '),  
send_flag = 'N'  
WHERE cust_no = 2776857 
===============================================================================================================

- [PDA 장비점검]  
1. iPAQ 밧데리 부분 이상 
S/N: 4G27DW33501R --> 백화점용(iPAQ): 밧데리 충전기 연결 부분 이상 
S/N: HV11D01K008801 --> (CDMA2000 i-Kit PLUS) 
----------------------------------------------------------------------------------------------- 

- [PDA 분석]  
주문입력: 주문일자 변경 안됨(오늘 날짜)  
===============================================================================================================

- B2C 이벤트
LG IBM노트북 임직원 특별 할인판매 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.02(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- CRM 수정
CuCrBasicWrap.java 수정(고객 수정) 

 - CuCrBasicselectFrm.jsp 
public void updateCust(CuCrBasic basic) throws SQLException, DataNotFoundException { 
 } 
----------------------------------------------------------------------------------------------------------------- 

-- 고객 수정 
UPDATE cust_master SET  
home_ddd = nvl('02',' '), home_tel_no = nvl('393-9861',' '), zip_code = nvl('120030',' '),  
new_town = nvl('&#49436;&#50872;&#53945;&#48324;&#49884;',' '), new_districT = nvl('&#49436;&#45824;&#47928;&#44396;',' '),  
new_street = nvl('&#54633;&#46041;',' '), addr = nvl('102-11',' '), person_no = nvl('-',' '), hand_no = nvl('--',' '),  
birthday = nvl('',' '), birth_gb = nvl('01',' '), marryday = nvl('',' '), e_mail = ' ', ocu_ddd = nvl('',' '),  
ocu_tel_no = nvl('',' '), job = nvl('',' '), from_dm = nvl('01',' '), cust_gb = nvl('01',' '),  
gender = nvl('',' '), children_coUT = nvl('0',0), oldest_age = nvl('0',0), orldet_year = nvl('2004',' '), family_top_JOB = nvl('',' '),  
house_type = nvl('',' '), house_size = nvl('0',0), etc = nvl('',' '), reg_mail = nvl('Y',' '), agree_fg = NULL, agree_date = nvl('',' '),  
emp_code = nvl('11223',' '), update_date = to_char(sysdate,'yyyymmdd'), system_date = to_char(sysdate,'yyyymmdd'),  
marry_gb = nvl('01',' '), dm_gb = nvl('01',' '), grade = nvl('',' '), send_flag = 'N'  
WHERE cust_no =2776857 
----------------------------------------------------------------------------------------------------------------- 

 -- 고객 조회 
selelect * from cust_master where cust_no =2776857 
===============================================================================================================

- 경매수정
경매 관리자 수정(/shop/www/admin/FrameSet.jsp)  
shop/main/aucregdisp?actType=regDisp(경매 등록): 관리자 왼쪽 프레임에서  
/framework/MasterController.java 
commands.put("/usrauctionbid", AucCmd("$/www/auction/aucRegister.jsp","$/www/common/adminErrorPage.jsp",
"$/www/common/adminlogin.jsp","AucMgr"));  
/cmd/auction/AucCmd.java /entity/AucEntity.java /db/AucDb.java 
===============================================================================================================

-- 경매 등록시 max 회차 정보, 기간, 시간 조회(관리자) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id  FROM auc_round) 
-----------------------------------------------------------------------------------------------------------------

SO20187 
 status_flag가 "9" 인 경우 삭제를 의미. 관리자 화면 목록에서도 보이지 않음. 

 -- 경매 등록시 max 회차 정보, 기간, 시간 조회(관리자) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id FROM auc_round where status_flag <> 9) 
-----------------------------------------------------------------------------------------------------------------
  
 -- 경매리스트(관리자) 
SELECT r.auc_round_id, r.start_date, r.start_time, r.end_date, r.end_time, r.auc_name, r.scr_display_yn,  
case   when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time              
  then '진행'  
  when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time              
  then '등록'               
  when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time               
  then '종료'               
  else  '마감'               
  end   status,               
NVL(b.success_flag,'X') confirmStatus 
FROM auc_round r, (  SELECT distinct auc_round_id, success_flag, bid_amt 
FROM auc_bid_lst a   
WHERE   bid_amt = (   SELECT MAX(bid_amt)   
FROM   auc_bid_lst b   
WHERE  b.auc_round_id = a.auc_round_id)     
        ORDER BY auc_round_id desc ) b    
WHERE  r.status_flag <> '9' 
AND r.auc_round_id = b.auc_round_id(+) 
ORDER BY TO_NUMBER(r.auc_round_id) desc 
-----------------------------------------------------------------------------------------------------------------

-- 경매에 나온 상품 리스트(관리자) 
SELECT * FROM auc_bid_lst 
===============================================================================================================

http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=23&model_code=EM-3500
&bid_date=20010930&bid_time=112000&bid_amt=11000 

http://www.hiplaza.co.kr/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=46&model_code=LC-D650
&bid_date=20031002&bid_time=164715&bid_amt=10000 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.04(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 11:30 맑음 

- 경매수정
- 입찰 가격 걸리기: 같거나 적은 가격 입찰 여부 확인 
select max(bid_amt) as bid_amt  from auc_bid_lst  where  auc_round_id = 46 and model_code = 'LC-D650' 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.06(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 ==> 맑음 

- B2C 이벤트
select * from DPS_USER  --// 사용자기본 테이블   registration_date 
where login='tamario'  
영화사 사이트 통한 회원가입(총: 2768 명)  
ID 이름 주민번호 주소 전화번호 핸드폰번호 신규가입여부.. 
이벤트 시작일: 200309221315(1시 15분 이후로 등록된 데이타 => 신규) 
===============================================================================================================

-- 영화사 사이트 통한 회원가입(최종 데이타) ==> HIBCDB  @@@@@@@@@@@@ 
select c.event_user_lst_id as NO, a.first_name as 이름, 
   b.ssn  as 주민번호, (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) as 주소, (b.home_ddd '-' 
   b.home_telno) as 주소, mobile_telno as 핸드폰번호,   
   case  when  to_char( a.registration_date,'YYYYMMDDHH24MISS') >= '200309221315' 
  then '신규'      
  else  '기존'               
  end   신규가입여부            
from DPS_USER a, EDPS_USER b , event_user_lst c 
where a.ID = b.ID 
and c.user_id = a.login 
and c.event_id = '1000000125' 
order by c.event_user_lst_id asc 
===============================================================================================================

- PDA 수정
현대 무역: 박수진 Tel)3467-6738 019-396-8850 
주문입력 가능 물류재고 조회 안됨(LG재고 안 보임) 
원인: 물류부분 서버의 오류로 인해 DB데이타값을 정확히 못 받은 것으로 추정 
-----------------------------------------------------------------------------------------------------------------

-- 물류재고 조회(모델에서 P-L119 선택 했을 때): PDA]  ==> SE1BDB(DStock_w_search.jsp --> StockWDbWrap.java)  @@@
select aaa.ware_name ware_name, gi.lge_gijung_name, sm.model_code, NVL(sm.now_vol,0)  now_vol, 
 NVL(sm.possible_vol,0)  possible_vol, NVL(aaa.wait_qty,0) wait_qty, NVL(aaa.ows_qty, 0) ows_qty,  
 NVL(bbb.order_vol,0) order_vol, NVL(ccc.out_direct_vol,0) out_direct_vol, NVL(ccc.ows_minus_vol,0) ows_minus_vol,         
 NVL(bbb.ows_vol,0) ows_vol, NVL(bbb.order_vol,0) - NVL(ccc.out_direct_vol,0) - NVL(ccc.ows_minus_vol,0) - NVL(bbb.ows_vol,0) remain_vol    
from model md, lge_grand gr, lge_jepm jp, lge_gijung gi, stock_month sm,      
( select vrs.mlct_cd, wh.ware_name, vrs.modl, vrs.deli_qty, vrs.wait_qty, vrs.ows_qty, vrs.hold_qty, vrs.ord_qty, vrs.sbft          
  from v_rdc_stock vrs, warehouse wh          
  where vrs.mlct_cd = wh.ware_code 
and modl = 'P-L119'            
and mlct_cd between 'YA' and 'YZ') aaa,   
      ( select si.comp_cd comp_cd, to_char(to_date(si.ord_date,'YYYYMMDD'),'YYYYMM') h_date, 
si.in_store, si.model_code, nvl(sum(oi.ord_vol), 0) order_vol,            
sum(decode(oi.ows_flag, 'Y', oi.ord_vol, '0')) ows_vol        
from stk_in si, order_head oh, order_item oi, model md          
where oh.ord_date = oi.ord_date            
and oh.ord_branch_code = oi.ord_branch_code            
and oh.ord_no = oi.ord_no            
and oi.ord_date = si.ord_date            
and oi.ord_branch_code = si.branch_code            
and oi.model_code = si.model_code            
and oi.r_ord_no = si.r_sheet_no            
and oi.r_ord_sub_no = si.r_sub_no            
and si.model_code = md.model_code            
and oh.buyer_dept_code = '110001'     
and oh.ord_status = 'A'            
and oh.ord_kind  = '1'            
and oh.warehouse_cd = oh.indo_code            
and oh.ord_date like to_char(SYSDATE,'yyyymm')  '%'            
and si.comp_cd = '1100'            
and si.branch_code < 'C'      
and si.model_code = 'P-L119'            
and si.in_store between 'YA' and 'YZ'      
group by si.comp_cd, to_char(to_date(si.ord_date,'YYYYMMDD'),'YYYYMM'),  si.in_store, si.model_code) bbb,      
( select si.in_store, si.model_code, nvl(sum(decode(processs_gb,'5',decode(detail_process_gubun,'A', exec_vol,'D',-exec_vol))), 0) out_direct_vol,                
nvl(sum(decode(processs_gb,'7',decode(detail_process_gubun,'A',  exec_vol,'D',-exec_vol))), 0) ows_minus_vol 
from stk_in si, in_detail id, order_head oh, order_item oi, model md          
where oh.ord_date = oi.ord_date            
and oh.ord_branch_code = oi.ord_branch_code            
and oh.ord_no = oi.ord_no 
and oi.ord_date = si.ord_date            
and oi.ord_branch_code = si.branch_code            
and oi.model_code = si.model_code            
and oi.r_ord_no = si.r_sheet_no            
and oi.r_ord_sub_no = si.r_sub_no            
and si.r_sheet_no = id.r_sheet_no(+)            
and si.r_sub_no = id.r_sub_no(+)            
and si.model_code = md.model_code            
and oh.buyer_dept_code = '110001'            
and oh.ord_status = 'A'           
and oh.ord_kind = '1'            
and oh.ord_date like to_char(SYSDATE,'yyyymm')  '%'  and si.comp_cd = '1100'            
and si.branch_code < 'C'           
and si.model_code = 'P-L119'            
and si.in_store between 'YA' and 'YZ'      
group by si.in_store, si.model_code ) ccc   
where sm.store_code = aaa.mlct_cd(+)     
and sm.model_code = aaa.modl(+)     
and sm.store_code = ccc.in_store(+)     
and sm.model_code = ccc.model_code(+)     
and sm.model_code = md.model_code     
and md.strategy_code = gi.lge_gijung_code     
and gi.lge_jepm_code = jp.lge_jepm_code     
and jp.lge_grand_code = gr.lge_grand_code     
and bbb.h_date(+) = sm.stk_date     
and bbb.model_code(+) = sm.model_code     
and bbb.in_store(+) = sm.store_code     
and bbb.comp_cd(+) = sm.comp_cd     
and sm.stk_date = to_char(SYSDATE,'yyyymm')     
and sm.comp_cd  = '1100'     
and sm.model_code = 'P-L119'     
and sm.store_code between 'YA' and 'YZ' 
order by bbb.in_store, bbb.model_code 
===============================================================================================================
 
- Emp/Imp 사용법
- Export 
c:\> exp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\EXPDAT.DMP tables=DB_CALENDAR log=DB_CALENDAR.log 
-----------------------------------------------------------------------------------------------------------------

-Import 
c:\> imp  tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\EXPDAT.DMP tables=DB_CALENDAR log=DB_CALENDAR.log 
===============================================================================================================

- 알뜰경매  등록
- 공동구매  등록
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.07(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 ==> 맑음 

- 경매수정
경매 관리자 수정(/shop/www/admin/FrameSet.jsp)  
shop/main/aucregdisp?actType=regDisp(경매 등록): 관리자 왼쪽 프레임에서  
/framework/MasterController.java 
commands.put("/usrauctionbid", AucCmd("$/www/auction/aucRegister.jsp","$/www/common/adminErrorPage.jsp"
,"$/www/common/adminlogin.jsp","AucMgr")); 
/cmd/auction/AucCmd.java /entity/AucEntity.java /db/AucDb.java 
===============================================================================================================

-- 경매 등록시 max 회차 정보, 기간, 시간 조회(관리자) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id  FROM auc_round) 
------------------------------------------------------------------------------------------------------------ 

SO20187 
 status_flag가 "9" 인 경우 삭제를 의미. 관리자 화면 목록에서도 보이지 않음. 
------------------------------------------------------------------------------------------------------------ 

-- 경매 등록시 max 회차 정보, 기간, 시간 조회(관리자) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id FROM auc_round where status_flag <> 9) 
===============================================================================================================

-- 전체 경매 리스트(관리자): 수정 전 
SELECT r.auc_round_id,  
	       r.start_date,  
	       r.start_time,  
	       r.end_date,  
	       r.end_time,  
	       r.auc_name,  
	       r.scr_display_yn,  
	       case  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
	       then '진행'  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
	       then '등록'  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
	       then '종료'  
	       else  '마감'  
	       end    status,  
	       NVL(b.success_flag,'X') confirmStatus  
FROM auc_round r, ( SELECT distinct auc_round_id,   
                    success_flag, bid_amt   
                    FROM auc_bid_lst a   
                    WHERE bid_amt = (SELECT MAX(bid_amt)  
                                     FROM auc_bid_lst b 
                                     WHERE b.auc_round_id = a.auc_round_id)  
                    ORDER BY auc_round_id desc ) b 
WHERE  r.status_flag <> '9'  
   AND r.auc_round_id = b.auc_round_id(+)  
ORDER BY TO_NUMBER(r.auc_round_id) desc 
===============================================================================================================

-- 전체 경매 리스트(관리자): 수정 후 
SELECT r.auc_round_id,  
       r.start_date,  
       r.start_time,  
       r.end_date,  
       r.end_time,  
       r.auc_name,  
       r.scr_display_yn,  
       case 
       when r.status_flag ='9' 
             then '삭제' 
       when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
       then '진행'  
       when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
       then '등록'  
       when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
       then '종료'  
       else  '마감'  
       end    status,  
       NVL(b.success_flag,'X') confirmStatus  
FROM auc_round r, ( SELECT distinct auc_round_id,   
                    success_flag, bid_amt   
                    FROM auc_bid_lst a   
                    WHERE bid_amt = (SELECT MAX(bid_amt)  
                                     FROM auc_bid_lst b 
                                     WHERE b.auc_round_id = a.auc_round_id)  
                    ORDER BY auc_round_id desc ) b 
WHERE r.auc_round_id = b.auc_round_id(+) 
ORDER BY TO_NUMBER(r.auc_round_id) desc 
===============================================================================================================

-- 전체 경매 리스트에서 상세 조회(관리자): 수정 후 
SELECT  r.auc_round_id,  a.status_flag,  
case  
             when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
             when nvl(a.status_flag,'0') ='9' 
             then '삭제'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
             then '진행'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
             then '등록'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
             then '종료'   
             else '종료'   
             end    status,  
             r.auc_name,  
             r.start_date,  
             r.start_time,  
             r.end_date,  
             r.end_time, 
             r.order_limit_date,  
             r.order_limit_time,  
             r.scr_display_yn,  
             r.auc_detail,  
             a.start_amt,  
             a.max_bid_amt,  
             a.auc_cnt,  
             a.auc_rec_prd_yn,  
             a.model_code,  
             m.model_name,  
             m.good_price1,  
             m.ship_price               
FROM    auc_round r, auc a, (SELECT sm.model_code,  
                                                        sm.model_name,  
                                                        spu.stk_price1 good_price1,   
                                                        mpi.ship_price ship_price  
                                           FROM   stk_price_unit_prodh spu, 
                                                       model_price_if mpi,  
                                                       store_model sm  
                                           WHERE  spu.stk_month(+) = to_char(sysdate,'YYYYMM')  
                                           AND       spu.comp_cd(+) ='1100'  
                                           AND       spu.model_code(+) =  sm.model_code  
                                           AND       mpi.status(+) ='Y'  
                                           AND       sm.model_code = mpi.model_code(+)  
                                           AND       sm.store_seq = 'S100' ) m  
 WHERE  r.auc_round_id = a.auc_round_id  
 AND       r.auc_round_id = 3 
 AND       a.model_code = m.model_code  
 --AND       nvl(a.status_flag,'0') <> '9'   
 ORDER BY a.in_datea.in_time   
===============================================================================================================

- B2C 수정
- 브랜드 매장 수정(/product/PrdBradnModel.jsp)  
 HOME > brand shop > 1124  --> 김장독 
 brand_04_1124.swf: 김치냉장고(img/theme/) 
 brand_01_xcan.swf: X-캔버스 
 brand_02_tromm.swf: 트롬 
 brand_03_dios.swf: 디오스 
--------------------------------------------------------------------------------------------------------------------

 - 메인 브랜드 매장 수정(/indexl.jsp) 
 brand_01.swf brand_02.swf(img/main/) 
 brand_03.swf brand_04.swf 
===============================================================================================================

- PDA 수정
- 주문입력(/DSale_register_mstinput.jsp) 
post post_address post_zip  --> ed_post 
Sale.widl  -->  

/store/Sale_register_zipcode.jsp 
classes/sale/SaleRegisterDbWrap.java 수정 

// 매출등록 - 우편번호 가지고 오기(수정 전) ---> 동이름으로 찾기 우현동: 4건 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
      post_address B WHERE A.zip_code = b.zip_code and b.flag='Y' and street like '%우현%' 
order by a.zip_code 
--------------------------------------------------------------------------------------------------------------------

l_webhome_mst 
cust_seq: 고객 우편번호 
delive_seq: 배송 우편번호 

// 매출등록 - 우편번호 가지고 오기(수정 후) ---> 동이름으로 찾기 우현동: 6건 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE street like '%우현%' 
order by zip_cd 
===============================================================================================================

// 매출등록 - 우편번호 가지고 오기(수정 전) ---> 우편번호로 찾기 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
  post_address B WHERE A.zip_code = b.zip_code and b.flag = 'Y' and a.zip_code='135080'  
  order by a.zip_code 
--------------------------------------------------------------------------------------------------------------------

//매출등록-우편번호 가지고 오기(수정 후) 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE zip_cd='135080'  
order by zip_cd 
===============================================================================================================

- CRM 수정
우편번호 가지고 오기 
post post_address post_zip  --> ed_post 

-- 고객 관리(고객조회) 
/custrelation/dbmgr/CuCrBasicWrap.java 
-- 상권 관리(상권조회)  --- 이상: CuTasearchlistviewFrm.jsp에서 cutasearch.zip_code;   // 우편번호 이상 
String get_zip_code = (cutasearch.zip_code == null) ? "" : cutasearch.zip_code;   // 우편번호로 수정 
/tradarea/dbmgr/CuTasearchWrap.java 
-- 상권 관리(상권등록) 
/tradarea/dbmgr/CuTaregisterWrap.java 
-- 실행 관리(DM 발행) 
./cust/dm/dbmgr/CuDmBasicWrap.java 
-- 등급 관리(등급 관리) 
./cust/grademg/dbmgr/CuGmmanageWrap.java 
-- 실행 관리(HC 실행) 
./cust/happycall/dbmgr/CuHcBasicWrap.java   
-- 실행 관리(반응정보 입력) 
./cust/response/dbmgr/CuRsBasicWrap.java 
-- 대상자 관리(대상자list조회) 
./cust/targetmg/dbmgr/CuTmTargetWrap.java 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.08(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 12:12 ~ 19:00 ==> 맑음(철야 06:00 퇴근)   

- PDA 수정
// 매출등록 - 우편번호 가지고 오기(수정 전) ---> 동이름으로 찾기 우현동: 4건 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
      post_address B WHERE A.zip_code = b.zip_code and b.flag='Y' and street like '%우현%' 
order by a.zip_code 
--------------------------------------------------------------------------------------------------------------  

//매출등록 - 우편번호 가지고 오기(수정 후) ---> 동이름으로 찾기 우현동: 6건 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE street like '%우현%' 
order by zip_cd 
===============================================================================================================

- 주문입력(/DSale_register_mstinput.jsp) --> DSaleRegisterDbWrap.java 
(/DSale_register_mstinput.jsp -> /DSale_register_msthold.jsp -> /DSale_register_subinput.jsp  
 --> /DSale_register_subhold.jsp -> /DSale_register.jsp -> /classes/sale/DSaleRegisterDbWrap.java) 

post post_address post_zip  --> ed_post 
cust_seq: 고객 우편번호 Seq(예전: cust_zip_code) 
deliv_seq: 배송 우편번호 Seq(예전: deliv_zip_code) 
select cust_seq, deliv_seq  from l_webhome_mst; --// l_webhome_mst: 백화점매출-마스터 정보 TB  
===============================================================================================================

- PDA 장비점검
iPAQ에 문제 발생 - 충전기 접지부분 고장 
S/N: 4G27DW33501R --> 백화점용(iPAQ) 
S/N: HV11D01K008801 --> (CDMA2000 i-Kit PLUS) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.09(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 19:00 ==> 맑음  

- CRM 수정
- 고객체크(이름, 전화번호로 체크) 처음 등록시--> CuCrCheck.jsp 
--------------------------------------------------------------------------------------------------------------  

/** 고객체크(이름, 전화번호로 체크)---> 첫번째 조회  */ 
public String selectCheck(String ch_cust_name, String ch_tel) { 
} 
/** 고객체크(이름, 전화번호로 체크)---> 두 번째 조회: 고객이 1명 이상일 경우  */ 
public java.util.Vector selectCheckList(String ch_cust_name, String ch_tel) { 
} 
--------------------------------------------------------------------------------------------------------------  

- TEST: 간현진 011 9268 9531 김남숙 02 435-6750 
======================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.10(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- 주말 판촉 
- (10월 10일 24시 이후 부터 13일 24시까지) 

- 기획 이벤트
- 무무선전화기 한정기획세일 
======================================================================================================================

- DB- Substring
Oralce DB에서  
SELECT SUBSTR('ABCDEFG',3,4) "Substring" 
     FROM DUAL;  
Substring 결과: 
-----------------------------------------------------------------------------------------------------------------------  

CDEF 

SELECT SUBSTR('ABCDEFG',-5,4) "Substring" 
     FROM DUAL; 
SubstringSubstring 결과: 
--------- 
CDEF 
======================================================================================================================

--// 사용자기본 테이블 조인 
SELECT a.ID AS NO, a.LOGIN AS 아이디, a.first_name AS 이름, a.registration_date AS 등록일, a.email AS 이메일, a.date_of_birth AS 생일, 
   b.ssn AS 주민번호, (SUBSTR(b.ssn,1,6)  '-'SUBSTR(b.ssn,7,7))  AS 주민번호2 ,  
   (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) AS 주소,   
   (b.home_ddd'-'b.home_telno) AS 전화,  b.mobile_telno AS 핸드폰번호  
FROM DPS_USER a, EDPS_USER b 
WHERE a.ID = b.ID 
 AND  a.ID >269000 
-----------------------------------------------------------------------------------------------------------------------  

--// 사용자기본 테이블 조인 
SELECT a.ID AS NO, a.LOGIN AS 아이디, a.first_name AS 이름, (SUBSTR(b.ssn,1,6)  '-'SUBSTR(b.ssn,7,7)) AS 주민번호, 
	CASE   WHEN (SUBSTR(b.ssn,7,1)) = '1' 
	  THEN 'M'    
	  ELSE  'F' 
	  END   SEX,   
	(SUBSTR(b.home_zip,1,3)  '-'SUBSTR(b.home_zip,4,3)) AS 우편번호, b.home_town AS 주소, (b.home_district '
	' b.home_street ' ' b.home_addr) AS 주소2,   
	(b.home_ddd'-'b.home_telno) AS 전화,  b.mobile_telno AS 핸드폰번호, 
	('19'SUBSTR(b.ssn,1,2))  AS 년, SUBSTR(b.ssn,3,2) AS 월, SUBSTR(b.ssn,5,2) AS 일, 
	a.email AS 이메일, a.registration_date AS 등록일  
FROM DPS_USER a, EDPS_USER b 
WHERE a.ID = b.ID 
 AND  a.ID >269000  
======================================================================================================================

-- 패스워드 변경 
UPDATE DPS_USER SET password ='14d677b3886ecf99e0debf93ead320dd' 
WHERE login='stapimp' 
======================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.13(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 19:00 ==> 맑음 

- PDA 수정
- 물류재고 주문 

백화점 - 모든 재고 가능(가정배달 제외) 
지점 -  모든 재고 가능(가정배달 제외) 
======================================================================================================================

- 주문입력 
주문일자: 현재 날짜로 세팅(수정 불가) 
======================================================================================================================

- iphone 연결
백화점\1.80\iphone없이 테스트  
Login.cpp 에서 
-----------------------------------------------------------------------------------------------------------------------
#include "stdafx.h" 
#include "HiMobileD.h" 
#include <commctrl.h> 
#include <aygshell.h> 
#include <sipapi.h> 
#include "client.h" 
#include "global.h" 
======================================================================================================================

- 백화점\1.80\HiMobileD 
Login.cpp 에서 
-----------------------------------------------------------------------------------------------------------------------
#include "stdafx.h" 
#include "HiMobileD.h" 
#include <commctrl.h> 
#include <aygshell.h> 
#include <sipapi.h> 
#include "client.h" 
#include "global.h" 
#include "Ras.h" // RAS 연결관련  
======================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.14(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 ==> 맑음 

- PDA 수정
EVC++3.0에서 Build(F7)를 누르면 PDA는 Sync가 된 상태에서 해당 실행 파일(sdk.exe)을 Download 한다. 
창이 띄게 하려면 
SDK --> PocketPC --> Win32 (WCE x86em) Debug --> PocketPC Emulation ====> 수정요 
wireclient.lib 에러 때문에 HiMobileD에서 사용 불가 
SDK --> PocketPC2002 --> Win32 (WCE ARM) Release --> PocketPC2002(Default Device) ====> HiMobileD에서 

EVC++3.0에서 Build(F7)를 누르면( 컴파일, 빌드, 다운로드 같이 됨) 
C:\VC++_Hiplaza\백화점\1.80\iphone없이 테스트\HiMobileD\ARMRel/ 
HiMobileD.exe 생성 
-----------------------------------------------------------------------------------------------------------------------

Deleting intermediate files and output files for project 'SDK - Win32 (WCE x86em) Debug'. 
--------------------Configuration: SDK - Win32 (WCE x86em) Debug-------------------- 
Compiling resources... 
Compiling... 
StdAfx.cpp 
Compiling... 
SDK.cpp 
Linking... 

SDK.exe - 0 error(s), 0 warning(s) 
Downloading files 
Downloading file c:\vc++_test\sdk\x86emdbg\sdk.exe. 
Finished downloading.  
======================================================================================================================

- wire서버(C:\Wire_V52_SSL)에서 
[00010] ** Connection refused: no further information ** 
원인: IP주소를 http://127.0.0.1:8080 로 설정해서 에러 http://156.147.149.34:8080 로 수정  
======================================================================================================================

- 로그인 수정
--// 백화점 찾기 
SELECT * FROM dept WHERE dept_name LIKE '%백화점' 

--// 백화점 코드(099940:(주)엘지백화점, 2083295:(주)엘지유통 LG백화점 구리점) 
SELECT dept_code, depart_code, dept_name FROM dept WHERE dept_code  ='099940' 

 --// 사원코드(2083295:(주)엘지백화점): 부서 코드(0031:) 
SELECT emp_code,  emp_name,  passwd,  update_date,  use_flag 
FROM employee WHERE depart_code ='0031' 
--//==================================================================================  

--[PDA login 쿼리 - 백화점] ---> 실제 TEST로 사용(PDA로그인)  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT ep.emp_code, ep.emp_name, ep.depart_code, dp.branch_code, dp.dept_code, dp.dept_name, '1300' comp_cd   
FROM employee ep,dept dp   
WHERE ep.emp_code = ( SELECT emp_code 
    FROM ( SELECT emp_code,NVL(passwd,'&nbsp;') passwd   
FROM employee  
WHERE emp_code = 'L2810' ) a    --// 사원코드 
    WHERE a.passwd = '1234' )   --// 패스워드(주기적으로 변경 주의) 
AND dp.dept_code = ( SELECT dept_code FROM ( SELECT dept_code,NVL(passwd,'&nbsp;') passwd    
FROM dept WHERE dept_code = '099940') a  --//거래처 ID(백화점 코드): 099940:(주)엘지백화점 
    WHERE a.passwd = '12345678' )    --// 거래처 패스워드 
AND (ep.depart_code = dp.depart_code OR ep.depart_code='0612')    
AND ep.use_flag = 'Y'  
======================================================================================================================

--// 백화점매출-마스터 
 SELECT web_no, dept_code, cust_no, cust_name,  cust_seq,  deliv_seq, order_date, 
  cust_zip_code, cust_town, cust_district, cust_street, cust_addr,  
  deliv_zip_code, deliv_town, deliv_district, deliv_street, deliv_addr 
 FROM l_webhome_mst 
 ORDER BY order_date  DESC 
======================================================================================================================

--// 백화점매출-서브 
 SELECT web_no, dept_code, cust_no, pda_status_gb, pda_order_gb, pda_cancel_gb, pda_ban_gb 
 FROM l_webhome_sub 
 ORDER BY order_date  DESC 
======================================================================================================================

 --// 백화점매출- 조인 
 SELECT a.web_no, a.dept_code, a.cust_no, a.cust_name,  a.cust_seq,  a.deliv_seq, a.order_date, 
  a.cust_zip_code, a.cust_town, a.cust_district, a.cust_street, a.cust_addr,  
  a.deliv_zip_code, a.deliv_town, a.deliv_district, a.deliv_street, 
b.pda_status_gb, b.pda_order_gb, b.pda_cancel_gb, b.pda_ban_gb 
 FROM l_webhome_mst a,  l_webhome_sub b 
 WHERE a.dept_code = b.dept_code  
     AND a.dept_code = '099940'      --//(백화점 코드): 099940:(주)엘지백화점 
   AND b.pda_order_gb ='B' 
   --AND a.web_no = '2'    --// WEB 넘버 
======================================================================================================================

--DELETE    l_webhome_mst WHERE dept_code='1152768' AND cust_name='남지회'   
  SELECT * FROM l_webhome_sub WHERE dept_code='1152822' 
======================================================================================================================

- PDA로 백화점매출 등록을 했을 경우 
pda_status_gb: 1 pda_order_gb: B 
pda_cancel_gb: N pda_ban_gb: N 
======================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.10.15(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 19:00 ==> 맑음 

- PDA 수정
A. 백화점용 
주문 등록 
http://127.0.0.1:8080/hiplaza/depart/DSale_register_mstinput.jsp 
---------------------------------------------------------------------------------------------------------------

B. 지점용 
고객 입력 
http://127.0.0.1:8080/hiplaza/store/Cust_register_input.jsp 
매출등록 
http://127.0.0.1:8080/hiplaza/store/Sale_register_head.jsp   
======================================================================================================================

- PDA Pro 설치
1. DioPen 설치 
C:\Hiplaza\모바일 프로그램/ 에서  
DioPen1.CAB를 다운 \Temp 폴더에 받아서 설치  
2. HiMobileD 설치  
C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70\iPAQ File Store/ 에서  
HiMobileD.CAB를 다운 \Temp 폴더에 받아서 설치 
3. iPhone2002.CAB 설치 
C:\Hiplaza\모바일 프로그램/ 에서  
iPhone2002.CAB를 다운 \Temp 폴더에 받아서 설치  
======================================================================================================================

- PDA 장비점검
프로그램 다시 설치 
S/N: 4G29DW33616H --> 백화점용(iPAQ) 
S/N: HV11D01K006039 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------

- 프로그램 다시 설치 
S/N: 4G27DW3341GE --> 백화점용(iPAQ) 
---------------------------------------------------------------------------------------------------------------

- 프로그램 다시 설치 
S/N: 4G27DW335005 --> 백화점용(iPAQ) 
S/N: HV11D01K008216 --> (CDMA2000 i-Kit PLUS)  
======================================================================================================================

- widl 분석
DSale.widl 에서 
TYPE="STRING[][]" 
첫번째 table 중 tr 두번째 부터 끝까지 td 처음부터 끝까지의 내용 전체 
---------------------------------------------------------------------------------------------------------------

  <SERVICE NAME="Zipcode" 
   INPUT="BI_Zipcode" 
   OUTPUT="BO_Zipcode" 
   METHOD="POST" 
   URL="http://156.147.149.34:8080/hiplaza/store/Sale_register_zipcodehold.jsp" 
   COMMENT="우편번호검색"/>     

   <BINDING NAME="BI_Zipcode" TYPE="INPUT"> 
    <VARIABLE NAME="zipcode" FORMNAME="zipcode" COMMENT="동이름"/> 
    <VARIABLE NAME="ingb" FORMNAME="ingb" CONTENT="CONSTANT">1</VARIABLE> 
   </BINDING> 

   <BINDING NAME="BO_Zipcode" TYPE="OUTPUT"> 
    <VARIABLE NAME="zipdata" TYPE="STRING[][]" NULLOK="TRUE" COMMENT="">doc.table[0].tr[1-end].td[].text</VARIABLE> 
   </BINDING>        
======================================================================================================================

 Sale_register_zipcodehold.jsp 
---------------------------------------------------------------------------------------------------------------

<table border='1'> 
<tr> 
<td>우편번호</td> 
<td>선택(리스트에서선택하는주소)</td> 
<td>입력(실제입력되는주소)</td> 
<td>시</td> 
<td>구</td> 
<td>동</td> 
<td>Seq No.</td> 
</tr> 
<tr> 
<td><%=rzipcode%></td> 
<td><%=rcity + " " + rgu + " " + rselect%></td> 
<td><%=rcity + " " + rgu + " " + rdong%></td> 
<td><%=rcity%></td> 
<td><%=rgu%></td> 
<td><%=rdong%></td> 
<td><%=addr_seq%></td> 
</tr> 
</table> 
======================================================================================================================

- PDA 에러 수정
cgrand null   --상품군 
---------------------------------------------------------------------------------------------------------------

[00049] ** java.lang.NullPointerException ** 
원인: C:\Wire_V52_SSL\scripts폴더에 DSale.widl 파일이 존재하지 않을 때 
======================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.16(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- PDA 수정
DModel.widl 에서(===> 실서버 URL)  
 <!-- ========================================================================= --> 
  <SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search_combo.jsp" 
    COMMENT="상품정보 조회"/>     
-----------------------------------------------------------------------------------------------------------------------------------

  
DModel.widl 에서(===> Test 서버 URL)  
 <!-- ========================================================================= --> 
  <SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://156.147.149.34:8080/hiplaza/depart/DModel_search_combo.jsp" 
    COMMENT="상품정보 조회"/>      
======================================================================================================================

@@ Test 서버 테스트시  변경 요망(필수) @@@@@@@@@@ 
http://www.hiplaza.co.kr:7001/mobile  ===> http://156.147.149.34:8080/hiplaza 
======================================================================================================================

- odet40 문제
- .clss로 싸여져 소스 분석 불가능 
원인: Entera 서버에 싸여 있어서 Table 수정시 관리자에게 요청 해야 함 
======================================================================================================================

- 고객입력 경로(/store/Cust_register_input.jsp) --> customer.t_cust_new_c.java 
(/Cust_register_input.jsp -> /Cust_register.jsp -> customer.t_cust_new_c.java ) 
Table명: Cust 
======================================================================================================================

- t_cust_new_c.java 에서  
[TAMA] t_cust_new_c.java :: t_cust_new_insert_01 :: dcetable ====>  
 odet40.DceTable@62670b 
======================================================================================================================

- 매출등록 경로(/store/Sale_register_head.jsp) -->/sale.t_sale_insert_c.java 
(/Sale_register_head.jsp -> /Sale_register_headhold.jsp ->/Sale_register_item.jsp -> /Sale_register_itemhold.jsp -> 
/Sale_register_pay.jsp -> /Sale_register_payhold.jsp ->/Sale_register.jsp -> /sale.t_sale_insert_c.java 
Table명: Sale_Head 
======================================================================================================================
 
- t_cust_new_c.java 에서
[TAMA] t_cust_new_c.java :: t_cust_new_insert_01 :: dcetable ====>  
 odet40.DceTable@62670b 
======================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.17(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- PDA 수정
--// staff PDA 사용 조회 
SELECT tel_no 전화번호,    
	SUM(DECODE(pgm_nm,'기간별 실판매조회',1,0))  기간별실판매조회,  
	SUM(DECODE(pgm_nm,'상품조회',1,0))  상품조회  
FROM pda_admin  
where sys_date like '200309%' 
GROUP BY tel_no 
===============================================================================================================

/hiplaza/store/Logina_session.jsp( <-- /hiplaza/store/Logina_input.jsp) 
/classes/common/Log.java에서 
----------------------------------------------------------------------------------------------------- 

Log.println(PDANumber, "로그인"); 
===============================================================================================================

- /classes/common/Log.java에서 
//staff PDA 사용 로그 남기기 
String query = "insert into pda_admin (tel_no, pgm_nm, sys_date) values(?, ?, to_char(sysdate, 'yyyymmdd'))"; 

/*시판/백화점 PDA 사용 로그 남기기 
String query = "insert into new_pdatemp (org_name, branch_code, branch_name, pgm_nm, sys_date) values(?, ?, ?, ?, 
to_char(sysdate, 'yyyymmdd'))"; 
===============================================================================================================
  
- PDA 전화접속
백화점(도구 ==> 전화접속) 
전화접속에서 user name : 0192351184@lgt.co.kr 
    password  : 1184(끝의 4자리) 
    dial from : Home 
으로 세팅이 되어 있는지 확인한다. 
===============================================================================================================

String dd = "20001207"; // 이렇게 받아오면 말이죠.  
dd = dd.substring(0,4)+"-"+dd.substring(4,6)+"-"+dd.substring(6,8); 

String tel_no = "0192351184"; // PDA 전화번호 
if ( tel_no.substring(0, 3).trim().equals("019")) { }   
===============================================================================================================

SELECT * FROM all_tables 
WHERE table_name LIKE '%EVENT%' 

SELECT * 
FROM event_product 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.18(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- PDA 수정
@@ 실서버 테스트시 요망(필수) @@@@@@@@@@ 
http://www.hiplaza.co.kr:7001/mobile  ===> http://www.hiplaza.co.kr:7001/mobile/TEST   
se85:/array1/tas007> cd mobile/Wire_V52_SSL/scripts 
scripts 파일들을 테스트로 변경  
Test_DModel.widl 에서 ( DModel.widl  -> Test_DModel.widl로 변경) 
-------------------------------------------------------------------------------------------------- 

URL="http://www.hiplaza.co.kr:7001/mobile2/depart/DModel_search_combo.jsp" 
===============================================================================================================
 
global.cpp 에서(IDD_POPUP_COMBO) 
-------------------------------------------------------------------------------------------------- 
// 상품검색 팝업창에 띄우는 다이알로그 박스 프로시져 
LRESULT CALLBACK PopupComboDlgProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam) 
{ 
    switch (message) 
    { 
		case WM_INITDIALOG:{ 
			SetWindowPos(hDlg, HWND_TOP, 40, 50, 0, 0, SWP_NOSIZE); 
			iGrand=0; 
			iJepm=0; 
			iGijung=0; 
			iModel=0; 

			Binding_t* bin = newBinding(); 

			bInput(bin,"grand",  ("100")); // 수동으로 초기화 
			bInput(bin,"jepm",   ("100")); 
			bInput(bin,"gijung", ("100")); 
			bInput(bin,"model",  ("100")); 

			requestToWireServer(hDlg, &wire,"Test_DModel:List",bin, TEXT("리스트 여는 중..."),0); 

			return TRUE;  
		} 
   } 
}  
===========================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.10.20(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:00 ==> 맑음 

- PDA 소스 등록
- 실서버에 등록 
- 프로그램 다운로드 파일 위치(수정해서 여기에 덮어 씀) 
/usr/local/tomcat/webapps/mobile/depart/update/HiMobileD.CAB 

http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search.jsp 에서  

<tr> 
	<td>버 전</td> 
	<td>1.80</td> 
</tr> 
--------------------------------------------------------------------------------------------------------------------- 

w.hiplaza.co.kr:7001/mobile/depart/DLogin_session.jsp 에서 
DLogin.widl 파일에서 DLogin:Login으로 version을 가져고 와서 낮은 버전이면 다운로드 하게 함 
===========================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.21(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:00 비 

- [PDA 소스 등록 
[05986] ** Variable `regidata' is null ** 
[00059] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207  
- 원인:  
1.  
<VARIABLE NAME="cust_addr_seq" FORMNAME="cust_addr_seq" COMMENT="고객주소(Seq)"/ 
<VARIABLE NAME="deliv_addr_seq" FORMNAME="deliv_addr_seq" COMMENT="인수주소(Seq)"/> 
추가 안 함 
2. DSaleRegisterDbWrap.class 파일이 정확하게 컴파일 안 되어 인식을 못 함 

DSale.widl 에서(WireServer: C:\Wire_V52_SSL\scripts) 
--------------------------------------------------------------------------------------------------------------- 

<BINDING NAME="BO_Regicus" TYPE="OUTPUT"> 
	<VARIABLE NAME="regidata" TYPE="STRING" COMMENT="">doc.text</VARIABLE> 
</BINDING>     
===========================================================================================================================

- 다운로드(PDA로 다운로드 불가능: PC사용) 
http://www.hiplaza.co.kr:7001/mobile/depart/update/depart_update2.jsp 
===========================================================================================================================

- 검색어 찾기
se85:/> cd /usr/local/tomcat/webapps/mobile/WEB-INF/classes/model 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/classes/model> ls  
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/classes/model> ps -ef  grep h_ `find . -name "*.java" -print` > search_TB_l_ordercontents.txt 
model폴더에 있는 파일들에서 search_TB_l_ordercontents.txt 파일에 h_ 에 대한 검색한 내용 저장하기 
=================================================================================================================
  
- Calendar날짜 
 DSale_register_mstinput.jsp 에서 
<%@ page import="java.util.*"  %> 
<% 

Calendar now = Calendar.getInstance(); // Calendar 클래스(java.util.Calendar) 
  
now.add(Calendar.DATE, 0); // 날짜를 변동(오늘 날짜) 
//년, 월, 일을 가져옵니다.    
int year = now.get(Calendar.YEAR),    
month = now.get(Calendar.MONTH)+1, 
date = now.get(Calendar.DATE); 

String NowDate  = year +""+ month +""+ date; // 오늘 날짜 

now.add(Calendar.DATE, 5); // 날짜를 변동( 배달 희망일자  날짜) 
date = now.get(Calendar.DATE); 
String Dilv_hope_Date  = year +""+ month +""+ date; // 배달 희망일자  날짜 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.22(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 진열장 상품찾기 이벤트 
/200310_search_stock.jsp /200310_search_stock_result.jsp 
/db/EventRegisterDb.java /cmd/EventRegisterCmd.java 
=================================================================================================================
 
-- 이벤트 리스트  ==> HIBCDB  @@@@@@@@@@@@ 
SELECT event_user_lst_id AS NO, ans2 AS 답, user_id AS 회원ID, ans1 AS 이름, apply_date AS 응모일, apply_time AS 시간 
FROM event_user_lst  
WHERE event_id = '10000103'     ---// 상품찾기 이벤트 

■■■■■■■■■■■■■■■■■■ 2003.10.23(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 날짜 타입 
SELECT TO_DATE('20030922 09:21','YYYYMMDDHH24MI') FROM dual; 
-  TO_DATE 타입이 09:21이면 HH24MI도 HH24:MI로 되어야 함(날짜 타입 준수)  

SELECT TO_CHAR(TO_DATE('20030922 09:21','YYYYMMDD HH24:MI'),'YYYYMMDD HH24:MI') FROM dual; 
=--> 결과: 20030922 09:21 
=================================================================================================================

-- 상품찾기 이벤트(최종 데이타_제 1탄)==> HIBCDB  @@@@@@@@@@@@ 
SELECT c.event_user_lst_id AS NO, a.first_name AS 이름,   ( c.apply_date ' ' apply_time) AS 등록일,    
   b.ssn  AS 주민번호, (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) AS 주소, 
   (b.home_ddd '-' b.home_telno) AS 주소, mobile_telno AS 핸드폰번호    
FROM DPS_USER a, EDPS_USER b , event_user_lst c 
WHERE a.ID = b.ID   
AND c.user_id = a.login  
AND TO_CHAR(TO_DATE( ( c.apply_date ' ' apply_time),'YYYYMMDD HH24:MI'),'YYYYMMDDHH24MI') >= '200310221000' 
AND TO_CHAR(TO_DATE( ( c.apply_date ' ' apply_time),'YYYYMMDD HH24:MI'),'YYYYMMDDHH24MI') <= '200311030900'  
AND c.ans2 = '2'     --// 정답 
AND c.event_id = '10000103' 
ORDER BY c.event_user_lst_id ASC 
=================================================================================================================
 
- PDA 분석
- Entera 서버 Stub 연결(Client) 

/card/ 
- t_cardmylg_c.java(결재 정보) 
/customer/ 
- t_cust_new_c.java(고객정보) 
/delivery/ 
- t_deliv_status_c.java(배송정보) - t_stk_out2_c.java(배송정보출력) 
/sale/ 
- t_bak_day_c.java(주문취소 가능여부 체크) - t_sale_insert_c.java(시판매출 최종저장) 
- t_sale_invt_c.java(우편번호별 물류코드정보) 
/trans/ 
- t_branch_trans_c.java() - t_trans_c.java(SVC연결판매건을 조회) 
=================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.10.24(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 세션 설정 
=================================================================================================================
 
200310_search_stock.jsp 에서 
import javax.servlet.http.HttpSession;	// 세션  
HttpSession session = request.getSession();	 // 세션 
 
if(dreq == null  mProfile == null mProfile.isTransient() == true) {  // 로그인이 안 되어 있을 때(세션 설정) 
	session.setAttribute("login_para_session", "1"); 
	session.setAttribute("actType", actType); 
	session.setAttribute("Question_Times", Question_Times); 
	session.setAttribute("answer", answer); 
	session.setAttribute("Right_Answer", Right_Answer); 
	  
	return loginPage; 
} 

if( login_para_session.equals("1")) { // 세션 설정이 되었을 때 
actType = (String)session.getAttribute("actType"); 
Question_Times = (String)session.getAttribute("Question_Times"); 
answer = (String)session.getAttribute("answer"); 
Right_Answer = (String)session.getAttribute("Right_Answer"); 
} 

if( login_para_session.equals("1")) { // 세션 설정이 되었을 때(세션 해제) 
session.removeAttribute("login_para_session"); 
session.removeAttribute("actType"); 
session.removeAttribute("Question_Times"); 
session.removeAttribute("answer"); 
session.removeAttribute("Right_Answer"); 
} 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.25(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 12:00 ==> 맑음 

- B2C 이벤트
- 쿠키 설정  
200310_search_stock.jsp 에서  
import javax.servlet.http.Cookie; // 쿠키  
Cookie[] cookies = request.getCookies();  // 쿠키  
if(dreq == null  mProfile == null mProfile.isTransient() == true) {  // 로그인이 안 되어 있을 때(세션 설정) 
Cookie ck_1   = new Cookie("login_para_Cookie", "1");  // 쿠키 설정 @@@@@@@@@ 
response.addCookie(ck_1);   // 쿠키 설정 여부 
Cookie ck_2   = new Cookie("actType", actType); 
response.addCookie(ck_2); // actType 타입 
Cookie ck_3   = new Cookie("Question_Times", Question_Times); 
response.addCookie(ck_3); // 회차 
Cookie ck_4   = new Cookie("answer", answer); 
response.addCookie(ck_4); // 답 
Cookie ck_5   = new Cookie("Right_Answer", Right_Answer); 
response.addCookie(ck_5); // 정답 

return loginPage; 
} 

// 쿠기 받기 ---------------------------------------------------------------- 
 for( int i = 0; i < cookies.length; i++ ) { 
if(cookies[i].getName().equals("login_para_Cookie")) { 
 login_para_Cookie = cookies[i].getValue();   
} 
if(cookies[i].getName().equals("actType")) { 
 actType = cookies[i].getValue(); 
} 
if(cookies[i].getName().equals("Question_Times")) { 
 Question_Times = cookies[i].getValue(); 
} 
if(cookies[i].getName().equals("answer")) { 
answer = cookies[i].getValue(); 
} 
if(cookies[i].getName().equals("Right_Answer")) { 
 Right_Answer = cookies[i].getValue(); 
} 
} 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.27(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- B2C 이벤트
- 상품찾기 페스티벌 실서버 등록 
- 영화시사회 당첨자 발표 
=================================================================================================================

- PDA 수정
- DB, Stub 연결 분석 
(주)비트웹 Tel. 2040-6641 / 051)305-8433 
=================================================================================================================

-- PDA login 쿼리 - 지점
SELECT emp_code emp_code, emp_name emp_name, passwd paswd, ep.depart_code depart_code, ic.orkordepnm depart_name, 
    ic.comp_cd comp_cd, bc.branch_code, bc.branch_name, bi.order_code, NVL(bc.open_flag,'N') open_flag 
FROM employee ep,iobasic ic, branch bc, branch_item bi 
WHERE ep.emp_code = ( SELECT emp_code 
                       FROM (SELECT emp_code,NVL(passwd,'&nbsp;') passwd 
                               FROM employee 
                              WHERE emp_code = '10152') a 
                      WHERE a.passwd = '0423' 
                    ) 
 AND ep.depart_code = ic.ordepcd 
 AND ep.depart_code = bc.depart_code(+) 
 AND ep.use_flag = 'Y' 
 AND ic.comp_cd = '1100' 
 AND bc.branch_code = bi.branch_code 
AND bi.shape_gb = '1' 
=================================================================================================================

-- 지점 찾기 
SELECT orkordepnm AS 지점명, emp_code,NVL(passwd,'&nbsp;') passwd 
FROM employee ep, iobasic ic 
WHERE ep.depart_code = ic.ordepcd 
  AND ic.comp_cd = '1100' 
  AND orkordepnm  LIKE '%포항%' 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.28(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- PDA 수정
- C/S 쪽과 연계 
=================================================================================================================

#--- HIUPTEST DB 환경(leader / leader00)  ====> C/S DB 환경 
HIUPTEST = 
  (DESCRIPTION = 
    (ADDRESS = 
          (PROTOCOL = TCP) 
          (HOST = 156.147.135.108) 
          (PORT = 1525) 
    ) 
    (CONNECT_DATA = (SID = hiuptest) 
    ) 
  ) 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.29(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 ==> 맑음 

- 랜 AP 설정
PDA IP주소: 156.147.149.84 
AP IP: 172.16.10.7     ====> 7층: .9(9층) 
네트웍 환경에서 IP: 172.16.10.10 로 설정하고 인터넷으로 http://172.16.10.7/를 연결하여 세팅 
c.f) 연결이 안 되면 ====> 인터넷 옵션-> 연결 -> LAN설정에서 자동구성, 프록시 서버 체크 안 함
G.W: 156.147.62.129   ==> 9층 
G.W: 156.147.149.1   ==> 7층 
=================================================================================================================

- 파일용량 Zero
se85:/> cd array1/tas007/mobile/Wire_V52_SSL 
se85:/array1/tas007/mobile/Wire_V52_SSL> ls -l 
se85:/array1/tas007/mobile/Wire_V52_SSL> cp wirelog.txt /array10 
se85:/array1/tas007/mobile/Wire_V52_SSL> > wirelog.txt 
se85:/array1/tas007/mobile/Wire_V52_SSL> ls -l 
se85:/array1/tas007/mobile/Wire_V52_SSL> df -k  

rm 대신 > file 이름  
se85:/array1/tas007> >nohup.out 
으로 size 만 0byte로 변경 가능 
=================================================================================================================

명문치과: 873-7203 
회사 FAX:3472-8642 
=================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.10.30(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:00 ==> 맑음 

- B2C DB 분석
총 몇명 참여 (그중 실패 몇명, 성공 몇명)   
총 253명 참여(시도 262번, 정답 250명, 오답 62)  
 -- 이벤트 리스트 ==> 총  참여 수 조회   @@@@@@@@@@@@ 
 SELECT DISTINCT user_id AS 회원ID 
 FROM event_user_lst  
 WHERE event_id = '1000000129'     ---// 진열매장 상품찾기 이벤트 
=================================================================================================================
 
- http://156.147.149.126:8080/hiplaza/depart/DIndex.jsp        =====> 이은희 대리 자리(hiwin/hiwin ) 
=================================================================================================================

- PDA 수정
-- 형전환(int -> String) 
String date3 = String.valueOf(date);  // 형전환(int -> String) 
if (date3.length()==1) {   // 1자리면 2자리로 늘이기 
date2 = "0"+ date3; 
} 
---------------------------------------------------------------------------------------------------------- 

-- 형변환(String -> int) 
String supply1="23"; 
Integer.parseInt(supply1); 
=================================================================================================================

-- 원하는 숫자에 , 넣기 
import java.text.*  하시고...  
String result = NumberFormat.getInstance().format(원하는 숫자)  
=================================================================================================================

-- 문자 잘라내기 
String a = "0123456789";  
a = a.substring(a.length()-8);  
out.println(a);  
출력: 23456789 
=================================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.10.31(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 ==> 맑음 

- PDA 수정
/classes/stock/StockWDbWrap.java에서 
- v_rdc_stock --> xinvk_stock_v@hiup_erpprod_link 테이블 변경   
public ResultSet searchStock( String comp_cd, String branch_code, String model_code, String fr_mlct, String to_mlct) {     

- // 03_10.31 수정 ======================================================= 
.append("     ( select vrs.ORGANIZATION_CODE, wh.ware_name, vrs.item_code, vrs.holded_quantity, ")   // vrs.unit_quantity --> deli 
.append("        vrs.available_quantity, ") //--wait 
.append("        vrs.OWS_QUANTITY, ") //--ows 
.append("        vrs.intransit_quantity, ") //--hold 
.append("        vrs.pre_quantity ") //--ord 
.append("        from xinvk_stock_v@hiup_erpprod_link vrs, warehouse wh ") // 단품  ###### 
.append("        where vrs.ORGANIZATION_CODE = wh.ware_code ") 
.append(" and vrs.item_code = ? ") 
.append("          and vrs.ORGANIZATION_CODE between '").append(fr_mlct).append("' and '").append(to_mlct) 
.append("' union ") 
.append("        select vrs.ORGANIZATION_CODE, wh.ware_name, vrs.item_code, vrs.unit_quantity, ")   // vrs.unit_quantity --> deli 
.append("        vrs.available_quantity, ") //--wait 
.append("        vrs.OWS_QUANTITY, ") //--ows 
.append("        vrs.intransit_quantity, ") //--hold 
.append("        vrs.ordered_quantity ") //--ord 
.append("        from xinvk_set_model_stock_v@hiup_erpprod_link vrs, warehouse wh ") // 세트 모델  ###### 
.append("        where vrs.ORGANIZATION_CODE = wh.ware_code ") 
.append(" and vrs.item_code = ? ") 
.append("          and vrs.ORGANIZATION_CODE between '").append(fr_mlct).append("' and '").append(to_mlct) 
} 
=================================================================================================================

- 제품설치 여부 수정, 캐파 여부 수정 
/hiplaza/store/Sale_register_item.jsp에서  
as_it_atp_sign -> as_it_setup_atp_sign로 수정 
=================================================================================================================

- /hiplaza/store/Sale_register_itemhold.jsp에서  
if (as_it_delivery_type.equals("1")) {	 // 배달종류가 위탁배달일때 
	session.setAttribute("session_as_it_atp_sign[" + itemCnt + "]", "Y"); // 캐파 여부(atp_sign) 
	session.setAttribute("session_as_it_setup_atp_sign[" + itemCnt + "]", request.getParameter("as_it_setup_atp_sign")); 
	// 제품설치 여부 
 } else { 
	session.setAttribute("session_as_it_atp_sign[" + itemCnt + "]", "N"); // 캐파 여부(atp_sign) 
	session.setAttribute("session_as_it_setup_atp_sign[" + itemCnt + "]", request.getParameter("as_it_setup_atp_sign")); 
	// 제품설치 여부 
} 
=================================================================================================================

- /hiplaza/store/Sale_register.jsp에서  
String[] as_it_setup_tp = new String[int_itemcnt + 1]; // 제품설치 여부 
String[] as_it_atp_sign = new String[int_itemcnt + 1]; //  캐파 여부(atp_sign)   

long result = m_sale_insert_c.t_sale_save_i(...as_it_setup_tp, as_it_atp_sign,...... 
) 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■