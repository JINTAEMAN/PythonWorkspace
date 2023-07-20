from openpyxl import load_workbook # 파일 불러오기
<<<<<<< HEAD

wb = load_workbook("sample.xlsx") # sample.xlsx 파일에서 wb 을 불러옴
ws = wb.active # 활성화된 Sheet
print("\n\n\n\n[@_TT] ■■■ [/4_open_file.py] ==> [T_01] ■■■■■■ [######################### [파일 열기 TEST Start] #########################] ■■■■■■ ")
=======
wb = load_workbook("sample.xlsx") # sample.xlsx 파일에서 wb 을 불러옴
ws = wb.active # 활성화된 Sheet
>>>>>>> eda17eae7e526c9fb1f71b53e863ca50f6374b75

# cell 데이터 불러오기
# for x in range(1, 11):
#     for y in range(1, 11):
#         print(ws.cell(row=x, column=y).value, end=" ") # 1 2 3 4 ..
#     print()

# cell 갯수를 모를 때
for x in range(1, ws.max_row + 1):
    for y in range(1, ws.max_column + 1):
        print(ws.cell(row=x, column=y).value, end=" ") # 1 2 3 4 ..
<<<<<<< HEAD
    print()


print("\n\n[@_TT] ■■■ [/4_open_file.py] ==> [T_01] ■■■■■■ [######################### [파일 열기 TEST End] #########################] ■■■■■■\n\n\n\n")
=======
    print()
>>>>>>> eda17eae7e526c9fb1f71b53e863ca50f6374b75
