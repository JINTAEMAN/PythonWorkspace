

�����������������������������������������������������������
+---------------------------------------------// Memo(2003.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2003.09.01(��) �۾� ������������������� 
---> 07:10 ~ 21:30 

- PDA �Ǽ��� �ҽ� ����  
165.243.115.18(tas007 / header02 )  
se85:/array1/tas007> cd / 
se85:/> cd usr/local/tomcat/webapps/mobile 
se85:/usr/local/tomcat/webapps/mobile> ls 
Debug/    WEB-INF/  depart/   log/      store/ 
��ȭ��(depart/), ����(store/) 
se85:/usr/local/tomcat/webapps/mobile> cd store 
�α� �м�(log/) 
se85:/usr/local/tomcat/webapps/mobile> cd log 
===============================================================================================================

- PDA login 
- �� ����(������): PDA �α��� ���̵� 
id/pwd  - 50273 / 5555  (cf: 50273 / 5133) 
===============================================================================================================

- �� ����(��ȭ����): PDA �α��� ���̵� 
id/pwd  - 50299 / 20030807 / 1152940 / 12345678 (cf: 50299 / 1603) 
===============================================================================================================

- PDA ������� 
i-Kit�� ���� �߻� - �̻��� ������ �鸰 �� �Ҹ� ������ 
S/N: 4G27DW33970MS --> ��ȭ����(iPAQ) 
S/N: HV11D01K005768 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------- 

- i-Kit�� ���� �߻� - ȭ���� �ڵ����� ������ 
S/N: 4G26DW33X97L --> ��ȭ����(iPAQ) 
S/N: HV11D00K006873 --> (CDMA2000 i-Kit PLUS) 
===============================================================================================================

������������������� 2003.09.02(ȭ) �۾� ������������������� 
---> 07:30 ~ 21:30 

- PDA �м�
* ��ǰ��ȸ(��ȭ��) ����  
ModelSearch.cpp   DModel.widl DModel_search_combo.jsp DModelSearchCombo.java(/model)  
 EVC     -->     Wire����     -->    Tomcat����    -->    Tomcat����   
- ModelSearch.cpp ����  
case WM_USER_REQUEST:{ 
	requestToWireServer(hDlg, &wire,"DModel.List", bin, TEXT("����Ʈ ���� ��..."), 0); 
	break;     
} 
===============================================================================================================

 DModel.widl ����(WireServer: C:\Wire_V52_SSL\scripts)  
<SERVICE NAME="List" 
    INPUT="BI_List" 
    OUTPUT="BO_List" 
    METHOD="POST" 
    URL="http://www.hiplaza.co.kr:7001/mobile/depart/DModel_search_combo.jsp" 
    COMMENT="��ǰ���� ��ȸ"/>     
     
  <BINDING NAME="BI_List" TYPE="INPUT"> 
    <VARIABLE NAME="grand"  FORMNAME="grand"  COMMENT="��ǰ��"/> 
    <VARIABLE NAME="jepm"   FORMNAME="jepm"   COMMENT="��ǰ"/> 
    <VARIABLE NAME="gijung" FORMNAME="gijung" COMMENT="����"/> 
    <VARIABLE NAME="model"  FORMNAME="model"  COMMENT="�𵨸�"/> 
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

DModel_search_combo.jsp ����(C:\jakarta-tomcat-3.2.1\webapps\hiplaza\depart)  
<tr> 
<td>��ǰ��</td> 
<td> 
<select name="grand" onChange="movedept(this.options[this.selectedIndex].value)"> 
<option value="00">--------����--------</option> 
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
}//��ǰ�� 
s_DModelSearchCombo.closePsmt1(); 
%> 
</select> 
</td> 
</tr> 
===============================================================================================================

DModelSearchCombo.java ����(C:\jakarta-tomcat-3.2.1\webapps\hiplaza\WEB-INF\classes\model) 

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
 
- [��ǰ��ȸ Query(��ȭ��) - PDA]  ==> SE1BDB @@@ 
-- ��ǰ��(��ǰ�� Combo�� Display) 
SELECT grand_code,grand_name FROM grand WHERE status = 'Y' ORDER BY grand_name 
-- ��ǰ(��ǰ������ AV ���� ���� ��) 
SELECT jepm_code,jepm_name FROM jepm WHERE status = 'Y' AND grand_code = '01' ORDER BY jepm_code 
-- ����(��ǰ���� TV ���� ���� ��) 
SELECT gijung_code,gijung_name FROM gijung 
WHERE status = 'Y' AND grand_code = '01' AND jepm_code = '01' ORDER BY jepm_code 
-- ��(�������� LCD TV ���� ���� ��) 
SELECT model_code  FROM model  
WHERE status(+) = 'Y' AND grand_code =  '01' AND jepm_code = '01'  AND gijung_code = '95' 
ORDER BY model_code 
--------------------------------------------------------------------------------------------------------------------------

-- ����(�𵨿��� RN-15LA31 ���� ���� ��) 
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
-- ���ϰ� 
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
-- ����(�� ����) 
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
 
- ��ǰ�� ����(�� ����)
http://www.hiplaza.co.kr/shop/main/prdmodeldetail  
/com//hiplaza/framework/MasterController.java����  
 //�� �󼼺��� 
commands.put("/prdmodeldetail", new PrdStoreModelDisplayCmd("$/www/product/PrdStoreModelDetail.jsp"
,'"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp")); 

/src/com/hiplaza/cmd/product/PrdStoreModelDisplayCmd.java 
/db/PrdStoreModelDb.java 
resultModelArray   = modelDb.selectModelCompareAll(pPrdDummyEntity); //�� �� 
resultExpertArray  = modelDb.selectExpertModel(pPrdDummyEntity);      //������ ��õ ��  
/db/PrdStoreModelSpecDb.java 
resultSpecArray    = specDb.selectModelSpecAll(pPrdDummyEntity);     //����  
/db/PrdStoreModelMeritDb.java 
resultMeritArray   = meritDb.selectModelMeritAll(pPrdDummyEntity);   //Ư����       
/db/PrdModelUseNoteDb.java 
resultNote         = noteDb.selectModelUseNoteAll(pPrdDummyEntity);  //��ǰ�ı�  
===============================================================================================================

jcc PrdStoreModelDb.java 
jcc PrdStoreModelSpecDb.java 
jcc PrdStoreModelMeritDb.java  
[Right outer join]  
WHERE md.model_code = 'RN-15LA31'                    
AND bp.branch_code(+) = ''              
AND md.model_code = mp.model_code(+) 
-------------------------------------------------------------------------------------------------------------------------------- 

outer join: �� ���̺��� ������ ���� LEFT �Ǵ� RIGHT ���� ��� ����� ������ ��  
�ݴ��ʿ� ���ش� ��Ī���� ��� �����ִ� JOIN�� �ǹ�  
�ܺ������� ���� �ܺ� ����, ������ �ܺ� ����, ���� �ܺ� ���� �������� �ִ�. 
LEFT OUTER JOIN( *= ),  RIGHT OUTER JOIN( =* ),  FULL OUTER JOIN 
===============================================================================================================
  
������������������� 2003.09.03(��) �۾� ������������������� 
---> 07:30 ~ 21:30 

 [��ǰ��ȸ Query - B2C]  ==> HIBCPDB  @@@@ 
-- ��ǰ �� ����(RN-15LA31 ���� ���� ��) 
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

-- �� ����(��ǰ�� Ư����) 
SELECT model_code, merit_code, replace(merit_name, chr(13),'<br>') merit_name 
FROM model_merit 
WHERE model_code = 'RN-15LA31' 
OR model_code = '' 
OR model_code = ''  
ORDER BY model_code, to_number(merit_code) 
---------------------------------------------------------------------------------------------------------------------------

-- �� ����(��ǰ�� ���) 
SELECT model_code, to_number(spec_code) num_spec_code,  spec_name, spec_value_name, trim(spec_value_desc) spec_value_desc 
FROM model_spec_value 
WHERE  model_code = 'RN-15LA31' 
ORDER BY model_code, num_spec_code, spec_name  
===============================================================================================================
  
- PDA ���� ����
- �������� ����� ����(������ ������ �ֹ�(����)) 
- PDA���� �����ؾ� �� �κ� 
---------------------------------------------------------------------------------------------------------------------------

- [������ȸ ��� - ������]  SALE_HEAD: ����(�������� ���൵ ����� ����)   ----> (Sale_search_head.jsp -> SaleSearchDbWrap.java) 
SELECT nvl(SH.SALE_DATE,'&nbsp;'), nvl(SH.SALE_NO,0),  nvl(SH.CUST_NAME,'&nbsp;'),  
		nvl(SH.CUST_DDD  '-'  SH.CUST_TEL,'&nbsp;'), nvl(SH.TOT_VOL,0),nvl(SH.SALE_TOT_PRICE,0)  
FROM SALE_HEAD SH, BRANCH BR   
WHERE SH.BRANCH_CODE = BR.BRANCH_CODE   
	AND SH.SALE_DATE BETWEEN '20020101' AND '20020501'  
	AND SH.BRANCH_CODE = 'A02'  
	AND nvl(SH.CUST_NAME,'%') like ''  '%'   
---------------------------------------------------------------------------------------------------------------------------

- [������Ȳ��ȸ - ��ȭ��]  l_ordercontents: ����(�������� ���൵ ����� ����)   ----> (DSale_list.jsp -> DSale.java) 
SELECT DECODE(so.plus_minus,'1',DECODE(lo.order_status, 'B','��û','A', '�ֹ�', 'D', '����', 'G','�ֹ����','F','����'),   
    '2', DECODE(so.out_gb, '1', '������ǰ','�����ǰ'))status,  lo.order_date, NVL(NVL(so.cust_name, so.deliv_name), '&nbsp;') cust_name,    
    lo.model_code,  lo.order_vol,  lo.out_store,  DECODE(lo.ship_flag, '0','�Ϲ�','1','����','2','����','5','�����') ship_flag 
FROM l_ordercontents lo, stk_out so   
WHERE lo.order_no  = so.r_sheet_no         
AND lo.order_seq = so.r_sub_no     
AND so.sale_date >= to_char(add_months('20030501',-2),'YYYYMMDD')     
AND lo.order_date BETWEEN '20030501' AND '20030903'     
AND so.branch_code = ''     
AND so.isis_dept_code = ''     
AND nvl(NVL(so.cust_name, so.deliv_name),' ') LIKE ''   
===============================================================================================================
  
- [���� ã�� - Unix��] 
ps -ef  grep ���� `find . -name "*.java" -print` > file��  
se85:/array1/tas007> cd / 
se85:/> cd usr/local/tomcat/webapps/mobile/WEB-INF/src 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep SALE_HEAD `find . -name "*.java" -print` > 
search_TB_SALE_HEAD.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi search_TB_SALE_HEAD.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep SALE_HEAD `find . -name "*.java" -print` >
search_TB_l_ordercontents.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi search_TB_l_ordercontents.txt 
===============================================================================================================
 
������������������� 2003.09.04(��) �۾� ������������������� 
---> 07:30 ~ 21:10 ==> �帲(���� -10��) 

- Database ��ũ  
select *  from user_db_links --// DB ��ũ Ȯ�� 
select *  from user_db_links WHERE host='HIBCPDB'  
select *  from user_indexes --// cf.) DB index Ȯ�� 
select *  from user_ind_columns --// cf.) �ش��ε����� ���� �÷����� ���� 
   
CREATE DATABASE LINK HIBCPDB CONNECT TO hipdb IDENTIFIED --// DB ��ũ ���� 
BY hipdb01 USING 'HIBCPDB' 
-------------------------------------------------------------------------------------------------------------
CREATE DATABASE LINK ��ũ�̸� CONNECT TO ��ũ�Ǵ� ORACLE�� �α�ID IDENTIFIED  
BY ��ũ�Ǵ�ORACLE�� �α��ȣ USING '�����ͺ��̽� �̸�' 

DROP  DATABASE LINK HIBCPDB --// DB ��ũ ���� 
-------------------------------------------------------------------------------------------------------------

SE1BDB DB���� h_�� �����ϴ� ���̺� HIBCPDB DB ���̺�� ��ġ 
\\Sungtae\backup\����������B2C\2.��ȹ�ܰ�\2.1�м��ܰ�\2.1.4 Table���Ǽ� 
--------------------------------------------------------------------------------------------------------------
  
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> ps -ef  grep h_model `find . -name "*.java" -print` > Search_Word_Test.txt 
se85:/usr/local/tomcat/webapps/mobile/WEB-INF/src> vi Search_Word_Test.txt  
===============================================================================================================

������������������� 2003.09.05(��) �۾� ������������������� 
---> 07:30 ~ 19:00 �帲(���� -10��) 

- PDA DB����
/WEB-INF/classes/model/ 
DModelSearch.java DModelSearchCombo.java 
ModelSearch.java ModelSearchCombo.java 
--------------------------------------------------------------------------------------------------------------
-- �����ؾ� �� Table(���� Table) 
h_model h_model_func h_detail_func h_gijung 
--------------------------------------------------------------------------------------------------------------

- 14:20 ~16:00 AP ��� ���� ����(��Ʈ ����) 
������ PDA ��� ���� ���� 
===============================================================================================================

������������������� 2003.09.06(��) �۾� ������������������� 
---> 08:10 ~ 14:00 

- PDA DB����
===============================================================================================================

������������������� 2003.09.08(��) �۾� ������������������� 
---> 08:10 ~ 19:00 ==> �帰 �� ����(���� - 20��) 

- PDA DB����
/WEB-INF/classes/model/ 
DModelSearch.java DModelSearchCombo.java 
ModelSearch.java ModelSearchCombo.java 
===============================================================================================================

- �����ȣ ��ȸ(PDA - SE1BDB) 
SELECT a.zip_code, town, district, street, streetb.bunji FROM post A, post_address B  
WHERE A.zip_code = b.zip_code and b.flag='Y'  
and street like '%�Ÿ���%'    
order by a.zip_code 
===============================================================================================================

������������������� 2003.09.09(ȭ) �۾� ������������������� 
---> 08:10 ~ 19:00 �帰 �� ���� 

- PDA DB����
- �𵨸� ��ȸ(==> /hiplaza/store/Model_search.jsp) 
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
  
- ���� 
 SELECT replace(merit_name, chr(13),'<br>') merit_name  
 FROM model_merit@DL_B2C_PROD  
 WHERE model_code = 'RN-15LA31' 
 ORDER BY model_code, to_number(merit_code) 
===============================================================================================================

select value from v$parameter where name = 'compatible'  
C:\oracle\admin\TAMAora\pfile 
 init<SID>.ora �� ���ϸ��� �����ȴ�... 
 initTAMAora.ora 
 compatible = 8.1.0 
===============================================================================================================

- [��ǰ �˻���� Query - B2C]  ==> HIBCPDB  @@@ 
-- ��ǰ �� ����(RN-15LA31 ���� ���� ��) 
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
/com//hiplaza/framework/MasterController.java���� 
-----------------------------------------------------------------------------------------------------------------------------

- �� �󼼺��� 
commands.put("/prdsearch", new PrdStoreModelCmd("$/www/product/PrdStoreModelList.jsp"
,"$/www/common/ErrorPage.jsp","$/www/common/needlogin.jsp")); 
-----------------------------------------------------------------------------------------------------------------------------

/src/com/hiplaza/cmd/product/PrdStoreModelCmd.java 
resultEntityArray   = db.selectModelAll(pPrdDummyEntity);  //  
totalCount  = db.selectModelCount(pPrdDummyEntity); // 
/db/PrdStoreModelDb.java 
resultSpecArray    = specDb.selectModelSpecAll(pPrdDummyEntity);     //����  
/db/PrdStoreModelMeritDb.java 
resultMeritArray   = meritDb.selectModelMeritAll(pPrdDummyEntity);   //Ư����       
/db/PrdModelUseNoteDb.java 
resultNote         = noteDb.selectModelUseNoteAll(pPrdDummyEntity);  //��ǰ�ı�  
===============================================================================================================

������������������� 2003.09.15(��) �۾� ������������������� 
---> 08:10 ~ 21:30 ==> ���� 

- PDA DB����
[��ǰ �˻���� list Query - B2C]  ==> HIBCPDB  @@@
===============================================================================================================

-- ��ǰ �˻���� list('RN-15'�� ��ȸ ���� ��) 
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

- �𵨸� ��ȸ: �˻��� ��ǰ�� 2�� �̻� �϶�(Like �˻�)  ==> HIBCPDB  @@@
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

- B2C �Ǽ���(image) ���� 
ip:165.243.115.18 
pjdept/header02 
/array2/B2C/www/img/evt_main 
===============================================================================================================

- Hiplaza �ּ� 
����� ������ ���ﵿ 677-25 ū��Ÿ�� 7�� ���������� 
===============================================================================================================

������������������� 2003.09.16(ȭ) �۾� ������������������� 
---> 08:00 ~ 19:00 ==> ���� 

- B2C Event- ��������] 
- ��� 
===============================================================================================================
  
- B2C Event- ��ȭEvent
Ÿ ����Ʈ���� ��ũ ����(name=moive) 
http://156.147.149.9/index2.jsp?name=moive
http://156.147.149.9/shop/main/register 
http://156.147.149.9/shop/main/register?_requestid=14 
F:\WebSphere\AppServer\installedApps\Dynamo.ear\dyn.war\src\com\hiplaza\cmd\event\ideakingcmd.java 
------------------------------------------------------------------------------------------------------------ 

����  PDA �� ���� ==> ��ȭ����(36)   ������(36) Himail(27)   �� 99 
����  �ű� ���� ==> 5 
����  ���� ���� ==> 19 
------------------------------------------------------------------------------------------------------------
- Embeded VC++ 
����  PDA �� ���� ==> ��ȭ����(21)   ������(20) Himail(27)   �� 68 
����  �ű� ���� ==> 8 
����  ���� ���� ==> 24 
===============================================================================================================

������������������� 2003.09.17(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- B2C Event- ��ȭEvent 
ModelSearch.cpp  /event/2003/200309_moive.jsp /member/login.jsp   
------------------------------------------------------------------------------------------------------------   
   
Ÿ ����Ʈ -->    (�α��� ��alert)  ------>       �α���(/200309Movie)  <------     
------------------------------------------------------------------------------------   

- ��ȭ Event alert: ���������� �̺�Ʈ ����� ���ƽ��ϴ�. 
------------------------------------------------------------------------------------   

/200309Movie 
IdeaKingCmd EvtUserEntity EvtUserDb.java 
------------------------------------------------------------------------------------------------------------

- �α��� ���� �������� 
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

- ġ�� ���� 
15:00 B & D ġ��(���￪- ū��DB3��) 
����� 2���� - ��ü������ ġ��� ��� 
------------------------------------------------------------------------------------------------------------

- ġ�� ����
13:30 ���� �Ͼ� ġ��(�Ÿ��� 2�� �ⱸ) 
����� 5õ 6��� 
1. ġ������: 6���� 
2. ��ġġ��(*5): 3����(~40����) 
3. ġ�Ƹ�����(8����*8): 64���� 
4. �Ű�ġ��(3����*8): 12���� 
5. ���ڱ�(25����*2): 60���� 
6. ũ���(Gold)(30����*8): 75���� 
�Ѱ�: 220����(~260����)
19:10 �� ġ��(�Ÿ��� 3�� �ⱸ) ��ȭ: 02)873-7203 
����� 5����(�� �����: 180����) 
===============================================================================================================

������������������� 2003.09.18(��) �۾� ������������������� 
---> 07:20 ~ 21:30 �� 

- B2C Event- ��ȭEvent
select count(*) from event_user_lst   where event_id = '1000000125' and user_id ='tamario'  
-------------------------------------------------------------------------------------------------------------------- 

insert into event_user_lst (event_id, event_user_lst_id, user_id, apply_date,  apply_time, ans1, ans2, ans3, ans4,  
ans5, ans6, ans7, ans8, access_cnt)    
values ('1000000125', '4734',  'tamario', to_char(sysdate , 'yyyymmdd'), to_char(sysdate ,'HH24:SS'), '���¸�') 
-------------------------------------------------------------------------------------------------------------------- 

delete from event_user_lst 
where event_id = '1000000125' 

--- ����Ÿ �̴� Query(��ȭ�� ����Ʈ ���� ȸ������): event_id = '1000000125' 
select event_user_lst_id as NO, user_id as ȸ��ID, ans1 as �̸�, apply_date as ������, apply_time as �ð� from event_user_lst 
where event_id = '1000000125' 
order by event_user_lst_id asc 
-------------------------------------------------------------------------------------------------------------------- 

select * from event_user_lst  
where event_id = '000000125' --- ��ȭ�� ����Ʈ ���� ȸ������(event_id) 
order by event_user_lst_id desc 
-------------------------------------------------------------------------------------------------------------------- 

select * from event	 --// �̺�Ʈ ���� 
-------------------------------------------------------------------------------------------------------------------- 

select * from DPS_USER  --// ����ڱ⺻ ���̺� 
where first_name='���¸�' and login='tamario' 
select * from EDPS_USER   --// ȸ��Ȯ�� ���̺� 

select * from EDPS_USER   --// ȸ��Ȯ�� ���̺� 
where ssn='7005052703414'  
-------------------------------------------------------------------------------------------------------------------- 
delete  from DPS_USER  --// ����ڱ⺻ ���̺� 
where first_name='tamario' 
-------------------------------------------------------------------------------------------------------------------- 

-// ����ڱ⺻ ���̺� ���� 
select a.ID, a.LOGIN, a.first_name, a.registration_date, a.email, a.date_of_birth, 
   b.ssn, b.home_zip, b.home_town, b.home_district, b.home_street, b.home_addr, b.home_ddd, b.home_telno     
from DPS_USER a, EDPS_USER b 
where a.ID = b.ID 
and   a.login='tamario' 
-------------------------------------------------------------------------------------------------------------------- 

-// ������ ���̺�(SET1BDB) 
select * from employee 
-------------------------------------------------------------------------------------------------------------------- 
no ȸ��ID �̸� ������ �ð� 
-------------------------------------------------------------------------------------------------------------------- 

http://www.movievent.com/index3.html 
===============================================================================================================

- ��Ű ����]
// ��� ���� ----------------------------------------------------------------    
String OutFromURL = (request.getParameter("OutFromURL") == null  request.getParameter("OutFromURL").equals("")) 
? "00" : request.getParameter("OutFromURL"); 
 
 if(OutFromURL.equals("movie")){  // ��ȭ�� ����Ʈ ���� ȸ������(event_id)���� �̵�   
out.println("<br>[TANA] needlogin.jsp:: [OutFromURL]"+ OutFromURL);  
Cookie ck   = new Cookie("OutFromURL", OutFromURL); 
    response.addCookie(ck);  
out.println("<br>�� �� �� �� Ű ��  ���� �� �� �� ");  
} 
-------------------------------------------------------------------------------------------------------------------- 

 // ��� �ޱ� ---------------------------------------------------------------- 
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

- expires : ��Ű�� ����Ǿ� �ڵ� �Ҹ�� ������ ���� 
�⺻�� : ������ ���� �� �Ҹ�. 
���� �����Ǿ��� ��� ���� ������ �� ������ Ŭ���̾�Ʈ�� ����. 
===============================================================================================================

- B2C ������ȭ�� 
http://156.147.149.9/shop/www/admin/FrameSet.jsp 
imount/imount01  
===============================================================================================================

������������������� 2003.09.19(��) �۾� ������������������� 
---> 07:30 ~ 21:30 ==> ���� 

- ��ȭ Event
- ��Ű ����
/common/needlogin.jsp 
- ��Ű �ޱ� 
/member/registerFormExtra.jsp /member/registerSuccess.jsp 
===============================================================================================================

������������������� 2003.09.20(��) �۾� ������������������� 
---> 07:30 ~ 11:30 ==> ����

- ��ȭ Event
- ���� ����(/memeber/registerSuccess.jsp) 
password = (String)session.getAttribute("password"); 
===============================================================================================================

������������������� 2003.09.22(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- ��ȭ Event
- ��Ű ���� 
/common/needlogin.jsp 
- ��Ű �ޱ� 
/www/member/registerSuccess.jsp /www/event/2003/200309_moive.jsp 
/event/2003/200309_moive.jsp 
-------------------------------------------------------------------------------------------------------------------- 

/framework/EventRegisterCmd.java 
/cmd/event/EventRegisterCmd.java /entity/EventRegisterEntity.java /db/EventRegisterDb.java 
/member/RegisterCmd.java 
===============================================================================================================

- B2C �Ǽ���]
165.243.115.197( hib2cap / angel25 ) 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/framework 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/entity 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/db 
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/src/com/hiplaza/cmd/event  
LGEHIBCSE2S:/> cd usr/WebSphere/AppServer/installedApps/Dynamo.ear/dyn.war/www 
===============================================================================================================

- B2C �Ǽ���(image)
165.243.115.18( pjdept / header02 ) 
se85:/array2/B2C/www> index3.html 
===============================================================================================================

������������������� 2003.09.23(ȭ) �۾� ������������������� 
---> 07:30 ~ 21:00 ==> ���� 

- ��ȭ Event
- �α��� ���� ���� 
-------------------------------------------------------------------------------------------------------------------- 

<script language=javascript>   
	<% 
	if(result.equals("exist")) { // �̹� �̺�Ʈ�� ���� �� ��� 
	%> 
		alert("�̹� �̺�Ʈ�� ���� �ϼ̽��ϴ�."); 
	<%  
	} else if(result.equals("exist") && RegisterSpot.equals("00")) {  // �̹� �̺�Ʈ�� ���� �߰� ����Ȯ���� �ƴ� ���(ó�� �α���)   
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

- ��ż���
- ������ ���� �ݾ� �� �ְ� �� �� 
- DB���� �ð� �Ÿ��� 
- ���� Ȯ���� ���� �ݾ��̶� ���� ���� ����� ���� 
--------------------------------------------------------------------------------------------------------------------- 

/shop/main/usrauctionbid?aucroundid=21&model_code=RN-20CB11&time=231064316549147(���� ����) 
/framework/MasterController.java 
commands.put("/usrauctionbid", new AuctionBidCmd("$/www/auction/usrAuctionBidDetail.jsp","$/www/common/
ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp")); 
/cmd/auction/AuctionBidCmd.java /entity/AuctionBidEntity.java /db/AuctionBidDb.java  
===============================================================================================================

- /shop/main/usrauctionbidmsg(���� �ϱ�) 
/framework/MasterController.java 
commands.put("/usrauctionbidmsg", new AuctionBidCmd("$/www/auction/usrAuctionBid.jsp","$/www/common/
ErrorPage.jsp","$/www/common/needlogin.jsp","$/www/auction/usrAuctionNext.jsp"));  
/cmd/auction/AuctionBidCmd.java /entity/AucBidEntity.java /db/AuctionBidDb.java 
===============================================================================================================

������������������� 2003.09.24(��) �۾� ������������������� 
---> 07:20 ~ 19:00 ==> ���� 

- ��ȭ Event
- index3.html �α��� �ϱ� 
===============================================================================================================

������������������� 2003.09.25(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- ��ȭ Event
/event/2003/200309_moive.jsp 
/index3.html /index3Movie.jsp(���� �� ��� �� ��) 
  
 /framework/MasterController.java //��ȭ Event �α� �ƿ�(03_09.25)  @@@@@ 
commands.put("/logoutIndex3", new LogoutCmd3("$/www/member/login.jsp","$/www/member/logoutError.jsp",
"$/www/member/login.jsp"));  ///@@@@@@@@@ 
  
/cmd/event/EventRegisterCmd.java /cmd/member/LogoutCmd3.java.java  
===============================================================================================================

- ��ȭEvent �帧�� 
/index3.html(image����)  --> /member/LogoutCmd3.java: �α� �ƿ� ��Ŵ --> /index3Movie.jsp(�Ǽ���): Script 
--> /event/EventRegisterCmd.java: ��ȭ Event ��� 
---------------------------------------------------------------------------------------------------------------------

- ��ȭEvent �帧��- ����
/index3.html(image����)  --> /member/LogoutCmd3.java: �α� �ƿ� ��Ŵ --> /event/2003/200309_moive.jsp(�Ǽ���): �̺�Ʈ ȭ�� 
--> /event/EventRegisterCmd.java: ��ȭ Event ��� -->  /event/2003/200309_moive_ok.jsp: �̺�Ʈ ��� ���� ȭ�� 
===============================================================================================================

- B2C �α� ���
/usr/WebSphere/AppServer/laflog 
AP����(�Ǽ���)���� index3Movie.jsp�� �ν� �� ��: index3Movie.jsp�� ����(/shop/www/index3Movie.jsp) 
/shop/... ���� 
---------------------------------------------------------------------------------------------------------------------

- PDA �α� ���
se85:/array1/tas007> cd mobile/Wire_V52_SSL  
se85:/array1/tas007/mobile/Wire_V52_SSL> tail wirelog.txt 
===============================================================================================================

������������������� 2003.09.26(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- PDA �������
1. ����(HiMobileD Ver 1.3): i-Kit ��ü �� �ٽ� �õ� 
S/N: 4G26DW33X095 --> ��ȭ����(iPAQ) 
S/N: HV11D01K006513--> (CDMA2000 i-Kit PLUS)  // �̻� 
---------------------------------------------------------------------------------------------------------------------

2. i-Kit �̻� 
S/N: 4G27DW33501N --> ��ȭ����(iPAQ) 
S/N: HV11D01K008100--> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------

3. HiMobileD��ġ Prg ����(iPAQ File Store/HiMobileSetup.ex�� ����): �嵥�� ����(iPAQ���� ����) 
S/N: 4G29DW3370NP --> ��ȭ����(iPAQ) 
S/N: HV11D00K007633 --> (CDMA2000 i-Kit PLUS) 
---------------------------------------------------------------------------------------------------------------------

��ü������ �嵥���� ���ؼ� �׷��� �����⸦ ���� ���¿��� �α��� �õ��� �� 
===============================================================================================================

- ��ȹ �̺�Ʈ
LG �������ñ�� "O2(����)"������ 
- �ָ� ����
(9�� 27�� 24�� ���� ���� 30�� 24�ñ���) 
===============================================================================================================

������������������� 2003.09.29(��) �۾� ������������������� 
---> 07:30 ~ 19:00 ==> ���� 

- ��ż���
-- ���� �ϱ�(/db/AuctionBidDb.java) 
---------------------------------------------------------------------------------------------------------------------

-- ���ȸ�� ��ȸ(auc_round: ���ȸ�� Table) 
select auc_round_id, start_date, start_time, end_date, end_time from auc_round where auc_round_id = 22 
---------------------------------------------------------------------------------------------------------------------

-- ����(auc_bid_lst: ���� Table) 
insert into auc_bid_lst ( auc_round_id,user_id,model_code,bid_amt,bid_date,bid_time, auc_bid_lst_id )  
values ( 22, '927830', 'LC-D650', 490000, '20010929', '110253110253', sq_auc_bid_lst_id.nextval ) 

select  *  from auc_bid_lst where auc_round_id = 22 
---------------------------------------------------------------------------------------------------------------------

-- ���(auc: ��� Table) -> ��� ��û���� 
 update auc set applicant_cnt = nvl(applicant_cnt,0) + 1  
where auc_round_id = 22 and model_code = 'LC-D650'  

 select  *  from auc where auc_round_id = 22 and model_code = 'LC-D650'  
===============================================================================================================

-- ���� ���� ���� ���� Ȯ��(auc_bid_lst: ���� Table) 
select bid_amt from auc_bid_lst  where  auc_round_id = 22 and model_code = 'LC-D650'  and bid_amt = 490000.0  
===============================================================================================================

- B2C ���� ���
CRUD: Create Read Update Delete 
===============================================================================================================
 
������������������� 2003.09.30(ȭ) �۾� ������������������� 
---> 07:30 ~ 12:00 ==> ���� 

- ��ż���
Script���� �ش� �κ��� ����(input type:hidden, text) 
http://156.147.149.9/shop/main/usrauctionbidmsg?actType=bid&auc_round_id=22&model_code=LC-D650
&bid_date=20010930&bid_time=112400&bid_amt=490000 
===============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������