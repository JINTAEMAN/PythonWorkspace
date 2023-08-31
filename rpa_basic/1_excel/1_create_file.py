# 11_create_file.py
from openpyxl import Workbook
print("\n\n\n\n[@_TT] ■■■ [/1_create_file.py] ==> [T_01] ■■■■■■ [######################### [파일 생성 TEST Start] #########################] ■■■■■■ ")

urlPath =  "rpa_basic/1_excel/"   # URL 경로
# openFileNm = "01. 자산 검증(23.08).xlsx"   # 오픈 파일 명(01. 자산 검증(23.08).xlsx) 

# wb = load_workbook(openUrl + openFileNm)   # 오픈 파일을 wb을 불러옴
# ws = wb.active  # 활성화 되어있는 시트 설정

wb = Workbook() # 새 워크북 생성
ws = wb.active # 현재 활성화된 sheet 가져옴
ws.title = "Nado Sheet" # sheet 의 이름을 변경
print("\n\n[@_T] ■ [/1_create_file.py] ==> [T_40] [sheet 명]"+ ws.title )

rsltFileNm = "sample.xlsx"   # 결과 파일 명 
print(" [@_T] ■■■ [/1_create_file.py] ==> [T_91] [결과 파일 명]"+ rsltFileNm )

wb.save(urlPath + rsltFileNm)
# wb.save("sample.xlsx")
wb.close()
print("\n\n[@_TT] ■■■ [/1_create_file.py] ==> [T_01] ■■■■■■ [######################### [파일 생성 TEST End] #########################] ■■■■■■\n\n\n\n")
