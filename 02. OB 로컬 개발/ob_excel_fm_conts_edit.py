﻿# ! /ob_sqljm_copy.py   # OB sql 파일 복사 쳐리 파일 
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib 
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Ub
import datetime     # 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib

src_path = ""	# 복사할 파일 경로
dst_path = ""   # 복사된 옥적지 파일 경로

def file_copy(src, dst)： # 파일 복사 처리 함수()
	try :
		print"\n[[@_T] ■■ [/ob_sql_fm_copy.py] [file_copy()] ==> ■■■■■■ [T_01] [src]"+ str(src) +"[dstr]"+ str(dst) )
	
		shutil.copy2(src, dst)   # 파일 복사
		print("\n[[@_T] ■■ [/ob.sqljm.copy py] [file.copyO] ==> ■■■■■■ [T_11] [파일 복사 성공}")

		# if not os.path.isfilefdst)+    # dst 파일이 없다면 ==> dst 경로 인식 못 함
		#  print("\n[[@_T] ■■ [/ob_sql_fm_copy.py] file_copy()] ==> ■■■■■■ [T_02] [src】”+ str(src) +”[dst】"+  str(dst)) 

		#  if not os.path.isdir(dst)     # 복사할 곳에 디액토리가 없다연
		#       print("\n[[@_T] ■■ [/ob_sql_fm_copy py] file_copy()] ==> ■■■■■■ [T_03] [src】”+  str(src) +"[dst]"+ str(dst))

		# dst_dir = os.path dirname(dst)    # 디렉토리 경로 계산
		#  # os.makedirs(dst_dir)    # 디액토리 생성 

		# shutil.copy2(src, dst)    # 파일 복사
		#         pnnt(An[[@_T] ■■ [/ob_sqLfm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】_) 

		# else :
		# pnnt("[@_T] ■■ [/ob_sqLfm_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】")

	except Exception as e:
		print(e)
		print("\n[[@_丁]  ■■ [/ob_sql_fm_copy.py]] [file_copy()J => [T_91] [파일 복사 실파!】  [Error] "+src )

# path = './ob_work_table_T.txt'    # OB 처리 대상 테이블 txt 파일【/ob_workJable_T.txt: TEST 파일)
# res_path = './ob.work^rst.csv'   # OB 처리 결과 csv 파일
path = "D：\\\\PythonWorkspace\\\\02_0B_Windows\\\\ob_work_table_T.txt"    # OB 쳐리 대상 테이불 txt 파일(八)b_work_table_Tt)rt: TEST 파일》 
res_path = "D:\\\PythonWorkspace\\\\02_0B_Windows\\\\ob_work_rst.csv"		# OB 처리 결과 csv 파일
f = open(path, "r") 

tablejist = f.readlines()
f_close()

csv_res = list()   # csv_res 설정 
print("\n\n\n\n[@_TT] ■■■ [/ob_sql_fm_copy.py] ==> [T_01] ■■■■■■ [######################### [OB sql 파일 복사 쳐리 Start] #########################] ■■■■■■ ")

ob.sort = 0       # OB 처리 종류【1. 가!발 테스트 추출. 2.  CRM 데이다 추출)	■■■■■■■■■■■■■■■■■■■■■■■■

if len(sys.argv) < 2 -      # 인자값이 없으연
	ob_sort = 1
else :
	ob_sort = sys.argv[1]   # 2번찌！       인자값 
	argvlist = range(1, len(sys.argv))
	for i  in argvlist:
		ob_sort = sys.argv[1]
		# print(f"{[i]번째 인자값은 (sys.argv[iD 입니다.")
 
if ob_sort = 1  :    # OB 처리 종류가 1 이면 
	ob_folder = "ob_dsgn"  # ob_dsgn 폴더
else :
	ob_folder = "ob_dsgn_CRM"		# CRM ob_dsgn 폴더
print("\n\n\n\n[@_TT] ■■ [/ob_sql_fm_copy.py] ==> [T_021 [ob_sort]"+ str(ob_sort) +"[ob_dsgn 폴더】"+ str(ob_folder ))

result_title = list()   # 제목 설정
now_date = time.strftime("%Y-%m-%d %H:%M:%S")		# 오늘 날짜
result_title.append("CSV File Info[Start Date "+ str(now_date) +"]")	# 제목 설정
csv_res.append(result_title)

result_head = list() #     파일 헤드 설정
result_head.append("No.") # No.
result_head .append("File Name")      # 01. 파일 명
result_head .append("Copy File path")    # 02.복사할 파일 경로
result_head.append("Copied File path")    # 03. 복사된 목적지 파일 경로 
csv_res .append(result_head)   # HEAD 설정

# cmd = "git —version" 
#    cmd = "git pull"
#     cmd = "your command"
# # returns output as byte string
#      #     returned_output = subprocess.check_output(cmd)
#      #     esult = subprocess run(cmd, capture_output=True, shell=True, encoding='utf-8') 
#     result = subprocess.run(cmd, capture_outputsTrue, shell=True)
# print(result.stdout)
#     print("\n[@_T] ■■ [/ob_sql_fm_copy py】    => [T_03] [returned_output]"+ str(result stdout)) 
# using decode() function to convert byte string to string
#  printfCurrent date isreturned_output decode("utf-8M))
# printC〜n[@_丁] ■■ [/ob_sql_fm_copy.pyl ==> [T_03] [returned_output)"+ str(returned_output))


# No.와 원하는 No. 비교해서 돌리기 @@@
for i in table_list:		# i ~ table_list
	print("\n\n[@_T] ■ [/ob_sql_fm_copy.py] ==> [T_50] [table_list] [i_번째]"+ i +"[01. 파일 명]"+ crm_file_nm  +"[CSV 파일 정보 확인 작업 중...] .....■■■■■■ ")

	try :
		frst_num_file_nm = i.strip()[0:1]
		if frst_num_file_nm == "#" :   #  파일명 앞에 #이 들어 있으면 
			continue    # 아래 코드를 실행하지 않고 건너뜀

		splited_str = i.strip().split('.')  # 파일명 쪼개기
		strNo = splited_str[0].stnp()
		num_folder_nm = splited_str[0].strip() +"_"+ splited_str[1].strip() 
		tb_nm = splited_str[1].strip()   # 테이블명
	except :
		continue    # 아래 코드를 실쟁하지 않고 건너뜀

	result = list()     # 결과 list 설정

	if ob.sort == 1 :    # 0B 쳐리 종휴가 1 이면(1: 개발 테스트 추출)
		num_file_nm = "grape_odl_cr_002_"+ tb_nm.lower() +"_001_bq2gcswithfin"
	else :		# OB 처리 종류가 2 이면(2: CRM 더이다 추출)
		num_file_nm = "grape_odl_cr_002_"+ tb_nm.lower() +"crmt_001__bq2gcswithfin" 
	
	susbdd_01 = tb_nm[0:2]		# L0, L1, L2
	susbdd_02 = tb_nm[2:4]		# 하위 폴더(/bi, /cr...)

	if susbdd_01 == "L2":   # L2 이면
		susbdd_02 = "00"
	print("n\n[@_T] ■ [/ob_sql_fm_copy.py] ==> [T_51_0] [tablejist] [L번찌！】i  +"[tb_nmp str(tb_nm) +'[susbdd_01f+ str(susbdd_01) +"[susbdd_02p str 

	src_path = "D:\\\\"+ ob_folder +"\\\\"+ num_folder_nm  +"\\\\"+ num_file_nm +".sql"    # 복사알 파일 경로
	dst_path = "C:\\\\Users\\\tamario\\\PycharmProjects\\\dlk_airflow_01\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".sql" 
	print("\n\n[@_T] ■ [/ob_sql_fm_copy.py] ==> [T.51] [tablejist] [i_번씨IP ' +M[tb_nmr+ str(tb.nm) 에 복사할 파일 경로]、str(src_path) +"[2 복사된 옥적:

	file_copy(src_pathr, dst_path)   # 파일 복사 쳐리 ■■■■■
	print("\n\n[@_T] ■ [/ob_sql_fm_copypy] «> [T_52]   [tablejist] [i_번찌ll"+ ■    +_[tb_nmr+ str(tb.nm) 욥-[조회된 파일명】”+ str(srcjath))
	
	result.append(int(strNo))    # No.
	result.append(str(tb_nm))		# 01. 파일명
	result.append(str(src_path))   # 02 복사할 파일 경로
	result_append(str(dst_path))   # 03 복사된 목적지 파일 경로
	print("\n[@_T] ■■ [/ob_sqLfm_copy pyj ==> [T_53J [tablejist ■] [i_번찌IJ+나 i +"[01   파일 명卜 str(tb_nm) -+"[02  조회된 파일 명str(src_path)  )

	csv_res.append(result)
	print("\n\n [@_T] ■■■ [/ob_sql_fm_copy.pyj —> [T_81_2J [End] ■■■「)
	
	try :
		# x = subprocess.run(['cp' ,'Project_Repo_Details.csv', 'bitbucket_repo_report/Project_Repo_Details.csv'])
       # print(x.stdout)
       # print(x.stderr)
    
		os.chdir("/dirs/Repo-report_scripts/bitbucket_repo_report")
		subprocess.run(['git', 'config','--global', 'user.email', 'tamario@lgupluspartners.co.kr'])  # Git Config 설정 확인 및 변경(전역 email 설정)
		subprocess.run(['git', 'init')
		subprocess.run(['git', 'add', 'Project_Repo_Details.csv'])		# 01   staging area로 효기기(add) ■■■■■
		subprocess.run(['git', 'commit', '-m', 'CRM TESTDD'])	# commit 에 대한 설명 메시지
		subprocess.run(['git',' push', 'origin', 'develop'])		# 3. gti 서버로 추가(pushg): 원격 저장소에 반영 ■■■■■
		# subprocess run(['git', 'push', 'https://tamario:asas1212!r,'--al니)
		# subprocess.runlCgit',' push', ,httDs:"tamar，o asas1212"@QitreDorul..’--a"'】)  #  3. gti 서버로 추가(push) ■■■■■■■■

	except Exception as e :
		print("\n[@_T] ■■ [/ob_sql_fm_copy py] => [T_44] Error occured :".format(e)》 
	print(,f\n\n [@_T] ■■■ [/ob_sql_fm_copy.py] ==> [T_99] [End] ■■■ j

	csv_res.append(result) 
	print("\n\n[@_T] ■■  [/ob_sql_fm_copy.py] ==> [T_99] [End] ■■■■")
  
with open(res_path, 'w') as file:	    # data 디렉토리안에 res_path 경로의 파일을 생성	
	write = csv.writer(file)    # 쓰고 싶은 내용 입력
	write.writerows(csv_res)

with open(res_path, "r") as cvs_file:	# data 디렉토리안에 res_path 경로의 파일 읽어 오기
	print("\n\n[@_T] ■■■  [/ob_sql_fm_copy.py] ==> [T_91] [파일 읽어 오기 Start] ■■■■■■■■■■■■")
	print(cvs_file.read())
	print("\n\n[@_T] ■■■  [/ob_sql_fm_copy.py] ==> [T_99] [파일 읽어 오기 End] ■■■■■■■■■■■■")
 
	print("\n\n[@_TT] ■■■ [/ob_sql_fm_copy.py] ==> [T_99] ■■■■■■ [######################### [CSV 파일 정보 확인 End] #########################] ■■■■■■\n\n\n\n")
 