# ! /ast_vrfc.py		# 자산 검증 파일

from openpyxl import load_workbook # 파일 불러오기 --> TEST
from openpyxl import Workbook
from openpyxl.styles import Font, Border, Side, PatternFill, Alignment
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST Start] #########################] ■■■■■■ ")

# wb = load_workbook("sample.xlsx")   # sample.xlsx 파일에서 wb을 불러옴
# wb = load_workbook("\01_ast_vrfc\01. 자산 검증(23.06).xlsx")   # sample.xlsx 파일에서 wb을 불러옴  ==> testgit pull  sssssss	■■■■■■
wb = load_workbook("01. 자산 검증(23.06).xlsx")   # sample.xlsx 파일에서 wb을 불러옴  ==> testgit pull  sssssss	■■■■■■
ws = wb.active
 
ws.insert_rows(3, 14)       # 월별 자산 제목(3번째 줄 위치에 14줄을 추가)
ws.merge_cells("A3:D3")     # A3 부터 D3 까지 병합
ws["A3"] = "2023.07 자산"   # 월별 자산 제목
ws["E3"] = "2023.07.31"     # 월별 자산 월말

a1 = ws["A3"]   # 월별 자산 제목
b1 = ws["E3"]   # 월별 자산 월말

# 스타일 적용
a1.font = Font(name="돋움", bold=True, size=12) # 글자 색은 빨갛게, 이탤릭, 두껍게 적용
b1.font = Font(name="돋움", bold=True, size=9) # 글자 색은 빨갛게, 이탤릭, 두껍게 적용
# b1.font = Font(color="CC33FF", name="Arial", strike=True) # 폰트를 Arial 로 설정, 취소선 적용

# 테두리 적용
thin_border = Border(left=Side(style="thin"), right=Side(style="thin"), top=Side(style="thin"), bottom=Side(style="thin"))
a1.border = thin_border


# 90 점 넘는 셀에 대해서 초록색으로 적용
for row in ws.rows:
    for cell in row:
        # if row.column == 1 and cell.column == 1: # A 번호열은 제외       
        #     cell.alignment = Alignment(horizontal="center", vertical="center")   # 각 cell 에 대해서 정렬
        # else:
        #     cell.alignment = Alignment(horizontal="center", vertical="center")   # 각 cell 에 대해서 정렬   
        #     # center, left, right, top, bottom

        if cell.column == 1: # A 번호열은 제외
            continue

        # cell 이 정수형 데이터이고 90 점보다 높으면
        # if isinstance(cell.value, int) and cell.value > 90:
        #     cell.fill = PatternFill(fgColor="00FF00", fill_type="solid") # 배경을 초록색으로 설정
        #     cell.font = Font(color="FF0000") # 폰트 색상 변경

# 틀 고정
ws.freeze_panes = "B2" # B2 기준으로 틀 고정

wb.save("01. 자산 검증(23.06)_rslt.xlsx")
print(" [@_T] ■■■ [/ast_vrfc.py] ==> [T_99] ■■■■■■ [######################### [자산 검증 파일 TEST End] #########################] ■■■■■■\n\n\n\n")


