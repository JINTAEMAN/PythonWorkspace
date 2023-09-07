# ! /ast_vrfc.py		# 자산 검증 파일 

from openpyxl import load_workbook # 파일 불러오기 --> [기초 Data]
from openpyxl import Workbook
from openpyxl.styles import Font, Border, Side, PatternFill, Alignment
from openpyxl.styles import PatternFill
import sys	    # 파이씬 인터프리터 제어 Lib
import pyautogui    # 마우스와 키보드 제어 Lib
import time     # 시간 Lib
from datetime import datetime   # datetime Lib 
import calendar  #   calendar Lib
import requests
from bs4 import BeautifulSoup

def getMonthRage(year, month):      # 월 날짜 범위 설정 함수()
    date = datetime(year=year, month=month, day=1).date()
    monthrange = calendar.monthrange(date.year, date.month)
    first_day = calendar.monthrange(date.year, date.month)[0]
    last_day = calendar.monthrange(date.year, date.month)[1] 
    # print(" [@_T] ■■■ [/ast_vrfc.py] [getMonthRage]==> [T_91] [monthrange]"+ str(monthrange) )

    return monthrange

print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST Start] #########################] ■■■■■■ ")

now_ym = str(datetime.today().date()).replace('-','.')     # 오늘 년월(년.월) (2023.08.31)
now_ym = now_ym[0:7]     # 자산 년월(2023.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_02] [오늘 년월]"+ str(now_ym) ) 
# ---------------------------------------------------------------------------------------------------------------------->

ob_sort = 1      # 0B 처리 종류(1. 파일 조회, 2. 파일 삭제)

# sys.argv[0] = "/D/PythonWorkspace/01_ast_vrfc/ast_vrfc.py"         # 인자값1  ===> TEST @@@
# sys.argv[1] = "2023.09"         # 인자값2    ===> TEST @@@`
# print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_03] [인자값1]"+ str(sys.argv[0]) +"[인자값2]"+ str(sys.argv[1]) )

if len(sys.argv) < 2 :		# 인자값이 없으연
    ob_sort = 0
else :
    astYYM = sys.argv[1]   # 2번째 인자값 ==> 자산 년월 ■■■■■■ (2023.08)
    ob_sort = 1   # 2번째 인자값
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_03] [ob_sort]"+ str(ob_sort) )

if int(ob_sort) == 0 :   # 자산 년월 미입력 이면
    result = pyautogui.alert("자산 년월을 입력하세요. 예) 2023.08", title='[자산 년월 입력 오류]', button='OK')
    exit(0)     # 즉시 종료

# astYYM = "2023.09"    # 2번째 인자값 ==> 자산 년월 ■■■■■■ (2023.08)

astYYM = astYYM         # 자산 년월 ■■■■■■ (2023.08)
astYM = astYYM[2:7]     # 자산 년월(23.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_04] [astYYM]"+ str(astYYM) +"[astYM]"+ str(astYM) )

urlPath = "01_ast_vrfc/"   # URL 경로
openFileNm = "01. 자산 검증("+ astYM +").xlsx"   # 오픈 파일 명(01. 자산 검증(23.08).xlsx) 
wb = load_workbook(urlPath + openFileNm, data_only=True)    # 오픈 파일을 wb을 불러옴(data_only=True: 수식이 아닌 실제 데이터를 가지고 옴)

ws_stock = wb["91. 주식"]   # Dict 형태로 Sheet에 접근

# 종목 코드 리스트
codes = [
    '005380'   # 현대차     
    , '068270' # 셀트리온
    , '096770'  # SK이노베이션
]

row = 0 
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05]" )  

prchs_amt = 0               # 매입 금액
prchs_amt_sum = 0           # 매입 금액 합계
evl_amt = 0                 # 평가 금액
evl_amt_sum = 0             # 평가 금액 합계
evl_profitLoss_sum = 0      # 평가 손익 합계 
evl_profitLoss = 0          # 평가 손익
profitLossRate_sum = 0      # 손익률 합계 

for code in codes:
    url = f"https://finance.naver.com/item/sise.naver?code={code}"    # 네이버 증권 종목(f: 포맷 문자열, 리터럴 사용)
    # url = "https://finance.naver.com/item/sise.naver?code="+ code    # 네이버 증권 종목     
    # url = 'https://finance.naver.com/item/sise.naver?code=005380'    # 네이버 증권 종목 ===> TEST @@@ ===>

    response = requests.get(url)     # 웹 사이트 열기

    if response.status_code == 200:        
        html = response.text
        soup = BeautifulSoup(html, 'html.parser')
        price = soup.select_one("#_nowVal").text    # 현재가 ==>sCSS_SELECTOR
        # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05_1] [row_번째]"+ str(row) +"[현재가]"+ str(price) +"[url_주소]"+ str(url) )  

        price = price.replace(',', '')    
        # price =  5000000    # 현재가  TEST @@@ ===>
        # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_50] [row_번째] [soup]"+ str(soup) )

    else : 
        print(response.status_code) 
    # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05_2] [row_번째]"+ str(row) +"[종목 코드]"+ code +"[현재가]"+ str(price) ) 

    prchs_amt = int(ws_stock[f'S{row+5}'].value)                   # 매입 금액
    evl_amt = int(ws_stock[f'P{row+5}'].value) * int(price)         # 평가금액(엑셀) = 보유수량 * 보유수량(=P5*Q5)
    evl_profitLoss = (evl_amt) - prchs_amt   # 평가손익(엑셀) = 평가금액 - 매입금액(=T14-S14)
    
    ws_stock[f'D{row+5}'] = int(price)    # 현재가(엑셀)
    ws_stock[f'Q{row+5}'] = int(price)    # 현재가(엑셀)
    ws_stock[f'G{row+5}'] = evl_amt    # 평가금액(엑셀) = 보유수량 * 보유수량(=P5*Q5)  evl_profitLoss = 0        # 평가 손익
    ws_stock[f'T{row+5}'] = evl_amt    # 평가금액(엑셀) = 보유수량 * 보유수량(=P5*Q5)
    # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05_3] [row_번째]"+ str(row) +"[종목 코드]"+ code +"[01. 보유수량]"+ str(int(ws_stock[f'P{row+5}'].value)) +"[02. 현재가]"+ str(price) +"[03. 평가금액]"+ str(evl_amt) ) 

    ws_stock[f'H{row+5}'] = evl_profitLoss   # 평가손익(엑셀) = 평가금액 - 매입금액(=T14-S14)
    ws_stock[f'U{row+5}'] = evl_profitLoss   # 평가손익(엑셀) = 평가금액 - 매입금액(=T14-S14)
    ws_stock[f'I{row+5}'] = (((evl_amt) / prchs_amt) - 1) * 100   # 손익률(엑셀) = ((평가금액 / 매입금액) -1) *100 (=(T14/S14)-1) * 100)
    ws_stock[f'V{row+5}'] = (((evl_amt) / prchs_amt) - 1) * 100   # 손익률(엑셀) = ((평가금액 / 매입금액) -1) *100 (=(T14/S14)-1) * 100)

    evl_amt_sum = evl_amt_sum + evl_amt     # 평가 금액 합계
    evl_profitLoss_sum = evl_profitLoss_sum + evl_profitLoss      # 평가손익 합계
    prchs_amt_sum = prchs_amt_sum + prchs_amt      # 매입 금액 합계
    print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05_3] [row_번째]"+ str(row) +"[종목 코드]"+ code +"[01. 보유수량]"+ str(int(ws_stock[f'P{row+5}'].value)) +"[02. 매입 금액]"+ str(prchs_amt) +"[02. 현재가]"+ str(price) +"[03. 평가금액]"+ str(evl_amt) +"[04. 평가손익]"+ str(evl_profitLoss) ) 
    
    row = row + 1
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_05]" )

profitLossRate_sum = ((evl_amt_sum / prchs_amt_sum) - 1) * 100     # 손익률 합계 = ((평가금액 합계 / 매입금액 합계) -1) *1 00
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_06] [01. 평가금액 합계]"+ str(evl_amt_sum) +"[02. 매입금액 합계]"+ str(prchs_amt_sum) +"[03. 손익률 합계]"+ str(profitLossRate_sum) +"[05. 평가손익 합계]"+ str(evl_profitLoss) ) 

ws_stock["D3"] = evl_amt_sum    # 평가금액 합계(엑셀)
ws_stock["G9"] = evl_amt_sum    # 평가금액 합계(엑셀)
ws_stock["T9"] = evl_amt_sum    # 평가금액 합계(엑셀)
ws_stock["K3"] = evl_profitLoss      # 평가손익 합계(엑셀)
ws_stock["H9"] = evl_profitLoss      # 평가손익 합계(엑셀)
ws_stock["U9"] = evl_profitLoss      # 평가손익 합계(엑셀)
ws_stock["M3"] = profitLossRate_sum      # 손익률 합계(엑셀)
ws_stock["I9"] = profitLossRate_sum      # 손익률 합계(엑셀)
ws_stock["V9"] = profitLossRate_sum      # 손익률 합계(엑셀)

stockValue_D3 = ws_stock["D3"].value        # 주식 평가 금액
stockTotValue_F3 = ws_stock["F3"].value     # 주식 총 매입 금액
shinhaBValue_Y5 = ws_stock["Y5"].value      # 은행 결산@@ 신한은행 금액
kakaoBValue_Y6 = ws_stock["Y6"].value       # 은행 결산@@ 카카오 뱅크 금액
shinhybBValue_Y7 = ws_stock["Y7"].value     # 은행 결산@@ 신협 예금 금액
okSavBValue_Y8 = ws_stock["Y8"].value       # 은행 결산@@ OK 저축 은행 예금 금액
insuSonValue_P10 = ws_stock["P10"].value    # 21. 실비 보험(현대해상, 진수종)
insuValue_S10 = ws_stock["S10"].value       # 22. 실비 보험(한화손해보험, 잔태만)
realtyValue_U10 = ws_stock["U10"].value     # 3. 부동산(현아트빌 404호) 금액 
pension_L9 = ws_stock["L9"].value           # 91. 퇴직 연금(개인형 IPR) 금액 
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_07] [주식 평가 금액]"+ str(stockValue_D3) +"[신한은행 금액]"+ str(shinhaBValue_Y5) )

ws = wb["자산(2023)"]   # Dict 형태로 Sheet에 접근
prev_B7_amt = ws["B7"].value   # 70. [수협B] Sh 쑥쑥크는 아이적금(수종) 금액 --------> 이전 달 금액 
prev_B14_amt = ws["B14"].value   # 90. 총 합계 --------> 이전 달 금액
prev_A3 = ws["A3"].value   # 이전 자산 년월 --------> 이전 자산 년월
prev_A3 = prev_A3[0:7]     # 이전 자산 년월(2023.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_12] [prev_B7_amt]"+ str(prev_B7_amt) +"[prev_B14_amt]"+ str(prev_B14_amt) )

if str(astYYM) != str(now_ym) :   # 입력한 자산 년월와 오늘 년월이 다르면
    result = pyautogui.alert("입력한 자산 년월["+ str(astYYM) +"]와 오늘 년월["+ str(now_ym) +"]이 다릅니다.", title='[자산 년월 입력 오류]', button='OK')
    exit(0)     # 즉시 종료
else :
    if str(astYYM) == str(prev_A3) :   # 입력한 자산 년월와 이전 자산 년월 이면
        result = pyautogui.alert("입력한 자산 년월["+ str(astYYM) +"]이 이미 존재합니다.", title='[자산 년월 입력 오류]', button='OK')
        exit(0)     # 즉시 종료 
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_31] [입력한 자산 년월]"+ str(astYYM) +"[오늘 년월]"+ str(now_ym) +"[이전 자산 년월]"+ str(prev_A3) ) 
# ---------------------------------------------------------------------------------------------------------------------->

today = datetime.today().date()
month_range = getMonthRage(today.year, today.month)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_34] [today]"+ str(today) +"[month_range]"+ str(month_range) )

astLastDt = str(today.replace(day = month_range[1])).replace('-','.')   # 자산 마지막 일 ■■■■■■ "2023.08.31"
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_35] [자산 마지막 일]"+ str(astLastDt) )

astNm = "자산"     # 자산 명
clAcntCmt = ""     # A16 필드에 값 쓰기 --------> 결산 코멘트
# clAcntCmt = "결산 - 포항집에 김치 냉장고, 전자 레인지 구입(총 합계: 777,980원)"       # A16 필드에 값 쓰기 --------> 결산 코멘트
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■// [기초 Data 설정] //■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ----------->

ws.insert_rows(3, 16)       # 월별 자산 제목(3번째 줄 위치에 16줄을 추가)
ws.merge_cells("A3:D3")     # A3 부터 D3까지 셀을 싱글 셀로 병합

H5_amt = shinhaBValue_Y5    # [2_Tab] 은행 결산@@ 신한은행[기초 Data] ■■
B6_amt = stockValue_D3      # 77. 주식 투자 금액 ■■ -------->
C6_amt = stockTotValue_F3   # 77. 주식 총 매입 금액
H6_amt = kakaoBValue_Y6     # [2_Tab] 은행 결산@@ 세이프박스(카카오 뱅크)) 금액[기초 Data] ■■
# print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_39] [B7_amt]"+ type(B7_amt) +"[prev_B7_amt]"+ type(prev_B7_amt) )

B7_amt = int(prev_B7_amt.replace(',','')) + 100000  # 70. [수협B] Sh 쑥쑥크는 아이적금(수종) 금액 -------->
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_41] [B7_amt]"+ str(B7_amt) +"[prev_B7_amt]"+ str(prev_B7_amt) )

H7_amt = shinhybBValue_Y7   # [2_Tab] 은행 결산@@ 신협 예금 금액[기초 Data] ■■
B8_amt = pension_L9         # 91. 퇴직 연금(개인형 IPR) 금액[기초 Data] ■■ -------->
H8_amt = okSavBValue_Y8     # [2_Tab] 은행 결산@@ OK 저축 은행 예금 금액

H9_amt = int(H5_amt) + int(H6_amt)  + int(H7_amt) + int(H8_amt)   # [06] 은행 예. 적금 총합 
B5_amt = H9_amt             # 01. 은행([06]) 금액
B9_amt = int(H9_amt) + int(B6_amt) + B7_amt + int(B8_amt)   # 1. 총 예적금 --------> 

B10_amt = insuSonValue_P10   # 21. (무) 굿앤굿어린이CI보험(Hi1304)(현대해상, 진수종) 금액 -------->
B11_amt = insuValue_S10      # 22. (무) 한아름행복플러스종합보험1404(한화손해보험, 잔태만) 금액 --------> 
B12_amt = int(B10_amt) + int(B11_amt)   # 2. 총 보험금 -------->
B13_amt = realtyValue_U10    # 3. 부동산(현아트빌 404호) 금액 -------->

B14_amt = B9_amt + B12_amt + int(B13_amt)     # 90. 총 합계 금액 --------> 1. 총 예적금 + 2. 총 보험금 + 3. 부동산(현아트빌 404호) 
H12_amt = int(B14_amt) - int(prev_B14_amt.replace(',',''))   # [2_Tab] 전원 대비 증감@@ 총 합계 --> 90. 총 합계 - 이전 달 90. 총 합계
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_72] [총 합계]"+ str(H12_amt) +"[90. 총 합계_amt]"+ str(B14_amt) +"[이전 달 90. 총 합계]"+ str(prev_B14_amt) )

B15_amt = B9_amt            # 91. 가용 자산 금액 --------> 1. 총 예적금
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_81] [B15_amt]"+ str(B15_amt))
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->

ws.column_dimensions["G"].width = 18  # G열의 너비를 18로 설정

# 01. 값 쓰기
# ws.cell(row = 3, column = 1, value = astYYM +" "+ astNm)  # A3 필드에 값 쓰기(자산 년월)  -------->
ws["A3"].value = astYYM +" "+ astNm    # A3 필드에 값 쓰기(자산 년월)  -------->
ws["E3"].value = astLastDt             # E3 필드에 값 쓰기
ws["G3"].value = '은행 결산'            # G3 필드에 값 쓰기
ws["J3"].value = '지출'                 # J3 필드에 값 쓰기
ws["A4"].value = '내용'                 # A4 필드에 값 쓰기  -------->
ws["B4"].value = '금액'                 # B4 필드에 값 쓰기
ws["C4"].value = '원금'                 # C4 필드에 값 쓰기
ws["D4"].value = '손익'                 # D4 필드에 값 쓰기
ws["E4"].value = '수익률(%)'            # E4 필드에 값 쓰기
ws["G4"].value = '은행 자산 상태'        # G4 필드에 값 쓰기
ws["H4"].value = '금액'                 # H4 필드에 값 쓰기
ws["J4"].value = '내역'                 # J4 필드에 값 쓰기
ws["K4"].value = '금액'                 # K4 필드에 값 쓰기
ws["A5"].value = '01. 은행 예. 적금([06])'   # A5 필드에 값 쓰기 -------->
ws["B5"].value = format(B5_amt, ',')        # B5 필드에 값 쓰기 ■■■
ws["C5"].value = ''   # C5 필드에 값 쓰기
ws["D5"].value = ''   # D5 필드에 값 쓰기
ws["E5"].value = ''   # E5 필드에 값 쓰기
ws["G5"].value = '신한은행'              # G5 필드에 값 쓰기
ws["H5"].value = format(H5_amt, ',')    # H5 필드에 값 쓰기
ws["J5"].value = '91. 월 고정 지출'      # J5 필드에 값 쓰기
ws["K5"].value = '1,766,187'   	        # K5 필드에 값 쓰기
ws["A6"].value = '77. 주식 투자'         # A6 필드에 값 쓰기 -------->
ws["B6"].value = format(B6_amt, ',')    # B6 필드에 값 쓰기 --> 77. 주식 투자 금액
ws["C6"].value = format(C6_amt, ',')    # C6 필드에 값 쓰기
ws["D6"].value = ''                     # D6 필드에 값 쓰기 
ws["G6"].value = '세이프박스(카카오 뱅크)'   # G6 필드에 값 쓰기
ws["H6"].value = format(H6_amt, ',')       # H6 필드에 값 쓰기 
ws["J6"].value = ''   # J6 필드에 값 쓰기
ws["K6"].value = ''   # K6 필드에 값 쓰기
ws["A7"].value = '70. [수협B] Sh 쑥쑥크는 아이적금(수종)'		# A7 필드에 값 쓰기 -------->
ws["B7"].value = format(B7_amt, ',')    # B7 필드에 값 쓰기 
ws["G7"].value = '신협 예금'             # G7 필드에 값 쓰기
ws["H7"].value = format(H7_amt, ',')    # H7 필드에 값 쓰기
ws["J7"].value = ''   # J7 필드에 값 쓰기
ws["K7"].value = ''   # K7 필드에 값 쓰기
ws["A8"].value = '91. 퇴직 연금(개인형 IPR)' 		 # A8 필드에 값 쓰기 -------->
ws["B8"].value = B8_amt    		        # B8 필드에 값 쓰기
ws["C8"].value = '16,000,000'   	    # C8 필드에 값 쓰기
ws["E8"].value = '100,000' 		        # E8 필드에 값 쓰기
ws["G8"].value = 'OK 저축 은행 예금'     # G8 필드에 값 쓰기
ws["H8"].value = format(H8_amt, ',')    # H8 필드에 값 쓰기
ws["J8"].value = ''   # J8 필드에 값 쓰기
ws["K8"].value = ''   # K8 필드에 값 쓰기
ws["A9"].value = '1. 총 예적금'  	        # A9 필드에 값 쓰기 -------->
ws["B9"].value = format(H9_amt, ',')       # B9 필드에 값 쓰기 
ws["G9"].value= '[06] 은행 예. 적금 총합'    # G9 필드에 값 쓰기
ws["H9"].value = format(H9_amt, ',')   	   # H9 필드에 값 쓰기 --> [06] 은행 예. 적금 총합 금액 
ws["J9"].value= ''   		# J9 필드에 값 쓰기
ws["K9"].value = ''   		# K9 필드에 값 쓰기
ws["A10"].value = '21. (무) 굿앤굿어린이CI보험(Hi1304)(현대해상, 진수종)'  		# A10 필드에 값 쓰기 -------->
ws["B10"].value = format(B10_amt, ',')     # B10 필드에 값 쓰기 
ws["J10"].value = ''   		# J10 필드에 값 쓰기
ws["K10"].value = ''   	    # K10 필드에 값 쓰기 
ws["A11"].value = '22. (무) 한아름행복플러스종합보험1404(한화손해보험, 잔태만)'	 # A11 필드에 값 쓰기 -------->
ws["B11"].value = format(B11_amt, ',')     # B11 필드에 값 쓰기
ws["G11"].value = '전원 대비 증감'  # G11 필드에 값 쓰기 
ws["H11"].value = '금액'         # H11 필드에 값 쓰기
ws["J11"].value = ''   			# J11 필드에 값 쓰기
ws["K11"].value = ''   			# K11 필드에 값 쓰기
ws["A12"].value = '2. 총 보험금' 			# A12 필드에 값 쓰기 --------> 
ws["B12"].value = format(B12_amt, ',')     # B12 필드에 값 쓰기 --> 2. 총 보험금 금액 
ws["G12"].value = '총 합계'   		        # G12 필드에 값 쓰기 
ws["H12"].value = format(H12_amt, ',')     # H12 필드에 값 쓰기
ws["J12"].value = '지출(A) 총합'   	        # J12 필드에 값 쓰기
ws["K12"].value = '1,766,187'   		   # K12 필드에 값 쓰기
ws["A13"].value = '3. 부동산(현아트빌 404호)' 	# A13 필드에 값 쓰기 -------->
ws["B13"].value = format(B13_amt, ',')        # B13 필드에 값 쓰기
ws["J13"].value = ''   # J13 필드에 값 쓰기
ws["K13"].value = ''   # K13 필드에 값 쓰기
ws["A14"].value = '90. 총 합계'  		    # A14 필드에 값 쓰기 -------->
ws["B14"].value = format(B14_amt, ',')     # B14 필드에 값 쓰기 --> 90. 총 합계 금액
ws["J14"].value = ''   # J8 필드에 값 쓰기
ws["K14"].value = ''   # K8 필드에 값 쓰기
ws["A15"].value = '91. 가용 자산' 		    # A15 필드에 값 쓰기 -------->
ws["B15"].value = format(B15_amt, ',')     # B15 필드에 값 쓰기 --> 91. 가용 자산 금액
ws["J15"].value = '수입(B) 총합'   	        # J15 필드에 값 쓰기
ws["K15"].value = '0'   		           # K15 필드에 값 쓰기 
ws["A16"].value = clAcntCmt                # A16 필드에 값 쓰기 --------> 결산 코멘트 
ws["J16"].value = '총 합계([B] - [A])'      # J16 필드에 값 쓰기
ws["K16"].value = '0'   		           # K16 필드에 값 쓰기 --> 총 합계([B] - [A]) 금액

# 02. 스타일 적용드 스타일 적용(글자 색은 빨갛게, 이탤릭, 두껍게 적용)
ws["A3"].font = Font(name="돋움", bold=True, size=12)   # A3 필드(자산 년월)  -------->
ws["E3"].font = Font(name="돋움", bold=True, size=9)    # E3 필드 
ws["G3"].font = Font(name="돋움", bold=True, size=9, color="FF0000")   # G3 필드 --> 은행 결산
ws["J3"].font = Font(name="돋움", bold=True, size=9, color="FF0000")   # J3 필드 --> 지출
ws["A4"].font = Font(name="돋움", bold=False, size=9)  # A4 필드 -------->
ws["B4"].font = Font(name="돋움", bold=False, size=9)  # B4 필드
ws["C4"].font = Font(name="돋움", bold=False, size=9)  # C4 필드
ws["D4"].font = Font(name="돋움", bold=False, size=9)  # D4 필드
ws["E4"].font = Font(name="돋움", bold=False, size=9)  # E4 필드 
ws["G4"].font = Font(name="돋움", bold=False, size=9)  # G4 필드 --> 은행 자산 상태
ws["H4"].font = Font(name="돋움", bold=False, size=9)  # H4 필드 --> 금액
ws["J4"].font = Font(name="돋움", bold=False, size=9)  # J4 필드 --> 내역
ws["K4"].font = Font(name="돋움", bold=False, size=9)  # K4 필드 --> 금액
ws["H4"].font = Font(name="돋움", bold=False, size=9)  # H4 필드 --> 금액
ws["A5"].font = Font(name="돋움", bold=False, size=9)  # A5 필드 -------->
ws["B5"].font = Font(name="돋움", bold=False, size=9, color="FF0000")  # B5 필드 --> 01. 은행 예. 적금([06]) 금액
ws["G5"].font = Font(name="돋움", bold=False, size=9)  # G5 필드 
ws["H5"].font = Font(name="돋움", bold=False, size=9)  # H5 필드 
ws["G5"].font = Font(name="돋움", bold=False, size=9)  # G5 필드 --> 91. 월 고정 지출
ws["H5"].font = Font(name="돋움", bold=False, size=9)  # H5 필드 --> 금액
ws["J5"].font = Font(name="돋움", bold=False, size=9)  # J5 필드 --> 91. 월 고정 지출
ws["K5"].font = Font(name="돋움", bold=False, size=9)  # K5 필드 --> 금액
ws["A6"].font = Font(name="돋움", bold=False, size=9)  # A6 필드 -------->
ws["B6"].font = Font(name="돋움", bold=True, size=9, color="FF0000")    # B6 필드
ws["C6"].font = Font(name="돋움", bold=False, size=9, color="FF0000")   # C6 필드 --> 77. 주식 총 매입 금액 
ws["G6"].font = Font(name="돋움", bold=False, size=9)  # G6 필드 
ws["H6"].font = Font(name="돋움", bold=False, size=9)  # H6 필드 
ws["A7"].font = Font(name="돋움", bold=False, size=9)  # A7 필드 --------> 
ws["B7"].font = Font(name="돋움", bold=False, size=9)  # B7 필드 
ws["G7"].font = Font(name="돋움", bold=False, size=9)  # G7 필드 
ws["H7"].font = Font(name="돋움", bold=False, size=9)  # H7 필드 
ws["A8"].font = Font(name="돋움", bold=False, size=9)  # A8 필드 -------->
ws["B8"].font = Font(name="돋움", bold=False, size=9)  # B8 필드
ws["C8"].font = Font(name="돋움", bold=False, size=9)  # C8 필드
ws["E8"].font = Font(name="돋움", bold=False, size=9, color="FF0000")   # E8 필드
ws["G8"].font = Font(name="돋움", bold=False, size=9)  # G8 필드 
ws["H8"].font = Font(name="돋움", bold=False, size=9)  # H8 필드 
ws["A9"].font = Font(name="돋움", bold=True, size=9)    # A9 필드 -------->
ws["B9"].font = Font(name="돋움", bold=True, size=9)    # B9 필드
ws["G9"].font = Font(name="돋움", bold=False, size=9, color="FF0000")  # G9 필드
ws["H9"].font = Font(name="돋움", bold=False, size=9, color="FF0000")  # H9 필드
ws["A10"].font = Font(name="돋움", bold=False, size=9)  # A10 필드 -------->
ws["B10"].font = Font(name="돋움", bold=False, size=9)  # B10 필드
ws["A11"].font = Font(name="돋움", bold=False, size=9)  # A11 필드 -------->
ws["B11"].font = Font(name="돋움", bold=False, size=9)  # B11 필드
ws["G13"].font = Font(name="돋움", bold=False, size=9)  # G13 필드  
ws["H13"].font = Font(name="돋움", bold=False, size=9)  # H13 필드
ws["A12"].font = Font(name="돋움", bold=True, size=9)   # A12 필드 --------> 2. 총 보험금
ws["B12"].font = Font(name="돋움", bold=True, size=9)   # B12 필드
ws["G12"].font = Font(name="돋움", bold=True, size=9)   # G12 필드  
ws["H12"].font = Font(name="돋움", bold=True, size=9, color="FF0000")  # H12 필드 --> 2. 총 보험금 금액
ws["J12"].font = Font(name="돋움", bold=True, size=9)   # J12 필드 --> 지출(A) 총합
ws["K12"].font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K12 필드 
ws["A13"].font = Font(name="돋움", bold=True, size=9)   # A13 필드 -------->
ws["B13"].font = Font(name="돋움", bold=True, size=9)   # B13 필드 
ws["A14"].font = Font(name="돋움", bold=True, size=9)   # A14 필드 -------->
ws["B14"].font = Font(name="돋움", bold=True, size=9, color="FF0000")  # B14 필드
ws["A15"].font = Font(name="돋움", bold=True, size=9)   # A15 필드 -------->
ws["B15"].font = Font(name="돋움", bold=True, size=9, color="FF0000")   # B15 필드
ws["J15"].font = Font(name="돋움", bold=True, size=9)   # J15 필드 --> 수입(B) 총합
ws["K15"].font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K15 필드
ws["A16"].font = Font(name="돋움", bold=False, size=9)  # A16 필드-------->
ws["J16"].font = Font(name="돋움", bold=True, size=9)  	# J16 필드 --> 총 합계([B] -[A])
ws["K16"].font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K16 필드

# 03. alignment 적용
ws["A3"].alignment = Alignment(horizontal='center', vertical='center')      # A3 필드 alignment 설정 -------->
ws["E3"].alignment = Alignment(horizontal='right', vertical='center')       # E3 필드
ws["G3"].alignment = Alignment(horizontal='center', vertical='center')      # G3 필드 --> 은행 결산
ws["J3"].alignment = Alignment(horizontal='center', vertical='center')      # J3 필드 --> 지출
ws["A4"].alignment = Alignment(horizontal='center', vertical='center')      # A4 필드 -------->
ws["B4"].alignment = Alignment(horizontal='center', vertical='center')      # B4 필드
ws["C4"].alignment = Alignment(horizontal='center', vertical='center')      # C4 필드
ws["D4"].alignment = Alignment(horizontal='center', vertical='center')      # D4 필드
ws["E4"].alignment = Alignment(horizontal='center', vertical='center')      # E4 필드 
ws["G4"].alignment = Alignment(horizontal='center', vertical='center')      # G4 필드 --> 은행 자산 상태
ws["H4"].alignment = Alignment(horizontal='center', vertical='center')      # H4 필드 --> 금액
ws["J4"].alignment = Alignment(horizontal='center', vertical='center')      # J4 필드 --> 내역
ws["K4"].alignment = Alignment(horizontal='center', vertical='center')      # K4 필드 --> 금액
ws["A5"].alignment = Alignment(horizontal='left', vertical='center')        # A5 필드 -------->
ws["B5"].alignment = Alignment(horizontal='right', vertical='center')       # B5 필드 
ws["H5"].alignment = Alignment(horizontal='right', vertical='center')       # H5 필드  
ws["K5"].alignment = Alignment(horizontal='right', vertical='center')       # K5 필드 --> 금액
ws["A6"].alignment = Alignment(horizontal='left', vertical='center')        # A6 필드 -------->
ws["B6"].alignment = Alignment(horizontal='right', vertical='center')       # B6 필드 
ws["C6"].alignment = Alignment(horizontal='right', vertical='center')       # C6 필드 --> 77. 주식 총 매입 금액 
ws["H6"].alignment = Alignment(horizontal='right', vertical='center')       # H6 필드  
ws["B7"].alignment = Alignment(horizontal='right', vertical='center')       # B7 필드 --------> 
ws["H7"].alignment = Alignment(horizontal='right', vertical='center')       # H7 필드 
ws["B8"].alignment = Alignment(horizontal='right', vertical='center')       # B8 필드 -------->  
ws["C8"].alignment = Alignment(horizontal='right', vertical='center')       # C8 필드
ws["E8"].alignment = Alignment(horizontal='right', vertical='center')       # E8 필드  
ws["H8"].alignment = Alignment(horizontal='right', vertical='center')       # H8 필드 
ws["B9"].alignment = Alignment(horizontal='right', vertical='center')       # B9 필드 ------->
ws["H9"].alignment = Alignment(horizontal='right', vertical='center')       # H9 필드 
ws["B10"].alignment = Alignment(horizontal='right', vertical='center')      # B10 필드 ------->
ws["B11"].alignment = Alignment(horizontal='right', vertical='center')      # B11 필드 ------->
ws["G11"].alignment = Alignment(horizontal='center', vertical='center')     # G11 필드 ------->
ws["H11"].alignment = Alignment(horizontal='center', vertical='center')     # H11 필드
ws["B12"].alignment = Alignment(horizontal='right', vertical='center')      # B12 필드 --------> 금액(2. 총 보험금)
ws["G12"].alignment = Alignment(horizontal='center', vertical='center')     # G12 필드 
ws["H12"].alignment = Alignment(horizontal='right', vertical='center')      # H12 필드
ws["K12"].alignment = Alignment(horizontal='right', vertical='center')      # K12 필드 --> 금액(지출(A) 총합) 
ws["B13"].alignment = Alignment(horizontal='right', vertical='center')      # B13 필드 --------> 
ws["B14"].alignment = Alignment(horizontal='right', vertical='center')      # B14 필드 -------->
ws["B15"].alignment = Alignment(horizontal='right', vertical='center')      # B15 필드 -------->
ws["K15"].alignment = Alignment(horizontal='right', vertical='center')      # K15 필드 --> 금액(수입(B) 총합) 
ws["K16"].alignment = Alignment(horizontal='right', vertical='center')      # K16 필드 --> 금액(총 합계([B] -[A])) 

# 04. 테두리 적용
thin_border = Border(left=Side(style="thin"), right=Side(style="thin"), top=Side(style="thin"), bottom=Side(style="thin"))

ws["A3"].border = thin_border   # A3 필드 -------->
ws["B3"].border = thin_border   # B3 필드 
ws["C3"].border = thin_border   # C3 필드
ws["D3"].border = thin_border   # D3 필드 
ws["E3"].border = thin_border   # E3 필드
ws["G3"].border = thin_border   # G3 필드 --> image.png 
ws["H3"].border = thin_border   # H3 필드
ws["J3"].border = thin_border   # J3 필드 --> 지출 
ws["K3"].border = thin_border   # K3 필드  
ws["A4"].border = thin_border   # A4 필드 -------->
ws["B4"].border = thin_border   # B4 필드
ws["C4"].border = thin_border   # C4 필드
ws["D4"].border = thin_border   # D4 필드
ws["E4"].border = thin_border   # E4 필드
ws["G4"].border = thin_border   # G4 필드 --> 은행 자산 상태
ws["H4"].border = thin_border   # H4 필드 --> 금액
ws["J4"].border = thin_border   # J4 필드 --> 내역
ws["K4"].border = thin_border   # K4 필드 --> 금액
ws["A5"].border = thin_border   # A5 필드 -------->
ws["B5"].border = thin_border   # B5 필드
ws["C5"].border = thin_border   # C5 필드
ws["D5"].border = thin_border   # D5 필드
ws["E5"].border = thin_border   # E5 필드
ws["G5"].border = thin_border   # G5 필드
ws["H5"].border = thin_border   # H5 필드
ws["J5"].border = thin_border   # J5 필드 --> 91. 월 고정 지출
ws["K5"].border = thin_border   # K5 필드 --> 금액 
ws["A6"].border = thin_border   # A6 필드 -------->
ws["B6"].border = thin_border   # B6 필드
ws["C6"].border = thin_border   # C6 필드
ws["D6"].border = thin_border   # D6 필드 
ws["E6"].border = thin_border   # E6 필드
ws["G6"].border = thin_border   # G6 필드
ws["H6"].border = thin_border   # H6 필드
ws["J6"].border = thin_border   # J6 필드 --> 빈 칸
ws["K6"].border = thin_border   # K6 필드 --> 빈 칸 
ws["A7"].border = thin_border   # A7 필드 -------->
ws["B7"].border = thin_border   # B7 필드
ws["C7"].border = thin_border   # C7 필드
ws["D7"].border = thin_border   # D7 필드
ws["E7"].border = thin_border   # E7 필드
ws["G7"].border = thin_border   # G7 필드
ws["H7"].border = thin_border   # H7 필드
ws["J7"].border = thin_border   # J7 필드 --> 빈 칸
ws["K7"].border = thin_border   # K7 필드 --> 빈 칸 
ws["A8"].border = thin_border   # A8 필드 -------->
ws["B8"].border = thin_border   # B8 필드
ws["C8"].border = thin_border   # C8 필드
ws["D8"].border = thin_border   # D8 필드
ws["E8"].border = thin_border   # E8 필드
ws["G8"].border = thin_border   # G8 필드
ws["H8"].border = thin_border   # H8 필드
ws["J8"].border = thin_border   # J8 필드 --> 빈 칸
ws["K8"].border = thin_border   # K8 필드 --> 빈 칸 
ws["A9"].border = thin_border   # A9 필드 -------->
ws["B9"].border = thin_border   # B9 필드
ws["C9"].border = thin_border   # C9 필드
ws["D9"].border = thin_border   # D9 필드
ws["E9"].border = thin_border   # E9 필드
ws["G9"].border = thin_border   # G9 필드
ws["H9"].border = thin_border   # H9 필드
ws["J9"].border = thin_border   # J9 필드 --> 빈 칸
ws["K9"].border = thin_border   # K9 필드 --> 빈 칸 
ws["A10"].border = thin_border  # A10 필드 -------->
ws["B10"].border = thin_border  # B10 필드
ws["C10"].border = thin_border  # C10 필드
ws["D10"].border = thin_border  # D10 필드
ws["E10"].border = thin_border  # E10 필드
ws["H10"].border = thin_border  # H10 필드
ws["J10"].border = thin_border  # J10 필드 --> 빈 칸
ws["K10"].border = thin_border  # K10 필드 --> 빈 칸 
ws["A11"].border = thin_border  # A11 필드 -------->
ws["B11"].border = thin_border  # B11 필드
ws["C11"].border = thin_border  # C11 필드
ws["D11"].border = thin_border  # D11 필드
ws["E11"].border = thin_border  # E11 필드
ws["G11"].border = thin_border  # G11 필드
ws["H11"].border = thin_border  # H11 필드
ws["J11"].border = thin_border  # J11 필드 --> 빈 칸
ws["K11"].border = thin_border  # K11 필드 --> 빈 칸 
ws["A12"].border = thin_border  # A12 필드 -------->
ws["B12"].border = thin_border  # B12 필드
ws["C12"].border = thin_border  # C12 필드
ws["D12"].border = thin_border  # D12 필드
ws["E12"].border = thin_border  # E12 필드
ws["G12"].border = thin_border  # G12 필드
ws["H12"].border = thin_border  # H12 필드
ws["J12"].border = thin_border 	# J12 필드 ----> 지출(A) 총합
ws["K12"].border = thin_border  # K12 필드 
ws["A13"].border = thin_border  # A13 필드 -------->
ws["B13"].border = thin_border  # B13 필드
ws["C13"].border = thin_border  # C13 필드
ws["D13"].border = thin_border  # D13 필드
ws["E13"].border = thin_border  # E13 필드
ws["J13"].border = thin_border  # J13 필드 --> 빈 칸
ws["K13"].border = thin_border  # K13 필드 --> 빈 칸 
ws["A14"].border = thin_border  # A14 필드 -------->
ws["B14"].border = thin_border  # B14 필드
ws["C14"].border = thin_border  # C14 필드
ws["D14"].border = thin_border  # D14 필드
ws["E14"].border = thin_border  # E14 필드
ws["J14"].border = thin_border  # J14 필드 --> 빈 칸
ws["K14"].border = thin_border  # K14 필드 --> 빈 칸 
ws["A15"].border = thin_border  # A15 필드 -------->
ws["B15"].border = thin_border  # B15 필드
ws["C15"].border = thin_border  # C15 필드
ws["D15"].border = thin_border  # D15 필드
ws["E15"].border = thin_border  # E15 필드
ws["J15"].border = thin_border  # J15 필드 ----> 지출(A) 총합
ws["K15"].border = thin_border  # K15 필드 
ws["A16"].border = thin_border  # A16 필드 -------->
ws["B16"].border = thin_border  # B16 필드
ws["C16"].border = thin_border  # C16 필드
ws["D16"].border = thin_border  # D16 필드
ws["E16"].border = thin_border  # E16 필드
ws["J16"].border = thin_border 	# J16 필드 ----> 총 합계([B] -[A])
ws["K16"].border = thin_border  # K16 필드 

# 음영 색 지정
orangeFill = PatternFill(start_color='F79646', end_color='F79646', fill_type='solid')   # 오렌지 색
orangeWeekFill = PatternFill(start_color='FCD5B4', end_color='FCD5B4', fill_type='solid')    # 연한 오렌지
grayFill = PatternFill(start_color='C0C0C0', end_color='C0C0C0', fill_type='solid')     # 회 색
grayDarkFill = PatternFill(start_color='B8CCE4', end_color='B8CCE4', fill_type='solid')    # 진한 회색
blueFill = PatternFill(start_color='DAEEF3', end_color='DAEEF3', fill_type='solid')     # 하늘 색
blueDarkFill = PatternFill(start_color='8DB4E2', end_color='8DB4E2', fill_type='solid')     # 진한 하늘 색
blueDark2Fill = PatternFill(start_color='CCFFFF', end_color='CCFFFF', fill_type='solid')     # 진한 하늘 색2
yellowFill = PatternFill(start_color='FFFF00', end_color='FFFF00', fill_type='solid')   # 노란 색
violetFill = PatternFill(start_color='E4DFEC', end_color='E4DFEC', fill_type='solid')   # 보라 색
greenWeekFill = PatternFill(start_color='CCFFCC', end_color='CCFFCC', fill_type='solid')   # 연한 녹색
greenFill = PatternFill(start_color='92D050', end_color='92D050', fill_type='solid')    # 녹색

# 05. 지정된 음영 색으로 음역 색칠하기(배경색 설정)
ws["A3"].fill = orangeFill      # A3 필드-------->
ws["E3"].fill = orangeFill      # E3 필드
ws["G3"].fill = blueDark2Fill   # G3 필드 --> 은행 결산 
ws["J3"].fill = blueDark2Fill   # J3 필드 --> 지출 
ws["A4"].fill = grayFill        # A4 필드 -------->
ws["B4"].fill = grayFill        # B4 필드
ws["C4"].fill = grayFill        # C4 필드
ws["D4"].fill = grayFill        # D4 필드
ws["E4"].fill = grayFill        # E4 필드 
ws["G4"].fill = grayFill        # G4 필드 --> 은행 자산 상태
ws["H4"].fill = grayFill        # H4 필드 --> 금액
ws["J4"].fill = grayFill        # J4 필드 --> 내역
ws["K4"].fill = grayFill        # K4 필드 --> 금액
ws["A5"].fill = blueFill        # A5 필드 -------->
ws["B5"].fill = blueFill        # B5 필드
ws["C5"].fill = blueFill        # C5 필드
ws["D5"].fill = blueFill        # D5 필드
ws["E5"].fill = blueFill        # E5 필드 
ws["H5"].fill = blueFill        # H5 필드 
ws["B6"].fill = yellowFill      # B6 필드 -------->
ws["H6"].fill = blueFill        # H6 필드
ws["B7"].fill = blueDarkFill    # B7 필드 --------> 
ws["H7"].fill = blueFill        # H7 필드
ws["B8"].fill = blueDarkFill    # B8 필드 -------->
ws["E8"].fill = violetFill      # E8 필드
ws["H8"].fill = blueFill        # H8 필드 
ws["A9"].fill = greenWeekFill   # A9 필드 -------->
ws["B9"].fill = greenWeekFill   # B9 필드
ws["C9"].fill = greenWeekFill   # C9 필드
ws["D9"].fill = greenWeekFill   # D9 필드
ws["E9"].fill = greenWeekFill   # E9 필드 
ws["G9"].fill = blueDark2Fill   # G9 필드 
ws["H9"].fill = blueDark2Fill   # H9 필드 
ws["G11"].fill = grayFill       # G11 필드
ws["H11"].fill = grayFill       # H11 필드
ws["A12"].fill = greenFill      # A12 필드 -------->
ws["B12"].fill = greenFill      # B12 필드
ws["C12"].fill = greenFill      # C12 필드
ws["D12"].fill = greenFill      # D12 필드
ws["E12"].fill = greenFill      # E12 필드
ws["G12"].fill = yellowFill     # G12 필드
ws["H12"].fill = yellowFill     # H12 필드
ws["J12"].fill  = greenFill     # J12 필드 --> 지출(A) 총합
ws["K12"].fill = greenFill      # K12 필드
ws["A13"].fill = greenFill      # A13 필드 -------->
ws["B13"].fill = greenFill      # B13 필드
ws["C13"].fill = greenFill      # C13 필드
ws["D13"].fill = greenFill      # D13 필드
ws["E13"].fill = greenFill      # E13 필드 
ws["A14"].fill = yellowFill     # A14 필드 -------->
ws["B14"].fill = yellowFill     # B14 필드
ws["C14"].fill = yellowFill     # C14 필드
ws["D14"].fill = yellowFill     # D14 필드
ws["E14"].fill = yellowFill     # E14 필드
ws["A15"].fill = yellowFill     # A15 필드 -------->
ws["B15"].fill = yellowFill     # B15 필드
ws["C15"].fill = yellowFill     # C15 필드
ws["D15"].fill = yellowFill     # D15 필드
ws["E15"].fill = yellowFill     # E15 필드
ws["J15"].fill = grayDarkFill   # J15 필드 --> 수입(B) 총합
ws["K15"].fill = grayDarkFill   # K15 필드
ws["A16"].fill = orangeWeekFill # A16 필드 -------->
ws["B16"].fill = orangeWeekFill # B16 필드
ws["C16"].fill = orangeWeekFill # C16 필드
ws["D16"].fill = orangeWeekFill # D16 필드
ws["E16"].fill = orangeWeekFill # E16 필드
ws["J16"].fill = yellowFill     # J16 필드 --> 총 합계([B] -[A])
ws["K16"].fill = yellowFill     # K16 필드
# ===============================================================================================================================


# 90 점 넘는 셀에 대해서 초록색으로 적용
# for row in ws.rows:
#     for cell in row:
#         # if row.column == 1 and cell.column == 1: # A 번호열은 제외       
#         #     cell.alignment = Alignment(horizontal="center", vertical="center")   # 각 cell 에 대해서 정렬
#         # else:
#         #     cell.alignment = Alignment(horizontal="center", vertical="center")   # 각 cell 에 대해서 정렬   
#         #     # center, left, right, top, bottom

#         if cell.column == 1: # A 번호열은 제외
#             continue

#         # cell 이 정수형 데이터이고 90 점보다 높으면
#         # if isinstance(cell.value, int) and cell.value > 90:
#         #     cell.fill = PatternFill(fgColor="00FF00", fill_type="solid") # 배경을 초록색으로 설정
#         #     cell.font = Font(color="FF0000") # 폰트 색상 변경
# ===============================================================================================================================

# 틀 고정
ws.freeze_panes = "B2" # B2 기준으로 틀 고정

rsltFileNm = "01. 자산 검증("+ astYM +")_rslt.xlsx"    # 결과 파일 명(01. 자산 검증(23.08)_rslt.xlsx)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_91] [결과 파일 명]"+ rsltFileNm )

wb.save(urlPath + rsltFileNm)
# wb.save("01. 자산 검증(23.08)_rslt.xlsx")
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_99] ■■■■■■ [######################### [자산 검증 파일 TEST End] #########################] ■■■■■■\n\n\n\n")