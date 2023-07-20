# 11_create_file.py
from openpyxl import Workbook
print("\n\n\n\n[@_TT] ■■■ [/1_create_filepy.py] ==> [T_01] ■■■■■■ [######################### [파일 생성 TEST Start] #########################] ■■■■■■ ")

wb = Workbook() # 새 워크북 생성
ws = wb.active # 현재 활성화된 sheet 가져옴
ws.title = "NadoSheet" # sheet 의 이름을 변경
print("\n\n[@_T] ■ [/1_create_filepy.py] ==> [T_40] [s.title]"+ ws.title )

wb.save("sample.xlsx")
wb.close()
print("\n\n[@_TT] ■■■ [/1_create_filepy.py] ==> [T_01] ■■■■■■ [######################### [파일 생성 TEST End] #########################] ■■■■■■\n\n\n\n")