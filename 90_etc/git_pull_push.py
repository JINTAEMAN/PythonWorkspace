# ! /git_pull_push.py   # python Workspace 처리 파일
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib
import pyautogui    # 마우스와 키보드 제어 Lib

git_way_no = 1      # git 방식 No(1: pull: ghtHub에서 소스 받아 오기, 2: push: ghtHub에 소스 올리기, 3: 1 + 2)

# print(" [@_T] ■■■ [/git_pull_push.py] ==> [T_01] ■■■■■■ [######################### [python Workspace 처리 Start] #########################] ■■■■■■ \n\n\n")
sMsg2 = "[T_01] ■■■■■■  [######################### [01. git_pull_push 처리 Start] #########################] ■■■■■■"
sMsg = "\n\n\n ■■■ [/git_pull_push.py] ==> "
print(sMsg + sMsg2)

now_ydmhm = time.strftime("%y.%m.%d %H:%M")	    # 오늘 날짜(년.월.일 시:분)
git_way = "".join(map(str.lower, sys.argv[1:]))  # g 명령줄 인자 출력[git 방식(get, push)] ==> sys.argv[1][1 :]
# git_way = str(sys.argv[1 :])     # g 명령줄 인자 출력[git 방식(get, push)] ==> sys.argv[1][1 :]
# print("[@_T] ■■■ [/git_pull_push.py] ==> [T_40] [Git 경보 처리 시작0. 원격 저장소 데이타 가저 오기(git pull)] ■■■■■■■■■■ \n\n")

command = 'git pull origin main'    # 1. ghtHub에서 소스 받아 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
sMsg2 = "[T_41] [0. ghtHub에서 소스 받아 오기 결과] ■■■■■■■■■■"+ out_cmd.decode('utf-8')
print(sMsg + sMsg2)
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_42]")

if str(out_cmd.decode('utf-8')) == "Already up to date.\n":   # 인자값이 push 이면(ghtHub에 올리기)
    git_way_no = git_way_no - 1

if git_way == None and git_way_no == 0:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기 실패 했습니다(변경 사항 없음)"
    result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
    sys.exit()    # 종료
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_43]")

if git_way == None:
    command = 'git log --oneline --all --graph'   # 로그 보기
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd = proc.read()

# git_way = "push"   # 인자값이 push 이면(ghtHub에 올리기) ===> TEST @@@@ ===>
# result = pyautogui.alert(git_way, title='▶ [git_way 확인]', button='OK')
# print("[@_T] ■■■ [/git_pull_push.py] ==> [T_44]")

sMsg2 = "[T_42_0] [git 방식(인자값)]"+ str(git_way) +"\n"
sMsg2 += "[0. 로그 보기]  ■■■■■■■■■■ \n"
sMsg2 += ""+ out_cmd.decode('utf-8') +"\n"
print(sMsg + sMsg2)
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_44] [git_way]"+ str(git_way) )

if str(git_way) == "push":   # 인자값이 push 이면(ghtHub에 올리기)
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_51]")

    command = 'git status'    # 0. Git 저장소의 상태 확인

    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_status = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_71] [0. Git 저장소의 상태 확인(git status)] ■■■■■ ★★★★★ ■■■■■■■ "+ out_cmd_status.decode('utf-8') )

    command = 'git add -A'    # 3. Git 스테이지 영역에 추가
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_add = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )

    cmd_cmt_msg = 'git commit -m "▶['+ now_ydmhm +'] 02. 소스 올리기(by 진태만)"'   # 4. Git 로컬 저장소 영역에 커밋 처리
    # git commit -m ' [TM] Add to Python Work space[23.08.26, by 진태만]'
    proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout
    out_cmt_msg = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73] [4. Git 로걸 저장소 영역에 추가(커밋 에세지)]■■"+ str(cmd_cmt_msg))
    # print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode('utf-8') )

    command = 'git push origin main'    # 5. ghtHub에 소스 올리기
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_push = proc.read()
    git_way_no = git_way_no + 1     # git 방식 No(1: pull: ghtHub에서 소스 받아 오기, 2: push: ghtHub에 소스 올리기, 3: 1 + 2)
    print("[@_T] ■■■ [/git_pull_push py] ==> [T_74] [5. 원격 저장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_80] [Git 정보 처리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n")

print("[@_T] ■■■ [/git_pull_push.py] ==> [T_90] ■■■■■■[git_way_no]"+ str(git_way_no) )

# if git_way_no == 2:   # 인자값이 push 이면(ghtHub에 올리기)
#     git_way_no = git_way_no + 1
# print("[@_T] ■■■ [/git_pull_push.py] ==> [T_91] ■■■■■■[git_way_no]"+ str(git_way_no) )

if git_way_no == 2:
    rsltFileNmAlert = "2. ghtHub에 소스 올리기가 성공 했습니다."
elif git_way_no == 3:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기, 2. ghtHub에 소스 올리기가 성공 했습니다."
else:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기가 성공 했습니다."

result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull, push 처리]', button='OK')
sys.exit()    # 종료

print("[@_T] ■■■ [/git_pull_push.py] ==> [T_99] ■■■■■■ [######################### [01. git_pull_push 처리 End] #########################] ■■■■■■\n\n\n")


# if str(out_cmd.decode('utf-8')) == "Already up to date.\n":   # 인자값이 push 이면(ghtHub에 올리기)
#     git_way_no = git_way_no - 1