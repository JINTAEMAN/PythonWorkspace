# ! /ast_vrfc.py		# 자산 검증 파일

from openpyxl import load_workbook # 파일 불러오기
from openpyxl import Workbook

# wb = load_workbook("sample.xlsx")   # sample.xlsx 파일에서 wb을 불러옴
wb = load_workbook("01. 자산 검증(23.06).xlsx")   # sample.xlsx 파일에서 wb을 불러옴  ==> testgit pull  sssssss	■■■■■■
ws = wb.active 
print("\n\n\n\n[@_TT] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST Start] #########################] ■■■■■■ ")


wb.save("01. 자산 검증(23.06)_rslt.xlsx")
print("\n\n[@_TT] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST End] #########################] ■■■■■■\n\n\n\n")