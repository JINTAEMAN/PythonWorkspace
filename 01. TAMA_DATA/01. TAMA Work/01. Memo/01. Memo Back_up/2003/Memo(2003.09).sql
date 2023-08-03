

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2003.09.01(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 21:30 

- PDA 실서버 소스 보기  
165.243.115.18(tas007 / header02 )  
se85:/array1/tas007> cd / 
se85:/> cd usr/local/tomcat/webapps/mobile 
se85:/usr/local/tomcat/webapps/mobile> ls 
Debug/    WEB-INF/  depart/   log/      store/ 
백화점(depart/), 지점(store/) 
se85:/usr/local/tomcat/webapps/mobile> cd store 
로그 분석(log/) 
se85:/usr/local/tomcat/webapps/mobile> cd log 
===============================================================================================================

- PDA login 
- 실 서버(지점용): PDA 로그인 아이디 
id/pwd  - 50273 / 5555  (cf: 50273 / 5133) 
===============================================================================================================

- 실 서버(백화점용): PDA 로그인 아이디 
id/pwd  - 50299 / 20030807 / 1152940 / 12345678 (cf: 50299 / 1603) 
===============================================================================================================

- PDA 장비점검 
i-Kit에 문제 발생 - 이상한 진동음 들린 후 소리 없어짐 
S/N: 4G27DW33970MS --> 백화점용(iPAQ) 
S/N: HV11D01K005768 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------- 

- i-Kit에 문제 발생 - 화면이 자동으로 지워짐 
S/N: 4G26DW33X97L --> 백화점용(iPAQ) 
S/N: HV11D00K006873 --> (CDMA2000 i-Kit PLUS) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.02(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 

- PDA 분석
* 상품조회(백화점) 수정  
ModelSearch.cpp   DModel.widl DModel_search_combo.jsp DModelSearchCombo.java(/model)  
 EVC     -->     Wire서버     -->    Tomcat서버    -->    Tomcat서버   
- ModelSearch.cpp 에서  
case WM_USER_REQUEST:{ 
	requestToWireServer(hDlg, &wire,"DModel.List", bin, TEXT("리스트 여는 중..."), 0); 
	break;     
} 
===============================================================================================================

 DModel.widl 에서(WireServer: C:\Wire_V52_SSL\scripts)  
<SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search_combo.jsp" 
    COMMENT="상품정보 조회"/>     
     
  <BINDING NAME="BI_List" TYPE="INPUT"> 
    <VARIABLE NAME="grand"  FORMNAME="grand"  COMMENT="상품군"/> 
    <VARIABLE NAME="jepm"   FORMNAME="jepm"   COMMENT="상품"/> 
    <VARIABLE NAME="gijung" FORMNAME="gijung" COMMENT="기종"/> 
    <VARIABLE NAME="model"  FORMNAME="model"  COMMENT="모델명"/> 
  </BINDING> 

  <BINDING NAME="BO_List" TYPE="OUTPUT"> 
    <VARIABLE NAME="cgrand"   TYPE="STRING[]"  COMMENT="">doc.select(name='grand').option[].text</VARIABLE> 
    <VARIABLE NAME="cgrand_code"  TYPE="STRING[]"  COMMENT="">doc.select(name='grand').option[].value</VARIABLE> 
    <VARIABLE NAME="cjepm"   TYPE="STRING[]"  COMMENT="">doc.select(name='jepm').option[].text</VARIABLE> 
    <VARIABLE NAME="cjepm_code"   TYPE="STRING[]"  COMMENT="">doc.select(name='jepm').option[].value</VARIABLE> 
    <VARIABLE NAME="cgijung"   TYPE="STRING[]"  COMMENT="">doc.select(name='gijung').option[].text</VARIABLE> 
    <VARIABLE NAME="cgijung_code" TYPE="STRING[]"  COMMENT="">doc.select(name='gijung').option[].value</VARIABLE> 
    <VARIABLE NAME="cmodel"   TYPE="STRING[]"  COMMENT="">doc.select(name='model').option[].text</VARIABLE> 
    <VARIABLE NAME="cmodel_code"  TYPE="STRING[]"  COMMENT="">doc.select(name='model').option[].value</VARIABLE>> 
    <VARIABLE NAME="gooddata"     TYPE="STRING[][]" NULLOK="TRUE" COMMENT="">doc.table[1].tr[1-end].td[].text</VARIABLE> 
    <VARIABLE NAME="gooddata2"    TYPE="STRING[][]" NULLOK="TRUE" COMMENT="">doc.table[2].tr[1-end].td[].text</VARIABLE> 
  </BINDING> 
===============================================================================================================

DModel_search_combo.jsp 에서(C:\jakarta-tomcat-3.2.1\webapps\hiplaza\depart)  
<tr> 
<td>상품군</td> 
<td> 
<select name="grand" onChange="movedept(this.options[this.selectedIndex].value)"> 
<option value="00">--------선택--------</option> 
<% 
ResultSet rs1 =  s_DModelSearchCombo.DSearchGrand(status_code); 

String Chk = null; 
String grand_code = null; 
String grand_name = null; 

while (rs1.next()) { 
grand_code = rs1.getString(1); 
grand_name = rs1.getString(2); 

if (grand_code.compareTo(grand_view)==0) { 
Chk = "selected"; 
} else { 
Chk = ""; 
} 
%> 
<option value="<%=grand_code%>" <%=Chk%>><%=grand_name%></option> 
<% 
}//상품군 
s_DModelSearchCombo.closePsmt1(); 
%> 
</select> 
</td> 
</tr> 
===============================================================================================================

DModelSearchCombo.java 에서(C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\model) 

public  ResultSet DSearchGrand( String status_code) { 
try{     
String query = "SELECT grand_code,grand_name FROM grand WHERE status = ? ORDER BY grand_name";  
             
psmt1 =  con.prepareStatement(query); 
psmt1.clearParameters();  
psmt1.setString(1,status_code); 

rs1 = psmt1.executeQuery();            

} catch(SQLException e) { 
Debug.println(e.getMessage()); 
if(rs1 != null) try { rs1.close(); } catch(Exception ex) {Debug.println(ex.getMessage());} 
if(psmt1 != null) try {psmt1.close();} catch(Exception ex) {Debug.println(ex.getMessage());} 
if(con != null) { conMgr.conError("mobile", con); con = null; } 
closeConnection(); 
} catch(Exception e){ 
Debug.println(e.getMessage()); 
if(rs1 != null) try { rs1.close(); } catch(Exception ex) {Debug.println(ex.getMessage());} 
if(psmt1 != null) try {psmt1.close();} catch(Exception ex) {Debug.println(ex.getMessage());} 
if(con != null) { conMgr.conError("mobile", con); con = null; } 
closeConnection(); 
}      
return rs1; 
}  
===============================================================================================================
 
- [상품조회 Query(백화점) - PDA]  ==> SE1BDB @@@ 
-- 상품군(상품군 Combo에 Display) 
SELECT grand_code,grand_name FROM grand WHERE status = 'Y' ORDER BY grand_name 
-- 상품(상품군에서 AV 선택 했을 때) 
SELECT jepm_code,jepm_name FROM jepm WHERE status = 'Y' AND grand_code = '01' ORDER BY jepm_code 
-- 기종(상품에서 TV 선택 했을 때) 
SELECT gijung_code,gijung_name FROM gijung 
WHERE status = 'Y' AND grand_code = '01' AND jepm_code = '01' ORDER BY jepm_code 
-- 모델(기종에서 LCD TV 선택 했을 때) 
SELECT model_code  FROM model  
WHERE status(+) = 'Y' AND grand_code =  '01' AND jepm_code = '01'  AND gijung_code = '95' 
ORDER BY model_code 
--------------------------------------------------------------------------------------------------------------------------

-- 내용(모델에서 RN-15LA31 선택 했을 때) 
SELECT model_code, NVL(pan1,0), NVL(pan2,0),  NVL(mae2,0), regi_t0_flag,  regi_t1_flag, regi_t2_flag, regi_t3_flag, regi_t4_flag, 
    regi_t5_flag, regi_t6_flag, regist_no, shap_type, maker_code, maker_name, set_flag, set_mem_flag,  type_desc      
FROM ( SELECT mk.maker_code maker_code,mk.maker_name maker_name, md.model_code model_code, 
    NVL(bp.sal_price1,mp.sal_price1) pan1, NVL(bp.sal_price1,mp.sal_price2) pan2, NVL(Ls.stk_price2,0) mae2, 
    NVL(md.regi_t0_flag,'N') regi_t0_flag, NVL(md.regi_t1_flag,'N') regi_t1_flag, NVL(md.regi_t2_flag,'N') regi_t2_flag, 
    NVL(md.regi_t3_flag,'N') regi_t3_flag, md.regi_t4_flag regi_t4_flag, md.regi_t5_flag regi_t5_flag, md.regi_t6_flag regi_t6_flag, 
    md.regist_no regist_no, md.shap_type shap_type, NVL(md.set_flag,'&nbsp;') set_flag, NVL(md.set_mem_flag,'&nbsp;') set_mem_flag, 
    sy.type_desc type_desc  
    FROM (SELECT maker_code,model_code,  regi_t0_flag,regi_t1_flag,regi_t2_flag,regi_t3_flag, regi_t4_flag,regi_t5_flag,regi_t6_flag, 
    regist_no,status,shap_type, set_flag,set_mem_flag FROM model WHERE model_code = 'RN-15LA31') md, model_price mp, 
      h_model hm, branch_price bp, ( SELECT stk_price2,model_code  FROM stk_price_unit 
  WHERE stk_month = TO_CHAR(SYSDATE,'YYYYMM')    
AND model_code = 'RN-15LA31'                    
AND comp_cd = '') ls,maker mk,shap_type sy 
   WHERE md.model_code = 'RN-15LA31'               
AND bp.branch_code(+) ='' 
AND md.model_code = mp.model_code(+)               
AND md.model_code = hm.model_code(+) 
AND md.model_code = bp.model_code(+)               
AND bp.start_date(+) >= TO_CHAR(SYSDATE,'YYYYMMDD')               
AND nvl(bp.end_date(+), '99991231') <= TO_CHAR(SYSDATE,'YYYYMMDD') 
AND bp.status(+) = 'Y'               
AND mp.status(+) = 'Y'               
AND md.model_code = ls.model_code(+)   
AND mk.maker_code = md.maker_code   
AND sy.shap_type = md.shap_type) 

---- Table: model, model_price, h_model, branch_price, stk_price_unit, maker, shap_type 
SELECT * FROM model 
--------------------------------------------------------------------------------------------------------------------------
-- 출하가 
SELECT ship_price  
FROM ( SELECT NVL(mp.ship_price,0) ship_price  
    FROM model md,model_price mp,h_model hm,branch_price bp, 
 ( SELECT stk_price2,model_code FROM stk_price_unit   
   WHERE stk_month = TO_CHAR(SYSDATE,'YYYYMM')   
AND model_code = 'RN-15LA31'                          
AND comp_cd = '' ) Ls              
   WHERE md.model_code = 'RN-15LA31'                    
AND bp.branch_code(+) = ''                    
AND md.model_code = mp.model_code(+)                    
AND md.model_code = hm.model_code(+)                    
AND md.model_code = bp.model_code(+)                    
AND bp.start_date(+)>= TO_CHAR(SYSDATE,'YYYYMMDD')                    
AND nvl(bp.end_date(+), '99991231') <= TO_CHAR(SYSDATE,'YYYYMMDD')                    
AND bp.status(+) = 'Y'                    
AND mp.status(+) = 'Y'                  
AND MD.MODEL_CODE = LS.MODEL_CODE(+)) 
-- 내용(상세 내용) 
SELECT m.name name_o, nvl(decode(substr(d.speclst,rownum,1),'Y', substr(d.speclst,rownum,1),'N',           
     substr(d.speclst,rownum,1),   sf_get_detail_func(g.minor_code,ltrim(rtrim(to_char(rownum,'00'))),  substr(d.speclst,rownum,1))),'N')  
FROM h_model_func m, h_gijung g , (select 'a' a, speclst  from h_model where model_code = 'RN-15LA31') d 
WHERE g.minor_code = m.minor_code(+)    
AND g.grand_code = '01'  
AND g.jepm_code = '01'   
AND g.gijung_code = '95'   
AND d.a = 'a'   
AND g.status = 'Y'   
ORDER BY m.spec_no    
===============================================================================================================
 
- 상품상세 보기(실 서버)
http://www.hiplaza.co.kr/shop/main/prdmodeldetail  
/com//hiplaza/framework/MasterController.java에서  
 //모델 상세보기 
commands.put("/prdmodeldetail", new PrdStoreModelDisplayCmd("$/www/product/PrdStoreModelDetail.jsp"
,'"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp")); 

/src/com/hiplaza/cmd/product/PrdStoreModelDisplayCmd.java 
/db/PrdStoreModelDb.java 
resultModelArray   = modelDb.selectModelCompareAll(pPrdDummyEntity); //모델 상세 
resultExpertArray  = modelDb.selectExpertModel(pPrdDummyEntity);      //전문가 추천 모델  
/db/PrdStoreModelSpecDb.java 
resultSpecArray    = specDb.selectModelSpecAll(pPrdDummyEntity);     //스펙  
/db/PrdStoreModelMeritDb.java 
resultMeritArray   = meritDb.selectModelMeritAll(pPrdDummyEntity);   //특장점       
/db/PrdModelUseNoteDb.java 
resultNote         = noteDb.selectModelUseNoteAll(pPrdDummyEntity);  //상품후기  
===============================================================================================================

jcc PrdStoreModelDb.java 
jcc PrdStoreModelSpecDb.java 
jcc PrdStoreModelMeritDb.java  
[Right outer join]  
WHERE md.model_code = 'RN-15LA31'                    
AND bp.branch_code(+) = ''              
AND md.model_code = mp.model_code(+) 
-------------------------------------------------------------------------------------------------------------------------------- 

outer join: 두 테이블에서 지정된 쪽인 LEFT 또는 RIGHT 쪽의 모든 결과를 보여준 후  
반대쪽에 대해는 매칭값이 없어도 보여주는 JOIN을 의미  
외부조인은 왼쪽 외부 조인, 오른쪽 외부 조인, 완전 외부 조인 세가지가 있다. 
LEFT OUTER JOIN( *= ),  RIGHT OUTER JOIN( =* ),  FULL OUTER JOIN 
===============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2003.09.03(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 

 [상품조회 Query - B2C]  ==> HIBCPDB  @@@@ 
-- 제품 상세 설명(RN-15LA31 선택 했을 때) 
SELECT a.model_code, REPLACE(a.model_name , '<br>' , '') model_name, DECODE(f.period_price,'',    
      DECODE(a.price_flag,'A', a.admin_price, a.store_price), period_price) currentprice,   
      ROUND( DECODE(f.period_price,'', DECODE(a.price_flag,'A', a.admin_price, a.store_price), period_price)* 
      NVL(b.mileage_rate,0)/100, -2) AS mileage,  
      c.maker_name, b.psize ,b.weight,b.color,b.capacity,b.power_ratio,b.power_consume,    
      NVL(b.img_name_bg,'noImg_bg.gif') img_name_bg, NVL(b.img_name_md, 'noImg_md.gif') img_name_md,     
      NVL(b.img_name_sm,'noImg_sm.gif') img_name_sm, NVL(b.img_name_st, 'noImg_st.gif') img_name_st, b.img_3d  
FROM store_model a, model_if b, maker c, store_model_price f    
WHERE a.model_code = b.model_code 
AND b.maker_code = c.maker_code(+) 
AND f.model_code (+) = a.model_code 
AND f.store_seq  (+) = a.store_seq     
AND (TO_CHAR(SYSDATE , 'YYYYMMDD') BETWEEN f.period_from_date(+)                 
AND f.period_to_date(+))                        
AND a.store_seq  = 'S100' 
AND a.model_code = 'RN-15LA31' 

---- Table: store_model, model_if, maker, store_model_price 
SELECT * FROM store_modelSELECT * FROM model 
---------------------------------------------------------------------------------------------------------------------------

-- 모델 스펙(제품의 특장점) 
SELECT model_code, merit_code, replace(merit_name, chr(13),'<br>') merit_name 
FROM model_merit 
WHERE model_code = 'RN-15LA31' 
OR model_code = '' 
OR model_code = ''  
ORDER BY model_code, to_number(merit_code) 
---------------------------------------------------------------------------------------------------------------------------

-- 모델 스펙(제품의 기능) 
SELECT model_code, to_number(spec_code) num_spec_code,  spec_name, spec_value_name, trim(spec_value_desc) spec_value_desc 
FROM model_spec_value 
WHERE  model_code = 'RN-15LA31' 
ORDER BY model_code, num_spec_code, spec_name  
===============================================================================================================
  
- PDA 매출 변경
- 출고시점을 매출로 정의(기존의 매출은 주문(예약)) 
- PDA에서 변경해야 할 부분 
---------------------------------------------------------------------------------------------------------------------------

- [매출조회 결과 - 지점용]  SALE_HEAD: 예약(이전에는 예약도 매출로 인정)   ----> (Sale_search_head.jsp -> SaleSearchDbWrap.java) 
SELECT nvl(SH.SALE_DATE,'&nbsp;'), nvl(SH.SALE_NO,0),  nvl(SH.CUST_NAME,'&nbsp;'),  
		nvl(SH.CUST_DDD  '-'  SH.CUST_TEL,'&nbsp;'), nvl(SH.TOT_VOL,0),nvl(SH.SALE_TOT_PRICE,0)  
FROM SALE_HEAD SH, BRANCH BR   
WHERE SH.BRANCH_CODE = BR.BRANCH_CODE   
	AND SH.SALE_DATE BETWEEN '20020101' AND '20020501'  
	AND SH.BRANCH_CODE = 'A02'  
	AND nvl(SH.CUST_NAME,'%') like ''  '%'   
---------------------------------------------------------------------------------------------------------------------------

- [매출현황조회 - 백화용]  l_ordercontents: 예약(이전에는 예약도 매출로 인정)   ----> (DSale_list.jsp -> DSale.java) 
SELECT DECODE(so.plus_minus,'1',DECODE(lo.order_status, 'B','요청','A', '주문', 'D', '매출', 'G','주문취소','F','매출'),   
    '2', DECODE(so.out_gb, '1', '물류반품','매장반품'))status,  lo.order_date, NVL(NVL(so.cust_name, so.deliv_name), '&nbsp;') cust_name,    
    lo.model_code,  lo.order_vol,  lo.out_store,  DECODE(lo.ship_flag, '0','일반','1','선출','2','미출','5','무재고') ship_flag 
FROM l_ordercontents lo, stk_out so   
WHERE lo.order_no  = so.r_sheet_no         
AND lo.order_seq = so.r_sub_no     
AND so.sale_date >= to_char(add_months('20030501',-2),'YYYYMMDD')     
AND lo.order_date BETWEEN '20030501' AND '20030903'     
AND so.branch_code = ''     
AND so.isis_dept_code = ''     
AND nvl(NVL(so.cust_name, so.deliv_name),' ') LIKE ''   
===============================================================================================================
  
- [문자 찾기 - Unix용] 
ps -ef  grep 문자 `find . -name "*.java" -print` > file명  
se85:/array1/tas007> cd / 
se85:/> cd usr/local/tomcat/webapps/mobile/WEB-INF/src 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep SALE_HEAD `find . -name "*.java" -print` > 
search_TB_SALE_HEAD.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi search_TB_SALE_HEAD.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep SALE_HEAD `find . -name "*.java" -print` >
search_TB_l_ordercontents.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi search_TB_l_ordercontents.txt 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.09.04(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:10 ==> 흐림(윗몸 -10개) 

- Database 링크  
select *  from user_db_links --// DB 링크 확인 
select *  from user_db_links WHERE host='HIBCPDB'  
select *  from user_indexes --// cf.) DB index 확인 
select *  from user_ind_columns --// cf.) 해당인덱스에 묶인 컬럼명을 볼때 
   
CREATE DATABASE LINK HIBCPDB CONNECT TO hipdb IDENTIFIED --// DB 링크 생성 
BY hipdb01 USING 'HIBCPDB' 
-------------------------------------------------------------------------------------------------------------
CREATE DATABASE LINK 링크이름 CONNECT TO 링크되는 ORACLE의 로긴ID IDENTIFIED  
BY 링크되는ORACLE의 로긴암호 USING '데이터베이스 이름' 

DROP  DATABASE LINK HIBCPDB --// DB 링크 삭제 
-------------------------------------------------------------------------------------------------------------

SE1BDB DB에서 h_로 시작하는 테이블 HIBCPDB DB 테이블로 대치 
\\Sungtae\backup\하이프라자B2C\2.계획단계\2.1분석단계\2.1.4 Table정의서 
--------------------------------------------------------------------------------------------------------------
  
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep h_model `find . -name "*.java" -print` > Search_Word_Test.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi Search_Word_Test.txt  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.05(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 흐림(윗몸 -10개) 

- PDA DB수정
/WEB-INF/classes/model/ 
DModelSearch.java DModelSearchCombo.java 
ModelSearch.java ModelSearchCombo.java 
--------------------------------------------------------------------------------------------------------------
-- 변경해야 할 Table(예전 Table) 
h_model h_model_func h_detail_func h_gijung 
--------------------------------------------------------------------------------------------------------------

- 14:20 ~16:00 AP 장비에 보안 설정(인트 정보) 
지점용 PDA 장비 보안 설정 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.06(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 14:00 

- PDA DB수정
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.08(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 19:00 ==> 흐린 후 맑음(윗몸 - 20개) 

- PDA DB수정
/WEB-INF/classes/model/ 
DModelSearch.java DModelSearchCombo.java 
ModelSearch.java ModelSearchCombo.java 
===============================================================================================================

- 우편번호 조회(PDA - SE1BDB) 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A, post_address B  
WHERE A.zip_code = b.zip_code and b.flag='Y'  
and street like '%신림본%'    
order by a.zip_code 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.09(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 19:00 흐린 후 맑음 

- PDA DB수정
- 모델명 조회(==> /hiplaza/store/Model_search.jsp) 
SELECT count(*)    
FROM ( SELECT md.model_code model_code, NVL(bp.sal_price1,mp.sal_price1) pan1, NVL(bp.sal_price1,mp.sal_price2) pan2,               
                 NVL(Ls.stk_price2,0) mae2, NVL(hm.character1,md.character1) tuk1, NVL(hm.character2,md.character1) tuk2,                
 NVL(hm.character3,md.character1) tuk3, NVL(hm.character4,md.character1) tuk4, md.shap_type tai             
    FROM model md, model_price mp, model_if@DL_B2C_PROD hm, branch_price bp,                
              (SELECT stk_price2,model_code  FROM stk_price_unit  WHERE stk_month = TO_CHAR(SYSDATE,'YYYYMM')                         
        AND model_code like '%RN-15LA31'  AND comp_cd = '1100') ls             
    WHERE md.model_code like 'RN-15LA31'           
AND bp.branch_code(+) = 'B34' 
AND md.model_code = mp.model_code(+)                 
AND md.model_code = hm.model_code(+)                 
AND md.model_code = bp.model_code(+)                 
AND bp.start_date(+) >= TO_CHAR(SYSDATE,'YYYYMMDD')                
AND nvl(bp.end_date(+), '99991231') <=TO_CHAR(SYSDATE,'YYYYMMDD')                 
AND bp.status(+) = 'Y'                
AND mp.status(+) = 'Y'                
AND md.model_code = ls.model_code(+) ) 
------------------------------------------------------------------------------------------------------ 

SELECT count(*) 
FROM ( SELECT md.model_code model_code,  NVL(bp.sal_price1,mp.sal_price1) pan1, NVL(bp.sal_price1,mp.sal_price2) pan2,       
 NVL(Ls.stk_price2,0) mae2, NVL(hm.character1,md.character1) tuk1, NVL(hm.character2,md.character1) tuk2,                
 NVL(hm.character3,md.character1) tuk3, NVL(hm.character4,md.character1) tuk4, md.shap_type tai             
     FROM model md, model_price mp, model_if@DL_B2C_PROD hm, branch_price bp,  
      (SELECT stk_price2,model_code FROM stk_price_unit WHERE stk_month = TO_CHAR(SYSDATE,'YYYYMM')                         
         AND model_code like 'RN%' AND comp_cd = '1100') ls             
     WHERE md.model_code like 'RN%'                
AND bp.branch_code(+) = 'B34'                
AND md.model_code = mp.model_code(+)                 
AND md.model_code = hm.model_code(+)                 
AND md.model_code = bp.model_code(+)                 
AND bp.start_date(+) >= TO_CHAR(SYSDATE,'YYYYMMDD')                 
AND nvl(bp.end_date(+), '99991231') <=TO_CHAR(SYSDATE,'YYYYMMDD')                 
AND bp.status(+) = 'Y'                
AND mp.status(+) = 'Y'                
AND md.model_code = ls.model_code(+))  
------------------------------------------------------------------------------------------------------
 hm.good_point1 -> hm.character1  hm.good_point2 -> hm.character2 
 hm.good_point3 -> hm.character3  hm.good_point4 -> hm.character4 
 h_model -> model_if@DL_B2C_PROD 
 ===============================================================================================================
  
- 내용 
 SELECT replace(merit_name, chr(13),'<br>') merit_name  
 FROM model_merit@DL_B2C_PROD  
 WHERE model_code = 'RN-15LA31' 
 ORDER BY model_code, to_number(merit_code) 
===============================================================================================================

select value from v$parameter where name = 'compatible'  
C:\oracle\admin\TAMAora\pfile 
 init<SID>.ora 로 파일명이 생성된다... 
 initTAMAora.ora 
 compatible = 8.1.0 
===============================================================================================================

- [상품 검색결과 Query - B2C]  ==> HIBCPDB  @@@ 
-- 제품 상세 설명(RN-15LA31 선택 했을 때) 
SELECT a.model_code, REPLACE(a.model_name , '<br>' , '') model_name, DECODE(f.period_price,'',    
      DECODE(a.price_flag,'A', a.admin_price, a.store_price), period_price) currentprice,   
      ROUND( DECODE(f.period_price,'', DECODE(a.price_flag,'A', a.admin_price, a.store_price), period_price)* 
      NVL(b.mileage_rate,0)/100, -2) AS mileage,  
      c.maker_name, b.psize ,b.weight,b.color,b.capacity,b.power_ratio,b.power_consume,    
      NVL(b.img_name_bg,'noImg_bg.gif') img_name_bg, NVL(b.img_name_md, 'noImg_md.gif') img_name_md,     
      NVL(b.img_name_sm,'noImg_sm.gif') img_name_sm, NVL(b.img_name_st, 'noImg_st.gif') img_name_st, b.img_3d  
FROM store_model a, model_if b, maker c, store_model_price f    
WHERE a.model_code = b.model_code 
AND b.maker_code = c.maker_code(+) 
AND f.model_code (+) = a.model_code 
AND f.store_seq  (+) = a.store_seq     
AND (TO_CHAR(SYSDATE , 'YYYYMMDD') BETWEEN f.period_from_date(+)                 
AND f.period_to_date(+))                        
AND a.store_seq  = 'S100' 
AND a.model_code = 'RN-15LA31' 

---- Table: store_model, model_if, maker, store_model_price 
SELECT * FROM store_modelSELECT * FROM model 
-----------------------------------------------------------------------------------------------------------------------------

http://www.hiplaza.co.kr/shop/main/prdsearch  
/com//hiplaza/framework/MasterController.java에서 
-----------------------------------------------------------------------------------------------------------------------------

- 모델 상세보기 
commands.put("/prdsearch", new PrdStoreModelCmd("$/www/product/PrdStoreModelList.jsp"
,"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp")); 
-----------------------------------------------------------------------------------------------------------------------------

/src/com/hiplaza/cmd/product/PrdStoreModelCmd.java 
resultEntityArray   = db.selectModelAll(pPrdDummyEntity);  //  
totalCount  = db.selectModelCount(pPrdDummyEntity); // 
/db/PrdStoreModelDb.java 
resultSpecArray    = specDb.selectModelSpecAll(pPrdDummyEntity);     //스펙  
/db/PrdStoreModelMeritDb.java 
resultMeritArray   = meritDb.selectModelMeritAll(pPrdDummyEntity);   //특장점       
/db/PrdModelUseNoteDb.java 
resultNote         = noteDb.selectModelUseNoteAll(pPrdDummyEntity);  //상품후기  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.15(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:10 ~ 21:30 ==> 맑음 

- PDA DB수정
[상품 검색결과 list Query - B2C]  ==> HIBCPDB  @@@
===============================================================================================================

-- 상품 검색결과 list('RN-15'를 조회 했을 때) 
==>/www/product/PrdStoreModelList.jsp ---> /src/com/hiplaza/cmd/product/PrdStoreModelCmd.java   
---> /db/PrdStoreModelDb.java) 
// resultEntityArray   = db.selectModelAll(pPrdDummyEntity); 
===============================================================================================================

SELECT a.store_seq, a.model_code, a.model_name, f.maker_name,  
	     decode(e.period_price,'', decode(a.price_flag,'A',a.admin_price,a.store_price), period_price) currentprice,     
	     nvl(b.img_name_bg , 'noImg_bg.gif') img_name_bg, nvl(b.img_name_sm, 'noImg_sm.gif') img_name_sm  
FROM store_model a, model_if b, prod c, prod_type d, store_model_price e, maker f                      
WHERE a.model_code  = b.model_code                                             
AND   a.model_code  = e.model_code(+)                                         
AND   a.store_seq   = e.store_seq(+)                                          
AND   b.maker_code  = f.maker_code(+)                                          
AND   c.prod_seq    = d.prod_seq                                             
AND   a.store_seq   = c.store_seq                                            
AND   c.store_seq   = d.store_seq                                             
AND   a.prod_type_seq = d.prod_type_seq                                        
AND   c.use_yn = 'Y'                                                           
AND   d.use_yn = 'Y'                                                          
AND   a.use_yn != 'N'                                                          
AND   a.store_seq = ?                                                          
AND  (To_char(sysdate, 'YYYYMMDD') BETWEEN e.period_from_date(+) 
AND  e.period_to_date(+))                                     
AND   b.set_flag  b.set_mem_flag  != 'NY'                   
AND   e.use_yn(+) = 'Y'                                       
AND   upper(a.model_name) like upper(?)           

UNION                                                                          
SELECT a.store_seq, a.model_code, a.model_name, f.maker_name,                                                 
     decode(e.period_price,'', decode(a.price_flag,'A', a.admin_price, a.store_price), period_price) currentprice,                                    
     nvl(b.img_name_bg , 'noImg_bg.gif') img_name_bg, nvl(b.img_name_sm, 'noImg_sm.gif') img_name_sm  
FROM    store_model a , model_if b, prod c, prod_type d, store_model_price e, maker f                                                               
WHERE  a.model_code  = b.model_code 
AND   a.model_code  = e.model_code(+)                                         
AND   a.store_seq   = e.store_seq(+)                                          
AND   b.maker_code  = f.maker_code(+)                                          
AND   c.prod_seq    = d.prod_seq 
AND   a.store_seq   = c.store_seq                                            
AND   c.store_seq   = d.store_seq                                              
AND   a.prod_type_seq = d.prod_type_seq                                        
AND   c.use_yn = 'Y'                                                           
AND   d.use_yn = 'Y'                                                          
AND   a.use_yn != 'N'                                                          
AND   a.store_seq = ?      
AND  (To_char(sysdate, 'YYYYMMDD') BETWEEN e.period_from_date(+) 
AND  e.period_to_date(+))                                     
AND   b.set_flag  b.set_mem_flag  != 'NY'                   
AND   e.use_yn(+) = 'Y'                                       
AND   upper(a.model_code) like upper(?) 
                                       
UNION                                                                        
SELECT a.store_seq, a.model_code, a.model_name, f.maker_name, 
     decode(e.period_price,'', decode(a.price_flag,'A', a.admin_price, a.store_price), period_price) currentprice,                                  
     nvl(b.img_name_bg, 'noImg_bg.gif') img_name_bg, nvl(b.img_name_sm, 'noImg_sm.gif') img_name_sm          
FROM    store_model a, model_if b, prod c, prod_type d, store_model_price e, maker f                                                               
WHERE  a.model_code  = b.model_code                                             
AND   a.model_code  = e.model_code(+)                                         
AND   a.store_seq   = e.store_seq(+)                                          
AND   b.maker_code  = f.maker_code(+)                                          
AND   c.prod_seq    = d.prod_seq                                             
AND   a.store_seq   = c.store_seq                                              
AND   c.store_seq   = d.store_seq                                              
AND   a.prod_type_seq = d.prod_type_seq                                        
AND   c.use_yn = 'Y'                                                           
AND   d.use_yn = 'Y'                                                       
AND   a.use_yn != 'N'                                                          
AND   a.store_seq = ?                                                          
AND  (To_char(sysdate, 'YYYYMMDD') BETWEEN e.period_from_date(+) 
AND  e.period_to_date(+))                
AND   e.use_yn(+) = 'Y'                                               
AND   b.set_flag  b.set_mem_flag  != 'NY'                         
AND   upper(c.prod_name)   like  upper(?)  

UNION                                                                          
SELECT a.store_seq, a.model_code, a.model_name, f.maker_name,                                                
     decode(e.period_price,'', decode(a.price_flag,'A' ,a.admin_price, a.store_price), period_price) currentprice, 
     nvl(b.img_name_bg, 'noImg_bg.gif') img_name_bg, nvl(b.img_name_sm, 'noImg_sm.gif') img_name_sm           
FROM    store_model a, model_if b, prod c, prod_type d, store_model_price e, maker f                                                               
WHERE  a.model_code  = b.model_code                                             
AND   a.model_code  = e.model_code(+)                                         
AND   a.store_seq   = e.store_seq(+)                                          
AND   b.maker_code  = f.maker_code(+)                                          
AND   c.prod_seq    = d.prod_seq                                             
AND   a.store_seq   = c.store_seq                                            
AND   c.store_seq   = d.store_seq                                              
AND   a.prod_type_seq = d.prod_type_seq                                        
AND   c.use_yn = 'Y'                                                           
AND   d.use_yn = 'Y'                                                          
AND   a.use_yn != 'N'                                                          
AND   a.store_seq = ?                                                          
AND  (To_char(sysdate, 'YYYYMMDD') BETWEEN e.period_from_date(+) 
AND  e.period_to_date(+))                
AND   e.use_yn(+) = 'Y'                                              
AND   b.set_flag  b.set_mem_flag  != 'NY'                             
AND   upper(d.prod_type_name) like  upper(?)    
===============================================================================================================

- 모델명 조회: 검색된 상품이 2개 이상 일때(Like 검색)  ==> HIBCPDB  @@@
===> /hiplaza/store/Model_search.jsp ---> /classes/model/ModelSearch.java) 
// rs2 =  s_ModelSearch.SearchCountOnelike(model_code,comp_cd,branch_code,max_date,status_code); 

SELECT ltrim(NVL(model_code,'&nbsp;')) model_code, ltrim(NVL(pan1,0)), ltrim(NVL(pan2,0)), ltrim(NVL(mae2,0)), ltrim(NVL(tuk1,'&nbsp;')),  
     ltrim(NVL(tuk2,'&nbsp;')),ltrim(NVL(tuk3,'&nbsp;')),ltrim(NVL(tuk4,'&nbsp;')),ltrim(tai), ltrim(NVL(lock_price,0))      
FROM (SELECT md.model_code model_code, NVL(bp.sal_price1,mp.sal_price1) pan1, NVL(bp.sal_price1,mp.sal_price2) pan2,      
NVL(Ls.stk_price2,0) mae2, NVL(md.lock_price,0) lock_price, NVL(hm.character1,md.character1) tuk1, NVL(hm.character2,md.character2) tuk2, 
NVL(hm.character3,md.character3) tuk3, NVL(hm.character4,md.character4) tuk4, md.shap_type tai     
   FROM model md, model_price mp, model_if@DL_B2C_PROD hm, branch_price bp, 
    (SELECT stk_price2,model_code FROM stk_price_unit   
     WHERE stk_month = TO_CHAR(SYSDATE,'YYYYMM')  
AND model_code like 'RN-15LA%' 
AND comp_cd = '1100') ls 
   WHERE md.model_code like 'RN-15LA%' 
AND bp.branch_code(+) = 'B34' 
AND md.model_code = mp.model_code(+) 
AND md.model_code = hm.model_code(+) 
AND md.model_code = bp.model_code(+) 
AND bp.start_date(+) >= TO_CHAR(SYSDATE,'YYYYMMDD') 
AND NVL(bp.end_date(+), '99991231') <=TO_CHAR(SYSDATE,'YYYYMMDD') 
AND bp.status(+) = 'Y' 
AND mp.status(+) = 'Y' 
AND md.model_code = Ls.model_code(+)) 
===============================================================================================================

- B2C 실서버(image) 설정 
ip:165.243.115.18 
pjdept/header02 
/array2/B2C/www/img/evt_main 
===============================================================================================================

- Hiplaza 주소 
서울시 강남구 역삼동 677-25 큰길타워 7층 하이프라자 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.16(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 19:00 ==> 맑음 

- B2C Event- 사랑만들기] 
- 등록 
===============================================================================================================
  
- B2C Event- 영화Event
타 사이트에서 링크 연결(name=moive) 
http://156.147.149.9/index2.jsp?name=moive
http://156.147.149.9/shop/main/register 
http://156.147.149.9/shop/main/register?_requestid=14 
F:\WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war\src\com\hiplaza\cmd\event\ideakingcmd.java 
------------------------------------------------------------------------------------------------------------ 

올해  PDA 총 본수 ==> 백화점용(36)   지점용(36) Himail(27)   총 99 
올해  신규 본수 ==> 5 
올해  수정 본수 ==> 19 
------------------------------------------------------------------------------------------------------------
- Embeded VC++ 
올해  PDA 총 본수 ==> 백화점용(21)   지점용(20) Himail(27)   총 68 
올해  신규 본수 ==> 8 
올해  수정 본수 ==> 24 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.17(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- B2C Event- 영화Event 
ModelSearch.cpp  /event/2003/200309_moive.jsp /member/login.jsp   
------------------------------------------------------------------------------------------------------------   
   
타 사이트 -->    (로그인 후alert)  ------>       로그인(/200309Movie)  <------     
------------------------------------------------------------------------------------   

- 영화 Event alert: 정상적으로 이벤트 등록을 마쳤습니다. 
------------------------------------------------------------------------------------   

/200309Movie 
IdeaKingCmd EvtUserEntity EvtUserDb.java 
------------------------------------------------------------------------------------------------------------

- 로그인 정보 가져오기 
DynamoHttpServletRequest dreq = atg.servlet.ServletUtil.getCurrentRequest();  
Profile mProfile = null; 
if(dreq != null ) 
mProfile    = (Profile)dreq.resolveName("/atg/userprofiling/Profile");  
id = (String)mProfile.getPropertyValue("id"); 
login       = (String)mProfile.getPropertyValue("login");  
firstname = (String)mProfile.getPropertyValue("firstname");  

entity.setUserID(id); 
entity.setLogin(login); 
entity.setAns1(firstname); 
===============================================================================================================

- 치과 검진 
15:00 B & D 치과(역삼역- 큰길DB3층) 
진료비 2만원 - 전체적으로 치료비 비쌈 
------------------------------------------------------------------------------------------------------------

- 치과 검진
13:30 서울 하얀 치과(신림역 2번 출구) 
진료비 5천 6백원 
1. 치석제거: 6만원 
2. 충치치료(*5): 3만원(~40만원) 
3. 치아마모증(8만원*8): 64만원 
4. 신경치료(3만원*8): 12만원 
5. 도자기(25만원*2): 60만원 
6. 크라운(Gold)(30만원*8): 75만원 
총계: 220만원(~260만원)
19:10 명문 치과(신림역 3번 출구) 전화: 02)873-7203 
진료비 5만원(총 진료비: 180만원) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.18(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 21:30 비 

- B2C Event- 영화Event
select count(*) from event_user_lst   where event_id = '1000000125' and user_id ='tamario'  
-------------------------------------------------------------------------------------------------------------------- 

insert into event_user_lst (event_id, event_user_lst_id, user_id, apply_date,  apply_time, ans1, ans2, ans3, ans4,  
ans5, ans6, ans7, ans8, access_cnt)    
values ('1000000125', '4734',  'tamario', to_char(sysdate , 'yyyymmdd'), to_char(sysdate ,'HH24:SS'), '진태만') 
-------------------------------------------------------------------------------------------------------------------- 

delete from event_user_lst 
where event_id = '1000000125' 

--- 데이타 뽑는 Query(영화사 사이트 통한 회원가입): event_id = '1000000125' 
select event_user_lst_id as NO, user_id as 회원ID, ans1 as 이름, apply_date as 응모일, apply_time as 시간 from event_user_lst 
where event_id = '1000000125' 
order by event_user_lst_id asc 
-------------------------------------------------------------------------------------------------------------------- 

select * from event_user_lst  
where event_id = '000000125' --- 영화사 사이트 통한 회원가입(event_id) 
order by event_user_lst_id desc 
-------------------------------------------------------------------------------------------------------------------- 

select * from event	 --// 이벤트 종류 
-------------------------------------------------------------------------------------------------------------------- 

select * from DPS_USER  --// 사용자기본 테이블 
where first_name='진태만' and login='tamario' 
select * from EDPS_USER   --// 회원확장 테이블 

select * from EDPS_USER   --// 회원확장 테이블 
where ssn='7005052703414'  
-------------------------------------------------------------------------------------------------------------------- 
delete  from DPS_USER  --// 사용자기본 테이블 
where first_name='tamario' 
-------------------------------------------------------------------------------------------------------------------- 

-// 사용자기본 테이블 조인 
select a.ID, a.LOGIN, a.first_name, a.registration_date, a.email, a.date_of_birth, 
   b.ssn, b.home_zip, b.home_town, b.home_district, b.home_street, b.home_addr, b.home_ddd, b.home_telno     
from DPS_USER a, EDPS_USER b 
where a.ID = b.ID 
and   a.login='tamario' 
-------------------------------------------------------------------------------------------------------------------- 

-// 임직원 테이블(SET1BDB) 
select * from employee 
-------------------------------------------------------------------------------------------------------------------- 
no 회원ID 이름 응모일 시간 
-------------------------------------------------------------------------------------------------------------------- 

http://www.movievent.com/index3.html 
===============================================================================================================

- 쿠키 설정]
// 쿠기 생성 ----------------------------------------------------------------    
String OutFromURL = (request.getParameter("OutFromURL") == null  request.getParameter("OutFromURL").equals("")) 
? "00" : request.getParameter("OutFromURL"); 
 
 if(OutFromURL.equals("movie")){  // 영화사 사이트 통한 회원가입(event_id)으로 이동   
out.println("<br>[TANA] needlogin.jsp:: [OutFromURL]"+ OutFromURL);  
Cookie ck   = new Cookie("OutFromURL", OutFromURL); 
    response.addCookie(ck);  
out.println("<br>새 로 운 쿠 키 를  생성 합 니 다 ");  
} 
-------------------------------------------------------------------------------------------------------------------- 

 // 쿠기 받기 ---------------------------------------------------------------- 
Cookie[] cookies = request.getCookies();   
 for( int i = 0; i < cookies.length; i++ ) { 
   if(cookies[i].getName().equals("OutFromURL") && cookies[i].getValue().equals("movie")){ 
String OutFromURL = cookies[i].getValue(); 
%> 
<script language=javascript>   
location.href = '/shop/main/200309Movie?actType=200309movie';   
</script> 
<% 
 out.println("[TANA] needlogin.jsp:: [OutFromURL]"+ OutFromURL); 
   } 
}   
-------------------------------------------------------------------------------------------------------------------- 

- expires : 쿠키가 만료되어 자동 소멸될 시점을 지정 
기본값 : 브라우져 종료 시 소멸. 
값이 설정되었을 경우 만료 시점이 될 때까지 클라이언트에 존재. 
===============================================================================================================

- B2C 관리자화면 
http://156.147.149.9/shop/www/admin/FrameSet.jsp 
imount/imount01  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.19(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:30 ==> 구름 

- 영화 Event
- 쿠키 설정
/common/needlogin.jsp 
- 쿠키 받기 
/member/registerFormExtra.jsp /member/registerSuccess.jsp 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.20(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 11:30 ==> 구름

- 영화 Event
- 세션 문제(/memeber/registerSuccess.jsp) 
password = (String)session.getAttribute("password"); 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.22(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- 영화 Event
- 쿠키 설정 
/common/needlogin.jsp 
- 쿠키 받기 
/www/member/registerSuccess.jsp /www/event/2003/200309_moive.jsp 
/event/2003/200309_moive.jsp 
-------------------------------------------------------------------------------------------------------------------- 

/framework/EventRegisterCmd.java 
/cmd/event/EventRegisterCmd.java /entity/EventRegisterEntity.java /db/EventRegisterDb.java 
/member/RegisterCmd.java 
===============================================================================================================

- B2C 실서버]
165.243.115.197( hib2cap / angel25 ) 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/framework 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/entity 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/db 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/cmd/event  
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/dyn.war/www 
===============================================================================================================

- B2C 실서버(image)
165.243.115.18( pjdept / header02 ) 
se85:/array2/B2C/www> index3.html 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.23(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 21:00 ==> 맑음 

- 영화 Event
- 로그인 여부 수정 
-------------------------------------------------------------------------------------------------------------------- 

<script language=javascript>   
	<% 
	if(result.equals("exist")) { // 이미 이벤트에 응모를 한 경우 
	%> 
		alert("이미 이벤트에 응모 하셨습니다."); 
	<%  
	} else if(result.equals("exist") && RegisterSpot.equals("00")) {  // 이미 이벤트에 응모를 했고 가입확인이 아닌 경우(처음 로그인)   
	 %>     
		location.href = '/shop/main/logout'; 
	 <%  
	} 
	 %> 
</script> 
===============================================================================================================
 
/framework/MasterController.java 
/cmd/event/EventRegisterCmd.java /entity/EventRegisterEntity.java /db/EventRegisterDb.java 
/member/RegisterCmd.java 
===============================================================================================================

- 경매수정
- 입찰가 같은 금액 못 넣게 할 것 
- DB에서 시간 거르기 
- 낙찰 확정은 같은 금액이라도 먼저 넣은 사람이 낙찰 
--------------------------------------------------------------------------------------------------------------------- 

/shop/main/usrauctionbid?aucroundid=21&model_code=RN-20CB11&time=231064316549147(입찰 참여) 
/framework/MasterController.java 
commands.put("/usrauctionbid", new AuctionBidCmd("$/www/auction/usrAuctionBidDetail.jsp","$/www/common/
ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp")); 
/cmd/auction/AuctionBidCmd.java /entity/AuctionBidEntity.java /db/AuctionBidDb.java  
===============================================================================================================

- /shop/main/usrauctionbidmsg(입찰 하기) 
/framework/MasterController.java 
commands.put("/usrauctionbidmsg", new AuctionBidCmd("$/www/auction/usrAuctionBid.jsp","$/www/common/
ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AucBidEntity.java /db/AuctionBidDb.java 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.24(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:20 ~ 19:00 ==> 맑음 

- 영화 Event
- index3.html 로그인 하기 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.25(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- 영화 Event
/event/2003/200309_moive.jsp 
/index3.html /index3Movie.jsp(수정 후 사용 안 함) 
  
 /framework/MasterController.java //영화 Event 로그 아웃(03_09.25)  @@@@@ 
commands.put("/logoutIndex3", new LogoutCmd3("$/www/member/login.jsp","$/www/member/logoutError.jsp",
"$/www/member/login.jsp"));  ///@@@@@@@@@ 
  
/cmd/event/EventRegisterCmd.java /cmd/member/LogoutCmd3.java.java  
===============================================================================================================

- 영화Event 흐름도 
/index3.html(image서버)  --> /member/LogoutCmd3.java: 로그 아웃 시킴 --> /index3Movie.jsp(실서버): Script 
--> /event/EventRegisterCmd.java: 영화 Event 등록 
---------------------------------------------------------------------------------------------------------------------

- 영화Event 흐름도- 수정
/index3.html(image서버)  --> /member/LogoutCmd3.java: 로그 아웃 시킴 --> /event/2003/200309_moive.jsp(실서버): 이벤트 화면 
--> /event/EventRegisterCmd.java: 영화 Event 등록 -->  /event/2003/200309_moive_ok.jsp: 이벤트 등록 성공 화면 
===============================================================================================================

- B2C 로그 경로
/usr/WebSphere/AppServer/laflog 
AP서버(실서버)에서 index3Movie.jsp를 인식 못 함: index3Movie.jsp로 수정(/shop/www/index3Movie.jsp) 
/shop/... 붙임 
---------------------------------------------------------------------------------------------------------------------

- PDA 로그 경로
se85:/array1/tas007> cd mobile/Wire_V52_SSL  
se85:/array1/tas007/mobile/Wire_V52_SSL> tail wirelog.txt 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.26(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- PDA 장비점검
1. 정상(HiMobileD Ver 1.3): i-Kit 교체 후 다시 시도 
S/N: 4G26DW33X095 --> 백화점용(iPAQ) 
S/N: HV11D01K006513--> (CDMA2000 i-Kit PLUS)  // 이상 
---------------------------------------------------------------------------------------------------------------------

2. i-Kit 이상 
S/N: 4G27DW33501N --> 백화점용(iPAQ) 
S/N: HV11D01K008100--> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------

3. HiMobileD설치 Prg 없음(iPAQ File Store/HiMobileSetup.ex가 존재): 밧데리 약함(iPAQ문제 같음) 
S/N: 4G29DW3370NP --> 백화점용(iPAQ) 
S/N: HV11D00K007633 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------

전체적으로 밧데리가 약해서 그러니 충전기를 꼽은 상태에서 로그인 시도할 것 
===============================================================================================================

- 기획 이벤트
LG 산소林출시기념 "O2(오투)"대축제 
- 주말 판촉
(9월 27일 24시 이후 부터 30일 24시까지) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.09.29(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 19:00 ==> 맑음 

- 경매수정
-- 입찰 하기(/db/AuctionBidDb.java) 
---------------------------------------------------------------------------------------------------------------------

-- 경매회차 조회(auc_round: 경매회차 Table) 
select auc_round_id, start_date, start_time, end_date, end_time from auc_round where auc_round_id = 22 
---------------------------------------------------------------------------------------------------------------------

-- 입찰(auc_bid_lst: 입찰 Table) 
insert into auc_bid_lst ( auc_round_id,user_id,model_code,bid_amt,bid_date,bid_time, auc_bid_lst_id )  
values ( 22, '927830', 'LC-D650', 490000, '20010929', '110253110253', sq_auc_bid_lst_id.nextval ) 

select  *  from auc_bid_lst where auc_round_id = 22 
---------------------------------------------------------------------------------------------------------------------

-- 경매(auc: 경매 Table) -> 경매 신청수량 
 update auc set applicant_cnt = nvl(applicant_cnt,0) + 1  
where auc_round_id = 22 and model_code = 'LC-D650'  

 select  *  from auc where auc_round_id = 22 and model_code = 'LC-D650'  
===============================================================================================================

-- 같은 가격 입찰 여부 확인(auc_bid_lst: 입찰 Table) 
select bid_amt from auc_bid_lst  where  auc_round_id = 22 and model_code = 'LC-D650'  and bid_amt = 490000.0  
===============================================================================================================

- B2C 본수 계산
CRUD: Create Read Update Delete 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.09.30(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 12:00 ==> 맑음 

- 경매수정
Script에서 해당 부분을 복사(input type:hidden, text) 
http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=22&model_code=LC-D650
&bid_date=20010930&bid_time=112400&bid_amt=490000 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■