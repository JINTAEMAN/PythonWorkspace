

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.10) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2003.10.01(��) �۾� �������������������
---> 07:10 ~ 19:00 �帲 

- ��ż���
- ������ ���� �ݾ� �� �ְ� �� �� 
- DB���� �ð� �Ÿ��� 
- ���� Ȯ���� ���� �ݾ��̶� ���� ���� ����� ���� 
-------------------------------------------------------------------------------------------------------------------------

/shop/main/usrauctionbid?aucroundid=21&model_code=RN-20CB11&time=231064316549147(���� ����):
/auction/usrAuctionList.jsp ���� 

/framework/MasterController.java 
commands.put("/usrauctionbid", new AuctionBidCmd("$/www/auction/usrAuctionBidDetail.jsp",
"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AuctionBidEntity.java /db/AuctionDetailDb.java 
===============================================================================================================

/shop/main/usrauctionbidmsg(���� �ϱ�): /auction/usrAuctionBidDetail.jsp ����(actType=bid)
/framework/MasterController.java 
commands.put("/usrauctionbidmsg", new AuctionBidCmd("$/www/auction/usrAuctionBid.jsp",
"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AucBidEntity.java /db/AuctionBidDb.java 
===============================================================================================================

Script���� �ش� �κ��� ����(input type:hidden, text) 
http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=22&model_code=LC-D650
&bid_date=20010930&bid_time=112400&bid_amt=490000  
http://www.hiplaza.co.kr/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=46&model_code=LC-D650
&bid_date=20031002&bid_time=164715&bid_amt=10000 
===============================================================================================================

- [��� ���� ����]  
select start_date  start_time from auc_round  
where auc_round_id = 22 
   and start_date  start_time <= '20030928112000' 
   and end_date  end_time >= '20030928112000' 
-------------------------------------------------------------------------------------------------------------------------

- [��õ ����: Mobile]  
Mobile Java Programming, ���ȣ , ���뼮 , ������, ���ǻ� :  ������  
===============================================================================================================

- CRM ����
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

- [PDA �������]  
1. iPAQ �嵥�� �κ� �̻� 
S/N: 4G27DW33501R --> ��ȭ����(iPAQ): �嵥�� ������ ���� �κ� �̻� 
S/N: HV11D01K008801 --> (CDMA2000 i-Kit PLUS) 
----------------------------------------------------------------------------------------------- 

- [PDA �м�]  
�ֹ��Է�: �ֹ����� ���� �ȵ�(���� ��¥)  
===============================================================================================================

- B2C �̺�Ʈ
LG IBM��Ʈ�� ������ Ư�� �����Ǹ� 
===============================================================================================================

������������������� 2003.10.02(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- CRM ����
CuCrBasicWrap.java ����(�� ����) 

 - CuCrBasicselectFrm.jsp 
public void updateCust(CuCrBasic basic) throws SQLException, DataNotFoundException { 
 } 
----------------------------------------------------------------------------------------------------------------- 

-- �� ���� 
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

 -- �� ��ȸ 
selelect * from cust_master where cust_no =2776857 
===============================================================================================================

- ��ż���
��� ������ ����(/shop/www/admin/FrameSet.jsp)  
shop/main/aucregdisp?actType=regDisp(��� ���): ������ ���� �����ӿ���  
/framework/MasterController.java 
commands.put("/usrauctionbid", AucCmd("$/www/auction/aucRegister.jsp","$/www/common/adminErrorPage.jsp",
"$/www/common/adminlogin.jsp","AucMgr"));  
/cmd/auction/AucCmd.java /entity/AucEntity.java /db/AucDb.java 
===============================================================================================================

-- ��� ��Ͻ� max ȸ�� ����, �Ⱓ, �ð� ��ȸ(������) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id  FROM auc_round) 
-----------------------------------------------------------------------------------------------------------------

SO20187 
 status_flag�� "9" �� ��� ������ �ǹ�. ������ ȭ�� ��Ͽ����� ������ ����. 

 -- ��� ��Ͻ� max ȸ�� ����, �Ⱓ, �ð� ��ȸ(������) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id FROM auc_round where status_flag <> 9) 
-----------------------------------------------------------------------------------------------------------------
  
 -- ��Ÿ���Ʈ(������) 
SELECT r.auc_round_id, r.start_date, r.start_time, r.end_date, r.end_time, r.auc_name, r.scr_display_yn,  
case   when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time              
  then '����'  
  when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time              
  then '���'               
  when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time               
  then '����'               
  else  '����'               
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

-- ��ſ� ���� ��ǰ ����Ʈ(������) 
SELECT * FROM auc_bid_lst 
===============================================================================================================

http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=23&model_code=EM-3500
&bid_date=20010930&bid_time=112000&bid_amt=11000 

http://www.hiplaza.co.kr/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=46&model_code=LC-D650
&bid_date=20031002&bid_time=164715&bid_amt=10000 
===============================================================================================================

������������������� 2003.10.04(��) �۾� ������������������� 
---> 07:20 ~ 11:30 ���� 

- ��ż���
- ���� ���� �ɸ���: ���ų� ���� ���� ���� ���� Ȯ�� 
select max(bid_amt) as bid_amt  from auc_bid_lst  where  auc_round_id = 46 and model_code = 'LC-D650' 
===============================================================================================================

������������������� 2003.10.06(��) �۾� ������������������� 
---> 07:10 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
select * from DPS_USER  --// ����ڱ⺻ ���̺�   registration_date 
where login='tamario'  
��ȭ�� ����Ʈ ���� ȸ������(��: 2768 ��)  
ID �̸� �ֹι�ȣ �ּ� ��ȭ��ȣ �ڵ�����ȣ �ű԰��Կ���.. 
�̺�Ʈ ������: 200309221315(1�� 15�� ���ķ� ��ϵ� ����Ÿ => �ű�) 
===============================================================================================================

-- ��ȭ�� ����Ʈ ���� ȸ������(���� ����Ÿ) ==> HIBCDB  @@@@@@@@@@@@ 
select c.event_user_lst_id as NO, a.first_name as �̸�, 
   b.ssn  as �ֹι�ȣ, (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) as �ּ�, (b.home_ddd '-' 
   b.home_telno) as �ּ�, mobile_telno as �ڵ�����ȣ,   
   case  when  to_char( a.registration_date,'YYYYMMDDHH24MISS') >= '200309221315' 
  then '�ű�'      
  else  '����'               
  end   �ű԰��Կ���            
from DPS_USER a, EDPS_USER b , event_user_lst c 
where a.ID = b.ID 
and c.user_id = a.login 
and c.event_id = '1000000125' 
order by c.event_user_lst_id asc 
===============================================================================================================

- PDA ����
���� ����: �ڼ��� Tel)3467-6738 019-396-8850 
�ֹ��Է� ���� ������� ��ȸ �ȵ�(LG��� �� ����) 
����: �����κ� ������ ������ ���� DB����Ÿ���� ��Ȯ�� �� ���� ������ ���� 
-----------------------------------------------------------------------------------------------------------------

-- ������� ��ȸ(�𵨿��� P-L119 ���� ���� ��): PDA]  ==> SE1BDB(DStock_w_search.jsp --> StockWDbWrap.java)  @@@
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
 
- Emp/Imp ����
- Export 
c:\> exp tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\EXPDAT.DMP tables=DB_CALENDAR log=DB_CALENDAR.log 
-----------------------------------------------------------------------------------------------------------------

-Import 
c:\> imp  tama/tama339 file=C:\ALL_WEB\Calendar_ora\DB\EXPDAT.DMP tables=DB_CALENDAR log=DB_CALENDAR.log 
===============================================================================================================

- �˶���  ���
- ��������  ���
===============================================================================================================

������������������� 2003.10.07(ȭ) �۾� ������������������� 
---> 07:10 ~ 19:00 ==> ���� 

- ��ż���
��� ������ ����(/shop/www/admin/FrameSet.jsp)  
shop/main/aucregdisp?actType=regDisp(��� ���): ������ ���� �����ӿ���  
/framework/MasterController.java 
commands.put("/usrauctionbid", AucCmd("$/www/auction/aucRegister.jsp","$/www/common/adminErrorPage.jsp"
,"$/www/common/adminlogin.jsp","AucMgr")); 
/cmd/auction/AucCmd.java /entity/AucEntity.java /db/AucDb.java 
===============================================================================================================

-- ��� ��Ͻ� max ȸ�� ����, �Ⱓ, �ð� ��ȸ(������) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id  FROM auc_round) 
------------------------------------------------------------------------------------------------------------ 

SO20187 
 status_flag�� "9" �� ��� ������ �ǹ�. ������ ȭ�� ��Ͽ����� ������ ����. 
------------------------------------------------------------------------------------------------------------ 

-- ��� ��Ͻ� max ȸ�� ����, �Ⱓ, �ð� ��ȸ(������) 
SELECT auc_round_id,  end_date,  end_time   
FROM    auc_round   
WHERE  auc_round_id = (SELECT MAX(to_number(auc_round_id)) auc_round_id FROM auc_round where status_flag <> 9) 
===============================================================================================================

-- ��ü ��� ����Ʈ(������): ���� �� 
SELECT r.auc_round_id,  
	       r.start_date,  
	       r.start_time,  
	       r.end_date,  
	       r.end_time,  
	       r.auc_name,  
	       r.scr_display_yn,  
	       case  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
	       then '����'  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
	       then '���'  
	       when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
	       then '����'  
	       else  '����'  
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

-- ��ü ��� ����Ʈ(������): ���� �� 
SELECT r.auc_round_id,  
       r.start_date,  
       r.start_time,  
       r.end_date,  
       r.end_time,  
       r.auc_name,  
       r.scr_display_yn,  
       case 
       when r.status_flag ='9' 
             then '����' 
       when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
       then '����'  
       when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
       then '���'  
       when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
       then '����'  
       else  '����'  
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

-- ��ü ��� ����Ʈ���� �� ��ȸ(������): ���� �� 
SELECT  r.auc_round_id,  a.status_flag,  
case  
             when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
             when nvl(a.status_flag,'0') ='9' 
             then '����'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') between r.start_date  r.start_time  and r.end_date  r.end_time  
             then '����'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') < r.start_date  r.start_time  
             then '���'  
             when to_char(sysdate,'YYYYMMDDHH24MISS') > r.end_date  r.end_time  
             then '����'   
             else '����'   
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

- B2C ����
- �귣�� ���� ����(/product/PrdBradnModel.jsp)  
 HOME > brand shop > 1124  --> ���嵶 
 brand_04_1124.swf: ��ġ�����(img/theme/) 
 brand_01_xcan.swf: X-ĵ���� 
 brand_02_tromm.swf: Ʈ�� 
 brand_03_dios.swf: ����� 
--------------------------------------------------------------------------------------------------------------------

 - ���� �귣�� ���� ����(/indexl.jsp) 
 brand_01.swf brand_02.swf(img/main/) 
 brand_03.swf brand_04.swf 
===============================================================================================================

- PDA ����
- �ֹ��Է�(/DSale_register_mstinput.jsp) 
post post_address post_zip  --> ed_post 
Sale.widl  -->  

/store/Sale_register_zipcode.jsp 
classes/sale/SaleRegisterDbWrap.java ���� 

// ������ - �����ȣ ������ ����(���� ��) ---> ���̸����� ã�� ������: 4�� 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
      post_address B WHERE A.zip_code = b.zip_code and b.flag='Y' and street like '%����%' 
order by a.zip_code 
--------------------------------------------------------------------------------------------------------------------

l_webhome_mst 
cust_seq: �� �����ȣ 
delive_seq: ��� �����ȣ 

// ������ - �����ȣ ������ ����(���� ��) ---> ���̸����� ã�� ������: 6�� 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE street like '%����%' 
order by zip_cd 
===============================================================================================================

// ������ - �����ȣ ������ ����(���� ��) ---> �����ȣ�� ã�� 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
  post_address B WHERE A.zip_code = b.zip_code and b.flag = 'Y' and a.zip_code='135080'  
  order by a.zip_code 
--------------------------------------------------------------------------------------------------------------------

//������-�����ȣ ������ ����(���� ��) 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE zip_cd='135080'  
order by zip_cd 
===============================================================================================================

- CRM ����
�����ȣ ������ ���� 
post post_address post_zip  --> ed_post 

-- �� ����(����ȸ) 
/custrelation/dbmgr/CuCrBasicWrap.java 
-- ��� ����(�����ȸ)  --- �̻�: CuTasearchlistviewFrm.jsp���� cutasearch.zip_code;   // �����ȣ �̻� 
String get_zip_code = (cutasearch.zip_code == null) ? "" : cutasearch.zip_code;   // �����ȣ�� ���� 
/tradarea/dbmgr/CuTasearchWrap.java 
-- ��� ����(��ǵ��) 
/tradarea/dbmgr/CuTaregisterWrap.java 
-- ���� ����(DM ����) 
./cust/dm/dbmgr/CuDmBasicWrap.java 
-- ��� ����(��� ����) 
./cust/grademg/dbmgr/CuGmmanageWrap.java 
-- ���� ����(HC ����) 
./cust/happycall/dbmgr/CuHcBasicWrap.java   
-- ���� ����(�������� �Է�) 
./cust/response/dbmgr/CuRsBasicWrap.java 
-- ����� ����(�����list��ȸ) 
./cust/targetmg/dbmgr/CuTmTargetWrap.java 
===============================================================================================================

������������������� 2003.10.08(��) �۾� ������������������� 
---> 12:12 ~ 19:00 ==> ����(ö�� 06:00 ���)   

- PDA ����
// ������ - �����ȣ ������ ����(���� ��) ---> ���̸����� ã�� ������: 4�� 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A,  
      post_address B WHERE A.zip_code = b.zip_code and b.flag='Y' and street like '%����%' 
order by a.zip_code 
--------------------------------------------------------------------------------------------------------------  

//������ - �����ȣ ������ ����(���� ��) ---> ���̸����� ã�� ������: 6�� 
SELECT zip_cd, town, district, street, street  bunji FROM ed_post 
WHERE street like '%����%' 
order by zip_cd 
===============================================================================================================

- �ֹ��Է�(/DSale_register_mstinput.jsp) --> DSaleRegisterDbWrap.java 
(/DSale_register_mstinput.jsp -> /DSale_register_msthold.jsp -> /DSale_register_subinput.jsp  
 --> /DSale_register_subhold.jsp -> /DSale_register.jsp -> /classes/sale/DSaleRegisterDbWrap.java) 

post post_address post_zip  --> ed_post 
cust_seq: �� �����ȣ Seq(����: cust_zip_code) 
deliv_seq: ��� �����ȣ Seq(����: deliv_zip_code) 
select cust_seq, deliv_seq  from l_webhome_mst; --// l_webhome_mst: ��ȭ������-������ ���� TB  
===============================================================================================================

- PDA �������
iPAQ�� ���� �߻� - ������ �����κ� ���� 
S/N: 4G27DW33501R --> ��ȭ����(iPAQ) 
S/N: HV11D01K008801 --> (CDMA2000 i-Kit PLUS) 
===============================================================================================================

������������������� 2003.10.09(��) �۾� ������������������� 
---> 08:10 ~ 19:00 ==> ����  

- CRM ����
- ��üũ(�̸�, ��ȭ��ȣ�� üũ) ó�� ��Ͻ�--> CuCrCheck.jsp 
--------------------------------------------------------------------------------------------------------------  

/** ��üũ(�̸�, ��ȭ��ȣ�� üũ)---> ù��° ��ȸ  */ 
public String selectCheck(String ch_cust_name, String ch_tel) { 
} 
/** ��üũ(�̸�, ��ȭ��ȣ�� üũ)---> �� ��° ��ȸ: ���� 1�� �̻��� ���  */ 
public java.util.Vector selectCheckList(String ch_cust_name, String ch_tel) { 
} 
--------------------------------------------------------------------------------------------------------------  

- TEST: ������ 011 9268 9531 �賲�� 02 435-6750 
======================================================================================================================

������������������� 2003.10.10(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- �ָ� ���� 
- (10�� 10�� 24�� ���� ���� 13�� 24�ñ���) 

- ��ȹ �̺�Ʈ
- ��������ȭ�� ������ȹ���� 
======================================================================================================================

- DB- Substring
Oralce DB����  
SELECT SUBSTR('ABCDEFG',3,4) "Substring" 
     FROM DUAL;  
Substring ���: 
-----------------------------------------------------------------------------------------------------------------------  

CDEF 

SELECT SUBSTR('ABCDEFG',-5,4) "Substring" 
     FROM DUAL; 
SubstringSubstring ���: 
--------- 
CDEF 
======================================================================================================================

--// ����ڱ⺻ ���̺� ���� 
SELECT a.ID AS NO, a.LOGIN AS ���̵�, a.first_name AS �̸�, a.registration_date AS �����, a.email AS �̸���, a.date_of_birth AS ����, 
   b.ssn AS �ֹι�ȣ, (SUBSTR(b.ssn,1,6)  '-'SUBSTR(b.ssn,7,7))  AS �ֹι�ȣ2 ,  
   (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) AS �ּ�,   
   (b.home_ddd'-'b.home_telno) AS ��ȭ,  b.mobile_telno AS �ڵ�����ȣ  
FROM DPS_USER a, EDPS_USER b 
WHERE a.ID = b.ID 
 AND  a.ID >269000 
-----------------------------------------------------------------------------------------------------------------------  

--// ����ڱ⺻ ���̺� ���� 
SELECT a.ID AS NO, a.LOGIN AS ���̵�, a.first_name AS �̸�, (SUBSTR(b.ssn,1,6)  '-'SUBSTR(b.ssn,7,7)) AS �ֹι�ȣ, 
	CASE   WHEN (SUBSTR(b.ssn,7,1)) = '1' 
	  THEN 'M'    
	  ELSE  'F' 
	  END   SEX,   
	(SUBSTR(b.home_zip,1,3)  '-'SUBSTR(b.home_zip,4,3)) AS �����ȣ, b.home_town AS �ּ�, (b.home_district '
	' b.home_street ' ' b.home_addr) AS �ּ�2,   
	(b.home_ddd'-'b.home_telno) AS ��ȭ,  b.mobile_telno AS �ڵ�����ȣ, 
	('19'SUBSTR(b.ssn,1,2))  AS ��, SUBSTR(b.ssn,3,2) AS ��, SUBSTR(b.ssn,5,2) AS ��, 
	a.email AS �̸���, a.registration_date AS �����  
FROM DPS_USER a, EDPS_USER b 
WHERE a.ID = b.ID 
 AND  a.ID >269000  
======================================================================================================================

-- �н����� ���� 
UPDATE DPS_USER SET password ='14d677b3886ecf99e0debf93ead320dd' 
WHERE login='stapimp' 
======================================================================================================================

������������������� 2003.10.13(��) �۾� ������������������� 
---> 08:10 ~ 19:00 ==> ���� 

- PDA ����
- ������� �ֹ� 

��ȭ�� - ��� ��� ����(������� ����) 
���� -  ��� ��� ����(������� ����) 
======================================================================================================================

- �ֹ��Է� 
�ֹ�����: ���� ��¥�� ����(���� �Ұ�) 
======================================================================================================================

- iphone ����
��ȭ��\1.80\iphone���� �׽�Ʈ  
Login.cpp ���� 
-----------------------------------------------------------------------------------------------------------------------
#include "stdafx.h" 
#include "HiMobileD.h" 
#include <commctrl.h> 
#include <aygshell.h> 
#include <sipapi.h> 
#include "client.h" 
#include "global.h" 
======================================================================================================================

- ��ȭ��\1.80\HiMobileD 
Login.cpp ���� 
-----------------------------------------------------------------------------------------------------------------------
#include "stdafx.h" 
#include "HiMobileD.h" 
#include <commctrl.h> 
#include <aygshell.h> 
#include <sipapi.h> 
#include "client.h" 
#include "global.h" 
#include "Ras.h" // RAS �������  
======================================================================================================================

������������������� 2003.10.14(ȭ) �۾� ������������������� 
---> 07:10 ~ 19:00 ==> ���� 

- PDA ����
EVC++3.0���� Build(F7)�� ������ PDA�� Sync�� �� ���¿��� �ش� ���� ����(sdk.exe)�� Download �Ѵ�. 
â�� ��� �Ϸ��� 
SDK --> PocketPC --> Win32 (WCE x86em) Debug --> PocketPC Emulation ====> ������ 
wireclient.lib ���� ������ HiMobileD���� ��� �Ұ� 
SDK --> PocketPC2002 --> Win32 (WCE ARM) Release --> PocketPC2002(Default Device) ====> HiMobileD���� 

EVC++3.0���� Build(F7)�� ������( ������, ����, �ٿ�ε� ���� ��) 
C:\VC++_Hiplaza\��ȭ��\1.80\iphone���� �׽�Ʈ\HiMobileD\ARMRel/ 
HiMobileD.exe ���� 
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

- wire����(C:\Wire_V52_SSL)���� 
[00010] ** Connection refused: no further information ** 
����: IP�ּҸ� http://127.0.0.1:8080 �� �����ؼ� ���� http://156.147.149.34:8080 �� ����  
======================================================================================================================

- �α��� ����
--// ��ȭ�� ã�� 
SELECT * FROM dept WHERE dept_name LIKE '%��ȭ��' 

--// ��ȭ�� �ڵ�(099940:(��)������ȭ��, 2083295:(��)�������� LG��ȭ�� ������) 
SELECT dept_code, depart_code, dept_name FROM dept WHERE dept_code  ='099940' 

 --// ����ڵ�(2083295:(��)������ȭ��): �μ� �ڵ�(0031:) 
SELECT emp_code,  emp_name,  passwd,  update_date,  use_flag 
FROM employee WHERE depart_code ='0031' 
--//==================================================================================  

--[PDA login ���� - ��ȭ��] ---> ���� TEST�� ���(PDA�α���)  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
SELECT ep.emp_code, ep.emp_name, ep.depart_code, dp.branch_code, dp.dept_code, dp.dept_name, '1300' comp_cd   
FROM employee ep,dept dp   
WHERE ep.emp_code = ( SELECT emp_code 
    FROM ( SELECT emp_code,NVL(passwd,'&nbsp;') passwd   
FROM employee  
WHERE emp_code = 'L2810' ) a    --// ����ڵ� 
    WHERE a.passwd = '1234' )   --// �н�����(�ֱ������� ���� ����) 
AND dp.dept_code = ( SELECT dept_code FROM ( SELECT dept_code,NVL(passwd,'&nbsp;') passwd    
FROM dept WHERE dept_code = '099940') a  --//�ŷ�ó ID(��ȭ�� �ڵ�): 099940:(��)������ȭ�� 
    WHERE a.passwd = '12345678' )    --// �ŷ�ó �н����� 
AND (ep.depart_code = dp.depart_code OR ep.depart_code='0612')    
AND ep.use_flag = 'Y'  
======================================================================================================================

--// ��ȭ������-������ 
 SELECT web_no, dept_code, cust_no, cust_name,  cust_seq,  deliv_seq, order_date, 
  cust_zip_code, cust_town, cust_district, cust_street, cust_addr,  
  deliv_zip_code, deliv_town, deliv_district, deliv_street, deliv_addr 
 FROM l_webhome_mst 
 ORDER BY order_date  DESC 
======================================================================================================================

--// ��ȭ������-���� 
 SELECT web_no, dept_code, cust_no, pda_status_gb, pda_order_gb, pda_cancel_gb, pda_ban_gb 
 FROM l_webhome_sub 
 ORDER BY order_date  DESC 
======================================================================================================================

 --// ��ȭ������- ���� 
 SELECT a.web_no, a.dept_code, a.cust_no, a.cust_name,  a.cust_seq,  a.deliv_seq, a.order_date, 
  a.cust_zip_code, a.cust_town, a.cust_district, a.cust_street, a.cust_addr,  
  a.deliv_zip_code, a.deliv_town, a.deliv_district, a.deliv_street, 
b.pda_status_gb, b.pda_order_gb, b.pda_cancel_gb, b.pda_ban_gb 
 FROM l_webhome_mst a,  l_webhome_sub b 
 WHERE a.dept_code = b.dept_code  
     AND a.dept_code = '099940'      --//(��ȭ�� �ڵ�): 099940:(��)������ȭ�� 
   AND b.pda_order_gb ='B' 
   --AND a.web_no = '2'    --// WEB �ѹ� 
======================================================================================================================

--DELETE    l_webhome_mst WHERE dept_code='1152768' AND cust_name='����ȸ'   
  SELECT * FROM l_webhome_sub WHERE dept_code='1152822' 
======================================================================================================================

- PDA�� ��ȭ������ ����� ���� ��� 
pda_status_gb: 1 pda_order_gb: B 
pda_cancel_gb: N pda_ban_gb: N 
======================================================================================================================
 
������������������� 2003.10.15(��) �۾� ������������������� 
---> 08:10 ~ 19:00 ==> ���� 

- PDA ����
A. ��ȭ���� 
�ֹ� ��� 
http://127.0.0.1:8080/hiplaza/depart/DSale_register_mstinput.jsp 
---------------------------------------------------------------------------------------------------------------

B. ������ 
�� �Է� 
http://127.0.0.1:8080/hiplaza/store/Cust_register_input.jsp 
������ 
http://127.0.0.1:8080/hiplaza/store/Sale_register_head.jsp   
======================================================================================================================

- PDA Pro ��ġ
1. DioPen ��ġ 
C:\Hiplaza\����� ���α׷�/ ����  
DioPen1.CAB�� �ٿ� \Temp ������ �޾Ƽ� ��ġ  
2. HiMobileD ��ġ  
C:\VC++_Hiplaza\PDA CAP Files\HiMobileD\1.70\iPAQ File Store/ ����  
HiMobileD.CAB�� �ٿ� \Temp ������ �޾Ƽ� ��ġ 
3. iPhone2002.CAB ��ġ 
C:\Hiplaza\����� ���α׷�/ ����  
iPhone2002.CAB�� �ٿ� \Temp ������ �޾Ƽ� ��ġ  
======================================================================================================================

- PDA �������
���α׷� �ٽ� ��ġ 
S/N: 4G29DW33616H --> ��ȭ����(iPAQ) 
S/N: HV11D01K006039 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------

- ���α׷� �ٽ� ��ġ 
S/N: 4G27DW3341GE --> ��ȭ����(iPAQ) 
---------------------------------------------------------------------------------------------------------------

- ���α׷� �ٽ� ��ġ 
S/N: 4G27DW335005 --> ��ȭ����(iPAQ) 
S/N: HV11D01K008216 --> (CDMA2000 i-Kit PLUS)  
======================================================================================================================

- widl �м�
DSale.widl ���� 
TYPE="STRING[][]" 
ù��° table �� tr �ι�° ���� ������ td ó������ �������� ���� ��ü 
---------------------------------------------------------------------------------------------------------------

  <SERVICE NAME="Zipcode" 
   INPUT="BI_Zipcode" 
   OUTPUT="BO_Zipcode" 
   METHOD="POST" 
   URL="http://156.147.149.34:8080/hiplaza/store/Sale_register_zipcodehold.jsp" 
   COMMENT="�����ȣ�˻�"/>     

   <BINDING NAME="BI_Zipcode" TYPE="INPUT"> 
    <VARIABLE NAME="zipcode" FORMNAME="zipcode" COMMENT="���̸�"/> 
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
<td>�����ȣ</td> 
<td>����(����Ʈ���������ϴ��ּ�)</td> 
<td>�Է�(�����ԷµǴ��ּ�)</td> 
<td>��</td> 
<td>��</td> 
<td>��</td> 
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

- PDA ���� ����
cgrand null   --��ǰ�� 
---------------------------------------------------------------------------------------------------------------

[00049] ** java.lang.NullPointerException ** 
����: C:\Wire_V52_SSL\scripts������ DSale.widl ������ �������� ���� �� 
======================================================================================================================

������������������� 2003.10.16(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- PDA ����
DModel.widl ����(===> �Ǽ��� URL)  
 <!-- ========================================================================= --> 
  <SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search_combo.jsp" 
    COMMENT="��ǰ���� ��ȸ"/>     
-----------------------------------------------------------------------------------------------------------------------------------

  
DModel.widl ����(===> Test ���� URL)  
 <!-- ========================================================================= --> 
  <SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://156.147.149.34:8080/hiplaza/depart/DModel_search_combo.jsp" 
    COMMENT="��ǰ���� ��ȸ"/>      
======================================================================================================================

@@ Test ���� �׽�Ʈ��  ���� ���(�ʼ�) @@@@@@@@@@ 
http://www.hiplaza.co.kr:7001/mobile  ===> http://156.147.149.34:8080/hiplaza 
======================================================================================================================

- odet40 ����
- .clss�� �ο��� �ҽ� �м� �Ұ��� 
����: Entera ������ �ο� �־ Table ������ �����ڿ��� ��û �ؾ� �� 
======================================================================================================================

- ���Է� ���(/store/Cust_register_input.jsp) --> customer.t_cust_new_c.java 
(/Cust_register_input.jsp -> /Cust_register.jsp -> customer.t_cust_new_c.java ) 
Table��: Cust 
======================================================================================================================

- t_cust_new_c.java ����  
[TAMA] t_cust_new_c.java :: t_cust_new_insert_01 :: dcetable ====>  
 odet40.DceTable@62670b 
======================================================================================================================

- ������ ���(/store/Sale_register_head.jsp) -->/sale.t_sale_insert_c.java 
(/Sale_register_head.jsp -> /Sale_register_headhold.jsp ->/Sale_register_item.jsp -> /Sale_register_itemhold.jsp -> 
/Sale_register_pay.jsp -> /Sale_register_payhold.jsp ->/Sale_register.jsp -> /sale.t_sale_insert_c.java 
Table��: Sale_Head 
======================================================================================================================
 
- t_cust_new_c.java ����
[TAMA] t_cust_new_c.java :: t_cust_new_insert_01 :: dcetable ====>  
 odet40.DceTable@62670b 
======================================================================================================================

������������������� 2003.10.17(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- PDA ����
--// staff PDA ��� ��ȸ 
SELECT tel_no ��ȭ��ȣ,    
	SUM(DECODE(pgm_nm,'�Ⱓ�� ���Ǹ���ȸ',1,0))  �Ⱓ�����Ǹ���ȸ,  
	SUM(DECODE(pgm_nm,'��ǰ��ȸ',1,0))  ��ǰ��ȸ  
FROM pda_admin  
where sys_date like '200309%' 
GROUP BY tel_no 
===============================================================================================================

/hiplaza/store/Logina_session.jsp( <-- /hiplaza/store/Logina_input.jsp) 
/classes/common/Log.java���� 
----------------------------------------------------------------------------------------------------- 

Log.println(PDANumber, "�α���"); 
===============================================================================================================

- /classes/common/Log.java���� 
//staff PDA ��� �α� ����� 
String query = "insert into pda_admin (tel_no, pgm_nm, sys_date) values(?, ?, to_char(sysdate, 'yyyymmdd'))"; 

/*����/��ȭ�� PDA ��� �α� ����� 
String query = "insert into new_pdatemp (org_name, branch_code, branch_name, pgm_nm, sys_date) values(?, ?, ?, ?, 
to_char(sysdate, 'yyyymmdd'))"; 
===============================================================================================================
  
- PDA ��ȭ����
��ȭ��(���� ==> ��ȭ����) 
��ȭ���ӿ��� user name : 0192351184@lgt.co.kr 
    password  : 1184(���� 4�ڸ�) 
    dial from : Home 
���� ������ �Ǿ� �ִ��� Ȯ���Ѵ�. 
===============================================================================================================

String dd = "20001207"; // �̷��� �޾ƿ��� ������.  
dd = dd.substring(0,4)+"-"+dd.substring(4,6)+"-"+dd.substring(6,8); 

String tel_no = "0192351184"; // PDA ��ȭ��ȣ 
if ( tel_no.substring(0, 3).trim().equals("019")) { }   
===============================================================================================================

SELECT * FROM all_tables 
WHERE table_name LIKE '%EVENT%' 

SELECT * 
FROM event_product 
===============================================================================================================

������������������� 2003.10.18(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- PDA ����
@@ �Ǽ��� �׽�Ʈ�� ���(�ʼ�) @@@@@@@@@@ 
http://www.hiplaza.co.kr:7001/mobile  ===> http://www.hiplaza.co.kr:7001/mobile/TEST   
se85:/array1/tas007> cd mobile/Wire_V52_SSL/scripts 
scripts ���ϵ��� �׽�Ʈ�� ����  
Test_DModel.widl ���� ( DModel.widl  -> Test_DModel.widl�� ����) 
-------------------------------------------------------------------------------------------------- 

URL="http://www.hiplaza.co.kr:7001/mobile2/depart/DModel_search_combo.jsp" 
===============================================================================================================
 
global.cpp ����(IDD_POPUP_COMBO) 
-------------------------------------------------------------------------------------------------- 
// ��ǰ�˻� �˾�â�� ���� ���̾˷α� �ڽ� ���ν��� 
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

			bInput(bin,"grand",  ("100")); // �������� �ʱ�ȭ 
			bInput(bin,"jepm",   ("100")); 
			bInput(bin,"gijung", ("100")); 
			bInput(bin,"model",  ("100")); 

			requestToWireServer(hDlg, &wire,"Test_DModel:List",bin, TEXT("����Ʈ ���� ��..."),0); 

			return TRUE;  
		} 
   } 
}  
===========================================================================================================================
 
������������������� 2003.10.20(��) �۾� ������������������� 
---> 07:10 ~ 19:00 ==> ���� 

- PDA �ҽ� ���
- �Ǽ����� ��� 
- ���α׷� �ٿ�ε� ���� ��ġ(�����ؼ� ���⿡ ���� ��) 
/usr/local/tomcat/webapps/mobile/depart/update/HiMobileD.CAB 

http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search.jsp ����  

<tr> 
	<td>�� ��</td> 
	<td>1.80</td> 
</tr> 
--------------------------------------------------------------------------------------------------------------------- 

w.hiplaza.co.kr:7001/mobile/depart/DLogin_session.jsp ���� 
DLogin.widl ���Ͽ��� DLogin:Login���� version�� ������ �ͼ� ���� �����̸� �ٿ�ε� �ϰ� �� 
===========================================================================================================================

������������������� 2003.10.21(ȭ) �۾� ������������������� 
---> 07:00 ~ 19:00 �� 

- [PDA �ҽ� ��� 
[05986] ** Variable `regidata' is null ** 
[00059] Request DLogin.Login from 211.171.205.209/211.171.205.209@1207  
- ����:  
1.  
<VARIABLE NAME="cust_addr_seq" FORMNAME="cust_addr_seq" COMMENT="���ּ�(Seq)"/ 
<VARIABLE NAME="deliv_addr_seq" FORMNAME="deliv_addr_seq" COMMENT="�μ��ּ�(Seq)"/> 
�߰� �� �� 
2. DSaleRegisterDbWrap.class ������ ��Ȯ�ϰ� ������ �� �Ǿ� �ν��� �� �� 

DSale.widl ����(WireServer: C:\Wire_V52_SSL\scripts) 
--------------------------------------------------------------------------------------------------------------- 

<BINDING NAME="BO_Regicus" TYPE="OUTPUT"> 
	<VARIABLE NAME="regidata" TYPE="STRING" COMMENT="">doc.text</VARIABLE> 
</BINDING>     
===========================================================================================================================

- �ٿ�ε�(PDA�� �ٿ�ε� �Ұ���: PC���) 
http://www.hiplaza.co.kr:7001/mobile/depart/update/depart_update2.jsp 
===========================================================================================================================

- �˻��� ã��
se85:/> cd /usr/local/tomcat/webapps/mobile/WEB-INF/classes/model 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/classes/model> ls  
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/classes/model> ps -ef  grep h_ `find . -name "*.java" -print` > search_TB_l_ordercontents.txt 
model������ �ִ� ���ϵ鿡�� search_TB_l_ordercontents.txt ���Ͽ� h_ �� ���� �˻��� ���� �����ϱ� 
=================================================================================================================
  
- Calendar��¥ 
 DSale_register_mstinput.jsp ���� 
<%@ page import="java.util.*"  %> 
<% 

Calendar now = Calendar.getInstance(); // Calendar Ŭ����(java.util.Calendar) 
  
now.add(Calendar.DATE, 0); // ��¥�� ����(���� ��¥) 
//��, ��, ���� �����ɴϴ�.    
int year = now.get(Calendar.YEAR),    
month = now.get(Calendar.MONTH)+1, 
date = now.get(Calendar.DATE); 

String NowDate  = year +""+ month +""+ date; // ���� ��¥ 

now.add(Calendar.DATE, 5); // ��¥�� ����( ��� �������  ��¥) 
date = now.get(Calendar.DATE); 
String Dilv_hope_Date  = year +""+ month +""+ date; // ��� �������  ��¥ 
=================================================================================================================

������������������� 2003.10.22(��) �۾� ������������������� 
---> 07:00 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- ������ ��ǰã�� �̺�Ʈ 
/200310_search_stock.jsp /200310_search_stock_result.jsp 
/db/EventRegisterDb.java /cmd/EventRegisterCmd.java 
=================================================================================================================
 
-- �̺�Ʈ ����Ʈ  ==> HIBCDB  @@@@@@@@@@@@ 
SELECT event_user_lst_id AS NO, ans2 AS ��, user_id AS ȸ��ID, ans1 AS �̸�, apply_date AS ������, apply_time AS �ð� 
FROM event_user_lst  
WHERE event_id = '10000103'     ---// ��ǰã�� �̺�Ʈ 

������������������� 2003.10.23(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- ��¥ Ÿ�� 
SELECT TO_DATE('20030922 09:21','YYYYMMDDHH24MI') FROM dual; 
-  TO_DATE Ÿ���� 09:21�̸� HH24MI�� HH24:MI�� �Ǿ�� ��(��¥ Ÿ�� �ؼ�)  

SELECT TO_CHAR(TO_DATE('20030922 09:21','YYYYMMDD HH24:MI'),'YYYYMMDD HH24:MI') FROM dual; 
=--> ���: 20030922 09:21 
=================================================================================================================

-- ��ǰã�� �̺�Ʈ(���� ����Ÿ_�� 1ź)==> HIBCDB  @@@@@@@@@@@@ 
SELECT c.event_user_lst_id AS NO, a.first_name AS �̸�,   ( c.apply_date ' ' apply_time) AS �����,    
   b.ssn  AS �ֹι�ȣ, (b.home_town ' ' b.home_district ' ' b.home_street ' ' b.home_addr) AS �ּ�, 
   (b.home_ddd '-' b.home_telno) AS �ּ�, mobile_telno AS �ڵ�����ȣ    
FROM DPS_USER a, EDPS_USER b , event_user_lst c 
WHERE a.ID = b.ID   
AND c.user_id = a.login  
AND TO_CHAR(TO_DATE( ( c.apply_date ' ' apply_time),'YYYYMMDD HH24:MI'),'YYYYMMDDHH24MI') >= '200310221000' 
AND TO_CHAR(TO_DATE( ( c.apply_date ' ' apply_time),'YYYYMMDD HH24:MI'),'YYYYMMDDHH24MI') <= '200311030900'  
AND c.ans2 = '2'     --// ���� 
AND c.event_id = '10000103' 
ORDER BY c.event_user_lst_id ASC 
=================================================================================================================
 
- PDA �м�
- Entera ���� Stub ����(Client) 

/card/ 
- t_cardmylg_c.java(���� ����) 
/customer/ 
- t_cust_new_c.java(������) 
/delivery/ 
- t_deliv_status_c.java(�������) - t_stk_out2_c.java(����������) 
/sale/ 
- t_bak_day_c.java(�ֹ���� ���ɿ��� üũ) - t_sale_insert_c.java(���Ǹ��� ��������) 
- t_sale_invt_c.java(�����ȣ�� �����ڵ�����) 
/trans/ 
- t_branch_trans_c.java() - t_trans_c.java(SVC�����ǸŰ��� ��ȸ) 
=================================================================================================================
 
������������������� 2003.10.24(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- ���� ���� 
=================================================================================================================
 
200310_search_stock.jsp ���� 
import javax.servlet.http.HttpSession;	// ����  
HttpSession session = request.getSession();	 // ���� 
 
if(dreq == null  mProfile == null mProfile.isTransient() == true) {  // �α����� �� �Ǿ� ���� ��(���� ����) 
	session.setAttribute("login_para_session", "1"); 
	session.setAttribute("actType", actType); 
	session.setAttribute("Question_Times", Question_Times); 
	session.setAttribute("answer", answer); 
	session.setAttribute("Right_Answer", Right_Answer); 
	  
	return loginPage; 
} 

if( login_para_session.equals("1")) { // ���� ������ �Ǿ��� �� 
actType = (String)session.getAttribute("actType"); 
Question_Times = (String)session.getAttribute("Question_Times"); 
answer = (String)session.getAttribute("answer"); 
Right_Answer = (String)session.getAttribute("Right_Answer"); 
} 

if( login_para_session.equals("1")) { // ���� ������ �Ǿ��� ��(���� ����) 
session.removeAttribute("login_para_session"); 
session.removeAttribute("actType"); 
session.removeAttribute("Question_Times"); 
session.removeAttribute("answer"); 
session.removeAttribute("Right_Answer"); 
} 
=================================================================================================================

������������������� 2003.10.25(��) �۾� ������������������� 
---> 08:10 ~ 12:00 ==> ���� 

- B2C �̺�Ʈ
- ��Ű ����  
200310_search_stock.jsp ����  
import javax.servlet.http.Cookie; // ��Ű  
Cookie[] cookies = request.getCookies();  // ��Ű  
if(dreq == null  mProfile == null mProfile.isTransient() == true) {  // �α����� �� �Ǿ� ���� ��(���� ����) 
Cookie ck_1   = new Cookie("login_para_Cookie", "1");  // ��Ű ���� @@@@@@@@@ 
response.addCookie(ck_1);   // ��Ű ���� ���� 
Cookie ck_2   = new Cookie("actType", actType); 
response.addCookie(ck_2); // actType Ÿ�� 
Cookie ck_3   = new Cookie("Question_Times", Question_Times); 
response.addCookie(ck_3); // ȸ�� 
Cookie ck_4   = new Cookie("answer", answer); 
response.addCookie(ck_4); // �� 
Cookie ck_5   = new Cookie("Right_Answer", Right_Answer); 
response.addCookie(ck_5); // ���� 

return loginPage; 
} 

// ��� �ޱ� ---------------------------------------------------------------- 
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

������������������� 2003.10.27(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- B2C �̺�Ʈ
- ��ǰã�� �佺Ƽ�� �Ǽ��� ��� 
- ��ȭ�û�ȸ ��÷�� ��ǥ 
=================================================================================================================

- PDA ����
- DB, Stub ���� �м� 
(��)��Ʈ�� Tel. 2040-6641 / 051)305-8433 
=================================================================================================================

-- PDA login ���� - ����
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

-- ���� ã�� 
SELECT orkordepnm AS ������, emp_code,NVL(passwd,'&nbsp;') passwd 
FROM employee ep, iobasic ic 
WHERE ep.depart_code = ic.ordepcd 
  AND ic.comp_cd = '1100' 
  AND orkordepnm  LIKE '%����%' 
=================================================================================================================

������������������� 2003.10.28(ȭ) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- PDA ����
- C/S �ʰ� ���� 
=================================================================================================================

#--- HIUPTEST DB ȯ��(leader / leader00)  ====> C/S DB ȯ�� 
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

������������������� 2003.10.29(��) �۾� �������������������
---> 07:30 ~ 19:00 ==> ���� 

- �� AP ����
PDA IP�ּ�: 156.147.149.84 
AP IP: 172.16.10.7     ====> 7��: .9(9��) 
��Ʈ�� ȯ�濡�� IP: 172.16.10.10 �� �����ϰ� ���ͳ����� http://172.16.10.7/�� �����Ͽ� ���� 
c.f) ������ �� �Ǹ� ====> ���ͳ� �ɼ�-> ���� -> LAN�������� �ڵ�����, ���Ͻ� ���� üũ �� ��
G.W: 156.147.62.129   ==> 9�� 
G.W: 156.147.149.1   ==> 7�� 
=================================================================================================================

- ���Ͽ뷮 Zero
se85:/> cd array1/tas007/mobile/Wire_V52_SSL 
se85:/array1/tas007/mobile/Wire_V52_SSL> ls -l 
se85:/array1/tas007/mobile/Wire_V52_SSL> cp wirelog.txt /array10 
se85:/array1/tas007/mobile/Wire_V52_SSL> > wirelog.txt 
se85:/array1/tas007/mobile/Wire_V52_SSL> ls -l 
se85:/array1/tas007/mobile/Wire_V52_SSL> df -k  

rm ��� > file �̸�  
se85:/array1/tas007> >nohup.out 
���� size �� 0byte�� ���� ���� 
=================================================================================================================

��ġ��: 873-7203 
ȸ�� FAX:3472-8642 
=================================================================================================================
 
������������������� 2003.10.30(��) �۾� �������������������
---> 07:40 ~ 19:00 ==> ���� 

- B2C DB �м�
�� ��� ���� (���� ���� ���, ���� ���)   
�� 253�� ����(�õ� 262��, ���� 250��, ���� 62)  
 -- �̺�Ʈ ����Ʈ ==> ��  ���� �� ��ȸ   @@@@@@@@@@@@ 
 SELECT DISTINCT user_id AS ȸ��ID 
 FROM event_user_lst  
 WHERE event_id = '1000000129'     ---// �������� ��ǰã�� �̺�Ʈ 
=================================================================================================================
 
- http://156.147.149.126:8080/hiplaza/depart/DIndex.jsp        =====> ������ �븮 �ڸ�(hiwin/hiwin ) 
=================================================================================================================

- PDA ����
-- ����ȯ(int -> String) 
String date3 = String.valueOf(date);  // ����ȯ(int -> String) 
if (date3.length()==1) {   // 1�ڸ��� 2�ڸ��� ���̱� 
date2 = "0"+ date3; 
} 
---------------------------------------------------------------------------------------------------------- 

-- ����ȯ(String -> int) 
String supply1="23"; 
Integer.parseInt(supply1); 
=================================================================================================================

-- ���ϴ� ���ڿ� , �ֱ� 
import java.text.*  �Ͻð�...  
String result = NumberFormat.getInstance().format(���ϴ� ����)  
=================================================================================================================

-- ���� �߶󳻱� 
String a = "0123456789";  
a = a.substring(a.length()-8);  
out.println(a);  
���: 23456789 
=================================================================================================================

������������������� 2003.10.31(��) �۾� �������������������
---> 07:30 ~ 19:00 ==> ���� 

- PDA ����
/classes/stock/StockWDbWrap.java���� 
- v_rdc_stock --> xinvk_stock_v@hiup_erpprod_link ���̺� ����   
public ResultSet searchStock( String comp_cd, String branch_code, String model_code, String fr_mlct, String to_mlct) {     

- // 03_10.31 ���� ======================================================= 
.append("     ( select vrs.ORGANIZATION_CODE, wh.ware_name, vrs.item_code, vrs.holded_quantity, ")   // vrs.unit_quantity --> deli 
.append("        vrs.available_quantity, ") //--wait 
.append("        vrs.OWS_QUANTITY, ") //--ows 
.append("        vrs.intransit_quantity, ") //--hold 
.append("        vrs.pre_quantity ") //--ord 
.append("        from xinvk_stock_v@hiup_erpprod_link vrs, warehouse wh ") // ��ǰ  ###### 
.append("        where vrs.ORGANIZATION_CODE = wh.ware_code ") 
.append(" and vrs.item_code = ? ") 
.append("          and vrs.ORGANIZATION_CODE between '").append(fr_mlct).append("' and '").append(to_mlct) 
.append("' union ") 
.append("        select vrs.ORGANIZATION_CODE, wh.ware_name, vrs.item_code, vrs.unit_quantity, ")   // vrs.unit_quantity --> deli 
.append("        vrs.available_quantity, ") //--wait 
.append("        vrs.OWS_QUANTITY, ") //--ows 
.append("        vrs.intransit_quantity, ") //--hold 
.append("        vrs.ordered_quantity ") //--ord 
.append("        from xinvk_set_model_stock_v@hiup_erpprod_link vrs, warehouse wh ") // ��Ʈ ��  ###### 
.append("        where vrs.ORGANIZATION_CODE = wh.ware_code ") 
.append(" and vrs.item_code = ? ") 
.append("          and vrs.ORGANIZATION_CODE between '").append(fr_mlct).append("' and '").append(to_mlct) 
} 
=================================================================================================================

- ��ǰ��ġ ���� ����, ĳ�� ���� ���� 
/hiplaza/store/Sale_register_item.jsp����  
as_it_atp_sign -> as_it_setup_atp_sign�� ���� 
=================================================================================================================

- /hiplaza/store/Sale_register_itemhold.jsp����  
if (as_it_delivery_type.equals("1")) {	 // ��������� ��Ź����϶� 
	session.setAttribute("session_as_it_atp_sign[" + itemCnt + "]", "Y"); // ĳ�� ����(atp_sign) 
	session.setAttribute("session_as_it_setup_atp_sign[" + itemCnt + "]", request.getParameter("as_it_setup_atp_sign")); 
	// ��ǰ��ġ ���� 
 } else { 
	session.setAttribute("session_as_it_atp_sign[" + itemCnt + "]", "N"); // ĳ�� ����(atp_sign) 
	session.setAttribute("session_as_it_setup_atp_sign[" + itemCnt + "]", request.getParameter("as_it_setup_atp_sign")); 
	// ��ǰ��ġ ���� 
} 
=================================================================================================================

- /hiplaza/store/Sale_register.jsp����  
String[] as_it_setup_tp = new String[int_itemcnt + 1]; // ��ǰ��ġ ���� 
String[] as_it_atp_sign = new String[int_itemcnt + 1]; //  ĳ�� ����(atp_sign)   

long result = m_sale_insert_c.t_sale_save_i(...as_it_setup_tp, as_it_atp_sign,...... 
) 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������