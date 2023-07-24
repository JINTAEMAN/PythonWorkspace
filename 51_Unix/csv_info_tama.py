#coding: utf-8--*
# ! /csv_info_tama,py	    # OB CSV 파일 정보 확인 파일(Unix에서)

import subprocess    # 서브 프로세스 관리 Lib
import csv      # CSV 파일 Lib
import time     # 시간  Lib

path='./csv_info_tama_table.txt'		# 대상 테이블 txt 파일
res_path= './csv_info_tama_rst.csv'		# 결과 css 파일

f = open(path, 'r') 

table_list = f.readlines()
f.close()

csv_res = list() 	# csv_res 설정
print(" [@_T] ■■■ [/csv_info_tama.py] ==> [T_01] ■■■■■■ [######################### [CSV 파일 정보 확인 Start] #########################] ■■■■■■ ")

result_title = list()	# 제목 설정
now_date = time.strftime("%Y-%m-%d %H:%M:%S")		# 오늘 날짜
result_title.append("CSV File Info[Start Date "+ str(now_date) +"]")	# 00. 제목 설정 ■
csv_res.append(result_title)

result_head = list()	# 파일 헤드 설정
result_head.append("No") # No. 
result_head.append("File Name")		# 01. 파일명
result_head.append("real_data_cnt")	# 07. 실재 데이타 건수 ■ 
result_head.append("Volume")		    # 03. 용량 ■  
result_head.append("Line Cnt")		    # 04. 라인 수
result_head.append("Head Cnt")	        # 05 헤드수
result_head.append("Real File Name")	# 02. 파일 명
csv_res.append(result_head)             # HEAD설정

for i in table_list:    # i ~ table_list    
	print(" [@_T] ■ [/csv_info_tama.py] ==> ■■■■■■ [T_50] [table_list] [i_번째]"+ i.strip() )
    
	try :
		trst_num_file_nm =  i.strip()[0:1]
		if trst_num_file_nm == '#"  :  # 파일명 앞에 #이 붙여 있으면
			continue    # 아래 코드를 실행하지 않고 건너 뜀
		
		lited_str = i.strip().split('.')	# 파일명 쪼개기
		str_No = splited_str[0].strip()
		# file_nm_path = '/data/INBOUND/CR/'+ splited_str[1].strip() 		# 02. CRM 파일명(전체 경로) 
		ile_nm_path = '/D/PythonWorkspace/data/INBOUND/CR/'+ splited_str[1].strip() # 02. CRM 파일명(전체 경로) 
		crm_file_nm_path = file_nm_path +'_202303.csv'		# 02. CRM 파일명[path 포함]
		crm_file_nm = splited_str[1].strip() +'_202303.csv'	# 파일명[History 데이타 초기 적재(2023년 03월)]
		tb_nm = splited_str[1].strip()		# 테이블명
	except :
		continue    # 아래 코드를 실행하지 않고 건너 뜀    
	print(" [@_T]  ■ [/csv_info_tama.py] ==> [T_40] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ crm_file_nm  +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")
	
	comm_stg = ['du', '-h', crm_file_nm_path]	# 용량 확인	 
	popen = subprocess.Popen(comm_stg, stdout = subprocess.PIPE).stdout
	stg = popen.read().strip()
	volume = stg.split('\t')[0]       # 03. 용량

	comm_line = ['wc', '-I', crm_file_nm_path]	# 라인, 단어, 문자수 출럭    
	popen = subprocess.Popen(comm_line, stdout = subprocess.PIPE).stdout
	line = popen.read().strip()
	line_count = line.split(' ')[0]     # 04. 라인 수
    
	comm_header = ['head', 'n', '1', crm_file_nm_path] 
	popen = subprocess.Popen(comm_header, stdout = subprocess.PIPE).stdout
	header = popen.read().strip()

	comm_head = ['grep', '-rn', header, crm_file_nm_path]    # 헤드 수 찾기
	popen = subprocess.Popen(comm_head, stdout = subprocess.PIPE).stdout
	header = popen.read().strip() 
	head_res= head.split('\n') 
	head_count = len(head_res)      # 05. 헤드 수

	if line_count != None and line_count != '':		# 04. 라인 수가 존재하면 
		# print(" [@_T] ■■ [/csv_info_tama.py] ==> [T_31_1]")
		print(" [@_T] ■ [/csv_info_tama.py] ==> [T_31_2] [table_list ■] [i_번째]"+ i +"[04. 라인 수]"+ str(line_count) +"[05. 헤드 수]"+ str(head_count)) 
		
		real_data_cnt = int(line_count) - int(head_count)		# 07 실재 데이터 건수 = 04. 라인 수 - 05. 헤드 수 

	else:	# 04. 라인 수가 존재 안하면
		# print(" [@_T] ■■ [/csv_info_tama.py] ==> [T_31_1]")
		# line_count = "해당 파일이 미존재 ■■■■■  ===>"
		line_count = "X"    # 04. 라인 수
		volume = "X"        # 03. 용량 ■
		head_count = "X"    # 05. 헤드 수 
		real_data_cnt = "X"     # 07 실재 데이터 건수 ■

	result = list()   # 결과 list 설정
	result.append(int(strNo)) # No.
	result.append(str(splited_str[1].strip()))  # 01. 파일명
	result.append(str(real_data_cnt))	# 07 실재 데이터 건수 ■
	result.append(str(volume))			# 03. 용량 ■
	result.append(str(line_count))		# 04. 라인 수
	result.append(str(head_count))	    # 05. 헤드 수 
	result.append(str(crm_file_nm))		# 02. 파일명
	print(" [@_T] ■■ [/csv_info_tama.py] ==> [T_61]  [table_list ■] [i_번째]"+ i +"[01. 파일명]"+ splited_str[0].strip() +"[ 07 실재 데이터 건수■]]"+ str(linereal_data_cnt_count) +"[04. 라인 수]"+ str(line_count) +"[05. 헤드 수]"+ str(head_count) +"[03. 용량 ■]"+ str(volume) +"[02. 파일명"+ str(crm_file_nm) ) 

	csv_res.append(result)
	print(" [@_T] ■■ [/csv_info_tama.py] ==> [T_99] [End] ■■■■")

with open(res_path, 'w') as file:	    # data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print(" [@_T]  ■■■ [/csv_info_tama.py] ==> [T_91] [결과 파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print(" [@_T]  ■■■ [/csv_info_tama.py] ==> [T_99] [결과 파일 읽어 오기 End] ■■■■■■■■■■■■")
print(" [@_T] ■■■ [/csv_info_tama.py] ==> [T_99] ■■■■■■ [######################### [CSV 파일 정보 확인 End] #########################] ■■■■■■\n\n\n\n")
