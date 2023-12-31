# ! /ob_sql_fm_copy.py   # OB SQL 파일 복사 쳐리 파일(복사, Git 처리)
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib 
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib

src_path = ""	# 복사할 파일 경로
dst_path = ""   # 복사된 옥적지 파일 경로

def file_copy(src, dst) : 	# 파일 복사 처리 함수()
	try : 
		print("\n\n\n [@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==> ■■■■■■ [T_01] [1. 복사 대상 피일]"+ str(src) +"[2. 복사 결과 피일]"+ str(dst) )
	
		shutil.copy2(src, dst)   # 파일 복사
		print(" [@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==> [T_11] [파일 복사 성공]")

		# if not os.path.isfilefdst)+    # dst 파일이 없다면 ==> dst 경로 인식 못 함
		#  print(" [@_T] ■■ [/ob_sql_fm_copy.py] file_copy()] ==> ■■■■■■ [T_02] [src】"+ str(src) +"[dst】"+  str(dst)) 

		#  if not os.path.isdir(dst)     # 복사할 곳에 디액토리가 없다연
		#       print(" [@_T] ■■ [/ob_sql_fm_copy py] file_copy()] ==> ■■■■■■ [T_03] [src】"+  str(src) +"[dst]"+ str(dst))

		# dst_dir = os.path dirname(dst)    # 디렉토리 경로 계산
		#  # os.makedirs(dst_dir)    # 디액토리 생성 

		# shutil.copy2(src, dst)    # 파일 복사
		#         pnnt(An[[@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】_) 

		# else :
		# pnnt("[@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】")

	except Exception as e:
		print(e)
		print(" [@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==> [T_91] [파일 복사 실패] [Error]"+ e )

# path = './ob_work_table_T.txt'    # OB 처리 대상 테이블 txt 파일【/ob_workJable_T.txt: TEST 파일)
# res_path = './ob_work_rst.csv'   # OB 처리 결과 csv 파일
path = './52_OB_work_local/ob_work_table_T.txt'  	# OB 처리 대상 테이블 txt 파일【/ob_work_table_T.txt: TEST 파일)
res_path = './52_OB_work_local/ob_work_rst.csv'   	# OB 처리 결과 csv 파일  

f = open(path, "r") 

table_list = f.readlines()
f.close()

csv_res = list()   # csv_res 설정 
print("\n\n [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_01] ■■■■■■ [######################### [OB sql 파일 복사 쳐리 Start] #########################] ■■■■■■ ")

ob_sort = 0       # OB 처리 종류【1. 가!발 테스트 추출. 2.  CRM 데이다 추출)	■■■■■■■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 :     # 인자값이 없으연
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
print(" [@_T] ■■ [/ob_sql_fm_copy.py] ==> [T_02] [ob_sort]"+ str(ob_sort) +"[ob_dsgn 폴더]"+ str(ob_folder) )

result_title = list()   # 제목 설정
now_date = time.strftime("%Y-%m-%d %H:%M:%S")	# 오늘 날짜
now_ydmhm = time.strftime("%y.%m.%d %H:%M")		# 오늘 날짜(년.월.일 시:분)
result_title.append("CSV File Info[Start Date "+ str(now_date) +"]")	# 제목 설정
csv_res.append(result_title)

result_head = list() #     파일 헤드 설정
result_head.append("■ No.") # No.
result_head .append(" ■ File Name")      # 01. 파일 명
result_head .append(" ■ Copy File path")    # 02.복사할 파일 경로
result_head.append(" ■ Copied File path")    # 03. 복사된 목적지 파일 경로 
csv_res .append(result_head)   # HEAD 설정

strNo_Str = None        # No]
firtNo = "" 
lastNo = ""
intNo = 0

command = 'git pull origin main'    # 0. 원격 저장소 데이다 가저 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_11] [0. 원격 저장소 데이다 가저 오기(git pull)]"+ out_cmd.decode('utf-8') ) 

for i in table_list :		# i ~ table_list
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_50] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip()  +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")

	try :	 
		frst_num_file_nm = i.strip()[0:1]
		if frst_num_file_nm == "#" :   #  파일명 앞에 #이 들어 있으면 
			continue    # 아래 코드를 실행하지 않고 건너뜀
		print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_50_2] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

		splited_str = i.strip().split('.')  # 파일명 쪼개기
		strNo = splited_str[0].strip()
		num_folder_nm = splited_str[0].strip() +"_"+ splited_str[1].strip()  # 파일명(번호_DB명), 예) 01_L0BIM_DCT_CALENDAR
		tb_nm = splited_str[1].strip()   # 테이블명
	except :
		print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_50_99] [table_list] [i_번째]"+ i )
		continue    # 아래 코드를 실쟁하지 않고 건너뜀
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ i.strip() )

	result = list()     # 결과 list 설정
	

	if ob_sort == 1 :    # 0B 쳐리 종휴가 1 이면(1: 개발 테스트 추출)
		num_file_nm = "grape_odl_cr_002_"+ tb_nm.lower() +"_001_bq2gcswithfin"
	else :	 # 처리 종류가 2 이면(2: CRM 데이다 추출) 
		num_file_nm = "grape_odl_cr_002_"+ tb_nm.lower() +"crmt_001_bq2gcswithfin" 
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_1] [table_list] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) )

	susbdd_01 = tb_nm[0:2]		# L0, L1, L2
	susbdd_02 = tb_nm[2:4]		# 하위 폴더(/bi, /cr...)
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_2] [table_list] [i_번째]"+ i +"[tb_nm]"+ str(tb_nm) +"[susbdd_01]"+ str(susbdd_01) +"[susbdd_02]"+ str(susbdd_02) )

	if susbdd_01 == "L2":   # L2 이면
		susbdd_02 = "00"
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_3] [table_list] [i_번째]"+ i +"[tb_nmp]"+ str(tb_nm) +"[susbdd_01]"+ str(susbdd_01) +"[susbdd_02]"+ str(susbdd_02) )
	
	# src_path = "D:\\\\"+ ob_folder +"\\\\"+ num_folder_nm  +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로: 1. 복사 대상 피일
	# dst_path = "C:\\\\Users\\\tamario\\\PycharmProjects\\\\dlk_airflow_01\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로 
	# src_path = "D:\\\\91_Git_TAMA\dlk_airflow_01\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로
	src_path = "D:\\\\"+ ob_folder +"\\\\"+ num_folder_nm  +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로(ob_dsgn 폴더): 1. 복사 대상 피일
	dst_path = "D:\\\\PythonWorkspace\\\\dlk_airflow_01\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로(2. 복사 결과 피일) 
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_3] [table_list] [i_번째]"+ i +"[tb_nmp]"+ str(tb_nm) +"[src_path]"+ str(src_path) +"[dst_path]"+ str(dst_path) )
	
	# D:\\\\91_Git_TAMA\\dlk_airflow_01\\\\l0\\\\bi\\\\grape_odl_cr_002_l0bim_dct_calendar_001_bq2gcswithfin.sql
	file_copy(src_path, dst_path)   # 파일 복사 처리(Git 로컬 저장소에 파일 저장) ■■■■■
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_4] [table_list] [i_번째]"+ i +"[tb_nmp]"+ str(tb_nm) +"[src_path]"+ str(src_path) +"[dst_path]"+ str(dst_path) )
	
	result.append("■ "+ str(strNo))    # No.
	result.append(" ■ "+ str(tb_nm))		# 01. 파일명
	result.append(" ■ "+ str(src_path))	# 02 복사할 파일 경로
	result.append(" ■ "+ str(dst_path))   	# 03 복사된 목적지 파일 경로 
	print(" [@_T] ■ [/ob_sql_fm_copy.py] ==> [T_53] [table_list] [i_번째]"+ i +"[파일명]"+ str(tb_nm) +"[02 복사할 파일 경로]"+ str(src_path) +"[03 복사된 목적지 파일 경로]"+ str(dst_path) )

	csv_res.append(result) 
    
	if strNo_Str != None and strNo_Str != '' :        # No .가 존재하연 
		strNo_Str = "No. "+ strNo_Str +"No. "+ strNo
	else :
		strNo_Str = "No. "+ str(strNo_Str)
		firtNo = str(intNo)
	
	intNo = intNo + 1
	lastNo = str(intNo)
	print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_60] [파일 복사 처리 End] ■■■■■■■■■■ \n\n\n\n\n\n")

print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_61] [Git 경보 처려 시작.......@@@@@ ■■■■■■■■■■ (strNo_Str "+ str(strNo_Str) +"\n\n\n\n\n\n")

time.sleep(2)     # 2초 기다영

command = 'git status'    # 0. Git 저장소의 상태 확인
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd_status = proc.read()
print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_63_0] [0. Git 저장소의 상태 확인(git status)]"+ out_cmd_status.decode('utf-8') ) 

command = 'git add -A'    # 3. Git 스테이지 영역에 추가
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd_add = proc.read()
print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_63_1] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )

if intNo > 10 :		# No.가 10보다 크면
	strNo_Str = "No. "+ str(intfirtNoNo) + " ~ No. "+ str(lastNo)

ob_dsgn_sort_nm = "TEST 서버"

cmd_cmt_msg = 'git commit -m "Add to '+ ob_dsgn_sort_nm +' 데이타 추출('+ now_ydmhm +') [('+ str(strNo_Str) +'), by 진태만]"'   # 4. Git 로컬 저장소 영역에 커밋 처리
# git commit -m 'Add to TEST 대이다 추출(22.07.20J)1》[(No  31, No. 32) by 진태만1 
proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout
out_cmt_msg = proc.read()
print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_63_2] [4. Git 로걸 저장소 영역에 추가(커밋 에세지)]  ■■■■■■■■■■■■ "+ str(cmd_cmt_msg))
# print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_63_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode('utf-8') )

command = 'git push origin main'      # 5. 원격  저장소에 반영
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd_push = proc.read()
print(" [@_T] ■■ [/ob_sql_fm_copy.py] ==> [T_63_3] [5. 원격 저장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
print(" [@_T] ■■ [/ob_sql_fm_copy.py] ==> [T_80] [Git 정보 쳐리 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n\n\n\n\n")

with open(res_path, 'w') as file:	    # data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_91] [결과 파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_99] [결과 파일 읽어 오기 End] ■■■■■■■■■■■■")
	
print(" [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_99] ■■■■■■ [######################### [OB sql 파일 복사 쳐리 End] #########################] ■■■■■■\n\n\n\n")
