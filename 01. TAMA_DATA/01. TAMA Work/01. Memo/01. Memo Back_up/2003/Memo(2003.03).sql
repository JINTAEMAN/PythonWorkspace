

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2003.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2003.03.03(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00 ==> 주간업무 03_03 1째주
 
- 공사비 SP 수정 
- --<NAME> 추가: SELFS01, SKDB00(실제 DB) 
- [LSTD 등록] 수정 
- [LSTD 등록] 공사비 수정 
- Saved Excel Open(O) 가능 - Upload(U) 경로 설정 
Ex) C:\LOTTESK_TIS\공통\Tools\Excel\FrmEF105.xls 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.04(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00 ==> 

- IO문서작업 
- 공사비, 차량관리(LSTD) 
- DB문서작업 수정 
- --<NAME> 추가 
- 부서별인원 등록(식자재): EG142  
------------------------------------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_05 --부서별식수인원 DB 
ORDER BY Work_DT DESC, IO_YM DESC 

SELECT C.Bsn_Part, C.Bsn_Part_Nm, C.Bsn_Part_Nm FROM ACCT..AAA_T_00 as C  WHERE C.Bsn_Part = 01 --사업부   
SELECT B.DEPT_ID, B.Bsn_Part FROM HRMS..HHA_T_01 B WHERE B.DEPT_ID = 0  --부서코드  
------------------------------------------------------------------------------------------------------------------  
EGB_T_05: 부서별식수인원 
발생부서 DEPT_ID int NOT NULL Yes 
년월 IO_YM char(7) NOT NULL Yes 
귀속부서 DEPT_ID2 int NOT NULL Yes 
식수인원 Food_eatcnt int NOT NULL No 
집계부서 DEPT_ID3 int NOT NULL No 
작성자 WORK_ID int NULL No 
작성일자 Work_DT smalldatetime NULL No  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.05(수) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00

- 부서별인원 등록(식자재): EG142 
- 전월자료 가져오기 cmd 
===============================================================================================================

If iBeforeIO_YM = 1 Then    '전월자료 가져오기이면 
	strIO_YM = Format(DateAdd("m", -1, strIO_YM), "yyyy-mm") 
Else 
	strIO_YM = txtIO_YM.Text 
End If 

txtIO_YM.Text = strIO_YM 
===============================================================================================================

- 식수인원  
lblFood_EatCnt.Caption = Format(lblFood_EatCnt.Caption, "##,##") 
===============================================================================================================

- 식자재 구입실적 현황: EG140 
EGB_T_03: 식자재 수불명세 
입출구분 IO_SW char(1) NOT NULL Yes 
발생부서 DEPT_ID int NOT NULL Yes 
수불일자 IO_DT char(10) NOT NULL Yes 
일련번호 IO_NO int NOT NULL Yes 
순번 IO_NO2 int NOT NULL Yes 
식자재품목 FoodItem_ID char(5) NOT NULL No 
수량 QTY decimal(15,3) NOT NULL No 
단가 REQ_UP decimal(15,3) NOT NULL No 
금액 Supp_Amt decimal(18,0) NOT NULL No 
부가세 Vat decimal(18,0) NOT NULL No 
비고 Remark varchar(60) NULL No 
-----------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_03 ORDER BY IO_DT DESC --식자재 수불명세 DB 
SELECT * FROM EGB_T_01 ORDER BY FoodItem_ID --식자재 품목Master DB 

EGB_T_01: 식자재 품목Master 
품목코드 FoodItem_ID char(5) NOT NULL Yes 
품목명 FoodItem_NM varchar(50) NOT NULL No 
식품구분 Food_GRP char(5) NOT NULL No -- 대분류 
단위 UNIT char(5) NOT NULL No 
재고관리여부 STK_MNG_TY char(1) NOT NULL No 
부가세유무 VAT_TY char(1) NOT NULL No 
타시스템코드 EtcSysCd1 varchar(20) NOT NULL No 
타시스템코드2 EtcSysCd2 varchar(20) NOT NULL No 
참고사항 Remark varchar(50) NOT NULL No 
작업자 WORK_ID int NOT NULL No 
작업일자 WORK_DT smalldatetime NULL No 
-----------------------------------------------------------------------------------------  

combo DB 찾기( SP-> EXMPS에서) 
  dbo.UP_GetCombo '700' 

combo 소분류정보 찾기 => EGB_T_01 DB에서(Food_GRP:식품구분(대분류)) 
SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='751' -- (식품구분: '751'): cboFoodGubun 
---------------------------------------------------------------------------------------------------------------

751 00001 채소류 
751 00002 김치류 
751 00003 육류 
751 00004 수산건어물 
751 00005 육가공 
751 00006 곡류 
751 00007 빵 
751 00008 우유 
751 00009 기타 
---------------------------------------------------------------------------------------------------------------

SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='700' and SCAT_NM1 = 1 -- (수불구분-: '700'): Cbo_FoodInOut 
SELECT L_CD, S_CD, S_Nm FROM ACCT..AAA_T_09 WHERE L_CD='752'  -- (식자재단위-: '752'): Cbo_FoodUnit 
---------------------------------------------------------------------------------------------------------------
SELECT '700' as ComboId , S_CD AS Code , S_NM AS Name, 
	'' AS EXT1, '' AS EXT2, '' AS EXT3, '' AS EXT4, '' AS EXT5 
FROM ACCT..AAA_T_09  
WHERE LTRIM(RTRIM(SCAT_NM1)) = LTRIM(RTRIM('')) 
AND L_CD  = '700' 
ORDER BY S_CD 

'식품구분 Combo 
oMulticomboE.SetCombo cboFoodGubun, Cbo_FoodGrp, addAll     '식품구분-> "751" 
cboFoodGubun.ListIndex = 0     

'수불구분 Combo 
oMulticomboE.SetCombo cboFoodSubul, Cbo_FoodInOut, addNone, 1     '수불구분-> "700" 
cboFoodSubul.ListIndex = 0 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.06(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 입고처별 구입현황(식자재): EG141
EGB_T_02: 식자재수불공통 
입출구분 IO_SW char(1) NOT NULL Yes 
발생부서 DEPT_ID int NOT NULL Yes 
수불일자 IO_DT char(10) NOT NULL Yes 
일련번호 IO_NO int NOT NULL Yes 
공장구분 PLANT_CD char(5) NOT NULL No 
수불구분 IO_CD char(5) NULL No 
거래처 Cust_Id int NOT NULL No 
수불부서 Dept_Id2 int NOT NULL No 
증빙유형 McdEvidKind char(5) NOT NULL No 
공급가 Supp_amt decimal(18,0) NOT NULL No 
부가세 Vat decimal(18,0) NOT NULL No 
참고사항 Remark varchar(50) NOT NULL No 
결의부서 Dept_Id3 int NOT NULL No 
결의일자 Exp_dt3 char(10) NOT NULL No 
결의번호 Exp_No3 int NOT NULL No 
작업자 Work_id int NOT NULL No 
작업일자 work_DT smalldatetime NULL No  
--------------------------------------------------------------------------------------

SELECT * FROM EGB_T_02 ORDER BY FoodItem_ID -- 식자재수불공통 DB 
SELECT Cust_Id, Cust_Nm FROM ACCT..AAA_T_12 WHERE Cust_Id = '92' --거래처 
--------------------------------------------------------------------------------------

- 일자별 주부식 현황(식자재): EG139 
EGB_T_04: 식자재 재고Master 
발생부서 DEPT_ID int NOT NULL Yes 
품목코드 FoodItem_ID char(5) NOT NULL Yes 
년월 IO_YM char(7) NOT        NULL Yes 
전월재고량 before_qty decimal(15,3) NOT NULL No --전월재고량(정기이월) 
당월입고량 curr_iqty decimal(15,3) NOT NULL No 
당월출고량 curr_oqty decimal(15,3) NOT NULL No  
--------------------------------------------------------------------------------------  

SELECT * FROM EGB_T_04 -- 식자재 재고Master DB 
ORDER BY IO_YM DESC, FoodItem_ID DESC, DEPT_ID DESC 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.03.07(금) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00

- 식자재 구입실적 현황( EG140) 수정 
  '최상위 행에 컬럼별 합계 정보를 제공(true:입력용, False:조회용) 
        Call SS1.AddNewLineForCalc(False, SS1.ColX(SS1_QTY), SS1.ColX(SS1_SUPP_AMT), _ 
                                SS1.ColX(SS1_Vat), SS1.ColX(SS1_ToTal)) 
===============================================================================================================
 
-- 식자재 수불명세 DB(EGB_T_03) - 전체 개수
SELECT  * 
FROM EXPMS..EGB_T_03 A 
    INNER JOIN EGB_T_01 as B       --품목명 
        On A.FoodItem_ID = B.FoodItem_ID   
    INNER JOIN ACCT..AAA_T_09 as C   --단위            
        On B.UNIT = C.S_Cd 
            and C.L_CD='752'  
    INNER JOIN ACCT..AAA_T_09 as D   --식품구분코드             
        On B.Food_GRP = D.S_Cd 
            and D.L_CD='751'   
ORDER BY A.FoodItem_ID ASC, A.IO_SW, A.DEPT_ID, A.IO_DT, A.IO_NO, A.IO_NO2 ASC 
===============================================================================================================
 
-- 식자재 수불명세 DB(EGB_T_03) - 품목명별 조회: A.FoodItem_ID이 동일한 모든 데이타 그룹] 
SELECT    MAX(D.S_Nm) as 식품구분 
,       MAX(B.FoodItem_NM) as 품목명     
,       SUM(A.QTY) as 수량 
,       MAX(C.S_Nm) as 단위 
,       AVG(A.REQ_UP) as 단가 
,       SUM(A.Supp_Amt) as 공급가 
,       SUM(A.Vat) as 부가세 
,       합계 = (Cast(SUM(A.Supp_Amt) as FLOAT) + Cast(SUM(A.Vat) as FLOAT)) 
FROM EXPMS..EGB_T_03 A 
    INNER JOIN EGB_T_01 as B       --품목명             
        On A.FoodItem_ID = B.FoodItem_ID   
    INNER JOIN ACCT..AAA_T_09 as C   --단위            
        On B.UNIT = C.S_Cd 
            and C.L_CD='752'  
    INNER JOIN ACCT..AAA_T_09 as D   --식품구분코드             
        On B.Food_GRP = D.S_Cd 
            and D.L_CD='751'  
WHERE A.IO_DT between '2003-03-01' and '2003-03-07' 
     and A.DEPT_ID = CASE WHEN -1 = -1 THEN A.DEPT_ID                      
                          ELSE -1 END 
     and A.FoodItem_ID = CASE WHEN '%' = '%' THEN A.FoodItem_ID 
                              ELSE '%' END   
     and A.IO_SW = right('0'+Cast('00001' as varChar),1)    --1자리로 조정하여 비교 
GROUP BY A.FoodItem_ID 
===============================================================================================================

% 식자재 수불명세 DB(EGB_T_03) 에서 품목명별( A.FoodItem_ID)에 대한 식품구분(D.S_Nm), 단위(C.S_Nm)를 구한다. 
bc_EG140.dll 수정, 재등록 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.08(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 식자재 구입실적 현황( EG140) 수정 
 - SS1_DblClick시 해당 Row 노란 배경색 설정 
  
With SS1    '<SNAME> 구매품목 대상 집계 내역 Main 
	.ReDraw = False 
	.CellEditMode = False 
	'SSinit 0, , , , Col수, Hidden Col위치, 0, Me.name, 쉬트네임 
	.SSinit 0, "", "", "", 14, 15, 0, Me.Name, "SS1.Name" 
	'SSinit   Display순서, Cell Type, Cell Color, Lock여부, 
	'         Cell Width, Display length, 소수점위치, Column명, Remark, Key, nHalign 
	.SSinit SS1_TOTAL_DT, "H", " ", "", 10, 8, 0, "집계일자", ""            '--HIDDEN COLUMN       
	.ReDraw = True 
	.RowAccentCase = WhenDbclick 
	.RowAccentColor = RGBRowAccent 
End With 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.10(월) 작업 ■■■■■■■■■■■■■■■■■■  
---> 07:30 ~ 18:00 ==> 주간업무 03_03 2째주

- 부서별인원 등록( EG142) 수정 
- 전월 자료 가져오기 
- 수정 문제 
Const SS1_DEPT_ID2_CD_Org = 6   추가 
===============================================================================================================

'================== <Name> Sheet 상수 정의=========================== 
'SS1 ===> 
Const SS1_DEPT_ID2 = 1          '<Name> 귀속부서 
Const SS1_DIVI_ID = 2           '<Name> 사업부 
Const SS1_Food_EatCnt = 3       '<Name> 인원 
Const SS1_DEPT_ID3 = 4          '<Name> 집계부서 
Const SS1_DEPT_ID2_CD = 5       '<Name> 귀속부서코드                            'Hidden 
Const SS1_DEPT_ID2_CD_Org = 6   '<Name> 귀속부서코드_Origin(Open시 존재 코드)   'Hidden    ' \\\\\\\\\\\ 
Const SS1_DIVI_ID_CD = 7        '<Name> 사업부코드                              'Hidden 
Const SS1_DEPT_ID3_CD = 8       '<Name> 집계부서코드                            'Hidden 
===============================================================================================================

- 일자별 주부식 현황( EG139) 수정 
- 0번째 ROW  헤더부분을 2개로 하기
  With SS1    '<SNAME> 일자별 주부식 내역 
        .ColHeaderRows = 2              '<DESC>헤더부분을 2개로한다. 
        .Row = 1 
        .RowHeight(-1) = CFONTSIZE + 1  '<DESC>헤더는 11로 
        .FontBold = True                '<DESC>헤더글씨 굵게 
  
        'SSinit 0, , , , Col수, Hidden Col위치, 0, Me.name, 쉬트네임 
        .SSinit 0, "", "", "", SS1_ToTal, 0, 0, Me.Name, "SS1.Name" 
        'SSinit   Display순서, Cell Type, Cell Color, Lock여부, 
        '         Cell Width, Display length, 소수점위치, Column명, Remark, Key, nHalign 
        .SSinit SS1_Food_GRP, "E", "", "L", 10, 10, 0, "식품구분", "" 
        .SSinit SS1_FoodItem_NM, "E", "", "L", 20, 20, 0, "품목명", "" 
        .SSinit SS1_REQ_UP, "F", "", "L", 10, 10, 0, "단가", "" 
        .SSinit SS1_Unit, "E", "", "L", 8, 8, 0, "단위", "" 
        .SSinit SS1_BF_Stock_QTY, "F", "", "L", 12, 12, 0, "전일재고", "" 
        .SSinit SS1_IN_QTY, "F", "", "L", 10, 10, 1, "입고", ""                 '<NAME>입고 
        .SSinit SS1_IN_Amt, "F", "", "L", 10, 10, 0, "입고", "" 
        .SSinit SS1_OUT_QTY, "F", "", "L", 10, 10, 1, "출고", ""                '<NAME>출고 
        .SSinit SS1_OUT_Amt, "F", "", "L", 10, 10, 0, "출고", "" 
        .SSinit SS1_ToTal, "F", "", "L", 10, 10, 1, "현재고", "" 
         
        .SetValue SS1_Food_GRP, -999, "식품구분"       '<NAME>식품구분 
        .SetValue SS1_FoodItem_NM, -999, "품목명"      '<NAME>품목명 
        .SetValue SS1_REQ_UP, -999, "단가"             '<NAME>단가 
        .SetValue SS1_Unit, -999, "단위"               '<NAME>단위 
        .SetValue SS1_BF_Stock_QTY, -999, "전일재고"   '<NAME>전일재고 
        .SetValue SS1_IN_QTY, -999, "수량"             '<NAME>수량(입고) 
        .SetValue SS1_IN_Amt, -999, "가격"             '<NAME>가격(입고) 
        .SetValue SS1_OUT_QTY, -999, "수량"            '<NAME>수량(출고) 
        .SetValue SS1_OUT_Amt, -999, "가격"            '<NAME>가격(출고) 
        .SetValue SS1_ToTal, -999, "현재고"            '<NAME>현재고 
                 
        '<DESC> MERGE 시킴 
        .SetValue 0, 0, " " 
        .SetValue 0, -999, " " 
         
        .Row = 0:           .Row2 = -999 
        .RowMerge = 1 

        .Col = 0:           .Col2 = 0 
        .ColMerge = 1 
         
        .AddCellSpan SS1.ColX(SS1_Food_GRP), -1000, 1, 2        '식품구분 
        .AddCellSpan SS1.ColX(SS1_FoodItem_NM), -1000, 1, 2     '품목명 
        .AddCellSpan SS1.ColX(SS1_REQ_UP), -1000, 1, 2          '단가 
        .AddCellSpan SS1.ColX(SS1_Unit), -1000, 1, 2            '단위 
        .AddCellSpan SS1.ColX(SS1_BF_Stock_QTY), -1000, 1, 2    '전일재고 
        .AddCellSpan SS1.ColX(SS1_ToTal), -1000, 1, 2           '현재고 
         
        '<DESC>정렬을 막음 
        .SortDisable = True 
        '<DESC>타이틀을 움직이지 못하게 
        .ColMovingDisable = True 
        .BlockMode = False 
         
    End With 
            SS1.CellEditMode = False 
            SS1.ReDraw = False 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.11(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 일자별 주부식 현황( EG139) 수정 
- 전일재고, 입고, 현재고 
===============================================================================================================

2003-03-05이면 
전월재고 = 전기이월(before_qty) + (1, 2월의 curr_iqty - curr_oqty) + 전원재고(03-01~04)까지 EGB_T_03 DB의 입출고 누계 
2003-03-05 입고는 입고에 누척고 
현재고 계산 = 전원재고 + 전인재고(03-01~04) + 당일재고(03-05) 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.12(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 일자별 주부식 현황( EG139) 수정 
- 전일재고, 입고, 현재고 
- #temp 테이블 사용하여 수정 
===============================================================================================================

SELECT * FROM EXPMS..EGB_T_03 A WHERE A.IO_DT>= '2004-03-01' and A.DEPT_ID = 16 
SELECT *FROM EXPMS..EGB_T_04 A WHERE A.IO_YM = '2004-03' and A.DEPT_ID = 16 
SELECT *FROM #temp 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.13(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 일자별 주부식 현황( EG139) 수정 
===============================================================================================================

- 나누기 계산 
단가 = A.IAMT1 / (CASE WHEN A.IQTY1 = 0 THEN 1 ELSE A.IQTY1 END) 

% 만약, 2003-03-12이면 
EGB_T_04 DB에서 
1. 전월재고(STOCK_MON_BF) = 전기이월(STOCK_MON) + (2003년 1, 2월의 월입고량(BF_MON_IQTY) - 월입고량(BF_MON_OQTY)) 
-- 2003-01에서 2003-02까지 
EGB_T_03 DB에서 
전일 까지의 입고량(IQTY) -- 2003-03-01에서 2003-03-11까지  
전일 까지의 출고량(OQTY) -- 2003-03-01에서 2003-03-11까지   
2. 전일재고(STOCK) = 전월재고(STOCK_MON) + (전일 까지의 입고량(IQTY) - 전일 까지의 입고량(OQTY)) 
당일 입고량,금액(IQTY1, IAMT1) 
당일 출고량,금액(OQTY1, OAMT1) 
3. 현재고 = 전일재고(STOCK) + (당일 입고량(IQTY1) - 당일 출고량(OQTY1)) 

SELECT * FROM EXPMS..EGB_T_03 A WHERE A.IO_DT>= '2004-03-01' and A.DEPT_ID = 16 
SELECT *FROM EXPMS..EGB_T_04 A WHERE A.IO_YM >= '2004-01' and A.DEPT_ID = 16 

% 만약, 2003-01-10 이면( 해당 월이 1월이면) 
EGB_T_04 DB에서 전월재고(STOCK_MON)는 2003-01에 해당하는 전기이월(STOCK_MON)만 가져옴 
% 만약, 2003-02-01 이면( 해당 일이 1일이면) 
EGB_T_03 DB에서 전일재고(STOCK)는 전월재고(STOCK_MON)만 가져옴 
===============================================================================================================

- 부서별인원 등록(EG142) 수정 
- 조회년월, 전월 데이터 가져오기 수정 
처음 로드시 전월(2003-02) 데이터 가져오기를 해서 조회년월(2003-03)의 데이타가 확인하고 데이타가 존재하면 조회 불가능 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.14(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 부서별인원 등록(EG142) 수정 
- 귀속부서 중복 등록 
 begin 
      RAISERROR ('귀속부서(%d)는 이미 존재하여 수정할 수 없습니다.',16, 1, @pDEPT_ID2)  WITH SETERROR 
      return 
 end 

SELECT * FROM EXPMS..EGB_T_05 A WHERE A.IO_YM= '2003-02' and A.DEPT_ID = 16 
===============================================================================================================

- 공사관리 신규 등록(EF101) 수정 
- SS2에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM),   -- 콤보 
   중분류(SS2_GoodsLine_NM), 제품명(SS2_Item_nm) 추가 -- 코드헬프 

MCD_ITEM = "095" Mcd_Item_Id = "398" 

 Set adoRs = oMulticomboE.GetComboRs(MCD_ITEM) 
    Call SSComboAddByRs(SS2, adoRs, SS2_ITEM_NM, -1)   '제품명(SS2 Combo) -> 410 
    adoRs.Close 
    Set adoRs = Nothing 

   SELECT * FROM PRDT..PAG_T_02 AS H 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.15(토) 작업 ■■■■■■■■■■■■■■■■■■   

- 공사관리 신규 등록(EF101) 수정 
- 제품명
If .ColX(SS2_Plant_NM) = Col Then          '공장구분 이면 ==================== 
        strPlant_CD = SSGetComboCode(SS2, .ColX(SS2_Plant_NM), Row) 
        .Row = Row:      .Col = .ColX(SS2_Plant_CD) 
        .Text = strPlant_CD     '공장구분CD 입력 

'("#PTT", strPlant_CD)로 조회하여 생산과(SS2_PTEM_NM) 쉬트에 해당 데이타를 뿌리기 
        Set adoRs = oMulticomboE.GetComboRs("#PTT", strPlant_CD) 
        Call SSComboAddByRs(SS2, adoRs, SS2_PTEM_NM, Row)   '생산과(SS2 Combo) -> 071 
        adoRs.Close 
        Set adoRs = Nothing 
end if 
===============================================================================================================

- EFA_T_01(공사Master)에서 제품명(Item_Id), 중분류GoodsLine_Cd(), 제품라인(PLine_Cd) 제외 
EFA_T_03 -- 공사신청품목 추가 부분 
제품중분류 GoodsLine_Cd char(5) 
생산라인 PLine_Cd char(3) 
제품 Item_Id char(9) 

세부공정 ProcD_Cd char(5) 
고정자산여부 Asst_YN char(1) 
고정자산번호 Asset_Cd char(6) 
합산여부 Add_TY char(5) 

공장 Plant_Cd char(2) 
생산과 PTEM_ID int 
공정 Proc_Cd varchar(4) 
------------------------------------------------------------- 

EFA_T_09 -- 공사예상품목 추가 부분 
제품중분류 GoodsLine_Cd char(5) 
생산라인 PLine_Cd char(3) 
제품 Item_Id char(9) 
공장 Plant_Cd char(2) 
생산과 PTEM_ID int 
공정 Proc_Cd varchar(4) 
===============================================================================================================

공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM),  
   제품중분류(SS2_GoodsLine_NM), 제품(SS2_Item_nm) 추가 
------------------------------------------------------------- 

-- 공장(Plant_Cd) 
      SELECT @pComboId as ComboId , CODE_CD as Code , CODE_NM AS Name, 
               '' AS EXT1, '' AS EXT2, '' AS EXT3, '' AS EXT4, '' AS EXT5 
           FROM PRDT..PAA_T_02 
          WHERE CODEMNG_NO = '071' 
===============================================================================================================

-- 생산과(PTEM_ID)  
  SELECT DISTINCT a.pteam_id as CODE, isnull(b.dept_nm,'') as NAME 
FROM PRDT..PAP_T_22 A LEFT JOIN HRMS..HHA_T_01 B  
ON A.PTEAM_ID = B.DEPT_ID 
WHERE NOT A.PTEAM_ID IS NULL  
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.17(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00 ==> 주간업무 03_03 3째주

- 공사관리 신규 등록(EF101) 수정  
- 공장(Plant_Cd) 
SELECT CODE_CD, CODE_NM 
FROM PRDT..PAA_T_02 
WHERE CODEMNG_NO = '071' 
CODE_CD  CODE_NM 
11 영등포 
12 천안 
13 안산 
15 평택 
31 영등포외주 
32 천안외주 
33 안산외주 
90 전사공통 
99 본사 
----------------------------------------------------------------------------------------------------------- 

- 생산과(PTEM_ID) ==> '#PT', 공장정보 
SELECT DISTINCT A.PLANT_CD, a.pteam_id, B.DEPT_NM 
FROM PRDT..PAP_T_22 A LEFT JOIN HRMS..HHA_T_01 B  
ON A.PTEAM_ID = B.DEPT_ID 
WHERE NOT A.PTEAM_ID IS NULL 
AND A.PLANT_CD = '' -- and A.PLANT_CD='11' --공장 

A.PLANT_CD a.pteam_id, B.DEPT_NM 
11 102 생산1과 
11 103 생산2과 
12 114 생산과 
31 196 생산관리팀 
----------------------------------------------------------------------------------------------------------- 

- 생산라인(PLine_Cd) ==> '072', 공장정보, 생산과 
SELECT  G.PLINE_CD, F.CODE_NM, G.PTEAM_ID 
FROM PRDT..PAA_T_02 as F 
INNER JOIN PRDT..PAP_T_22 as G 
    On F.CODE_CD = G.PLINE_CD 
    WHERE F.CODEMNG_NO = '072' 
     and G.PLANT_CD = '11' -- and MNGLIST2='11'     -공장정보 
     and PTEAM_ID  ='102' -- and MNGLIST2='503' -생산과 

CODE_CD CODE_NM MNGLIST2 
101 I/C 배합실 102 
102 VITA-1호 102 
390 번들제품 114 
----------------------------------------------------------------------------------------------------------- 

- 공정(Proc_Cd) ==> '073', 공장정보, 생산라인 
SELECT H.CODE_CD, H.CODE_NM, H.MNGLIST1, H.MNGLIST2 
FROM PRDT..PAA_T_02 as H  
WHERE H.CODEMNG_NO = '073'  
and H.MNGLIST1 = '11' -- and MNGLIST1='11'  -공장정보 AND PLANT_CD = @pWhere1 
and H.MNGLIST2 = '101' -- and MNGLIST2='101'  -생산라인 AND PTEAM_ID  = H.MNGLIST2 
----------------------------------------------------------------------------------------------------------- 

- 세부 공정(ProcD_Cd) ==> '074', 공장정보, 생산라인, 공정 
SELECT I.CODE_CD, I.CODE_NM, I.MNGLIST1, I.MNGLIST1, I.MNGLIST2, I.MNGLIST3 
FROM PRDT..PAA_T_02 as I 
WHERE I.CODEMNG_NO = '074'  
and I.MNGLIST1='11' -- and MNGLIST1='11'  -공장정보 
and I.MNGLIST2='101' -- and MNGLIST2='101'  -생산라인 
and I.MNGLIST2='101' -- and MNGLIST2='1000'  -공정 
----------------------------------------------------------------------------------------------------------- 

- ComboBoxList 콤보 정보 보기 
 .Col = .ColX(SS2_PTEM_NM): .Row = .Row + 1 
MsgBox .TypeComboBoxList 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.18(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 공사관리 신규 등록(EF101) 수정 
UP_EF101M02 수정, UP_EF101Q04 수정 
c.f) 생산- PE720 
===============================================================================================================

- 물품 구매의뢰 등록(EF103) 수정  
 SS2에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM), 
   제품중분류(SS2_GoodsLine_NM), 제품(SS2_Item_nm) 추가 ----> Hidden 
 SS3에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM), 
   제품중분류(SS2_GoodsLine_NM), 제품(SS2_Item_nm) 추가 
 ------------------------------------------------------------------------------------------------------------------------- 

'시트의 생산과콤보 재설정 
oMultiCombo.SSSetCombo SS, SS.ColX(SS_PTEAM), -1, CD생산과, strPlant    '<Name>생산과 <PName>SS 

'시트의 생산라인콤보 재설정 
oMultiCombo.SSSetCombo SS, SS_PLINE, SS.Row, CD생산과라인, strPlant, _ 
	 GetComboCode(cboPteam_Id)                    '<Name>생산라인 <PName>SS 

'시트의 공정콤보 재설정 
oMultiCombo.SSSetCombo SS, SS.ColX(SS_PROC), -1, CD공정코드, strPlant   '<Name>공정 <PName>SS 
------------------------------------------------------------------------------------------------------------------------- 

SELECT * FROM EFA_T_03  WHERE Cont_Ym>='2003-03' 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.19(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 물품 구매의뢰 등록(EF103) 수정 
 SS2 일부 추가, SS3 일부 추가 
UP_EF103M01 수정, UP_EF103Q03 수정 
===============================================================================================================

- 물품 구매의뢰 내역(EF110) 수정  --> 의뢰번호 ▶(cmdSearchNum) Click  
 UP_EF110Q02 수정  
===============================================================================================================

- 품목(대-중분류) 선택(EF141) 수정  --> 행추가(cmdInsert) Click 
 With FrmEF103.SS3 일부 칼럼위치 수정  
===============================================================================================================

- 공사 계약사항 등록(EF105) 수정 
 물품결의서 Print에서 공장명, 제품라인, 생산라인 수정  
UP_EF105Q09 
===============================================================================================================

- Inner JOIN 
두개의 관련된 키가 있는 테이블에서 Column의 값을 비교 후 
Join 조건에 맞는 행만 검색합니다.  

- OUTER JOIN 
두 테이블에서 지정된 쪽인 LEFT 또는 RIGHT 쪽의 
모든 결과를 보여준후 반대쪽에 대해는 매칭값이 없어도 
보여주는 JOIN을 의미 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.20(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 공사계약 완료 등록(EF111) 수정 
공사품목별진행현황 Print에서 제품중분류, 제품라인, 생산라인 수정 
UP_EF111Q03 
===============================================================================================================

- 일자별식수인원 등록(EG145) 추가 
===============================================================================================================

SELECT * FROM EGB_T_06 --일자별식수인원 DB 
ORDER BY IO_DT DESC 

발생부서 Dept_Id int 
일자 IO_DT char(10) 
조식인원 InWon1 int 
중식인원 InWon2 int 
석식인원 InWon3 int 
야식인원 InWon4 int 
총인원 TotInWon int 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.21(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 공사관리 신규 등록(EF101) 수정 
- 생산라인 수정() 
◇ 실DB 수정 데이타 등록 
◇ 파일 서버 COM 등록 
-  EF101, EF103,  EF105, EF110, EF111 
===============================================================================================================

- [날짜 형식 변경] 
- 년월일을 월일로 
===============================================================================================================

IO_DT = 2003-03-01 
strIO_YM = Mid(IO_YM , 1, 7)    ' 년월일을 년월로 전환 
strIO_YM = 2003-03
===================================================================================== 

If Mid(Arr(lngI, 1), 1, 7) <> Trim(txtIO_YM.Text) Then      '수정이면 
	MsgBox "조회년월과 일자가 같은 년월이여야 합니다.", vbInformation, "GetItem" 
	GetItem = Null 
	.Row = lngI:         .Col = SS1_IO_DT 
	.Action = SS_ACTION_ACTIVE_CELL 
	Exit Function 
End If 
===============================================================================================================

- SP에서  
' 년월일로 조회 
WHERE SUBSTRING(A.IO_DT, 1, 7) = @pIO_YM 
===============================================================================================================

- 줄 색깔 변경
- Dbclick시 줄 색깔 변경 
  .RowAccentCase = WhenDbclick 
   .RowAccentColor = RGBRowAccent 
===============================================================================================================

- 파일 서버 COM 등록
- Code Help 찾기 
-공통, 생산, 회계 SP에서 HelpCode1_Query를 검토 
( 000 ~ : 공통 100 ~ : 영업 300 ~      : 생산 
400 ~ 699 : 회계 700 ~ 799 : 지출관리 900 ~     : 인사/급여)  
   가. Sheet 에서의 CodeHelp 사용 
'      Call objcodehelp.GetHelpCodeFromSheet( _ 
'          "Major Code", 쉬트, 쉬트_row, Code_Column, Name_Column, _ 
'           '값을 넘겨받을 control', '값을 넘겨받을 control', 0, 0, 0, 0 (<- 값을 받을 Control 이 없다면  
0 으로 한다.), _ 
'          '(True or False)', '(True or False)', "조회조건값 ", " 조회조건값 ", " 조회조건값 ", " 조회조건값 ", " ") 
Help Key Press 여부, 검색조건(서버검색 or 로컬검색 - 일반적으로 False 로 한다.)  
------------------------------------------------------------------------------------------------------------------- 

'      Call objcodehelp.GetHelpCodeFromSheet( _ 
'          "135", ss1, ss1.ActiveRow, ss1.ColX(SS1_CAR_CD2), ss1.ColX(SS1_CAR_CD3), _ 
'           ss1.ColX(SS1_CAR_ID), 0, 0, 0, ss1.ColX(SS1_CAR_CLASS), 0, _ 
'           Bool, False, " ", " ", " ", " ", " ") 

나. Control 에서 CodeHelp 사용 
쉬트에서의 사용과 동일하다  (차이점은 쉬트에서 사용할 때 쉬트의 ROW 를 지정한다는 점이다.) 
'      Call objcodehelp.GetHelpCodeFromControl("001", txtPart_Cd, txtPart_nm, _ 
'                  Nothing, Nothing, lblPart_ex, Nothing, Nothing, Nothing, _ 
'                  Bool, False, "", "", "", "") 
------------------------------------------------------------------------------------------------------------------- 

  ElseIf Control = "txtPart_nm" Then 
'      Call objcodehelp.GetHelpCodeFromControl("001", txtPart_Cd, txtPart_nm, _ 
'                  Nothing, Nothing, lblPart_ex, Nothing, Nothing, Nothing, _ 
'                  Bool, False, "", "", "", "") 
  end if 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.22(토) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 일자별 주부식 현황(EG139) 수정 
===============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2003.03.24(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00 ==> 주간업무 03_03 4째주

- 일자별식수인원 등록(EG145) 수정 
- 합계 계산 안함 
◇ 부서별인원 등록(EG142) 수정 
- 조회시 data가 없으면 정규직 식수인원 clear 
- 결의번호 존재시 추가입력 불가 
- 삭제 버튼 추가 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.25(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- 부서별인원 등록(EG142) 수정 
- 귀속부서 수정시 에러  
- 일자별 주부식 현황(EG139) 수정 
- 조회내용(전일재고, 품목구분,품목명) 순으로 조회 
- 출력물 추가 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.26(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 부서별인원 등록(EG142) 수정 
- 귀속부서 수정시 에러 
===============================================================================================================

- Long 이 ""일 경우 
Len으로 ""걸러내고 Trim(.Text) 으로 0이 아닌 것 걸러냄 

If Len(Trim(.Text)) <> 0 Then '결의번호가 존재하면 
           If Trim(.Text) <> 0 Then 
===============================================================================================================

-  삭제(SSHD_CUT)가 문제가 생기면[SSHD_CUT = "∨"] 
NewData(), Form_Default()에서 SS1을 초기화 

   SS1.SSClear 
   SS1.AddEditLine 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.27(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 부서별인원 등록(EG142) 수정  
◇ 주소 가져오기[ cf.) frmSB160 ] 
 COMMON database에서 
 - HelpCode1_Query 
 CHS_T_31_city_L DB(대도시),  CHS_T_32_city_S DB(중소도시),  CHS_T_33 DB(상세) 
 CHS_T_01 DB(분류코드-대), CHS_T_02 DB(분류코드-중) 
---------------------------------------------------------------------------------------------------------- 

 SELECT C.ZipCode, rtrim(A.Name)+' '+ rtrim(B.Name)+' '+ rtrim(C.Name) 
FROM   CHS_T_31_city_L A, CHS_T_32_city_S B, CHS_T_33 C 
WHERE  ((A.Level1 = C.Level1) and (B.Level1=C.Level1 and B.Level2=C.Level2))  
	AND  C.ZipCode like   rtrim(ltrim(@iStartCode+'%' ))  
ORDER BY C.ZipCode 
---------------------------------------------------------------------------------------------------------- 

SELECT C.ZipCode  as 우편번호 , rtrim(A.Name)+' '+ rtrim(B.Name)+' '+ rtrim(C.Name) as 풀주소 
FROM CHS_T_31_city_L A, CHS_T_32_city_S B, CHS_T_33 C  
WHERE ((A.Level1 = C.Level1) And (B.Level1 = C.Level1 And B.Level2 = C.Level2))    
	-- AND C.ZipCode like  '%3%'  
---------------------------------------------------------------------------------------------------------- 

SELECT * 
FROM  CHS_T_33 C  
WHERE  C.Name  like  '%%' 

IF @imajorcode='003' 
BEGIN 
        SELECT c.ZipCode,rtrim(a.Name)+' '+ rtrim(b.Name)+' '+ rtrim(c.Name),'','','','','','','' 
        FROM   CHS_T_31_city_L a  with (nolock), CHS_T_32_city_S b  with (nolock), CHS_T_33 c   with (nolock) 
        WHERE  ((a.Level1 = c.Level1) and (b.Level1=c.Level1 and b.Level2=c.Level2))  
AND  c.ZipCode like   rtrim(ltrim(@iStartCode+'%' ))  
        ORDER BY c.ZipCode 
     
        RETURN 
END 
===============================================================================================================
 
- 2장 이상 출력할 경우 
- cf.) 공사비 결의서 생성(EF119) 수정 
EF111Q02 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.28(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00

- VB6.0 Package 만들기 
1. DAO Drivers에서 Jet 2.x: Jet 2.x 선택 
2. Include File에서 주소록(03_03.24).mdb파일과 필요한 .dll .ocx 파일 선택(쓸데 없는 파일 모두 제외) 
===============================================================================================================

- msado25.tlb 제외 
전체용량 15M -> 6.29M (압축후 용량: 3.35M) 
- 공사계약 완료 등록(EF111) 수정  
- SS2에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM), 
   제품중분류(SS2_GoodsLine_NM), 제품(SS2_Item_nm) 추가 
- 공사계약 완료 승인(EF132) 수정 
- SS2에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM), 
   제품중분류(SS2_GoodsLine_NM), 제품(SS2_Item_nm) 추가 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.29(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:30 ~ 18:00

- 공사 계약사항 등록(EF105) 수정 
===============================================================================================================

■■■■■■■■■■■■■■■■■■ 2003.03.31(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:30 ~ 18:00 ==> [주간업무 03_04 1째주

- 공사관리 신규 등록(EF101) 수정 
- SS2에 공장구분(SS2_Plant_NM), 생산과(SS2_PTEM_NM), 생산라인(SS2_PLine_NM), 공정(SS2_Proc_NM) 부분 수정 
===============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■