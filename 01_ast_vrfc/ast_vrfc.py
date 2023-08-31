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

def getMonthRage(year, month):      # 월 날짜 범위 설정 함수()
    date = datetime(year=year, month=month, day=1).date()
    monthrange = calendar.monthrange(date.year, date.month)
    first_day = calendar.monthrange(date.year, date.month)[0]
    last_day = calendar.monthrange(date.year, date.month)[1] 
    # print(" [@_T] ■■■ [/ast_vrfc.py] [getMonthRage]==> [T_91] [monthrange]"+ str(monthrange) )

    return monthrange

print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST Start] #########################] ■■■■■■ ")

now_ym =  str(datetime.today().date()).replace('-','.')     # 오늘 년월(년.월) (2023.08.31)
now_ym = now_ym[0:7]     # 자산 년월(2023.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_02] [오늘 년월]"+ str(now_ym) ) 
# ---------------------------------------------------------------------------------------------------------------------->

ob_sort = 0      # 0B 처리 종류(1. 파일 조회, 2. 파일 삭제) ■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 :		# 인자값이 없으연
    ob_sort = 1
else :
    ob_sort = sys.argv[1]   # 2번째 인자값

astYYM = ob_sort  # 자산 년월 ■■■■■■ (2023.08)
astYM = astYYM[2:7]     # 자산 년월(23.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_11] [astYYM]"+ str(astYYM) +"[astYM]"+ str(astYM) )

urlPath =  "01_ast_vrfc/"   # URL 경로
openFileNm = "01. 자산 검증("+ astYM +").xlsx"   # 오픈 파일 명(01. 자산 검증(23.08).xlsx) 
wb = load_workbook(urlPath + openFileNm)   # 오픈 파일을 wb을 불러옴
ws = wb.active  # 활성화 되어있는 시트 설정(시트명 : "업")

prev_B7_amt = ws["B7"].value   # 70. [수협B] Sh 쑥쑥크는 아이적금(수종) 금액 --------> 이전 달 금액 
prev_B14_amt = ws["B14"].value   # 90. 총 합계 --------> 이전 달 금액
prev_A3 = ws["A3"].value   # 이전 자산 년월 --------> 이전 자산 년월
prev_A3 = prev_A3[0:7]     #  이전 자산 년월(2023.08)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_12] [prev_B7_amt]"+ str(prev_B7_amt) +"[prev_B14_amt]"+ str(prev_B14_amt) )

if str(ob_sort) != str(now_ym) :   # 입력한 자산 년월와 오늘 년월이 다르면
    result = pyautogui.alert("입력한 자산 년월["+ str(ob_sort) +"]와 오늘 년월["+ str(now_ym) +"]이 다릅니다.", title='[자산 년월 입력 오류]', button='OK')
    exit(0)     # 즉시 종료
else :
    if str(ob_sort) == str(prev_A3) :   # 입력한 자산 년월와 이전 자산 년월 이면
        result = pyautogui.alert("입력한 자산 년월["+ str(ob_sort) +"]이 이미 존재합니다.", title='[자산 년월 입력 오류]', button='OK')
        exit(0)     # 즉시 종료 
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_31] [입력한 자산 년월]"+ str(ob_sort) +"[오늘 년월]"+ str(now_ym) +"[이전 자산 년월]"+ str(prev_A3) ) 
# ---------------------------------------------------------------------------------------------------------------------->

today = datetime.today().date()
month_range = getMonthRage(today.year, today.month)
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_34] [today]"+ str(today) +"[month_range]"+ str(month_range) )

astLastDt = str(today.replace(day = month_range[1])).replace('-','.')   # 자산 마지막 일 ■■■■■■ "2023.08.31"
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_35] [자산 마지막 일]"+ str(astLastDt) )

astNm = "자산"  # 자산 명
clAcntCmt = "결산 - 포항집에 김치 냉장고, 전자 레인지 구입(총 합계: 777,980원)"       # A16 필드에 값 쓰기 --------> 결산 코멘트
# ---------------------------------------------------------------------------------------------------------------------->

ws.insert_rows(3, 16)   # 월별 자산 제목(3번째 줄 위치에 16줄을 추가)
ws.merge_cells("A3:D3")     # A3 부터 D3까지 셀을 싱글 셀로 병합

B5_amt = "102,076,660"  # 01. 은행([06] - [05]) 금액
H5_amt = "8,714,520"    # [2_Tab] 은행 결산@@ 신한은행[기초 Data] ■■
B6_amt = "73,235,700"   # 77. 주식 투자 금액[기초 Data] ■■ -------->
C6_amt = "113,971,000"  # 77. 주식 총 매입 금액
H6_amt = "26,039,654"   # [2_Tab] 은행 결산@@ 세이프박스((카카오 뱅크)) 금액[기초 Data] ■■
# print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_39] [B7_amt]"+ type(B7_amt) +"[prev_B7_amt]"+ type(prev_B7_amt) )

B7_amt = int(prev_B7_amt) + 100000  # 70. [수협B] Sh 쑥쑥크는 아이적금(수종) 금액 --------> 
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_41] [B7_amt]"+ str(B7_amt) +"[prev_B7_amt]"+ str(prev_B7_amt) )

H7_amt = "42,000,000"   # [2_Tab] 은행 결산@@ 신협 예금 금액[기초 Data] ■■
B8_amt = "17,663,214"   # 91. 퇴직 연금(개인형 IPR) 금액[기초 Data] ■■ -------->
H8_amt = "30,000,000"   # [2_Tab] 은행 결산@@ OK 저축 은행 예금 금액[기초 Data] ■■
B9_amt = int(B5_amt.replace(',','')) + int(B6_amt.replace(',','')) + B7_amt + int(B8_amt.replace(',',''))   # 1. 총 예적금 --------> 

H9_amt = int(H5_amt.replace(',','')) + int(H6_amt.replace(',',''))  + int(H7_amt.replace(',','')) + int(H8_amt.replace(',',''))   # [06] 은행 예. 적금 총합
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_61] [H9_amt]"+ str(H9_amt) )

B10_amt = "52,000"      # 21. (무) 굿앤굿어린이CI보험(Hi1304)(현대해상, 진수종) 금액     -------->
B11_amt = "66,880"      # 22. (무) 한아름행복플러스종합보험1404(한화손해보험, 잔태만) 금액   --------> 
B12_amt = int(B10_amt.replace(',','')) + int(B11_amt.replace(',',''))   # 2. 총 보험금  -------->  ]
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_71] [2. 총 보험금]"+ str(B12_amt))

B13_amt = "280,000,000"     # 3. 부동산(현아트빌 404호) 금액    -------->
B14_amt = B9_amt + B12_amt + int(B13_amt.replace(',',''))   # 90. 총 합계 금액 --------> 1. 총 예적금 + 2. 총 보험금 + 3. 부동산(현아트빌 404호) 
H12_amt = int(B14_amt) - int(prev_B14_amt)     # [2_Tab] 전원 대비 증감@@ 총 합계 --> 90. 총 합계 - 이전 달 90. 총 합계
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_72] [총 합계]"+ str(H12_amt) +"[90. 총 합계_amt]"+ str(B14_amt) +"[이전 달 90. 총 합계]"+ str(prev_B14_amt) )

B15_amt = B9_amt  # 91. 가용 자산 금액    --------> 1. 총 예적금
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_81] [B15_amt]"+ str(B15_amt))
# ---------------------------------------------------------------------------------------------------------------------->

# 01. 값 쓰기
ws.cell(row = 3, column = 1, value = astYYM +" "+ astNm)  # A3 필드에 값 쓰기(자산 년월)  -------->
ws.cell(row = 3, column = 5, value = astLastDt)   # E3 필드에 값 쓰기
ws.cell(row = 3, column = 7, value='은행 결산')     # G3 필드에 값 쓰기
ws.cell(row = 3, column = 10, value='지출')        # J3 필드에 값 쓰기
ws.cell(row = 4, column = 1, value='내용')   # A4 필드에 값 쓰기  -------->
ws.cell(row = 4, column = 2, value='금액')   # B4 필드에 값 쓰기
ws.cell(row = 4, column = 3, value='원금')   # C4 필드에 값 쓰기
ws.cell(row = 4, column = 4, value='손익')   # D4 필드에 값 쓰기
ws.cell(row = 4, column = 5, value='수익률(%)')   # E4 필드에 값 쓰기
ws.cell(row = 4, column = 7, value='은행 자산 상태')   # G4 필드에 값 쓰기
ws.cell(row = 4, column = 8, value='금액')   # H4 필드에 값 쓰기
ws.cell(row = 4, column = 10, value='내역')   # J4 필드에 값 쓰기
ws.cell(row = 4, column = 11, value='금액')   # K4 필드에 값 쓰기
ws.cell(row = 5, column = 1, value='01. 은행([06] - [05])')   # A5 필드에 값 쓰기 -------->
ws.cell(row = 5, column = 2, value = B5_amt)   # B5 필드에 값 쓰기 ■■■
ws.cell(row = 5, column = 3, value='')   # C5 필드에 값 쓰기
ws.cell(row = 5, column = 4, value='')   # D5 필드에 값 쓰기
ws.cell(row = 5, column = 5, value='')   # E5 필드에 값 쓰기
ws.cell(row = 5, column = 7, value='신한은행')   # G5 필드에 값 쓰기
ws.cell(row = 5, column = 8, value = H5_amt)    # H5 필드에 값 쓰기
ws.cell(row = 5, column = 10, value='91. 월 고정 지출')   # J5 필드에 값 쓰기
ws.cell(row = 5, column = 11, value='1,766,187')   # K5 필드에 값 쓰기
ws.cell(row = 6, column = 1, value='77. 주식 투자')  # A6 필드에 값 쓰기 -------->
ws.cell(row = 6, column = 2, value= B6_amt)    # B6 필드에 값 쓰기
ws.cell(row = 6, column = 3, value='')   # C6 필드에 값 쓰기
ws.cell(row = 6, column = 4, value='')   # D6 필드에 값 쓰기
ws.cell(row = 6, column = 3, value= C6_amt)   # E4 필드에 값 쓰기 --> 77. 주식 총 매입 금액 
ws.cell(row = 6, column = 7, value='세이프박스((카카오 뱅크))')   # G6 필드에 값 쓰기
ws.cell(row = 6, column = 8, value = H6_amt)   # H6 필드에 값 쓰기 
ws.cell(row = 6, column = 10, value='')   # J6 필드에 값 쓰기
ws.cell(row = 6, column = 11, value='')   # K6 필드에 값 쓰기
ws.cell(row = 7, column = 1, value='70. [수협B] Sh 쑥쑥크는 아이적금(수종)')  # A7 필드에 값 쓰기 -------->
ws.cell(row = 7, column = 2, value= format(B7_amt, ','))    # B7 필드에 값 쓰기 
ws.cell(row = 7, column = 7, value='신협 예금')   # G7 필드에 값 쓰기
ws.cell(row = 7, column = 8, value = H7_amt) # H7 필드에 값 쓰기
ws.cell(row = 7, column = 10, value='')   # J7 필드에 값 쓰기
ws.cell(row = 7, column = 11, value='')   # K7 필드에 값 쓰기
ws.cell(row = 8, column = 1, value='91. 퇴직 연금(개인형 IPR)')  # A8 필드에 값 쓰기 -------->
ws.cell(row = 8, column = 2, value= B8_amt)    # B8 필드에 값 쓰기
ws.cell(row = 8, column = 3, value='16,000,000')   # C8 필드에 값 쓰기
ws.cell(row = 8, column = 5, value='100,000')  # E8 필드에 값 쓰기
ws.cell(row = 8, column = 7, value='OK 저축 은행 예금')   # G8 필드에 값 쓰기
ws.cell(row = 8, column = 8, value = H8_amt)   # H8 필드에 값 쓰기
ws.cell(row = 8, column = 10, value='')   # J8 필드에 값 쓰기
ws.cell(row = 8, column = 11, value='')   # K8 필드에 값 쓰기
ws.cell(row = 9, column = 1, value='1. 총 예적금')  # A9 필드에 값 쓰기 -------->
ws.cell(row = 9, column = 2, value = format(B9_amt, ','))   # B9 필드에 값 쓰기 
ws.cell(row = 9, column = 7, value='[06] 은행 예. 적금 총합')   # G9 필드에 값 쓰기
ws.cell(row = 9, column = 8, value = format(H9_amt, ','))   # H9 필드에 값 쓰기 --> [06] 은행 예. 적금 총합 금액 
ws.cell(row = 9, column = 10, value='')   # J9 필드에 값 쓰기
ws.cell(row = 9, column = 11, value='')   # K9 필드에 값 쓰기
ws.cell(row = 10, column = 1, value='21. (무) 굿앤굿어린이CI보험(Hi1304)(현대해상, 진수종)')  # A10 필드에 값 쓰기 -------->
ws.cell(row = 10, column = 2, value = B10_amt)     # B10 필드에 값 쓰기 
ws.cell(row = 10, column = 10, value='')   # J10 필드에 값 쓰기
ws.cell(row = 10, column = 11, value='')   # K10 필드에 값 쓰기 
ws.cell(row = 11, column = 1, value='22. (무) 한아름행복플러스종합보험1404(한화손해보험, 잔태만)')  # A11 필드에 값 쓰기 -------->
ws.cell(row = 11, column = 2, value = B11_amt)    # B11 필드에 값 쓰기
ws.cell(row = 11, column = 7, value='전원 대비 증감')   # G11 필드에 값 쓰기 
ws.cell(row = 11, column = 8, value='금액')   # H11 필드에 값 쓰기
ws.cell(row = 11, column = 10, value='')   # J11 필드에 값 쓰기
ws.cell(row = 11, column = 11, value='')   # K11 필드에 값 쓰기
ws.cell(row = 12, column = 1, value='2. 총 보험금')  # A12 필드에 값 쓰기 --------> 
ws.cell(row = 12, column = 2, value = format(B12_amt, ','))   ## B12 필드에 값 쓰기--> 2. 총 보험금 금액 
ws.cell(row = 12, column = 7, value='총 합계')   # G12 필드에 값 쓰기 
ws.cell(row = 12, column = 8, value = format(H12_amt, ','))   # H12 필드에 값 쓰기
ws.cell(row = 12, column = 10, value='지출(A) 총합')   # J12 필드에 값 쓰기
ws.cell(row = 12, column = 11, value='1,766,187')   # K12 필드에 값 쓰기
ws.cell(row = 13, column = 1, value='23. 부동산(현아트빌 404호)')  # A13 필드에 값 쓰기 -------->
ws.cell(row = 13, column = 2, value = B13_amt)   # B13 필드에 값 쓰기
ws.cell(row = 13, column = 10, value='')   # J13 필드에 값 쓰기
ws.cell(row = 13, column = 11, value='')   # K13 필드에 값 쓰기
ws.cell(row = 14, column = 1, value='90. 총 합계')  # A14 필드에 값 쓰기 -------->
ws.cell(row = 14, column = 2, value='280,000,008')   # B14 필드에 값 쓰기
ws.cell(row = 14, column = 2, value = format(B14_amt, ','))   # B14 필드에 값 쓰기 --> 90. 총 합계 금액
ws.cell(row = 14, column = 10, value='')   # J8 필드에 값 쓰기
ws.cell(row = 14, column = 11, value='')   # K8 필드에 값 쓰기
ws.cell(row = 15, column = 1, value='91. 가용 자산')  # A15 필드에 값 쓰기 -------->
ws.cell(row = 15, column = 2, value = format(B15_amt, ','))   # B13 필드에 값 쓰기 --> 91. 가용 자산 
ws.cell(row = 15, column = 10, value='수입(B) 총합')   # J15 필드에 값 쓰기
ws.cell(row = 15, column = 11, value='0')   # K15 필드에 값 쓰기 
ws.cell(row = 16, column = 1, value = clAcntCmt)        # A16 필드에 값 쓰기 --------> 결산 코멘트
ws.cell(row = 16, column = 2, value='여름 휴가')      # B16 필드에 값 쓰기
ws.cell(row = 16, column = 10, value='총 합계([B] - [A])')   # J16 필드에 값 쓰기
ws.cell(row = 16, column = 11, value='0')   # K16 필드에 값 쓰기

# 02. 스타일 적용드 스타일 적용(글자 색은 빨갛게, 이탤릭, 두껍게 적용)
ws.cell(row = 3, column = 1).font = Font(name="돋움", bold=True, size=12)  # A3 필드 -------->
ws.cell(row = 3, column = 5).font = Font(name="돋움", bold=True, size=9)   # E3 필드 
ws.cell(row = 3, column = 7).font = Font(name="돋움", bold=True, size=9, color="FF0000")   # G3 필드 --> 은행 결산
ws.cell(row = 3, column = 10).font = Font(name="돋움", bold=True, size=9, color="FF0000")   # J3 필드  --> 지출
ws.cell(row = 4, column = 1).font = Font(name="돋움", bold=False, size=9)  # A4 필드 -------->
ws.cell(row = 4, column = 2).font = Font(name="돋움", bold=False, size=9)  # B4 필드
ws.cell(row = 4, column = 3).font = Font(name="돋움", bold=False, size=9)  # C4 필드
ws.cell(row = 4, column = 4).font = Font(name="돋움", bold=False, size=9)  # D4 필드
ws.cell(row = 4, column = 5).font = Font(name="돋움", bold=False, size=9)  # E4 필드 
ws.cell(row = 4, column = 7).font = Font(name="돋움", bold=False, size=9)  # G4 필드  --> 은행 자산 상태
ws.cell(row = 4, column = 8).font = Font(name="돋움", bold=False, size=9)  # H4 필드  --> 금액
ws.cell(row = 4, column = 10).font = Font(name="돋움", bold=False, size=9)  # G4 필드 --> 내역
ws.cell(row = 4, column = 11).font = Font(name="돋움", bold=False, size=9)  # H4 필드 --> 금액
ws.cell(row = 5, column = 1).font = Font(name="돋움", bold=False, size=9)  # A5 필드 -------->
ws.cell(row = 5, column = 2).font = Font(name="돋움", bold=False, size=9)  # B5 필드
ws.cell(row = 5, column = 7).font = Font(name="돋움", bold=False, size=9)  # G5 필드 
ws.cell(row = 5, column = 8).font = Font(name="돋움", bold=False, size=9)  # H5 필드 
ws.cell(row = 5, column = 10).font = Font(name="돋움", bold=False, size=9)  # G5 필드 --> 91. 월 고정 지출
ws.cell(row = 5, column = 11).font = Font(name="돋움", bold=False, size=9)  # H5 필드 --> 금액
ws.cell(row = 6, column = 1).font = Font(name="돋움", bold=False, size=9)  # A6 필드 -------->
ws.cell(row = 6, column = 2).font = Font(name="돋움", bold=True, size=9, color="FF0000")    # B6 필드
ws.cell(row = 6, column = 3).font = Font(name="돋움", bold=False, size=9, color="FF0000")   # C6 필드 --> 77. 주식 총 매입 금액 
ws.cell(row = 6, column = 7).font = Font(name="돋움", bold=False, size=9)  # G6 필드 
ws.cell(row = 6, column = 8).font = Font(name="돋움", bold=False, size=9)  # H6 필드 
ws.cell(row = 7, column = 1).font = Font(name="돋움", bold=False, size=9)  # A7 필드 --------> 
ws.cell(row = 7, column = 2).font = Font(name="돋움", bold=False, size=9)  # B7 필드 
ws.cell(row = 7, column = 7).font = Font(name="돋움", bold=False, size=9)  # G7 필드 
ws.cell(row = 7, column = 8).font = Font(name="돋움", bold=False, size=9)  # H7 필드 
ws.cell(row = 8, column = 1).font = Font(name="돋움", bold=False, size=9)  # A8 필드 -------->
ws.cell(row = 8, column = 2).font = Font(name="돋움", bold=False, size=9)  # B8 필드
ws.cell(row = 8, column = 3).font = Font(name="돋움", bold=False, size=9)  # C8 필드
ws.cell(row = 8, column = 5).font = Font(name="돋움", bold=False, size=9, color="FF0000")   # E8
ws.cell(row = 8, column = 7).font = Font(name="돋움", bold=False, size=9)  # G8 필드 
ws.cell(row = 8, column = 8).font = Font(name="돋움", bold=False, size=9)  # H8 필드 
ws.cell(row = 9, column = 1).font = Font(name="돋움", bold=True, size=9)  # A9 필드 -------->
ws.cell(row = 9, column = 2).font = Font(name="돋움", bold=True, size=9)  # B8 필드
ws.cell(row = 9, column = 7).font = Font(name="돋움", bold=False, size=9, color="FF0000")  # G9 필드
ws.cell(row = 9, column = 8).font = Font(name="돋움", bold=False, size=9, color="FF0000")  # HG 필드
ws.cell(row = 10, column = 1).font = Font(name="돋움", bold=False, size=9)  # A10 필드 -------->
ws.cell(row = 10, column = 2).font = Font(name="돋움", bold=False, size=9)  # B10 필드
ws.cell(row = 11, column = 1).font = Font(name="돋움", bold=False, size=9)  # A11 필드 -------->
ws.cell(row = 11, column = 2).font = Font(name="돋움", bold=False, size=9)  # B11 필드
ws.cell(row = 11, column = 7).font = Font(name="돋움", bold=False, size=9) # G13 필드  
ws.cell(row = 11, column = 8).font = Font(name="돋움", bold=False, size=9) # H13 필드
ws.cell(row = 12, column = 1).font = Font(name="돋움", bold=True, size=9)  # A12 필드 --------> 2. 총 보험금
ws.cell(row = 12, column = 2).font = Font(name="돋움", bold=True, size=9)  # B12 필드
ws.cell(row = 12, column = 7).font = Font(name="돋움", bold=True, size=9)  # G12 필드  
ws.cell(row = 12, column = 8).font = Font(name="돋움", bold=True, size=9, color="FF0000")  # H12 필드 --> 2. 총 보험금 금액
ws.cell(row = 12, column = 10).font = Font(name="돋움", bold=True, size=9)  # J12 필드 --> 지출(A) 총합
ws.cell(row = 12, column = 11).font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K12 필드 
ws.cell(row = 13, column = 1).font = Font(name="돋움", bold=True, size=9)  # A13 필드 -------->
ws.cell(row = 13, column = 2).font = Font(name="돋움", bold=True, size=9)  # B13 필드 
ws.cell(row = 14, column = 1).font = Font(name="돋움", bold=True, size=9)  # A14 필드 -------->
ws.cell(row = 14, column = 2).font = Font(name="돋움", bold=True, size=9, color="FF0000")  # B14 필드
ws.cell(row = 15, column = 1).font = Font(name="돋움", bold=True, size=9)  # A15 필드 -------->
ws.cell(row = 15, column = 2).font = Font(name="돋움", bold=True, size=9, color="FF0000")   # B15 필드
ws.cell(row = 15, column = 10).font = Font(name="돋움", bold=True, size=9)  # J15 필드 --> 수입(B) 총합
ws.cell(row = 15, column = 11).font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K15 필드
ws.cell(row = 16, column = 1).font = Font(name="돋움", bold=False, size=9)  # A16 필드-------->
ws.cell(row = 16, column = 10).font = Font(name="돋움", bold=True, size=9)  # J16 필드 --> 총 합계([B] -[A])
ws.cell(row = 16, column = 11).font = Font(name="돋움", bold=True, size=9, color="FF0000")  # K16 필드

# 03. alignment 적용
ws.cell(row = 3, column = 1).alignment = Alignment(horizontal='center', vertical='center')      # A3 필드 alignment 설정 -------->
ws.cell(row = 3, column = 5).alignment = Alignment(horizontal='right', vertical='center')       # E3 필드
ws.cell(row = 3, column = 7).alignment = Alignment(horizontal='center', vertical='center')      # G3 필드 --> 은행 결산
ws.cell(row = 3, column = 10).alignment = Alignment(horizontal='center', vertical='center')     # J3 필드- -> 지출
ws.cell(row = 4, column = 1).alignment = Alignment(horizontal='center', vertical='center')      # A4 필드 -------->
ws.cell(row = 4, column = 2).alignment = Alignment(horizontal='center', vertical='center')      # B4 필드
ws.cell(row = 4, column = 3).alignment = Alignment(horizontal='center', vertical='center')      # C4 필드
ws.cell(row = 4, column = 4).alignment = Alignment(horizontal='center', vertical='center')      # D4 필드
ws.cell(row = 4, column = 5).alignment = Alignment(horizontal='center', vertical='center')      # E4 필드 
ws.cell(row = 4, column = 7).alignment = Alignment(horizontal='center', vertical='center')      # G4 필드 --> 은행 자산 상태
ws.cell(row = 4, column = 8).alignment = Alignment(horizontal='center', vertical='center')      # H4 필드 --> 금액
ws.cell(row = 4, column = 10).alignment = Alignment(horizontal='center', vertical='center')     # J4 필드 --> 내역
ws.cell(row = 4, column = 11).alignment = Alignment(horizontal='center', vertical='center')     # K4 필드 --> 금액
ws.cell(row = 5, column = 1).alignment = Alignment(horizontal='left', vertical='center')        # A5 필드 -------->
ws.cell(row = 5, column = 2).alignment = Alignment(horizontal='right', vertical='center')       # B5 필드 
ws.cell(row = 5, column = 8).alignment = Alignment(horizontal='right', vertical='center')       # H5 필드  
ws.cell(row = 5, column = 11).alignment = Alignment(horizontal='right', vertical='center')      # K5 필드 --> 금액
ws.cell(row = 6, column = 1).alignment = Alignment(horizontal='left', vertical='center')        # A6 필드 -------->
ws.cell(row = 6, column = 2).alignment = Alignment(horizontal='right', vertical='center')       # B6 필드 
ws.cell(row = 6, column = 3).alignment = Alignment(horizontal='right', vertical='center')       # C6 필드 --> 77. 주식 총 매입 금액 
ws.cell(row = 6, column = 8).alignment = Alignment(horizontal='right', vertical='center')       # H6 필드  
ws.cell(row = 7, column = 2).alignment = Alignment(horizontal='right', vertical='center')       # B7 필드 --------> 
ws.cell(row = 7, column = 8).alignment = Alignment(horizontal='right', vertical='center')       # H7 필드 
ws.cell(row = 8, column = 2).alignment = Alignment(horizontal='right', vertical='center')       # B8 필드 -------->  
ws.cell(row = 8, column = 3).alignment = Alignment(horizontal='right', vertical='center')       # B8 필드
ws.cell(row = 8, column = 5).alignment = Alignment(horizontal='right', vertical='center')       # E8 필드  
ws.cell(row = 8, column = 8).alignment = Alignment(horizontal='right', vertical='center')       # H8 필드 
ws.cell(row = 9, column = 2).alignment = Alignment(horizontal='right', vertical='center')       # B9 필드 ------->
ws.cell(row = 9, column = 8).alignment = Alignment(horizontal='right', vertical='center')       # H7 필드 
ws.cell(row = 10, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B10 필드
ws.cell(row = 11, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B11 필드
ws.cell(row = 11, column = 7).alignment = Alignment(horizontal='center', vertical='center')     # G13 필드 
ws.cell(row = 11, column = 8).alignment = Alignment(horizontal='center', vertical='center')     # H13 필드
ws.cell(row = 12, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B12 필드 --------> 금액(2. 총 보험금)
ws.cell(row = 12, column = 7).alignment = Alignment(horizontal='center', vertical='center')     # G12 필드 
ws.cell(row = 12, column = 8).alignment = Alignment(horizontal='right', vertical='center')      # H12 필드
ws.cell(row = 12, column = 11).alignment = Alignment(horizontal='right', vertical='center')     # K12 필드 --> 금액(지출(A) 총합) 
ws.cell(row = 13, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B13 필드 --------> 
ws.cell(row = 14, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B14 필드 -------->
ws.cell(row = 15, column = 2).alignment = Alignment(horizontal='right', vertical='center')      # B15 필드 -------->
ws.cell(row = 15, column = 11).alignment = Alignment(horizontal='right', vertical='center')     # K15 필드 --> 금액(수입(B) 총합) 
ws.cell(row = 16, column = 11).alignment = Alignment(horizontal='right', vertical='center')     # K16 필드 --> 금액(총 합계([B] -[A])) 

# 04. 테두리 적용
thin_border = Border(left=Side(style="thin"), right=Side(style="thin"), top=Side(style="thin"), bottom=Side(style="thin"))

ws.cell(row = 3, column = 1).border = thin_border    # A3 필드 -------->
ws.cell(row = 3, column = 2).border = thin_border    # B3 필드 
ws.cell(row = 3, column = 3).border = thin_border    # C3 필드
ws.cell(row = 3, column = 4).border = thin_border    # D3 필드 
ws.cell(row = 3, column = 5).border = thin_border    # E3 필드
ws.cell(row = 3, column = 7).border = thin_border    # G3 필드  --> image.png 
ws.cell(row = 3, column = 8).border = thin_border    # H3 필드
ws.cell(row = 3, column = 10).border = thin_border   # J3 필드  --> 지출 
ws.cell(row = 3, column = 11).border = thin_border   # K3 필드  
ws.cell(row = 4, column = 1).border = thin_border    # A4 필드 -------->
ws.cell(row = 4, column = 2).border = thin_border    # B4 필드
ws.cell(row = 4, column = 3).border = thin_border    # C4 필드
ws.cell(row = 4, column = 4).border = thin_border    # D4 필드
ws.cell(row = 4, column = 5).border = thin_border    # E4 필드
ws.cell(row = 4, column = 7).border = thin_border    # G4 필드 --> 은행 자산 상태
ws.cell(row = 4, column = 8).border = thin_border    # H4 필드 --> 금액
ws.cell(row = 4, column = 10).border = thin_border   # J4 필드 --> 내역
ws.cell(row = 4, column = 11).border = thin_border   # K4 필드 --> 금액
ws.cell(row = 5, column = 1).border = thin_border    # A5 필드 -------->
ws.cell(row = 5, column = 2).border = thin_border    # B5 필드
ws.cell(row = 5, column = 3).border = thin_border    # C5 필드
ws.cell(row = 5, column = 4).border = thin_border    # D5 필드
ws.cell(row = 5, column = 5).border = thin_border    # D5 필드
ws.cell(row = 5, column = 7).border = thin_border    # G5 필드
ws.cell(row = 5, column = 8).border = thin_border    # H5 필드
ws.cell(row = 5, column = 10).border = thin_border   # 5 필드 --> 91. 월 고정 지출
ws.cell(row = 5, column = 11).border = thin_border   # K5 필드 --> 금액 
ws.cell(row = 6, column = 1).border = thin_border    # A6 필드 -------->
ws.cell(row = 6, column = 2).border = thin_border    # B6 필드
ws.cell(row = 6, column = 3).border = thin_border    # C6 필드
ws.cell(row = 6, column = 4).border = thin_border    # D6 필드 
ws.cell(row = 6, column = 5).border = thin_border    # E6 필드
ws.cell(row = 6, column = 7).border = thin_border    # G6 필드
ws.cell(row = 6, column = 8).border = thin_border    # H6 필드
ws.cell(row = 6, column = 10).border = thin_border   # J6 필드 --> 빈 칸
ws.cell(row = 6, column = 11).border = thin_border   # K6 필드 --> 빈 칸 
ws.cell(row = 7, column = 1).border = thin_border    # A7 필드 -------->
ws.cell(row = 7, column = 2).border = thin_border    # B7 필드
ws.cell(row = 7, column = 3).border = thin_border    # C7 필드
ws.cell(row = 7, column = 4).border = thin_border    # D7 필드
ws.cell(row = 7, column = 5).border = thin_border    # E7 필드
ws.cell(row = 7, column = 7).border = thin_border    # G7 필드
ws.cell(row = 7, column = 8).border = thin_border    # H7 필드
ws.cell(row = 7, column = 10).border = thin_border   # J7 필드 --> 빈 칸
ws.cell(row = 7, column = 11).border = thin_border   # K7 필드 --> 빈 칸 
ws.cell(row = 8, column = 1).border = thin_border    # A8 필드 -------->
ws.cell(row = 8, column = 2).border = thin_border    # B8 필드
ws.cell(row = 8, column = 3).border = thin_border    # C8 필드
ws.cell(row = 8, column = 4).border = thin_border    # D8 필드
ws.cell(row = 8, column = 5).border = thin_border    # E8 필드
ws.cell(row = 8, column = 7).border = thin_border    # G8 필드
ws.cell(row = 8, column = 8).border = thin_border    # H8 필드
ws.cell(row = 8, column = 10).border = thin_border   # J8 필드 --> 빈 칸
ws.cell(row = 8, column = 11).border = thin_border   # K8 필드 --> 빈 칸 
ws.cell(row = 9, column = 1).border = thin_border    # A9 필드 -------->
ws.cell(row = 9, column = 2).border = thin_border    # B9 필드
ws.cell(row = 9, column = 3).border = thin_border    # C9 필드
ws.cell(row = 9, column = 4).border = thin_border    # D9 필드
ws.cell(row = 9, column = 5).border = thin_border    # E9 필드
ws.cell(row = 9, column = 7).border = thin_border    # G9 필드
ws.cell(row = 9, column = 8).border = thin_border    # H9 필드
ws.cell(row = 9, column = 10).border = thin_border   # J9 필드 --> 빈 칸
ws.cell(row = 9, column = 11).border = thin_border   # K9 필드 --> 빈 칸 
ws.cell(row = 10, column = 1).border = thin_border    # A10 필드 -------->
ws.cell(row = 10, column = 2).border = thin_border    # B10 필드
ws.cell(row = 10, column = 3).border = thin_border    # C10 필드
ws.cell(row = 10, column = 4).border = thin_border    # D10 필드
ws.cell(row = 10, column = 5).border = thin_border    # E10 필드
ws.cell(row = 10, column = 8).border = thin_border    # H9 필드
ws.cell(row = 10, column = 10).border = thin_border   # J10 필드 --> 빈 칸
ws.cell(row = 10, column = 11).border = thin_border   # K10 필드 --> 빈 칸 
ws.cell(row = 11, column = 1).border = thin_border    # A11 필드 -------->
ws.cell(row = 11, column = 2).border = thin_border    # B11 필드
ws.cell(row = 11, column = 3).border = thin_border    # C11 필드
ws.cell(row = 11, column = 4).border = thin_border    # D11 필드
ws.cell(row = 11, column = 5).border = thin_border    # E11 필드
ws.cell(row = 11, column = 7).border = thin_border    # G11 필드
ws.cell(row = 11, column = 8).border = thin_border    # H11 필드
ws.cell(row = 11, column = 10).border = thin_border   # J11 필드 --> 빈 칸
ws.cell(row = 11, column = 11).border = thin_border   # K11 필드 --> 빈 칸 
ws.cell(row = 12, column = 1).border = thin_border    # A12 필드 -------->
ws.cell(row = 12, column = 2).border = thin_border    # B12 필드
ws.cell(row = 12, column = 3).border = thin_border    # C12 필드
ws.cell(row = 12, column = 4).border = thin_border    # D12 필드
ws.cell(row = 12, column = 5).border = thin_border    # E12 필드
ws.cell(row = 12, column = 7).border = thin_border    # G12 필드
ws.cell(row = 12, column = 8).border = thin_border    # H12 필드
ws.cell(row = 12, column = 10).border = thin_border   # J12 필드 ----> 지출(A) 총합
ws.cell(row = 12, column = 11).border = thin_border   # K12 필드 
ws.cell(row = 13, column = 1).border = thin_border    # A13 필드 -------->
ws.cell(row = 13, column = 2).border = thin_border    # B13 필드
ws.cell(row = 13, column = 3).border = thin_border    # C13 필드
ws.cell(row = 13, column = 4).border = thin_border    # D13 필드
ws.cell(row = 13, column = 5).border = thin_border    # E13 필드
ws.cell(row = 13, column = 10).border = thin_border   # J10 필드 --> 빈 칸
ws.cell(row = 13, column = 11).border = thin_border   # K10 필드 --> 빈 칸 
ws.cell(row = 14, column = 1).border = thin_border    # A14 필드 -------->
ws.cell(row = 14, column = 2).border = thin_border    # B14 필드
ws.cell(row = 14, column = 3).border = thin_border    # C14 필드
ws.cell(row = 14, column = 4).border = thin_border    # D14 필드
ws.cell(row = 14, column = 5).border = thin_border    # E14 필드
ws.cell(row = 14, column = 10).border = thin_border   # J10 필드 --> 빈 칸
ws.cell(row = 14, column = 11).border = thin_border   # K10 필드 --> 빈 칸 
ws.cell(row = 15, column = 1).border = thin_border    # A15 필드 -------->
ws.cell(row = 15, column = 2).border = thin_border    # B15 필드
ws.cell(row = 15, column = 3).border = thin_border    # C15 필드
ws.cell(row = 15, column = 4).border = thin_border    # D15 필드
ws.cell(row = 15, column = 5).border = thin_border    # E15 필드
ws.cell(row = 15, column = 10).border = thin_border   # J15 필드 ----> 지출(A) 총합
ws.cell(row = 15, column = 11).border = thin_border   # K15 필드 
ws.cell(row = 16, column = 1).border = thin_border    # A16 필드 -------->
ws.cell(row = 16, column = 2).border = thin_border    # B16 필드
ws.cell(row = 16, column = 3).border = thin_border    # C16 필드
ws.cell(row = 16, column = 4).border = thin_border    # D16 필드
ws.cell(row = 16, column = 5).border = thin_border    # E16 필드
ws.cell(row = 16, column = 10).border = thin_border    # J16 필드 ----> 총 합계([B] -[A])
ws.cell(row = 16, column = 11).border = thin_border    # K16 필드 

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
ws.cell(row = 3, column = 1).fill = orangeFill  # A3 필드-------->
ws.cell(row = 3, column = 5).fill = orangeFill  # E3 필드
ws.cell(row = 3, column = 7).fill = blueDark2Fill  # E3 필드  --> 은행 결산 
ws.cell(row = 3, column = 10).fill = blueDark2Fill  # J3 필드  --> 지출 
ws.cell(row = 4, column = 1).fill = grayFill    # A4 필드 -------->
ws.cell(row = 4, column = 2).fill = grayFill    # B4 필드
ws.cell(row = 4, column = 3).fill = grayFill    # C4 필드
ws.cell(row = 4, column = 4).fill = grayFill    # D4 필드
ws.cell(row = 4, column = 5).fill = grayFill    # E4 필드 
ws.cell(row = 4, column = 7).fill = grayFill    # G4 필드 --> 은행 자산 상태
ws.cell(row = 4, column = 8).fill = grayFill    # H4 필드 --> 금액
ws.cell(row = 4, column = 10).fill = grayFill   # J4 필드 --> 내역
ws.cell(row = 4, column = 11).fill = grayFill   # K4 필드 --> 금액
ws.cell(row = 5, column = 1).fill = blueFill    # A5 필드 -------->
ws.cell(row = 5, column = 2).fill = blueFill    # B5 필드
ws.cell(row = 5, column = 3).fill = blueFill    # C5 필드
ws.cell(row = 5, column = 4).fill = blueFill    # D5 필드
ws.cell(row = 5, column = 5).fill = blueFill    # D5 필드 
ws.cell(row = 5, column = 8).fill = blueFill    # H5 필드 
ws.cell(row = 6, column = 2).fill = yellowFill      # B6 필드 -------->
ws.cell(row = 6, column = 8).fill = blueFill        # H6 필드
ws.cell(row = 7, column = 2).fill = blueDarkFill    # B7 필드 --------> 
ws.cell(row = 7, column = 8).fill = blueFill        # H7 필드
ws.cell(row = 8, column = 2).fill = blueDarkFill    # B8 필드 -------->
ws.cell(row = 8, column = 5).fill = violetFill      # E8 필드
ws.cell(row = 8, column = 8).fill = blueFill        # H8 필드 
ws.cell(row = 9, column = 1).fill = greenWeekFill    # A9 필드 -------->
ws.cell(row = 9, column = 2).fill = greenWeekFill    # B9 필드
ws.cell(row = 9, column = 3).fill = greenWeekFill    # C9 필드
ws.cell(row = 9, column = 4).fill = greenWeekFill    # D9 필드
ws.cell(row = 9, column = 5).fill = greenWeekFill    # E9 필드 
ws.cell(row = 9, column = 7).fill = blueDark2Fill     # G9 필드 
ws.cell(row = 9, column = 8).fill = blueDark2Fill     # H9 필드 
ws.cell(row = 11, column = 7).fill = grayFill    # G11 필드
ws.cell(row = 11, column = 8).fill = grayFill    # H11 필드
ws.cell(row = 12, column = 1).fill = greenFill    # A12 필드 -------->
ws.cell(row = 12, column = 2).fill = greenFill    # B12 필드
ws.cell(row = 12, column = 3).fill = greenFill    # C12 필드
ws.cell(row = 12, column = 4).fill = greenFill    # D12 필드
ws.cell(row = 12, column = 5).fill = greenFill    # E12 필드
ws.cell(row = 12, column = 7).fill = yellowFill    # G12 필드
ws.cell(row = 12, column = 8).fill = yellowFill    # H12 필드
ws.cell(row = 12, column = 10).fill = greenFill    # J12 필드 --> 지출(A) 총합
ws.cell(row = 12, column = 11).fill = greenFill    # K12 필드
ws.cell(row = 13, column = 1).fill = greenFill    # A13 필드 -------->
ws.cell(row = 13, column = 2).fill = greenFill    # B13 필드
ws.cell(row = 13, column = 3).fill = greenFill    # C13 필드
ws.cell(row = 13, column = 4).fill = greenFill    # D13 필드
ws.cell(row = 13, column = 5).fill = greenFill    # E13 필드 
ws.cell(row = 14, column = 1).fill = yellowFill    # A14 필드 -------->
ws.cell(row = 14, column = 2).fill = yellowFill    # B14 필드
ws.cell(row = 14, column = 3).fill = yellowFill    # C14 필드
ws.cell(row = 14, column = 4).fill = yellowFill    # D14 필드
ws.cell(row = 14, column = 5).fill = yellowFill    # E14 필드
ws.cell(row = 15, column = 1).fill = yellowFill    # A15 필드 -------->
ws.cell(row = 15, column = 2).fill = yellowFill    # B15 필드
ws.cell(row = 15, column = 3).fill = yellowFill    # C15 필드
ws.cell(row = 15, column = 4).fill = yellowFill    # D15 필드
ws.cell(row = 15, column = 5).fill = yellowFill    # E15 필드
ws.cell(row = 15, column = 10).fill = grayDarkFill    # J15 필드 --> 수입(B) 총합
ws.cell(row = 15, column = 11).fill = grayDarkFill    # K15 필드
ws.cell(row = 16, column = 1).fill = orangeWeekFill    # A16 필드 -------->
ws.cell(row = 16, column = 2).fill = orangeWeekFill    # B16 필드
ws.cell(row = 16, column = 3).fill = orangeWeekFill    # C16 필드
ws.cell(row = 16, column = 4).fill = orangeWeekFill    # D16 필드
ws.cell(row = 16, column = 5).fill = orangeWeekFill    # E16 필드
ws.cell(row = 16, column = 10).fill = yellowFill    # J16 필드 --> 총 합계([B] -[A])
ws.cell(row = 16, column = 11).fill = yellowFill    # K16 필드

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


