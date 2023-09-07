# ! /ob_excel_fm_copy.py   # OB 엑셀 파일 복사 쳐리 파일(복사) 
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib 
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Ub
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib

src_path = ""	# 복사할 파일 경로
dst_path = ""   # 복사된 옥적지 파일 경로

def file_copy(src, dst) : 	# 파일 복사 처리 함수()
	try :
		print("\n\n\n [@_T] ■■ [/ob_excel_fm_copy.py] [file_copy()] ==> ■■■■■■ [T_01] [1. 복사 대상 파일]"+ str(src) +"[2. 복사 결과 파일]"+ str(dst) )
	
		shutil.copy2(src, dst)   # 파일 복사
		print(" [@_T] ■■ [/ob.sqljm.copy py] [file_copy()] ==> ■■■■■■ [T_11] [파일 복사 성공}")

		# if not os.path.isfilefdst)+    # dst 파일이 없다면 ==> dst 경로 인식 못 함
		#  print(" [@_T] ■■ [/ob_excel_fm_copy.py] [file_copy()] ==> ■■■■■■ [T_02] [src】"+ str(src) +"[dst】"+  str(dst)) 

		#  if not os.path.isdir(dst)     # 복사할 곳에 디액토리가 없다연
		#       print(" [@_T] ■■ [/ob_excel_fm_copy py] [file_copy()] ==> ■■■■■■ [T_03] [src】"+  str(src) +"[dst]"+ str(dst))

		# dst_dir = os.path dirname(dst)    # 디렉토리 경로 계산
		#  # os.makedirs(dst_dir)    # 디액토리 생성 

		# shutil.copy2(src, dst)    # 파일 복사
		#         pnnt(An[[@_T] ■■ [/ob_sqLfm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】_) 

		# else :
		# pnnt("[@_T] ■■ [/ob_sqLfm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】")

	except Exception as e:
		print(e)
		print("\n [@_T] ■■ [/ob_excel_fm_copy.py]] [file_copy()J => [T_91] [파일 복사 실패] [Error] "+src )

path = './52_OB_work_local/ob_work_table_T.txt'  	# OB 처리 대상 테이블 txt 파일【/ob_work_table_T.txt: TEST 파일)
res_path = './52_OB_work_local/ob_work_rst.csv'   	# OB 처리 결과 csv 파일 
# path = './ob_work_table_T.txt'  	# OB 처리 대상 테이블 txt 파일【/ob_work_table_T.txt: TEST 파일)
# res_path = './ob_work_rst.csv'   	# OB 처리 결과 csv 파일
f = open(path, "r") 

table_list = f.readlines()
f.close()

csv_res = list()   # csv_res 설정 
print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_01] ■■■■■■ [######################### [OB 엑셀 파일 복사 쳐리 Start] #########################] ■■■■■■ ")

ob_sort = 0       # OB 처리 종류【1. 가!발 테스트 추출. 2.  CRM 데이다 추출)	■■■■■■■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 :      # 인자값이 없으연
	ob_sort = 1
else :
	ob_sort = sys.argv[1] 	# 2번쨰 인자값 
	argvlist = range(1, len(sys.argv))
	for i  in argvlist:
		ob_sort = sys.argv[1]
		# print(f"{[i]번째 인자값은 (sys.argv[iD 입니다.")

if ob_sort == 1 :    # OB 처리 종류가 1 이면 
	ob_folder = "ob_dsgn"  # ob_dsgn 폴더
else :
	ob_folder = "ob_dsgn_CRM"	# CRM ob_dsgn 폴더
print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_021 [ob_sort]"+ str(ob_sort) +"[ob_dsgn 폴더]"+ str(ob_folder))

result_title = list()   # 제목 설정
now_date = time.strftime("%Y-%m-%d %H:%M:%S")	# 오늘 날짜 
result_title.append("CSV File Info[Start Date "+ str(now_date) +"]")	# 제목 설정
csv_res.append(result_title)

result_head = list() #     파일 헤드 설정
result_head.append("■ No") # No. 
result_head.append("■ File Name")      # 01. 파일 명
result_head.append("■ Copy File path")    # 02.복사할 파일 경로
result_head.append("■ Copied File path")    # 03. 복사된 목적지 파일 경로 
csv_res.append(result_head)   # HEAD 설정 

for i in table_list:	# i ~ table_list
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_50] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip()  +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")

	try :	 
		frst_num_file_nm = i.strip()[0:1]
		
		if frst_num_file_nm == "#" :   # 파일명 앞에 #이 들어 있으면 
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_50_2] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

		splited_str = i.strip().split('.')  # 파일명 쪼개기
		strNo = splited_str[0].strip()
		num_folder_nm = splited_str[0].strip() +"_"+ splited_str[1].strip()  # 파일명(번호_DB명), 예) 01_L0BIM_DCT_CALENDAR
		tb_nm = splited_str[1].strip()   # 테이블명
	except :
		print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_50_99] [table_list] [i_번째]"+ i )
		continue    # 아래 코드를 실쟁하지 않고 건너뜀
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_51] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

	result = list() 	# 결과 list 설정
	
	if ob_sort == 1 :    # 0B 쳐리 종휴가 1 이면(1: 개발 테스트 추출)
		num_file_nm = num_folder_nm
	else :	 # 처리 종류가 2 이면(2: CRM 데이다 추출) 
		num_file_nm = num_folder_nm +"_CRMT"
	
	susbdd_01 = tb_nm[0:2]	# L0, L1, L2
	susbdd_02 = tb_nm[2:4]	# 하위 폴더(/bi, /cr...)

	if susbdd_01 == "L2":   # L2 이면
		susbdd_02 = "00"
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_51_0] [table_list] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) +"[susbdd_01]"+ str(susbdd_01) +"[susbdd_02]"+ str(susbdd_02) )
	
	src_path = "D:\\"+ ob_folder +"\\"+ num_folder_nm +"\\"+ num_file_nm +".xlsx"    # 복사헐 파일 경로(ob_dsgn 폴더): 1. 복사 대상 파일
	# dst_path = "V:\\\\개인작업폴더\\\\최성오\\\\PDA_현행화\\\\매핑정의서\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".xlsx"   #복시  
	dst_path = "D:\\PythonWorkspace\\dlk_airflow_01\\"+ susbdd_01.lower() +"\\"+ susbdd_02.lower() +"\\"+ num_file_nm +".xlsx"    # 복사할 파일 경로(2. 복사 결과 파일) 
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_51_2] [table_list] [i_번째]"+ i +"[src_path]"+ str(src_path) +"[dst_path]"+ str(dst_path) )

	file_copy(src_path, dst_path)   # 파일 복사 쳐리 ■■■■■
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_52] [table_list] [i_번째]"+ i +"[src_path]"+ str(src_path) +"[dst_path]"+ str(dst_path) )
	
	result.append("■ "+ str(strNo))    		# No.
	result.append(" ■ "+ str(tb_nm))		# 01. 파일명
	result.append(" ■ "+ str(src_path))   	# 02. 복사할 파일 경로
	result.append(" ■ "+ str(dst_path))   	# 03. 복사된 목적지 파일 경로 
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_53J] [table_list] [i_번째]"+ i +"[02. 복사할 파일 경로]"+ str(src_path) +"[dst_path]"+ str(dst_path) )

	csv_res.append(result)
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_81] [[End] ■■■" )

with open(res_path, 'w') as file:	# data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_91] [결과 파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_99] [결과 파일 읽어 오기 End] ■■■■■■■■■■■■")

print(" [@_T] ■■ [/ob_excel_fm_copy.py] ==> [T_99] ■■■■■■ [######################### [OB 엑셀 파일 복사 쳐리 End] #########################] ■■■■■■\n\n\n\n")
