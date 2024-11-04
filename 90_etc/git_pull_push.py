# ! /git_pull_push.py   # python Workspace 처리 파일
# -*- coding: utf-8 -*-	# 문자 인코딩(한글 사용)

import os	# 운영체제(OS) 제어 Lib
import platform  # platform 정보 Lib
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib
import pyautogui    # 마우스와 키보드 제어 Lib

git_way_no = 1      # git 방식 No(1: pull: ghtHub에서 소스 받아 오기, 2: push: ghtHub에 소스 올리기, 3: 1 + 2)

sMsg2 = "[T_01] ■■■■■■  [######################### [01. git_pull_push 처리 Start] #########################] ■■■■■■"
sMsg = "\n\n\n ■■■ [/git_pull_push.py] ==> "
print(sMsg + sMsg2)

now_ydmhm = time.strftime("%y.%m.%d %H:%M")	    # 오늘 날짜(년.월.일 시:분)
git_way = "".join(map(str.lower, sys.argv[1:]))  # g 명령줄 인자 출력[git 방식(get, push)] ==> sys.argv[1][1 :]

command = 'git pull origin main'    # 1. ghtHub에서 소스 받아 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
sMsg2 = "[T_41] [0. ghtHub에서 소스 받아 오기 결과] ■■■■■■■■■■"+ out_cmd.decode('utf-8')
print(sMsg + sMsg2)

if str(out_cmd.decode('utf-8')) == "Already up to date.\n":   # 인자값이 push 이면(ghtHub에 올리기)
    git_way_no =  int(git_way_no) - 1
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_42] [git_way]"+ str(git_way) +"[git_way_no]"+ str(git_way_no) )

# if (git_way == None or git_way == '' ) and git_way_no == 0:
#     rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기 실패 했습니다.(변경 사항 없음)"
#     result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
#     sys.exit()    # 종료

if git_way == None or git_way == '':
    # command = 'git log --oneline --all --graph'   # 로그 보기
    # proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    # out_cmd = proc.read()

    git_way = "push"   # 인자값이 push 이면(ghtHub에 올리기) ===> TEST @@@@ ===>
# result = pyautogui.alert(git_way, title='▶ [git_way 확인]', button='OK')
# print("[@_T] ■■■ [/git_pull_push.py] ==> [T_44]")

sMsg2 = "[T_42_0] [git 방식(인자값)]"+ str(git_way) +"\n"
sMsg2 += "[0. 로그 보기]  ■■■■■■■■■■ \n"
sMsg2 += ""+ out_cmd.decode('utf-8') +"\n"
print(sMsg + sMsg2)

my_host_nm = platform.uname().node  # 컴퓨터 현재 사용자 이름 가져오기(PC 명)
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_50] [PC 명]"+ str(my_host_nm) +"[git 방식]"+ str(git_way) +"[git 방식 No]"+ str(git_way_no) )

if str(git_way) == "push":   # 인자값이 push 이면(ghtHub에 올리기)
    command = 'git status'    # 0. Git 저장소의 상태 확인

    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_status = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_71] [0. Git 저장소의 상태 확인(git status)] ■■■■■ ★★★★★ ■■■■■■■ "+ out_cmd_status.decode('utf-8') )
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_71_1] [out_cmd_status]"+ out_cmd_status.decode('utf-8') )

    srch_word_1 = "nothing to commit"    # 조회 단어1
    srch_word_2 = "no changes added to commit"    # 조회 단어2
    out_cmd_status_cd_1 = out_cmd_status.decode('utf-8').find(srch_word_1)  # 조회 단어1이 처음 나타나는 위치
    out_cmd_status_cd_2 = out_cmd_status.decode('utf-8').find(srch_word_2)  # 조회 단어2이 처음 나타나는 위치
    # print(out_cmd_status.find('nothing to commit'))     # nothing to commit가 처음 나타나는 위치
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_71_2] [out_cmd_status_cd_1]"+ str(out_cmd_status_cd_1) +"[out_cmd_status_cd_2]"+ str(out_cmd_status_cd_2) )

    if out_cmd_status_cd_1 < 0:  # 조회 단어1가 없으면
    # if out_cmd_status_cd_1 > 0 and out_cmd_status_cd_2 > 0:
        command = 'git add -A'    # 3. Git 스테이지 영역에 추가
        proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
        out_cmd_add = proc.read()
        print("[@_T] ■■■ [/git_pull_push.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )

        cmd_cmt_msg = 'git commit -m "▶['+ now_ydmhm +'] 02. 소스 올리기(by 진태만[PC 명: '+ my_host_nm +'])"'   # 4. Git 로컬 저장소 영역에 커밋 처리
        # git commit -m ' [TM] Add to Python Work space[23.08.26, by 진태만]'
        proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout
        out_cmt_msg = proc.read()
        print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73] [4. Git 로걸 저장소 영역에 추가(커밋 메세지)] ■■■■■■ ★★ ■■■■■■"+ str(cmd_cmt_msg) +"\n\n")
        # print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "* out_cmt_msg.decode('utf-8') )

        command = 'git push origin main'    # 5. ghtHub에 소스 올리기
        proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
        out_cmd_push = proc.read()
        git_way_no = int(git_way_no) + 3    # git 방식 No(1: pull: ghtHub에서 소스 받아 오기, 2: push: ghtHub에 소스 올리기, 3: 1 + 2)
        print("[@_T] ■■■ [/git_pull_push py] ==> [T_74] [5. 원격 저장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
        print("[@_T] ■■■ [/git_pull_push.py] ==> [T_80] [Git 정보 처리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n")
    else:
        rsltFileNmAlert = "2. 커밋할 소스가 없습니다.(변경 사항 없음)"
        result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
        sys.exit()    # 종료

print("[@_T] ■■■ [/git_pull_push.py] ==> [T_90] ■■■■■■ [git_way_no]"+ str(git_way_no) )
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_99] ■■■■■■ [######################### [01. git_pull_push 처리 End] #########################] ■■■■■■\n\n\n")

if git_way_no == 3:
    rsltFileNmAlert = "2. ghtHub에 소스 올리기가 성공 했습니다."
elif git_way_no == 4:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기, 2. ghtHub에 소스 올리기가 성공 했습니다."
else:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기가 성공 했습니다."

result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull, push 처리]', button='OK')
sys.exit()    # 종료
