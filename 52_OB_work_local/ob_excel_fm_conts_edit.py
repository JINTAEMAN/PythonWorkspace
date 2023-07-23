# ! / ob_excel_fm_conts_edit.py  # OB 엑실 파일 내용 수정 파일
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	    # 운영체제(OS) 제어 Lib 
import sys		# 파이씬 인터프리터 제어 Lib
import sys		# 파이씬 인터프리터 제어 Lib
import csv		# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib
import xlwings as xw  # 엑셀 Lib

app = xw.App()		# App 열기
print(" [@_T] ■■■ [/ob_excel_fm_conts_edit.py] ==> [T_01] ■■■■■■ [######################### [OB 엑셀 파일 내용 수정 쳐리 Start] #########################] ■■■■■■ ")

ob_sort = 0      # 0B 쳐리 종류(1. 개발 테스트 추출, 2   CRM 데이다 추출) ■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 :      # 인자값이 없으연
	ob_sort = 1
else :
	ob_sort = sys.argv[1]   # 2번쨰 인자값 
	argvlist = range(1, len(sys.argv))
	for i  in argvlist:
		ob_sort = sys.argv[1]
		# print(f"{[i]번째 인자값은 (sys.argv[iD 입니다.")

if ob_sort == 1  :    # OB 처리 종류가 1 이면 
	ob_folder = "ob_dsgn"  # ob_dsgn 폴더
else :
	ob_folder = "ob_dsgn_CRM"		# CRM ob_dsgn 폴더
print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_02] [ob_sort]"+ str(ob_sort) +"[ob_dsgn 폴더】"+ str(ob_folder))

path = './ob_work_table_T.txt'  	# OB 처리 대상 테이블 txt 파일【/ob_work_table_T.txt: TEST 파일)
res_path = './ob_work_rst.csv'   	# OB 처리 결과 csv 파일 
# path = "D：\\\\PythonWorkspace\\\\02_0B_Windows\\\\ob_work_table_T.txt"    # OB 쳐리 대상 테이불 txt 파일(八)b_work_table_Tt)rt: TEST 파일》 
# res_path = "D:\\\PythonWorkspace\\\\02_0B_Windows\\\\ob_work_rst.csv"		# OB 처리 결과 csv 파일
f = open(path, "r") 

table_list = f.readlines()
f.close()

csv_res = list()   # csv_res 설정 

result_title = list()   # 제목 설정
# now_date = datetime.datetime.nowO.strtime("%Y-%m-%d %H-%M %S")     # 오늘 날짜 
now_date = time.strftime("%Y-%m-%d %H:%M:%S")	# 오늘 날짜
print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_03] [now_date]"+ str(now_date))

if ob_sort == 1 :    # OB 쳐리 종류가 1   이연
	title_nm = "OB Work[Start Date "+ str(now_date) +"]" 
else:
	title.nm = "CRM OB Work[Start Date "+ str(now_date) +"]" 
result_title.append(title_nm)   # 00  제목 설정■

csv_res.append(result_title)

result_head = list()		# 파일 헤드 설정 
result_head.append("No")		# No.
result_head .append("File Name")      # 01   파일 명 
result_head.append("batch_value")   # 02  배치 스케줄 값 
result_head.append("changed batch_value") # 03.  변경된 배치 스케줄 값
csv_res.append(result_head)   # HEAD 설정

for i in table_list:		# i ~ table_list
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_50] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")

	try :
		frst_num_file_nm = i.strip()[0:1]
		if frst_num_file_nm == "#" :   #  파일명 앞에 #이 들어 있으면 
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■ [/ob_excel_fm_conts_edit.py] ==> [T_50_2] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

		splited_str = i.strip().split('.')  # 파일명 쪼개기	
		strNo = splited_str[0].strip()
	
		num_folder_nm = splited_str[0].strip() +"_"+ splited_str[1].strip() 	
		tb_nm = splited_str[1].strip()   # 테이블명
		print(" [@_T] ■ [/ob_excel_fm_conts_edit.py] ==> [T_50_6] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

	except :
		print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_50_99] [try() 실패]"  )
		continue    # 아래 코드를 실쟁하지 않고 건너뜀

	result = list()     # 결과 list 설정

	if ob_sort == 1 :    # 0B 쳐리 종류가 1 이면(1: 개발 테스트 추출) 
		num_file_nm = num_folder_nm
		if int(strNo) > 0 and int(strNo) < 31 :  	# No. 01 ~ No  31  까지
			batch_value_n = '3 2 • • •'           # 배치 스케줄 값 수정 ■■■  A  d0203 설정
		elif int(strNo) > 30 and int(strNo) < 49 :  		# No  31 ~ No. 48 까지
			batch_value_n = '4 2 • • ••'      # 배치 스케줄 값 수정 ■■■ B. d0204 설정 
		else :    # No  48 이후 
			batch_value_n = '2 2 • • ••'     # 배치 스케줄 값 수정 ■■■ C  d0202 설정
	else :      # 0B 처리 종류가 2 이면(2.  CRM 데이ㅌ다 추출)
		num_file_nm = num_folder_nm +"_CRM" 
		if int(strNo) > 0 and int(strNo) < 31 :  	# No. 01 ~ No  31  까지
			batch_value_n = '7 2 • • •'			# 배치 스케줄 값 수정 ■■■ C_B. d0208 설정
		elif int(strNo) > 30 and int(strNo) < 49 :  	# No  31 ~ No. 48 까지
			batch_value_n = '8 2 • • •'			# 배치 스케줄 값 수정 ■■■ C_B. d0208 설정
		else :    # No  48 이후 
			batch_value_n = '9 2 • • ••'     # 배치 스케줄 값 수정 ■■■ C_C. d0209 설정

	open_path = "D:\\\\"+ ob_folder +"\\\\"+ num_folder_nm  +"\\\\"+ num_file_nm +".xlsx"    # 오픈할 파일 경로
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_51] [table_list] [i_번째]"+ i +"[open_path]"+ str(open_path) +"[i.strip()]"+ i.strip() )
	
	try : 
		wb = xw.Book(open_path)    # 해당 파일에서 wb을 물러옴(Work Book 열기)
		sht = wb.sheets[3]  # 시트 선택하기(4 번째 시트: 1.기본정보)
		batch_value = sht.range("C5").value   # 배치 스케줄 값(3 2 • • ••) 
		batch_value_n = batch_value_n    # 배치 스케줄 값 수정 ■■■ 
		sht.range("C5").value = batch_value_n    # 배치 스케줄 칼럽값 변경
		print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_51_1] [table_list ■] [i_번째]"+ i +"[배치 스케줄 값(수정 전)]"+ str(batch_value) +"[베치 스케줄 값]"+ str(batch_value_n) )
		
	except :
		result.append(int(strNo))	# No		 
		result.append(str(tb_nm))  #01.  파일명
		result.append("No file in open_path")    # 02. 배치 스케줄 값 
		result.append("No file")     #  03. 변경 후 배치 스케줄 값 
		print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_51_2] [table_list ■] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) )

		continue    # 아래 코드를 실쟁하지 않고 2너뜀
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_52] [table_list ■] [i_번째]"+ i +"[배치 스케줄 값(수정 전)]"+ str(batch_value) +"[베치 스케줄 값)]"+ str(batch_value_n) )

	result.append(int(strNo))           # No
	result.append(str(tb_nm))      		# 01. 파일명
	result.append(str(batch_value))     # 02  배치 스케줄 값
	result.append(str(batch_value_n))   # 03. 변경 후 배치 스케줄 값
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_60] [table_list ■] [i_번째]"+ i +"[배치 스케줄 값(수정 전)]"+ str(batch_value) +"[베치 스케줄 값)]"+ str(batch_value_n) )
	
	csv_res.append(result)
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_61] [table_list ■] [i_번째]"+ i +"[배치 스케줄 값(수정 전)]"+ str(batch_value) +"[베치 스케줄 값)]"+ str(batch_value_n) )
	
	wb.save(open_path)		# 해당 파일에 wb을 저장
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_62] [table_list ■] [i_번째]"+ i +"[배치 스케줄 값(수정 전)]"+ str(batch_value) +"[베치 스케줄 값)]"+ str(batch_value_n) )
	
	wb.close()    # Work Book 당기
	print(" [@_T] ■■ [/ob_excel_fm_conts_edit.py] ==> [T_99] [End] ■■■■")

with open(res_path, 'w') as file:	    # data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print(" [@_T] ■■■ [/ob_excel_fm_conts_edit.py] ==> [T_91] [결과 파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print(" [@_T] ■■■ [/ob_excel_fm_conts_edit.py] ==> [T_99] [결과 파일 읽어 오기 End] ■■■■■■■■■■■■")

app.quit()   # App 닫기
print(" [@_T] ■■■ [/ob_excel_fm_conts_edit.py] ==> [T_99] ■■■■■■ [######################### [OB 엑셀 파일 내용 수정 쳐리 End] #########################] ■■■■■■\n\n\n\n")
