# ! /python_ws_pu.py   # python Workspace 처리 파일 
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib 
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib 
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib

def readParameters():    # 파일에서 파라미터 가져오는 함수()
    print("[@_T] ■■■ [/python_ws_pu.py] [readParameters]==> [T_01]")

    file = open("python_ws_pu_pram.txt", 'rt', encoding='utf-8-sig')	# properties.txt 파일 내용 ---> 2023.09[자산 년월(오늘 년월)]
    # print("[@_T] ■■■ [/python_ws_pu.py] [readParameters]==> [T_51] [file]"+ str(file) )

    parameters = file.read().split(";")      # 자산 년월 parameters
    print("[@_T] ■■■ [/python_ws_pu.py] [readParameters]==> [T_91] [parameters]"+ str(parameters) )
    print("[@_T] ■■■ [/python_ws_pu.py] [readParameters]==> [T_92] [자산 년월]"+ str(parameters[0]) )

    return parameters
# ---------------------------------------------------------------------------------------------------------------------->

print(" [@_T] ■■■ [/python_ws_pu.py] ==> [T_01] ■■■■■■ [######################### [python Workspace 처리 Start] #########################] ■■■■■■ \n\n\n")

now_ydmhm = time.strftime("%y.%m.%d %H:%M")		# 오늘 날짜(년.월.일 시:분)
parameters = readParameters()   # 파일에서 파라미터 가져오는 함수()
git_way = str(parameters[0])     # git 방식(get, push)
print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_02] [parameters[0]]"+ str(parameters[0]) +"[git 방식]"+ str(git_way) ) 
print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_40] [Git 경보 처리 시작0. 원격 저장소 데이다 가저 오기(git pull)] ■■■■■■■■■■ \n\n")

command = 'git pull origin main'    # 0. 원격 저장소 데이다 가저 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_41] [0. 원격 저장소 데이다 가저 오기(git pull)]"+ out_cmd.decode('utf-8') ) 

command = 'git log --oneline --all --graph'   # 로그 보기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_42] [0. 로그 보기]"+ out_cmd.decode('utf-8') )
#  print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_61] [Git 경보 처려 시작.......@@@@@ ■■■■■■■■■■ (strNo_Str "+ str(strNo_Str)  +"\n\n\n\n\n\n")

if git_way == "push":   # 인자값이 push 이면
    command = 'git status'    # 0. Git 저장소의 상태 확인
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_status = proc.read()
    print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_71] [0. Git 저장소의 상태 확인(git status)] ■■■■■ ★★★★★ ■■■■■■■ "+ out_cmd_status.decode('utf-8') ) 
    
    command = 'git add -A'    # 3. Git 스테이지 영역에 추가
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_add = proc.read()
    print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )
    
    cmd_cmt_msg = 'git commit -m "[TM] Add to Python Work space['+ now_ydmhm +'(T_01), by 진태만]"'   # 4. Git 로컬 저장소 영역에 커밋 처리
    # git commit -m ' [TM] Add to Python Work space[23.08.26, by 진태만]'
    proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout 
    out_cmt_msg = proc.read()
    print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_73] [4. Git 로걸 저장소 영역에 추가(커밋 에세지)]■■"+ str(cmd_cmt_msg))
    # print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_73_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode('utf-8') )

    command = 'git push origin main'    # 5. 원격  저장소에 반영
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_push = proc.read()
    print("[@_T] ■■■ [/python_ws_pu py] ==> [T_74] [5. 원격 정장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
    print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_80] [Git 정보 쳐리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n")

print("[@_T] ■■■ [/python_ws_pu.py] ==> [T_99] ■■■■■■ [######################### [python Workspace 처리 End] #########################] ■■■■■■\n\n\n")
