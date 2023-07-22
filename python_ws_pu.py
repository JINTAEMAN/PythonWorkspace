# ! /python_ws_pu.py   # python Workspace 처리 파일 
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

csv_res = list()   # csv_res 설정    wwww
print("\n\n\n\n[@_TT] ■■■ [/python_ws_pu.py] ==> [T_01] ■■■■■■ [######################### [python Workspace 처리 Start] #########################] ■■■■■■ ")

strNo_Str = None        # No
print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_60] [Git 경보 처리 시작.......@@@@@ ■■■■■■■■■■ \n\n\n\n\n\n")

ob_sort = 2      # OB 처리 종류
ob_sort_nm = ""
now_ydmhm = time.strftime("%y.%m.%d %H:%M")		# 오늘 날짜(년.월.일 시:분)

if len(sys.argv) < 2:   # 인자값이 없으연
	ob_sort = 2
else :
    ob_sort = 1  # 인자값이 존재하면

    ob_sort_nm = sys.argv[1]   # 2번쨰 인자값 
    
    # if ob_sort_nm = "get":   # 인자값이 get 이면
    #     ob_sort = 1
    # else :
    #     ob_sort = 1    
	# argvlist = range(1, len(sys.argv))
	# for i  in argvlist:
	# 	ob_sort = sys.argv[1]
		# print(f"{[i]번째 인자값은 (sys.argv[iD 입니다.")

if ob_sort > 0 :
        
    if ob_sort_nm == "get":   # 인자값이 get 이면
        print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_60_2] [Git 경보 처리 시작0. 원격 저장소 데이다 가저 오기(git pull)] ■■■■■■■■■■ \n\n")

    command = 'git pull origin main'    # 0. 원격 저장소 데이다 가저 오기
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd = proc.read()
    print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_61] [0. 원격 저장소 데이다 가저 오기(git pull)]"+ out_cmd.decode('utf-8') ) 

    command = 'git log --oneline --all --graph'   # 로그 보기
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd = proc.read()
    print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_62] [0. 로그 보기]"+ out_cmd.decode('utf-8') ) 

    #  print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_61] [Git 경보 처려 시작.......@@@@@ ■■■■■■■■■■ (strNo_Str "+ str(strNo_Str)  +"\n\n\n\n\n\n")
    
if ob_sort > 1 :    # 인자값이 없으연
    command = 'git status'    # 0. Git 저장소의 상태 확인
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_status = proc.read()
    print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_71] [0. Git 저장소의 상태 확인(git status)]"+ out_cmd_status.decode('utf-8') ) 
    
    command = 'git add -A'    # 3. Git 스테이지 영역에 추가
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_add = proc.read()
    print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )
    
    cmd_cmt_msg = 'git commit -m "Add to Python Work space['+ now_ydmhm +'(T_01), by 진태만]"'   # 4. Git 로컬 저장소 영역에 커밋 처리
    # git commit -m 'Add to TEST 대이다 추출(22.07.20J)1》[(No  31, No. 32) by 진태만1 
    proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout 
    out_cmt_msg = proc.read()
    print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_73] [4. Git 로걸 저장소 영역에 추가(커밋 에세지)]  ■■■■■■■■■■■■ "+ str(cmd_cmt_msg))
    # print("\n\n [@_T] ■■■ [/python_ws_pu.py] ==> [T_73_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode('utf-8') )

    command = 'git push origin main'      # 5. 원격  저장소에 반영
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_push = proc.read()
    print("\n[@_T] ■■ [/python_ws_pu py] ==> [T_74] [5. 원격 정장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
    print("\n\n [@_T] ■■■ [/ob_sqlJm.copy py] ==> [T_80 [Git 정보 쳐리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n\n\n\n\n")

print("\n\n[@_TT] ■■■ [/python_ws_pu.py] ==> [T_99] ■■■■■■ [######################### [python Workspace 처리 End] #########################] ■■■■■■\n\n\n\n")
