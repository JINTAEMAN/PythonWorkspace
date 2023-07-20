 # ! /memo_copy.py   # 메모 파일 복사 파일 
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib 
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Lib
import datetime     # 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib

src_path = ""	# 복사할 파일 경로
dst_path = ""   # 복사된 옥적지 파일 경로

def file_copy(src, dst)： 	# 파일 복사 처리 함수()
	try : 
		print("\n[@_T] ■■ [/memo_copy.py] [file_copy()] ==> ■■■■■■ [T_01 [ob_srcsort]"+ str(src) +"[dstr】"+ str(dst) )
		
		shutil.copy2(src, dst)   # 파일 복사
		print("\n[@_T] ■■ [/ob.sqljm.copy.py] [file.copy()] ==> [T_11] [파일 복사 성공]")

		# if not os.path.isfilefdst)+    # dst 파일이 없다면 ==> dst 경로 인식 못 함
		#  print("\n[@_T] ■■ [/memo_copy.py] file_copy()] ==> ■■■■■■ [T_02] [src】"+ str(src) +"[dst】"+  str(dst)) 

		#  if not os.path.isdir(dst)     # 복사할 곳에 디액토리가 없다연
		#       print("\n[@_T] ■■ [/memo_copy py] file_copy()] ==> ■■■■■■ [T_03] [src】"+  str(src) +"[dst]"+ str(dst))

		# dst_dir = os.path dirname(dst)    # 디렉토리 경로 계산
		#  # os.makedirs(dst_dir)    # 디액토리 생성 

		# shutil.copy2(src, dst)    # 파일 복사
		#         pnnt(An[[@_T] ■■ [/memo_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】_) 

		# else :
		# pnnt("[@_T] ■■ [/memo_copy.py] [file_copy()] ==>■■■■■■ [T_11】    [파일 복사 성공】")

	except Exception as e:
		print(e)
		print("\n[@_T] ■■ [/memo_copy.py] [file_copy()] ==> [T_91] [파일 복사 실패] [Error]"+ e )

src_path = "D:\\\\"+ ob_folder +"\\\\"+ num_folder_nm  +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로
dst_path = "C:\\\\Users\\\tamario\\\PycharmProjects\\\dlk_airflow_01\\\\"+ susbdd_01.lower() +"\\\\"+ susbdd_02.lower() +"\\\\"+ num_file_nm +".sql"    # 복사할 파일 경로 
print("\n[@_T] ■ [/memo_copy.py] ==> [T_51_0] [table_list] [i_번째]"+ i +"[tb_nmp]"+ str(tb_nm) +"[src_path]"+ str(src_path) +"[dst_path]"+ str(dst_path) )

file_copy(src_pathr, dst_path)   # 파일 복사 처리(Git 로컬 저장소에 파일 저장) ■■■■■

csv_res = list()   # csv_res 설정 
print("\n\n\n\n[@_TT] ■■■ [/memo_copy.py] ==> [T_01] ■■■■■■ [######################### [OB sql 파일 복사 쳐리 Start] #########################] ■■■■■■ ")

strNo_Str = None        # No
cmt_No = "06"    # 커밋 메세지 번호 ■■■■■■■■■■■ 

command = 'git pull origin develop'    # 0. 원격 저장소 데이다 가저 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdoul
out_cmd = proc.read()
print("\n\n [@_T] ■■■ [/ob_sqljm_copy.py] ==> [T_11] [0. 원격 저장소 데이다 가저 오기(git pull)]"+ out_cmd decode('utf-8') ) 

print("\n\n [@_T] ■■■ [/ob_sqljm_copy.py] ==> [T_61] [Git 경보 처려 시작.......@@@@@ ■■■■■■■■■■ (strNo_Str "+ str(strNo_Str)  +"\n\n\n\n\n\n")

command = 'git add -A'    # 3. Git 스테이지 영역에 추가
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdoul
out_cmd_add = proc_read()
print("\n\n [@_T] ■■■ [/ob_sqljm_copy.py] ==> [T_63_1] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode( utf-8 )) 

cmt_No = "10"    # 깃 메세지 번호 ■■■■■■■■■■■
cmd_cmt_msg = 'git commit -m "Add to TEST 데이타 추출('+ datetime.datetime.now().strftime('%y.%m.%d') +'_'+ cmt_No +') [('+ str(strNo_Str) +'), by 진태만]"'   # 4. Git 로컬 저장소 영역에 커밋 처리
# git commit -m 'Add to TEST 대이다 추출(22.07.20J)1》[(No  31, No. 32) by 진태만1 
proc = ubprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdoul
out_cmt_msg = proc.read()
print("\n\n [@_T] ■■■ [/ob_sqljm_copy.py] ==> [T_63_2] [4. Git 로걸 저장소 영역에 추가(커잇 에세지)J  ■■■■■■■■■■■■ "+ str(cmd_cmt_msg))
print("\n\n [@_T] ■■■ [/ob_sqljm_copy.py] ==> [T_63_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode( utf-8)) 

command = 'git push -f origin develop'      # 5. 원격  저장소에 반영
proc = ubprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdoul
out_cmd_push = proc.read()
print("\n[@_T] ■■ [/memo_copy py] ==> [T_63_3] [5. 원격 方!장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
print("\n\n [@_T] ■■■ [/ob_sqlJm.copy py] ==> [T_80 [Git 정보 쳐리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n\n\n\n\n")


print("\n\n[@_TT] ■■■ [/memo_copy.py] ==> [T_99] ■■■■■■ [######################### [CSV 파일 정보 확인 End] #########################] ■■■■■■\n\n\n\n")
