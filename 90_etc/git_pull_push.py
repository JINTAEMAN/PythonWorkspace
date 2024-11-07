import os	# 운영체제(OS) 제어 Lib
import platform  # platform 정보 Lib
import sys	# 파이씬 인터프리터 제어 Lib
import csv	# CSV 파일 Lib
import shutil      # 고수준 파일 연산 Lib
import datetime     # 날짜, 시간 Lib
import time     	# 시간 Lib
import subprocess	# 하위 프로세스 관리 표준 Lib
import pyautogui    # 마우스와 키보드 제어 Lib

git_way_no = 1      # git 방식 No(1: pull: gitHub(원격 저장소)에서 소스 받아 오기, 2: push: gitHub에 소스 올리기, 3: 1 + 2)
sMsg_nSrc = "1. gitHub(원격 저장소)에서 소스 받아 올 소스가 없습니다.(변경 사항 없음)"

sMsg2 = "[T_01] ■■■■■■  [######################### [01. git_pull_push 처리 Start] #########################] ■■■■■■"
sMsg0 = "\n\n\n ■■■ [/git_pull_push.py] ==> "
sMsg = "■■■ [/git_pull_push.py] ==> "
print(sMsg0 + sMsg2)

now_ydmhm = time.strftime("%y.%m.%d %H:%M")     # 오늘 날짜(년.월.일 시:분)
git_way = "".join(map(str.lower, sys.argv[1:]))  # 명령줄 인자 출력[git 방식(get, push)] ==> sys.argv[1][1 :]

command = 'git pull origin main'    # 1. gitHub(원격 저장소)에서 소스 받아 오기
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
sMsg2 = "[T_10] [A. gitHub(원격 저장소)에서 소스 가져오기 결과\n"
sMsg2 += "(1. 로컬 저장소와 원격 저장소에서 1번쨰 커밋한 소스 비교)]"
sMsg2 += "■■■■■ ★★ ■■■■■\n"+ out_cmd.decode('utf-8')
print(sMsg0 + sMsg2)

if str(out_cmd.decode('utf-8')) == "Already up to date.\n":   # 인자값이 push 이면(gitHub에 올리기)
    git_way_no =  int(git_way_no) - 1
    print("■■■ [/git_pull_push.py] ==> [T_11] ["+ str(sMsg_nSrc) +"]")

command = 'git log --oneline --all --graph -5'   # 커밋 로그 보기(최근 5개만 보여)
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd = proc.read()
sMsg2 = "[T_20] [1. gitHub(원격 저장소)에서 발생한 커밋 로그 보기] ■■■■■ ★★ ■■■■■\n"+ out_cmd.decode('utf-8') +"\n\n"
print(sMsg + sMsg2)

git_way = "push"   # 인자값이 push 이면(gitHub에 올리기) ===> TEST @@@@ ===>
# result = pyautogui.alert(git_way, title='▶ [git_way 확인]', button='OK')
print("■■■ [/git_pull_push.py] ==> [T_20_1]")

if (git_way == None or git_way == '' ) and git_way_no == 0:
    sMsg2 = "1. gitHub(원격 저장소)에서 소스 받아 올 소스가 없습니다.(변경 사항 없음)"
    rsltFileNmAlert = ""+ str(sMsg_nSrc) +""
    result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
    sys.exit()    # 종료

command = 'git status'  # 0. Git 로컬 저장소의 상태 확인
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd_status = proc.read()
sMsg2 = "[T_30] [0. 로컬 저장소의 상태 확인(git status)] ■■■■■ ★★ ■■■■■\n"+ out_cmd_status.decode('utf-8')
print(sMsg + sMsg2)

my_host_nm = platform.uname().node  # 컴퓨터 현재 사용자 이름 가져오기(PC 명)
# sMsg2 = "[T_40] [git 방식(인자값)]"+ str(git_way) +"[PC 명]"+ str(my_host_nm) +"\n"
# print(sMsg + sMsg2)

if str(git_way) == "push":   # 인자값이 push 이면(gitHub에 올리기)
    sMsg2 = "[T_40] [B. gitHub(원격 저장소)에 올리기 처리] ■■■■■ ★★ ■■■■■\n"
    sMsg2 += "[git 방식(인자값)]"+ str(git_way) +"[PC 명]"+ str(my_host_nm) +"\n"
    print(sMsg + sMsg2)

    srch_word_1 = "nothing to commit"    # 조회 단어1
    out_cmd_status_cd_1 = out_cmd_status.decode('utf-8').find(srch_word_1)  # 조회 단어1이 처음 나타나는 위치
    print("■■■ [/git_pull_push.py] ==> [T_71] [조회 단어1이 처음 나타나는 위치]■■■■■■■"+ str(out_cmd_status_cd_1) )

    if out_cmd_status_cd_1 < 0:  # 조회 단어1가 없으면
        command = 'git add -A'    # 3. Git 스테이지 영역에 추가
        proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
        out_cmd_add = proc.read()
        print("■■■ [/git_pull_push.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )

        cmd_cmt_msg = 'git commit -m "▶['+ now_ydmhm +'] 02. 소스 올리기(by 진태만[PC 명: '+ my_host_nm +'])"'   # 4. Git 로컬 저장소 영역에 커밋 처리
        proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout
        out_cmt_msg = proc.read()
        print("■■■ [/git_pull_push.py] ==> [T_80] [4. Git 로걸 저장소 영역에 추가(커밋 메세지)] ■■■■■ ★★ ■■■■■\n"+ str(cmd_cmt_msg) +"\n\n")

        command = 'git push origin main'    # 5. gitHub에 소스 올리기
        proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
        out_cmd_push = proc.read()
        git_way_no = int(git_way_no) + 3    # git 방식 No(1: pull: gitHub(원격 저장소)에서 소스 받아 오기, 2: push: gitHub에 소스 올리기, 3: 1 + 2)
        print("■■■ [/git_pull_push py] ==> [T_81] [5. 원격 저장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
        print("■■■ [/git_pull_push.py] ==> [T_82] [Git 정보 처리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n")
    else:
        print("■■■ [/git_pull_push.py] ==> [T_83] [2. 커밋할 소스가 없습니다.(수정한 내용 없음)]")
        rsltFileNmAlert = "2. 커밋할 소스가 없습니다.(수정한 내용 없음)"
        result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
        sys.exit()    # 종료
print("■■■ [/git_pull_push.py] ==> [T_90] ■■■■■■ [git_way_no]"+ str(git_way_no) )
sMsg2 = "[T_99] ■■■■■■ [######################### [01. git_pull_push 처리 End] #########################] ■■■■■■\n\n"
print(sMsg + sMsg2)

if git_way_no == 3:
    rsltFileNmAlert = "2. gitHub(원격 저장소)에 소스 올리기가 성공 했습니다."
elif git_way_no == 4:
    rsltFileNmAlert = "1. gitHub(원격 저장소)에서 소스 받아 오기, 2. gitHub에 소스 올리기가 성공 했습니다."
else:
    rsltFileNmAlert = "1. gitHub(원격 저장소)에서 소스 받아 오기가 성공 했습니다."

result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull, push 처리]', button='OK')
sys.exit()    # 종료