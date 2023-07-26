# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용) 
#!/csv_info_tama_RD.py 	# CSV 파일 정보 조회, 삭제 처리 파일(Unix에서)

import os	    # 운영체제(OS) 제어 Lib 
import sys		# 파이씬 인터프리터 제어 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib
import csv		# CSV 파일 Lib 
import shutil  	# 고수준 파일 연산 Ub 
from datetime import date, timedelta	# 시간 Lib
	
path = './52_OB_work_local/ob_work_table_T.txt'  	# OB 처리 대상 테이블 txt 파일【/ob_work_table_T.txt: TEST 파일)
res_path = './52_OB_work_local/ob_work_rst.csv'   	# OB 처리 결과 csv 파일 
f = open(path, 'r') 

table_list = f.readlines()
f.close()

csv_res = list()    # csv_res 설정 
print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_01] ■■■■■■ [######################### [CSV 파일 정보 조회, 삭제 처리 Start] #########################] ■■■■■■ ")

ob_sort = 0      # 0B 처리 종류(1. 파일 조회, 2. 파일 삭제) ■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 :		# 인자값이 없으연
	ob_sort = 1
else :
	ob_sort = sys.argv[1]   # 2번째 인자값 
	argvlist = range(1, len(sys.argv))
	if ob_sort == "D":    # 2번째 인자값이 D 이면
		ob_sort = 2       # 파일 삭제 처리 
	argvlist = range(1, len(sys.argv))
	# for i  in argvlist:
	# 	ob_sort = sys.argv[1]
		# print(f"{[i]번째 인자값은 (sys.argv[iD 입니다.")
print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_02] [sys.argv]"+ str(len(sys.argv)) +"[ob_sort]"+ str(ob_sort) )

now_date = date.today().strftime("%Y-%m-%d %H:%M:%S")	# 오늘 날짜
now_ymd = date.today().strftime("%Y%m%d") 	# 오늘 날짜 
yesterday = date.today() - timedelta(1)
yst_ymd = yesterday.strftime("%Y%m%d")    	# 어제 날짜
delete_ym = date.today().strftime("%Y%m") 	# 삭제 대상 년월(오늘 년월) ■■■■■ 
# delete_ym = "202303" 	# 삭제 대상 년월(오늘 년월) ■■■■■   ===> TEST @@@ ====>
delete_post_fm = ""     # 삭제 후 파일 명

result_title = list()    # 제옥 설정
result_title.append("CSV File Info[Start Date "+ str(now_date) +"]")	# 제목 설정
csv_res.append(result_title)

result_head = list()	# 파일 헤드 설정
<<<<<<< HEAD
result_head.append("■ No") 		# No. 
result_head.append(" ■ File Name")				# 01. 파일명
result_head.append(" ■ Searched File Name")   	# 02. 조회된 파일 명
result_head.append(" ■ Delete Post File Name")	# 03  삭제 후 파일 명
csv_res.append(result_head)		# HEAD 설정
=======
result_head.append("■ No") # No. 
result_head.append(" ■ File Name")		# 01. 파일명
result_head.append(" ■ Searched File Name")   # 02. 조회된 파일 명
result_head.append(" ■ Delete Post File Name")    # 03  삭제 후 파일 명  
result_head.append(" ■ Real File Name")		# 04. 파일 명
csv_res.append(result_head)	 # HEAD 설정
>>>>>>> 86ea0be15b10ee54a7aa29439c22face44d90aae

for i in table_list:		# i ~ table_list
	print("\n\n [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_50] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")

	try :
		frst_num_file_nm = i.strip()[0:1]
		if frst_num_file_nm == "#" :   #  파일명 앞에 #이 들어 있으면 
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_50_2] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

		splited_str = i.strip().split('.')  # 파일명 쪼개기		 
		strNo = splited_str[0].strip()
		tb_nm = splited_str[1].strip()   # 테이블명
		# file_nm_path = '/d/PythonWorkspace/data/INBOUND/CR/'+ tb_nm 	# 02. CRM 파일명(전체 경로) 
		file_nm_path = '/D/PythonWorkspace/data/INBOUND/CR/'+ tb_nm	# 02. CRM 파일명(전체 경로) 
		# crm_file_nm_path = file_nm_path +'_202303.csv'		# 파일 명[path 포함】    [History 데이다 초기 적재【2023년 03월》】
		crm_file_nm = tb_nm +'_202303.csv'	# 파일명[History 데이타 초기 적재(2023년 03월)] 
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_50_7] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

	except :
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_50_99] [try() 실패]" )
		continue    # 아래 코드를 실쟁하지 않고 건너뜀

	result = list()     # 결과 list 설정

	comm_find = 'find "/d/PythonWorkspace/data/INBOUND/CR" -name "'+ tb_nm +'*" | sort -n' 	# 파일 검색 ■■■■■■ 
	proc = subprocess.Popen(comm_find, shell=True, stdout=subprocess.PIPE).stdout
	inq_fm = proc.read()    # 검색된 파일 처리 
	# inq_res = inq_frn.split('\n’)
	print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_51] [table_list] [i_번째]"+ i +"[조회할 파일명]"+ str(tb_nm) +"[검색된 파일 처리]"+ str(inq_fm) )

	if inq_fm == None or inq_fm == '':    # 파일 명이 존재 안하면
		result.append("■ "+ str(strNo)) 	# No.
		result.append(" ■ "+ str(tb_nm))  	# 01. 파일명
		result.append(" ■ No file")		# 02. 조회된 파일 명
		result.append(" ■ No file") 	# 03. 삭제 후 파일 명
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_51_2] [table_list] [i_번째]"+ i +"[조회할 파일명]"+ str(tb_nm) +"[검색된 파일 처리]"+ str(inq_fm) )
		
		csv_res.append(result)
		continue    # 아래 코드를 실행하지 않고 건너뜀

	if ob_sort == 2 :    # 파일 삭제 처리 이면  =======================================>
		# 요구사항1: 파일명_202303.csv 파일, 파일명_어제.csv 파일, 파일명_오늘.csv 파일을 제외한 파일 모두 삭제 @@@@@@  ====>
		print("\n [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_61] [파일 삭제 처리 @@@@@@@@@@@@@@@@@@@@] [table_list] [i_번째]"+ i )

		try :
			yst_file_nm = '/d/PythonWorkspace/data/INBOUND/CR/'+ tb_nm +'_'+ yst_ymd +'.csv'     # 어제 파일 명
			yst_file_nm_back = '/d/PythonWorkspace/data/INBOUND/CR/'+ tb_nm +'_back_'+ yst_ymd +'.csv'   # 어제 이동 파일 명 

			comm_move = 'mv '+ yst_file_nm +' '+ yst_file_nm_back		# 파일 이동
			proc = subprocess.Popen(comm_move, shell=True, stdout=subprocess.PIPE).stdout 
			inq_fm_move = proc.read()  # 어제 파일 이동 처리   ■■■■■■

			today_file_nm = '/d/PythonWorkspace/data/INBOUND/CR/'+ tb_nm +'_'+ now_ymd +'.csv'     # 오늘 파일 명
			today_fiIe_nm_back = '/d/PythonWorkspace/data/INBOUND/CR/'+ tb_nm +'_back_'+ now_ymd +'.csv'   # 오늘 이동 파일 명 
			
			comm_move = 'mv '+ today_file_nm +' '+ today_fiIe_nm_back	# 파일 이동
			proc = subprocess.Popen(comm_move, shell=True, stdout=subprocess.PIPE).stdout
			inq_fm_move = proc.read()  # 오늘 파일 이동 처리   ■■■■■■ 
			print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_62] [table_list] [i_번째]"+ i +"[어제 이동 파일 명]"+ str(yst_file_nm_back) +"[오늘 이동 파일 명]"+  str(today_fiIe_nm_back) )

		except :
			# inq_fm_move = "해당 파일이 미존재■■■■■■ ===>"
			print(" [@_T] ■■ [/csv_info_tama_RD.py] ==> [T_62_99] [try() 실패]"  )
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_63] [table_list] [파일 back_으로 Move 종료 ■■■■■■] [i_번째]"+ i +"[오늘 이동 파일 명]"+  str(today_fiIe_nm_back) )

		try :
			comm_delete = 'rm -f '+ file_nm_path +'_'+ delete_ym +'*.csv'	# 삭제 명령어
			proc = subprocess.Popen(comm_delete, shell=True, stdout = subprocess.PIPE).stdout
			delete_fm = proc.read()		# 파일 삭계 처리  ■■■■■ D:\PythonWorkspace\data\INBOUND\CR\
			print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_71] [table_list] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) +"[삭제 명령어]"+ str(comm_delete) )

		except :
			# inq_fm_move = "해당 파일이 미존재■■■■■■ ===>" 
			print(" [@_T] ■■ [/csv_info_tama_RD.py] ==> [T_71_99] [try() 실패]"  )
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_79] [table_list] [파일 삭제 종료 ■■■■■■] [i_번째]"+ i +"[삭제된 파일 명]"+ str(delete_ym) )

		try : 
			comm_move = 'mv '+ yst_file_nm_back +' '+ yst_file_nm		# 파일 이동
			proc = subprocess.Popen(comm_move, shell=True, stdout=subprocess.PIPE).stdout 
		
			comm_move = 'mv '+ today_fiIe_nm_back +' '+ today_file_nm 	# 파일 이동
			proc = subprocess.Popen(comm_move, shell=True, stdout=subprocess.PIPE).stdout
			inq_fm_move = proc.read()  # 오늘 파일 이동 처리   ■■■■■■ 
			print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_80_5] [table_list] [i_번째]"+ i +"[today_fiIe_nm_back]"+ str(today_fiIe_nm_back) +"[today_file_nm]"+ str(today_file_nm) )

		except : 
			print(" [@_T] ■■ [/csv_info_tama_RD.py] ==> [T_81_99] [try() 실패]"  )
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_82] [table_list] [파일 원 파일로 Move 종료 ■■■■■■] [i_번째]"+ i )

		comm_find = 'find "/d/PythonWorkspace/data/INBOUND/CR" -name "'+ tb_nm +'*" | sort -n' 	# 파일 검색(2번쨰)  ■■■■■■ 
		proc = subprocess.Popen(comm_find, shell=True, stdout=subprocess.PIPE).stdout
		delete_post_fm = proc.read()    # 삭제 후 파일 검색 ■■■■■■
		print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_83] [table_list] [파일 검색(2번쨰) [i_번째]"+ i +"[조회된 파일명(2번쨰)]"+  str(delete_post_fm) )
		# inq_res = delete_post_fm.split('\n')
	print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_84] [삭제 후 파일 검색 결과] [table_list] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) +"[조회된 파일명]"+ str(inq_fm) )
	# 파일 삭제 처리 이면 --> 종료  =======================================>
	
<<<<<<< HEAD
	result.append("■ "+ str(strNo)) 	# No.
	result.append(" ■ "+ str(tb_nm)) 	# 01. 파일명
	result.append(" ■ "+ str(inq_fm))			# 02. 조회된 파일 명
	result.append(" ■ "+ str(delete_post_fm))	# 03. 삭제 후 파일 명
	print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_87] [table_list ■] [i_번째]"+ i +"[01. 파일명]"+ str(tb_nm) +"[02  조회된 파일 명]"+ str(inq_fm) +"[03. 삭제 후 파일 명]"+ str(delete_post_fm) ) 
=======
	result.append("■ "+ str(strNo)) # No.
	result.append(" ■ "+ str(tb_nm))  		# 01. 파일명
	result.append(" ■ "+ str(inq_fm))		# 02. 조회된 파일 명
	result.append(" ■ "+ str(delete_post_fm))	# 03. 삭제 후 파일 명 
	print("\n[@_T] ■■  [/csv_info_tama_RD.py] ==> [T_51]  [table_list ■] [i_번째]"+ i +"[01. 파일명]"+ str(tb_nm) +"[ 02  조회된 파일 명]"+ str(inq_fm) +"[03. 삭제 후 파일 명 ]"+ str(delete_post_fm) ) 
>>>>>>> 86ea0be15b10ee54a7aa29439c22face44d90aae
	
	csv_res.append(result) 
	print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_90] [End] ■■■■")

with open(res_path, 'w') as file:	# data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print("\n\n\n [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_91] [결과 파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_99] [처리 결과 파일 읽어 오기 End] ■■■■■■■■■■■■")
print(" [@_T] ■■■ [/csv_info_tama_RD.py] ==> [T_99] ■■■■■■ [######################### [CSV 파일 정보 조회 삭제 처리 End] #########################] ■■■■■■\n\n\n\n")
