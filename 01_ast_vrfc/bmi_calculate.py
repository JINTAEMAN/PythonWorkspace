# -*- coding: utf-8 -*-	    # 문자 인코딩(한글 사용) 
# ! /bmi_calculate.py	     # BMI 계산증 파일 

import tkinter as tk	### 이름이 길어서 tk라고 정의합니다.
from tkinter import ttk

# /**
# * @description BMI 계산 함수
# */
def cal_bmi():
    print("\n\n [@_T] ■■■ [/bmi_calculate.py] [cal_bmi()] ==> [T_01] [BMI 계산 함수] [성별 구분]"+ str(cbx22.get()) +"[신장(cm)]"+ str(ent32.get()) +"[체중(kg)]"+ str(ent42.get()) )   

    ent61.delete(0,"end")
    ent61.insert(0, '')  # BMI 결과값ent42 ent42 입력창에 입력 ■■■ TEST

    ent62.delete(0,"end")
    ent62.insert(0, '')   # BMI 결과값ent42 ent42 입력창에 입력 ■■■

    m_sex = str(cbx22.get())  # 성별 구분 
    m_height = float(ent32.get()) * 0.01   # 신장(cm)
    m_weight = float(ent42.get())  # 체중(kg)
    print("[@_T] ■■■ [/bmi_calculate.py] [cal_bmi()] ==> [T_21] [성별 구분]"+ str(m_sex) +"[신장(cm)]"+ str(m_height) +"[체중(kg)]"+ str(m_weight) )   
    
    bmi = m_weight / ( m_height * m_height)    # 신체질량지수(BMI) = 체중(kg) / [신장(m) * 신장(m)]
    bmi = f"{bmi:.2f}"
    print("[@_T] ■■■ [/bmi_calculate.py] [cal_bmi()] ==> [T_90] [신체질량지수(BMI))]"+ str(bmi) ) 
    
    ent61.delete(0,"end")
    ent61.insert(0, bmi)   # BMI 결과값 ent41 입력창에 입력 ■■■  ==> TEST
    
    bmi = float(bmi)

    if str(m_sex) == '남' :  # 성별 구분이 남성 이면 ■■■
        if bmi < 18.5 :  # 18.5 kg/㎡ 미만일 경우
            bmi_comment = "저체중"
        elif bmi >= 18.5 and bmi <= 22.99 :   # 18.5~22.9 kg/㎡ 일 경우 
            bmi_comment = "정상 체중"
        elif bmi >= 23 and bmi <= 24.99 :    # 23 ~ 24.9 kg/㎡ 일 경우 :과 체중
            bmi_comment = "과 체중"     # 비만 전 단계(과 체중 or 위험 체중)
        elif bmi >= 25 and bmi <= 29.99 :   # BMI 25-29.9 kg/m² :1단계 비만
            bmi_comment = "1단계 비만"
        elif bmi >= 30 and bmi <= 34.99 :   # BMI 30-34.9 kg/m² :2단계 비만
            bmi_comment = "2단계 비만"
        elif bmi >= 35 :   # 35 이상일 경우
            bmi_comment = "고도 비만"   # 3단계비만(고도 비만)
    else :  # 성별 구분이 여성 이면 ■■■
        if bmi < 21 :  # 8 미만일 경우
            bmi_comment = "저체중" 
        elif bmi >= 21 and bmi <= 32 :   # 21~32일 경우
            bmi_comment = "정상체중"
        elif bmi >= 33 and bmi <= 38 :  # 33~38일 경우
            bmi_comment = "과체중"    
        elif bmi >= 39 :   # 39 이상일 경우
            bmi_comment = "고도 비만"

    ent62.delete(0,"end")
    ent62.insert(0, bmi_comment)  # BMI 결과값ent42 ent42 입력창에 입력 ■■■
    print("[@_T] ■■■ [/bmi_calculate.py] [cal_bmi()] ==> [T_93] [ent61]"+ ent61.get() +"[ent62]"+ ent62.get() )
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


# print("\n\n [@_T] ■■■ [/bmi_calculate.py] ==> [T_01] ■■■■■■ [######################### [BMI 계산 Start] #########################] ■■■■■■ ")

sMsg = "■■■ [#### [BMI 계산 Startt ####] ■■■\n" 
print("■■■ [/bmi_calculate.py] ==> [T_01]" + sMsg )
# ---------------------------------------------------------------------------------------------------------------------->

삼성전자 = 50000
총평가금액 = 삼성전자 * 10
print(총평가금액)
# --------------------------------------------------------------------

시가총액 = 298000000000000
현재가 = 50000
PER = 15.79
print(시가총액, type(시가총액))
print(현재가, type(현재가))
print(PER, type(PER))
# --------------------------------------------------------------------

num_str = "720"  
num_int = int(num_str)  #형변환 ==> 문자열을 정수로 변환
print(num_int+1, type(num_int))

num = 100
result = str(num)   #형변환 ==> 정수를 문자열로 변환
print(result, type(result))
# --------------------------------------------------------------------

data = "15.79"
data = float(data)   #형변환 ==> 문자열을 실수로 변환
print(data, type(data))

year = "2020"
print(int(year)-3)  # 2017   #형변환 ==> 문자열을 정수로 변환
print(int(year)-2)  # 2018
print(int(year)-1)  # 2019

# ---------------------------------------------------------------------------------------------------------------------->

window=tk.Tk()

window.title("■■■ BMI 계산(by 진태만[24.09.08]) ■■■")	 # 찯 제목
window.geometry("500x500+500+150")   # 찯 크기 변경
window.resizable(False,False)

add_row = 0   # 줄 추가
rowNo = add_row
print("[@_T] ■■■ [/bmi_calculate.py] ==> [T_02] [rowNo]"+ str(rowNo) ) 

# 1행 제목 라벨
lab11 = tk.Label(window,text='BMI 계산', 
    bg='#2F5597', fg='white', width=20, height=1, font=('맑은 고딕', 16, 'bold'))
lab11.grid(row=rowNo, column=0, padx=5, pady=10, columnspan=2, sticky='we')  

rowNo = rowNo + 1
print("[@_T] ■■■ [/bmi_calculate.py] ==> [T_02] [rowNo_2행]"+ str(rowNo) ) 

# 2행 성별 구분 라벨
lab21 = tk.Label(window,text='성별', 
    bg='#2F5597', fg='white', width=8, height=1, font=('맑은 고딕', 16, 'bold'))
lab21.grid(row=rowNo, column=0, padx=5, pady=10)

# 2행 성별 구분 콤보
cbx22 = ttk.Combobox(width=20) # 콤보박스 선언
cbx22['value'] = ('남','여') # 콤보박스 요소 삽입
cbx22.current(0) # 0번째로 콤보박스 초기화
cbx22.grid(row=rowNo, column=1, padx=5, pady=10)   #콤보박스 배치

rowNo = rowNo + 1
print("[@_T] ■■■ [/bmi_calculate.py] ==> [T_03] [rowNo_3행]"+ str(rowNo) ) 
# 3행 신장(m) 라벨
lab31 = tk.Label(window,text='신장(cm)', 
    bg='#2F5597', fg='white', width=8, height=1, font=('맑은 고딕', 16, 'bold'))
lab31.grid(row=rowNo, column=0, padx=5, pady=10)

# 3행 신장(m) 입력창
ent32 = tk.Entry(bg='white', width=8, font=('맑은 고딕', 16, 'bold'))
ent32.grid(row=rowNo, column=1, padx=5, pady=10)

my_height = 170   # 신장(m) 디폴트 입력
ent32.delete(0,"end")
ent32.insert(0, my_height)   # 신장(m)값 ent12 입력창에 입력 ■■■

rowNo = rowNo + 1
# 4행 체중(kg) 라벨
lab41 = tk.Label(window,text='체중(kg)', 
    bg='#2F5597', fg='white', width=8, height=1, font=('맑은 고딕', 16, 'bold'))
lab41.grid(row=rowNo, column=0, padx=5, pady=10)

# 4행 체중(kg) 입력창
ent42 = tk.Entry(bg='white', width=8, font=('맑은 고딕', 16, 'bold'))
ent42.grid(row=rowNo, column=1, padx=5, pady=10)
ent42.focus_set()   # 체중(kg) 입력창 포커스 설정

rowNo = rowNo + 1
# 5행 BMI 결과 버튼
btutton51 = tk.Button(window,text='BMI 결과', 
    bg='red', fg='white', width=8, height=1, font=('맑은 고딕', 16, 'bold'),
    command=cal_bmi)  # BMI 결과 버튼 cal_bmi 함수 호출 ■■■■
btutton51.grid(row=rowNo, column=0, padx=5, pady=10, columnspan=2, sticky='we')   

rowNo = rowNo + 1
# 6행 BMI 결과 입력창
ent61 = tk.Entry(bg='#01AB9B', width=8, font=('맑은 고딕', 16, 'bold'))
ent61.grid(row=rowNo, column=0, padx=5, pady=10)

# 6행 BMI 결과 입력창2
ent62 = tk.Entry(bg='#01AB9B', width=8, font=('맑은 고딕', 16, 'bold'))
ent62.grid(row=rowNo, column=1, padx=5, pady=10)
# =============================================================================================================

window.mainloop()

print("[@_T] ■■■ [/bmi_calculate.py] ==> [T_90] [BMI 계산 결과]"+ str(cal_bmi) )
print("[@_T] ■■■ [/bmi_calculate.py] ==> [T_99] ■■■■■■ [######################### [BMI 계산 End] #########################] ■■■■■■\n\n\n\n")
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->
