

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2024.11) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2024.11.01(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- LG U+ ixi-O SM Prj[★]
- ixi API 소스 분석
==============================================================================================================

- 일간, 주간, 월간 보고 작성 
[IXI 솔루션 - Call Agent SM] 10월 5주차_주간보고.pptx
애버커스_ixi-O_운영유지보수_검수용자료_2411.xlsx
==============================================================================================================

- [Python] "FileNotFoundError: [Errno 2] No such file or directory" 해결
import os

urlPath = ""   # 01. URL 경로(엑셀 폴더 경로)
opeParaFileNm = "01_1. paramYM.txt"   # 02. 파라 파일명 # ■■■■■■■ ===> Real

# /**
# * @description 파일에서 파라미터 가져오는 함수()
# */C
def readParameters(urlPath: str):

    file_path = urlPath + opeParaFileNm   # 02. 파라 파일 경로
    print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_02] [URL 경로]"+ str(urlPath) +"[T_02] [file_path]"+ str(file_path) )

    if os.path.exists(file_path):    # 파라 파일 경로가 존재하면
        file = open(urlPath + opeParaFileNm, 'rt', encoding='utf-8-sig')	# properties.txt 파일
        # print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_51] [file]"+ str(file) )

        parameters = file.read().split(";")   # 자산 년월 parameters[01. 현재 년월[입력]]
        print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_52] [00. file]"+ str(file) +"[01. 이전 년월[입력]]"+ 
		str(parameters[0]) +"[02. 출력할 년월[현재 월]■]"+ str(parameters[1] ) )

    else:
        print(f'File not found: {file_path}')
        parameters = ""
    print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_91] [parameters]"+ str(parameters) )

    return parameters
------------------------------------------------------------------------------------------------------------

Msg2 = "[T_01] ■■■■■■  [######################### [자산 검증 파일 TEST Start] #########################] 
■■■■■■"
sMsg = "\n\n\n ■■■ [/ast_vrfc.py] ==> "
print(sMsg + sMsg2)

parameters = readParameters(urlPath)   # 파일(01_1. paramYM.txt)에서 파라미터 가져오는 함수() 호출 ■
sMsg2 = "[T_01_2] [파일 존재 여부]"+ str(parameters) +"[urlPath]"+ str(urlPath)
print(sMsg + sMsg2)

if parameters is None or parameters =='':   # 파일이 존재하지 않으면
    urlPath = "01_ast_vrfc/"   # 01. URL 경로(엑셀 폴더 경로)  # ■■■■■■■ ===> TEST 수행(테스트용) @@@ ===>
    parameters = readParameters(urlPath)   # 파일(01_1. paramYM.txt)에서 파라미터 가져오는 함수() 호출 ■
==============================================================================================================

- VS CODE 사용법 (디버깅)
https://wikidocs.net/137962
1. VS CODE 디버깅을 위한 설정
 1) 디버깅(Tab) (Ctrl + Shift + D) > 실행 및 디버그(버튼): 클릭  > Python File: 클릭(상단에 선택창에서)
--> 설정이 완료되면 아까의 실행 및 디버그 버튼이 없어지고 초록색 Run 버튼과 Python: Current File 이 생김
 2) 디버깅(Ctrl + Shift + D)에서 상단 바에서 디버깅 이미지
  가. Python 파일 실행: 클릭 --> 실행 ■
  나. Python 디비거: Python File 파일 디버그: 클릭 --> 디비깅 실행 ■■■ 
-------------------------------------------------------------------------------------------------------------------------------

- /launch.json 파일에서
{
    // IntelliSense를 사용하여 가능한 특성에 대해 알아보세요.
    // 기존 특성에 대한 설명을 보려면 가리킵니다.
    // 자세한 내용을 보려면 https://go.microsoft.com/fwlink/?linkid=830387을(를) 방문하세요.
    "version": "0.2.0",
    "configurations": [
        {
            "name": "01. Python 디버거: 현재 파일",
			"type": "python",	// type 추가(F5: 디비깅 실행)
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal"
        }
    ]
}
==============================================================================================================

- .gitignore 파일 사용법
https://www.daleseo.com/gitignore/

# gitignore 파일 생성 ■■■
$ touch .gitignore

$ git rm --cached *.xlsx	 # 지금 까지 커밋을 했는데, 이제 더 이상 안 할 것 ■ (원격 저장소에 있는 파일을 삭제)
git commit -m "▶ [24.11.01 15:13] 파일 삭제(by tamario)";
--------------------------------------------------------------------------------------------------------------------------

- Visual Studio Code로 git 관리하기(5) - gitignore
https://velog.io/@kleu358/Visual-Studio-Code%EB%A1%9C-git-%EA%B4%80%EB%A6%AC%ED%95%98%EA%B8%B04

1. 커밋하지 않을 파일 설정하기
 1) .git/info/exclude : 나만의 정책(제외할 것) (파일명 작성)
 2) .gitignore : 팀원과의 정책(팀원 모두가 제외할 것)mm n mnj==========

■■■■■■■■■■■■■■■■■■ 2024.11.02(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 
	
- 주말[★]
06:04 기상
06:13 조식(돈가스 2개, 치킨): 수종
06:33 집 출발(도보{자전거), 도림천 <=> 대림역)
08:10 귀가
08:45 집 출발(도보): 수종 
09:04 최준호 내과 방문 => 수종 독감 예방 접종, 혈압 체크: 123 ~ 81mmHg(정상)
09:10 귀가 
10:00 가계부 월말 결산 SW 수정
10:55 수종 은천 센터에 감(센터 종료 후 바로 엄마집에 놀러감)
11:22 집 출발(자전거) 
11:30 중식(정식: 4천원[제주 보쌈(해태 보라매 타워])
11:45 도보{자전거), 도림천 <=> 대림역)
12:51 귀가
13:50 인터넷 서핑
14:40 수종 노트북(MSI GE60_2OE)에 DDR3 PC3-1280 RAM(8G) 장착(매모리: 총 16G)
	--> 노트북 메모리 슬롯이 기울려서 끼게 되어 있어서 까다로움(2번 실패 후 장착)
17:30 석식
17:45 실내 도보
18:50 종료
20:00 인터넷 서핑
23:00 취침
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2024.11.03(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 

- 주말2[★]
06:19 기상
06:23 조식(돈가스, 치킨)
06:40 집 출발(도보: 도림천 => 신본교(반환점) => 봉림교 삼거리 근처 다리 => 신본교(반환점) => 도림 보도교): 신본교 재 설치 공사 중
	(25년 5월까지)
08:02 귀가
08:50 인터넷 서핑
08:50 git_pull_push.py 파일 수정 작업
11:22 집 출발(자전거) 
11:35 중식(정식: 4천원[제주 보쌈(해태 보라매 타워])
12:00 다이소 보라매점 방문 ==> 01. 반집 업 티셔츠(M, 5천원), 02. 블루 변기 세정제 4P(2개, 2천원), 03. 등산화 끈(천원, 스니커스 신발용) 
	, 04. AA 망간 건전지(R6) 8개입 - B(천원) ==> 총: 4, 000원
13:12 귀가
13:30 스티커스 신발에 등산화 끈 묶기
13:40 인터넷 서핑
14:50 git_pull_push.py 파일 수정 작업
17:25 석식
17:45 실내 도보
18:50 종료 
19:45 집 출발(자전거)
19:55 BHC치킨 신대방역점 도착 ==> 뿌링클 스틱(다리, 23,00원) 구입
20:05 귀가
20:10 청소(바닥 쓸기, 바닥 닦기) 
20:30 수종 귀가
21:00 샤워(체중: 69.6kg -> BMI: 24.15(과체중) 
21:15 인터넷 서핑
23:00 취침
==============================================================================================================

01. GIt_소스 받아 오기■.bat
REM "C:\Python311\python.exe" "D:\PythonWorkspace\90_etc\git_pull_push.py"
python git_pull_push.py

02. GIt_소스 올리기■.bat
python git_pull_push.py push
-------------------------------------------------------------------------------------------------

- /git_pull_push.py 파일에서
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

if (git_way == None or git_way == '' ) and git_way_no == 0:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기 실패 했습니다(변경 사항 없음)"
    result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull 확인 결과]', button='OK')
    sys.exit()    # 종료

if git_way == None or git_way == '':
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
print("[@_T] ■■■ [/git_pull_push.py] ==> [T_44] [git_way]"+ str(git_way) +"[git_way_no]"+ str(git_way_no) )

if str(git_way) == "push":   # 인자값이 push 이면(ghtHub에 올리기) 
    command = 'git status'    # 0. Git 저장소의 상태 확인

    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_status = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_71] [0. Git 저장소의 상태 확인(git status)] ■■■■■ ★★★★★ ■■■■■■■ "
	+ out_cmd_status.decode('utf-8') )

    command = 'git add -A'    # 3. Git 스테이지 영역에 추가
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_add = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_72] [3. Git 스테이지 영역에 추가(git add)]"+ out_cmd_add.decode('utf-8') )

    cmd_cmt_msg = 'git commit -m "▶['+ now_ydmhm +'] 02. 소스 올리기(by 진태만)"'   # 4. Git 로컬 저장소 영역에 커밋 처리
    # git commit -m ' [TM] Add to Python Work space[23.08.26, by 진태만]'
    proc = subprocess.Popen(cmd_cmt_msg, shell=True, stdout=subprocess.PIPE).stdout
    out_cmt_msg = proc.read()
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73] [4. Git 로걸 저장소 영역에 추가(커밋 에세지)]■■"+ str(cmd_cmt_msg))
    # print("[@_T] ■■■ [/git_pull_push.py] ==> [T_73_2] [4  Git 로걸 저장소 영역에 추가(git commit)] ■■■■■■■■■■■■ "*
	out_cmt_msg.decode('utf-8') )

    command = 'git push origin main'    # 5. ghtHub에 소스 올리기
    proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
    out_cmd_push = proc.read()
    git_way_no = int(git_way_no) + 3    # git 방식 No(1: pull: ghtHub에서 소스 받아 오기, 2: push: ghtHub에 소스 올리기, 3: 1 + 2)
    print("[@_T] ■■■ [/git_pull_push py] ==> [T_74] [5. 원격 저장소에 반영(git push)]"+ out_cmd_push.decode('utf-8'))
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_80] [Git 정보 처리 시작 End] ■■■ @@@@@ ■■■■■■■■■ ■\n\n")
    print("[@_T] ■■■ [/git_pull_push.py] ==> [T_81] ■■■■■■[git_way_no]"+ str(git_way_no) )

print("[@_T] ■■■ [/git_pull_push.py] ==> [T_90] ■■■■■■[git_way_no]"+ str(git_way_no) )

if git_way_no == 3:
    rsltFileNmAlert = "2. ghtHub에 소스 올리기가 성공 했습니다."
elif git_way_no == 4:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기, 2. ghtHub에 소스 올리기가 성공 했습니다."
else:
    rsltFileNmAlert = "1. ghtHub에서 소스 받아 오기가 성공 했습니다."

result = pyautogui.alert(rsltFileNmAlert, title='▶ [pull, push 처리]', button='OK')
sys.exit()    # 종료

print("[@_T] ■■■ [/git_pull_push.py] ==> [T_99] ■■■■■■ [######################### [01. git_pull_push 처리 End] 
#########################] ■■■■■■\n\n\n")
==============================================================================================================

- Window batch 파일을 Python 에서 동작해보기
https://velog.io/@jaemaning/Window-batch-%ED%8C%8C%EC%9D%BC%EC%9D%84-Python-%EC%97%90%EC%84%9C-%EB%8F%99%EC%9E%91%ED%95%B4%EB%B3%B4%EA%B8%B0
==============================================================================================================

- BBHC 치킨
https://www.bhc.co.kr, tamario2/1212
1. BHC치킨 신대방역점: 온라인 주문(12 ~ 23:30): 1577-5577  ==> 02) 852-9282
2. 뿌링클 스틱(다): 23,000원 --> https://m.bhc.co.kr/menu/chicken.html?menu_type=3
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.04(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30 ==> 수종 주말에 독감 예방 접종 받고 아파서 오늘 학교, 센터 결석

- LG U+ ixi-O SM Prj[★]
- 운영 서버 배포
$ /app/client/text/post_text.sh		# step 1. post text 실행(JOB ID 생성) ♣♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text
# 02. 프로젝트 키(Project Key): 운영 서버
X-Ixi-Project-Key= "4304b0d54bb204a1b6f686d0e0fc145a258ca2185a609695a590e6de9edf7b6adeb183ec07be251054633be4458
a0a142cc24453295bbca390278ddf9de2a4b0";

$ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex 결과 확인 ♣♣
 https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣♣ 
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/audio/tts
----------------------------------------------------------------------------------------------------------------------------------

- SO(Scaled Object) 변경[ArgoCD 화면에서)
1. api
maxReplicaCount: 2
minReplicaCount: 2
---------------------------------------------------------------------
2. worker
maxReplicaCount: 12
minReplicaCount: 8
---------------------------------------------------------------------
3. beat
maxReplicaCount: 1
minReplicaCount: 1 
==============================================================================================================

- 커피 타임(08:30, 바닐라 라떼, 지하 1층 카페[U+ 카페 마곡점]: 윤현노 선임이 쏨)
1. 11월 07(목) 오픈할 예정
2. 한광희 선임이 나보고 직접 검증, 운영 서버 배포하라고 요청함
 1) 시나리오 작성 요청
==> 11:34 윤현노 선임에게 전화 옴(검증 서버 배포 끝내라고 요청 --> 에러 발생: VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud 
PC])에서 poetry install 안해줘서 에러 발생[점심 못 먹고 대기함) ==> 12:55 검증 서버 배포 완료(윤현노 선임에게 통보)
==============================================================================================================

- 운영 서버 배포(14:20, 오픈룸 E9-01)
1. 타부서에서 수정 발생(검증 서버 배포 중이라 운영 배포 대기) ==> 회의실 30분 예약 잡아놔서 배포 실패
----------------------------------------------------------------------------------------------------------------

- 운영 서버 배포(18시, 내자리)
1. api, worker 배포 완료
 1) git checkout main 안하고 git pull origin main해서 소스 못 받아옴(윤현노 선임 짜증 냄)
 # cd /app/app/libs/llm_utils	# 01. 경로 선택 ♣  
$ git checkout main		# main Branch로 전환 ♣
$ git pull origin main	# 02. main Branch에서 내용 가져오기 ♣
==============================================================================================================

- 노트북 명 변경
1. TAMA-MSI-A10SD-I7-21Y ==> TAMA_NT_MSI-A10SD-I7 ==> TAMA-WORK-NB-MSI
==> Netplwiz 활용
--------------------------------------------------------------------------------------------------------

- 윈도우11 사용자 프로필, 계정 이름 변경하는 방법
https://m.blog.naver.com/toruin84/222716469538
> 시스템 > 정보(새창)
==> 고급 시스템 설정: 클릭 --> 시스템 속성(새창)
 1. 컴퓨터 이름(Tab)
  1) 컴퓨터 설명(D): TAMA-WORK-NB-MSI 	==> 장치 이름■
-------------------------------------------------------------------------------------------------------------------------------

C:\Users\tamar> set user
USERDOMAIN=TAMA-MSI-A10SD- 		==> 사업장 PC ■■ TAMA-WORK-NB-MSI로 변경 ■■■ 장치 이름(전체 컴퓨터 이름): 
USERDOMAIN_ROAMINGPROFILE=TAMA-MSI-A10SD-
USERNAME=tamar  ==> tamario로 변경 ■■■
USERPROFILE=C:\Users\tamar
-------------------------------------------------------------------------------------

C:\Users\TAMA_HAart_404> set user
USERDOMAIN=TAMA-HAART-404 		==> 집 PC ■■
USERDOMAIN_ROAMINGPROFILE=TAMA-HAART-404
USERNAME=TAMA_HAart_404
USERPROFILE=C:\Users\TAMA_HAart_404
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.05(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 수종 주말에 독감 예방 접종 받고 아파서 오늘도 학교 결석(오전에 수종이 최준호 내과 진료 다녀옴), 14:30 수종이가
	몸이 안 좋다고 센터 못 가겠다고 문자옴(센터 정여정 실장이 전화해서 오라고 해서 수종이 센터로 감), 17:40 이성진 담당에게 전화옴
	(고객이 철수 요청함: 이번주 금요일에 철수 결정 --> 인수인계 후 다음주 금요일 철수 예정)

- LG U+ ixi-O SM Prj[★] 
- 운영 서버 배포 완료 후 테스트 @@@
D-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동  
   가. name: commai-Instance  ==> 선택 ■■
$ /app/client/text/post_text.sh		# step 1. post text 실행(JOB ID 생성) ♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text
# 02. 프로젝트 키(Project Key): 운영 서버
X-Ixi-Project-Key= "4304b0d54bb204a1b6f686d0e0fc145a258ca2185a609695a590e6de9edf7b6adeb183ec07be251054633be4458
a0a142cc24453295bbca390278ddf9de2a4b0";
url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. 상용 서버 ■
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. 검증 서버 ■
echo "	■■■ [/post_text.sh] [T_01] ■■■ [#### step 1. post text 실행 ####] ■■■ [url■]${url}[02. 프로젝트 키■]${project_key}"
 
curl --location -vvv  ''"${url}"''  \	
--header 'Transaction-Id: TR_20240122_13...-04f3c' 	\
--header 'X-Ixi-Project-Id: PJ000000' 	\
--header 'X-Ixi-Project-Key: '"${project_key}"''' 	\
--header 'Content-Type: application/json'	 \
--data '{ }

$ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex 결과 확인 ♣
 https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣ 
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/audio/tts
==> 상용, 검증 서버에서 .sh 파일 수정 후 push했 다가 권한이 없어서 git reset HEAD^ 처리함(윤현노 선임에게 문의했다고 욕먹음)
=============================================================================================================

- 프로젝트 저장소
https://tronic.tistory.com/86
$ git reset HEAD^ 	# commit은 취소하고 commit 했던 내용은 남기고 unstaged 상태로 만들기 ♣
==============================================================================================================

- [GIT] gitignore 작성 정리 (자동 생성 + 작성 규칙)
출처: https://inpa.tistory.com/entry/GIT-⚡️-gitignore-자동-생성 [Inpa Dev 티스토리]

$ git status --ignored  		# ignore 처리된 파일 확인 ♣

$ git rm -r --cached /app/client/text/post_text.sh	# Git 캐시(Cache) 삭제(이미 추적되고 있는 파일을 GIt의 인덱스에서 제거) ♣
$ git add .;
git commit -m "Remove .post_text.sh from index and update .gitignore"		# 커밋 ♣
$ git push origin main 		# gitHub에 소스 올리기 ♣
--------------------------------------------------------------------------------------------------------

$ git log --pretty=format:"%h - %an, %ar : %s"	--since=8.hours   	# 커밋 기록 확인 ♣ ==> q: git log 빠져 나가기
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.06(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 미국 제47대 대통령 선거 개표(민주당 해리스, 공화당 트럼프[당선: 312명(50.5%)], 공화당 상하원 과반 확보
	, 14:30 르까프 운동화 버리기(깔창 2개, 끈 분리)

- LG U+ ixi-O SM Prj[★]
- 운영 서버 분석
==============================================================================================================

- 개발 서버 배포 완료 후 테스트 @@@
D-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동
   가. name: commai-Instance  ==> 선택 ■■
    가) 정상 모드(개발 서버 URL(8080)로 실행)
   A. 00. 개발 서버로 설정
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. 개발 서버 ■
   B. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ♣
▶ {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....}
    나) 디버깅 모드 사용
   A. 00. 로컬 서버로 설정
url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
   B. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ♣
▶ {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....}

$ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex 결과 확인 ♣
 https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts
=============================================================================================================

- 로그 처리 @@@
sMsg2 = "[T_01] ■■■■■■  [######################### [01. git_pull_push 처리 Start] ################
#########] ■■■■■■"
sMsg0 = "\n\n\n ■■■ [/git_pull_push.py] ==> "
sMsg = "■■■ [/git_pull_push.py] ==> "
print(sMsg0 + sMsg2)

command = 'git status'  # 0. Git 로컬 저장소의 상태 확인
proc = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE).stdout
out_cmd_status = proc.read()
sMsg2 = "[T_10] [0. Git 로컬 저장소의 상태 확인(git status)] ■■■■■ ★★ ■■■■■\n"+ out_cmd_status.decode('utf-8')
sMsg2 += "DELETE FROM result_data "
sMsg2 += "WHERE tb_result_data.job_id =s \n"
sMsg2 += "[■ 00. job_id(P)]" + job_id + " \n"
print(sMsg + sMsg2)
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.07(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> [ixi-O P] 앱 오픈 (01시, 사업장)

- LG U+ ixi-O SM Prj[★]
- 운영 서버 분석
==============================================================================================================

- 01. 깃 허브(진태만): 개인용[24.10.07(목) 
https://github.com/JINTAEMAN, JINTAEMAN/asas121212!!tama --> tamario
1. tamario@naver.com
==============================================================================================================
 
- 커피 타임(08:40, 바닐라 라떼, 지하 1층 카페[U+ 카페 마곡점]: 한광희 선임이 쏨)
1. 갑자기 상의 없이 철수 지시한 것에 대해 사과
 1) 쿠바네티스(서버)에 관해 지식이 많은 개발자를 원한다고 함
==> 이성진 담당에게 카톡 옴: 차주 인수인계 후 차주 금요일 철수하라고 지시함
==============================================================================================================

- 01. 사회복지공동모금회 야간보호사업 필요 서류(은천 센터)
1. 주민등록등본(주민번호 가려주세요.)
2. 건강보험자격확인통보서(건강보험득실확인서가 아닙니다)
 1) HOME > 민원 여기요  > 개인 민원  > 증명서 발급/확인 > 자격 확인서 > 자격 확인서(화면) ==> 건강보험 자격 확인서
==> https://www.nhis.or.kr/nhis/minwon/retrieveQlfComptList.do
선생님, 안녕하세요. 수종이 아빠입니다.
2. 건강보험자격확인통보서 ==> https://www.ybz.or.kr/board/common_library/read/25 처럼
자격사항이 맞나요? ==> https://www.nhis.or.kr/nhis/minwon/retrieveQlfComptList.do
건강보험자격확인통보서라는 메뉴는 찾을 수가 없어요.
3. 건강보험 납부확인서
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.08(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 24년 10월 급여(LG U+ ixi-O SM Prj: (주)에버커스): 6,705,280원 입금)

- LG U+ ixi-O SM Prj[★]
- 운영 서버 모니터링
1. 11월 04일(월) 운영 서버에 소스 배포한 후 api, worker에서 p95 Latency에 부하가 계속 발생하고 있음
=============================================================================================================

- 일간, 주간, 월간 보고 작성 
[IXI 솔루션 - Call Agent SM] 11월 1주차_주간보고.pptx
애버커스_ixi-O_운영유지보수_검수용자료_2411.xlsx
==============================================================================================================

- 운영 서버 에러 발생
1. 현상: 
sc-commai-ixi-api, POST /api/v1/audio/tts, trace_id: 672d8d1f0000000020bfa5821b5d3d55
app.exceptions.TtsInappropriateTextError: Inappropriate Text Error, Traceback (most recent call last):
.violet.uplus.co.kr/api/v1/audio/tts, http://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/audio/tts
500 Internal Server Error, Nov 08 13:01:35.321(25m ago)

File "/datadog-lib/ddtrace_pkgs/site-packages-ddtrace-py3.10-manylinux2014/ddtrace/contrib/asgi/middleware.py", line 291, 
in __call__
    return await self.app(scope, receive, wrapped_send)
Show 15 third-party frames
  
File "/app/app/api/v1/tts.py", line 64, in post_tts
    raise e
  
File "/app/app/api/v1/tts.py", line 52, in post_tts
    raise TtsInappropriateTextError()
=============================================================================================================
 
- 95. git conflict 해결 @@@
- git conflict - 알면 기능, 모르면 사고[생활 코딩] 
https://www.youtube.com/watch?v=wVUnsTsRQ3g 
1. merge: 가장 전형적인 병합(충돌은 3 way merge 원리 바탕)
■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)		===> ■C1(1, E2, 3, E4) [dev]	 
									===> ■B2(1, 2, M3, 4)		===> ■C2(1, 2, M3, M4)		===> ■D(1, E2, M3, ME4) [main(HEAD)]
$ git switch main		 # main Branch로 이동 ♣		
$ git merge dev	# dev Branch를 main 브랜치로 merge 처리 ♣  ==> 3 way merge(A[base★], C1, C2)
----------------------------------------------------------------------------------------------------------------------

2. cherry-pick: 특정 버전의 변경 사항 만 가져오는 병합(부분 변합)
■A(1, 2, 3, 4) 		===> ■B1(1, E2, 3, 4) [base★]		===> ■C1(1, E2, 3, E4) [dev]		 
							===> ■B2(1, 2, M3, 4)					===> ■C2(1, 2, M3, M4) 		===> ■D(1, 2, M3, ME4) [main(HEAD)]
$ git switch main	 	# main Branch로 이동 ♣		 
$ git cherry-pick C1   # dev Branch를 main 브랜치로 cherry-pick 처리 ♣  --> 전 단계인 B1과 비교해서 C1의 변경 사함 만 병합 
--> 3만 변경됨 ==> 3 way merge(B1[base★], C1, C2)
----------------------------------------------------------------------------------------------------------------------

3. rebase: 작업의 순서를 변경하는 병합(작업 순서를 일렬로 정렬)
■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)						===> ■C1(1, E2, 3, E4) [dev] 	===> ■D(1, E2, M3, E4) [main(HEAD)]
									===> ■B2(1, 2, M3, 4) [base_2★]		===> ■C2(1, 2, M3, M4) [main] 
$ git switch main	 	# main Branch로 이동 ♣
$ git rebase dev	 # dev Branch를 main 브랜치로 rebase 처리 ♣	==> 3 way merge(A[base★], C1, B2)
---------------------------------------------------------------------------------------------------

■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)		===> ■C1(1, E2, 3, E4) [dev] [base_2★]		===> ■D(1, E2, M3, E4)
	===> ■E(1, E2, M3, ME4) [main(HEAD)]
==> 3 way merge(B2[base_2★], D, C2)
----------------------------------------------------------------------------------------------------------------------

4. revert: 특정 버전의 취소한 내용 만 가져오는 병합
■A(1, 2, 3, 4) 
						===> ■B2(1, 2, M3, 4) [base★]	===> ■C2(1, 2, M3, M4) 	===> ■D(1, 2, 3, M4) [main(HEAD)] 
$ git switch main	 # main Branch로 이동 ♣
$ git rebase B2	 # B2를 main 브랜치로 revert 처리 ♣	 ==> B2단계에서 취소 --> 1) B2, A를 비교해서서 변경된 M3을 3으로 원복시킴
2) B2, C2를 비교해서 변경된 4를 M4로 변경 --> 3 way merge(B2[base★], A, C2)
----------------------------------------------------------------------------------------------------------------------

■A(1, 2, 3, 4) 		 
						===> ■B2(1, 2, M3, 4) [base★]	===> ■C2(1, 2, M3, M4) 	===> ■D(1, 2, M5, M4)
	===> ■E(1, E2, ME3, M4) [main(HEAD)]
3) B2, A를 비교해서서 변경된 M3을 3으로 원복시킴
4) B2, D를 비교해서 변경된 3를 ME3로, 4를 M4로 변경 --> 3 way merge(B2[base★], A, D)
=============================================================================================================

$ git log --oneline --all --graph --grep "01. merge test*"		# 커밋 로그 검색 ♣
$ git reflog show HEAD -30  	# 커밋 로그(30개 조회) ♣
$ git reset --hard ab71423   	# 커밋 복구 ♣
HEAD is now at a078229 C2 
=============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.09(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 
	
- 주말[★]
06:06 기상
06:13 조식(돈가스 2개, 치킨): 수종
06:33 집 출발(도보{자전거), 도림천 <=> 대림역)
08:10 귀가
10:00 conflict 테스트
10:55 수종 은천 센터에 감(센터 종료 후 바로 엄마집에 놀러감)
11:30 중식(라면)
11:22 집 출발(자전거): 도림천 => 신한은행 구로디지털금융센터 => 마리오 아울렛 => 수출의 다리
11:30 우림 라이온스 밸리2차 406호(독산역 2번 출구) 방문 ==> 사진찍어서 일남이한테 카톡으로 보냄, 통화(알바비 5만원)
12:48 종료
13:21 귀가
13:50 인터넷 서핑
14:00 conflict 테스트
17:30 석식
17:45 실내 도보
18:50 종료
20:00 인터넷 서핑
22:30 취침
============================================================================================================== 

- 01. 사회복지공동모금회 야간보호사업 필요 서류(은천 센터)
==> 01. 사회복지공동모금회 야간보호사업 서류(진수종).7z 파일 첨부해서 밴드에 올리기(24.11.09(토))
=============================================================================================================

- conflict 테스트 ■■■
1. merge: 가장 전형적인 병합(충돌은 3 way merge 원리 바탕) @@@ 
■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)		===> ■C1(1, E2, 3, E4) [dev]	 
									===> ■B2(1, 2, M3, 4)		===> ■C2(1, 2, M3, M4)		===> ■D(1, E2, M3, ME4) [main(HEAD)]
$ git switch main		 # main Branch로 이동 ♣		
$ git merge dev	# dev Branch를 main 브랜치로 merge 처리 ♣  ==> 3 way merge(A[base★], C1, C2)
----------------------------------------------------------------------------------------------------------------------

2. cherry-pick: 특정 버전의 변경 사항 만 가져오는 병합(부분 변합)
■A(1, 2, 3, 4) 		===> ■B1(1, E2, 3, 4) [base★]		===> ■C1(1, E2, 3, E4) [dev]		 
							===> ■B2(1, 2, M3, 4)					===> ■C2(1, 2, M3, M4) 		===> ■D(1, 2, M3, ME4) [main(HEAD)]
$ git switch main	 	# main Branch로 이동 ♣		 
$ git cherry-pick C1   # dev Branch를 main 브랜치로 cherry-pick 처리 ♣  --> 전 단계인 B1과 비교해서 C1의 변경 사함 만 병합 
--> 3만 변경됨 ==> 3 way merge(B1[base★], C1, C2)
==============================================================================================================

- git conflict - 알면 기능, 모르면 사고[생활 코딩] 
https://www.youtube.com/watch?v=wVUnsTsRQ3g 

-깃허브로 그룹 프로젝트 하는 법 | 그냥 이거보고 따라하면 됨 | 브랜치 전략, 충돌해결, 코드리뷰 싹다 알려드림[코딩알려주는 누나]
https://www.youtube.com/watch?v=tkkbYCajCjM
============================================================================================================== 

- OSB 저축은행 거래 중지계좌 풀기 실패(앱에서)
1. 출금 계좌번호: 00311-13-0065099(E-보통예금), 예금주: 진태만
 1) 공동 인증서 ==> 타행 공동 인증서 등록 --> 출금 계좌번호(에러)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.10(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 

- 주말2[★]
06:00 기상
06:05 조식(돈가스, 치킨 남은 거)
06:30 집 출발(도보: 도림천 => 신본교(반환점) => 봉림교 삼거리 근처 다리 => 신본교(반환점) => 도림 보도교): 신본교 재 설치 공사 중
08:02 귀가
08:50 인터넷 서핑
11:29 중식(라면, 돈가스 남은 거)
11:45 집 출발(자전거, 물통]: 도림천 <=> 보리매 공원)
12:50 보리매 공원 => 수도물 떠 오기
13:16 귀가
14:40 태용이가 이자 20만원 송금[2천 만원 대여에  대한 이자)
13:40 인터넷 서핑
17:25 석식
17:45 실내 도보
18:50 종료 
20:10 청소(바닥 쓸기, 바닥 닦기) 
20:30 수종 귀가
21:00 샤워(체중: 69.2kg -> BMI: 23.94(과체중) 
21:03 일남이가 알바비 송금(금천구 가신동 우림 라이온스 밸리2차 406호 사진 찍기)
21:00 인터넷 서핑
21:15 수종 갤럭시탭 S6 라이트 10.4 액정 깨짐(실내 자전거 타다가 떨어뜨렸다고 함): 사용 불가
23:00 취침
================================================================================================================ 
  
- 삼성전자 갤럭시탭 S6 라이트 10.4 Wi-Fi 64GB (정품)
https://prod.danawa.com/info/?pcode=10929630
================================================================================================================

- VS Code 단축키 변경하는 방법(수정 방법)
https://ukjong.tistory.com/180
1. 파일 - 기본설정 - 바로 가기 키
 1) 바로 가기 키: 터미널 ==> 검색
   가. [명령] 보기: 터미널 토글, [키 바인딩] Ctrl + ' ==> 키 바인딩: 마우스 우 클릭 --> 키 바인딩 변경: 클릭
   나. 원하는 키 조합을 누르고 <Enter>키를  누르세요.
    ==> Ctrl + `(백틱) ==> Enter누룸[Ctrl + `(백틱): 터미널 열기/닫기]
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2024.11.11(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==> 08:50 이성진 담당 방문(인수 인계자: 이신나 책임[애버커스 정직원] 동반), 09:10 이신나 책임 면담

- LG U+ ixi-O SM Prj[★]
- 인수 인계
1. 01. 인수인계 문서(24.11.11).txt 파일 이신나 책임에게 메일로 보냄
=============================================================================================================

- 02. Datadog(LG U+)
1. https://app.datadoghq.com/account/login/by_email, tamario2@lgupluspartners.co.kr ==> LG U+ okta 로그인

- 02. Datadog(LG U+)
https://app.datadoghq.com/account/login, tamario2@lgupluspartners.co.kr/qwqw2323@@ --> zxzx1212## --> tata1212!! 
=============================================================================================================

- 회의(15:30, 6층 중회의실 E9-01)
1. ixi-O Prj 설명
 0) 구글 제미나이(Gemini) 사용: 텍스트, 이미지, 오디오, 동영상을 모두 이해할 수 있는 구글의 새롭고 강력한 인공지능 모델
 1) NLP 팀(비식별 모델 개발, 금칙어(badWordFilter), LLM 모델 후 처리)
 2) LLM 팀(LLM 모델 개발)
 3) 음성 기술팀(TTS)
 4) AI 솔루션 개발팀(celery_task(worker) 개발)
 5) AI 플랫폼 개발팀(VIOLET): 도커 < 쿠버 네티스(Kubernetes) < AWS)
=============================================================================================================

- [따배쿠] 쿠버네티스 시리즈[TTABAE-LEARN]
https://www.youtube.com/playlist?list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c
=============================================================================================================
 
- Visual Studio Code 기본 사용법[생활 코딩]
https://www.youtube.com/watch?v=K8qVH8V0VvY&t=277s
=============================================================================================================

- 모바일 출입증 문의
1. 김홍진(선임: 010-8400-2156, 모바일 서비스 선행 개발팀)
 1) 앱 삭제 후 담당자에게 다시 받아서 설치하라고 함
=============================================================================================================

- OSB 저축은행 거래 중지 계좌 풀기 실패(앱에서)
1. 콜센터에 전화
 1) OSB 저축은행 앱: 간편 PIN 로그인(6자리) - 하단 메뉴> 뱅킹서비스 > 계좌 관리 > 거래 중지 계좌 관리
 2) 거래 중지 해제(사용)> 비대면 실명 인증(휴대폰인증, 신분증촬영, 타행계좌 인증) > PIN 인증 후 반드시 재 로그인]
  가. 출금 계좌번호: 00311-13-0065099(E-보통예금), 예금주: 진태만
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.12(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- LG U+ ixi-O SM Prj[★]
- 인수 인계
1. 01. 인수인계 문서(24.11.12).7z 파일 이신나 책임에게 메일로 보냄
2. 01. ixi-VIOLET 분석
3. 41. 배포(01. Dev)
4. 02. API test
=============================================================================================================

- poetry의 거의 모든것(튜토리얼)
https://teddylee777.github.io/poetry/poetry-tutorial/

- 파이썬 패키지 업데이트 @@@
$ cd /app		# 경로 변경 ♣
$ poetry update		# 파이썬 패키지 업데이트(poetry: 패키지 관리) ♣ 	==> poetry install
--> $ pyproject.toml -> poetry.lock 파일에 실제 사용한 패키지 기록 및 가상 환경 업데이트 함
=============================================================================================================

- pXX Latency에 대해서
https://gipyeonglee.tistory.com/307
1. p99 의 latency 는 10초이다. 요청의 1%만이 10초보다 오래걸린다.
예를 들면  p99 응답 시간이 10초라면 100개의 요청 중 99개는 10초 이하고, 100개의 요청 중 1개는 10초보다 더 걸린다.
1) p95 Latency: 100ms ==> 100개의 요청 중 95개는 0.1초 이하고, 5개는 0.1초보다 더 걸린다.
=============================================================================================================
 
- VS Code  please clean your repository working tree before checkout 오류해결 
https://okeybox.tistory.com/162
$ git stash 	# 내용 임시 저장 ♣
$ git pull origin dev		 # dev Branch에서 내용 가져오기(merge) ♣
$ git stash pop 		# 임시 저장 내용 되돌리기 ♣
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.13(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 17:30 ==>

- LG U+ ixi-O SM Prj[★]
- 인수 인계
1. 41. 배포(01. Dev)
==> 11:00 이신나 책임 본사에 갔다 옴(노트북 장비 가져옴)
=============================================================================================================

- HTTP 상태 코드
https://developer.mozilla.org/ko/docs/Web/HTTP/Status
200: Success
201: Completed
202: Queue Accepted
----------------------------------------------------------------------
400: Bad Request
404: Not Found
500:  Internal Server Error
=============================================================================================================

- AICallAgent-AIServer\callAgent-ixi-api에서 수정 사항 확인(gitHub에서)
- v1.1.4
https://github.com/AICallAgent-AIServer/callAgent-ixi-api/releases/tag/v1.1.4
1. Full Changelog: v1.1.3...v1.1.4   ==> 클릭
2. Comparing changes 
https://github.com/AICallAgent-AIServer/callAgent-ixi-api/compare/v1.1.3...v1.1.4
 1) Commits(Tab): 25
 2) Files changed(Tab): 7
app/api/v1/llm_model.py
app/api/v1/tts.py
app/lifespan/tlo_logger.py
celery_task/config.py
gunicorn/config.py
pyproject.toml
=============================================================================================================

- 01. 따배쿠(동영상 시청: 10시 ~ )
https://www.youtube.com/watch?v=6n5obRKsCRQ&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=1
1. replicate: 모사하다
[따배쿠] 6-3. 쿠버네티스 RollingUpdate를 위한 Deployment
https://www.youtube.com/watch?v=L5LDBWrP6QU&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=19
=============================================================================================================
 
- 운영 배포
1. 금일 20시 ~ 21시 상용기 변경 개발의건 api, worker, beat 배포 예정
https://github.com/AICallAgent-AIServer/callAgent-ixi-api/releases/tag/v1.1.4
=============================================================================================================

- AICallAgent-AIServer\callAgent-ixi-apiv에서 수정 사항 확인
- 1.1.4
https://github.com/AICallAgent-AIServer/callAgent-ixi-api/releases/tag/v1.1.4
1. Full Changelog: v1.1.3...v1.1.4   ==> 클릭
2. Comparing changes 
https://github.com/AICallAgent-AIServer/callAgent-ixi-api/compare/v1.1.3...v1.1.4
 1) Commits(Tab) 25
 2) Files changed(Tab) 7
app/api/v1/llm_model.py 
app/api/v1/tts.py 
app/lifespan/tlo_logger.py 
celery_task/config.py 
gunicorn/config.py
pyproject.toml
=============================================================================================================
 
- bash 버전 확인(업무 노트북: TAMA_NT_MSI)
tamario@TAMA-WORK-NB-MSI MINGW64 /d/PythonWorkspace (main)
$ bash -version
GNU bash, version 5.2.15(1)-release (x86_64-pc-msys)
Copyright (C) 2022 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
------------------------------------------------------------------------------

- VS CODE 버전 확인(업무 노트북: TAMA_NT_MSI)
버전: 1.95.1 (system setup)
커밋: 65edc4939843c90c34d61f4ce11704f09d3e5cb6
날짜: 2024-10-31T05:14:54.222Z
Electron: 32.2.1
ElectronBuildId: 10427718
Chromium: 128.0.6613.186
Node.js: 20.18.0
V8: 12.8.374.38-electron.0
OS: Windows_NT x64 10.0.22631
==>  https://code.visualstudio.com/docs/?dv=win32arm64zip
=============================================================================================================

■■■■■■■■■■■■■■■■■■ 2024.11.14(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 16:30 ==> 2025 학년도 대학 수학 능력 시험(일남이 딸 재수), 16:30 LG U+ ixi-O SM Prj 철수

- LG U+ ixi-O SM Prj[★]
- 인수 인계
1. 02. API test ==> 간단하게 설명
=============================================================================================================

- 01. 따배쿠(동영상 시청: 08:30 ~ 14:00)
https://www.youtube.com/watch?v=6n5obRKsCRQ&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=1
- [따배쿠] 6-4. 쿠버네티스 DaemonSet! + RollingUpdate
https://www.youtube.com/watch?v=wJeb561CMOg&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=20
- [따배쿠] 6-4. 쿠버네티스 DaemonSet! + RollingUpdate
https://www.youtube.com/watch?v=wJeb561CMOg&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=20
- [따배쿠] 11. Kubernetes Secret
https://www.youtube.com/watch?v=aW2RAVnOHFY&list=PLApuRlvrZKohaBHvXAOhUD-RxD0uQ3z0c&index=35

- 02. Argo CD(쿠버네티스)
https://www.youtube.com/watch?v=kxl6wYd5i2g&list=PL1mta2YyMpPXHc1U8XKQvkY4NzpKSwgb0
=============================================================================================================
 
- [★] WA(24년)_Memo_02
D:\01. TAMA_DATA\01. TAMA Work\01. Memo\91. Memo Gita Back_up\02. Memo_02
T_0_공통M.sql
T_11.sql
T_15■.sql
T_16.sql
T_20■.sql
=============================================================================================================
 
- Acro Edit 에디터 프로그램을 소개(편집기)
https://www.youtube.com/watch?v=jTbZRfiGuQE
- AcroEdit(편집 SW)
http://www.acrosoft.pe.kr/board/download
=============================================================================================================
 
- 투자 정보
1. 주식 ==> 네이버 증권: https://m.stock.naver.com/
2. ETF
- ETF만으로 IRP(개인형퇴직연금) 포트폴리오를 짜려면? 4가지 전략을 참고[미래에셋 투자와 연금 TV]
https://www.youtube.com/watch?v=bWUZyuPavQQ
=============================================================================================================
  
- VS CODE 버전 확인(업무 노트북: TAMA_NT_MSI)
버전: 1.95.1 (system setup)
커밋: 65edc4939843c90c34d61f4ce11704f09d3e5cb6
날짜: 2024-10-31T05:14:54.222Z
Electron: 32.2.1
ElectronBuildId: 10427718
Chromium: 128.0.6613.186
Node.js: 20.18.0
V8: 12.8.374.38-electron.0
OS: Windows_NT x64 10.0.22631
==>  https://code.visualstudio.com/docs/?dv=win32arm64zip
=============================================================================================================

- LG U+ ixi-O SM Prj 철수[★]
16:20 모니터 박싱하기(작은 드라이버 사용)  ==> 노트북 백팩에 넣기
16:40 철수(이신나 책임과 같이 퇴근)
16:45 1층 게이트에서 한광희 선임에게 출입 카드 반납하고 헤어짐 
16:50 발산역 도착
17:10 영등포 구역청 환승
17:30 신도림역 하차 ==> 도림천(도보: 백팩, 모니터[끈이 내려 옴)
18:30 귀가
================================================================================================================ 
  
■■■■■■■■■■■■■■■■■■ 2024.11.15(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 ==> 

- 무와 니세코 호텔 Prj[★]
- 에버커스 본사 와이파이(보안)
1. 네트워크 이름(SSID): abacus310_5G
2. 비밀번호: abacus10
================================================================================================================

- 비즈메카 이메일 생성((주)애버커스로 신청)
https://ezportal.bizmeka.com/portal/main/main.do,  tamario2/asas12**!!
tamario2@iabucus.co.kr
================================================================================================================
 
- 애버커스 대화방(로켓 챗)
https://chat.abacussw.co.kr/channel/general, tamario2/asas12**!!
================================================================================================================

- 무와 니세코 호텔 Prj 설명(09:10, 휴게실)
1. 한화 솔루션 ==> 류희정 선임
2. php -> Veiw js로 변경
3. mariadb ==> postgresql
4. 11월 개발 완료 ==> 25년 01월 오픈\
5. 기타
류희정 선임 010-6506-7796
서현미 선임 010-4644-7068
================================================================================================================
 
- 무와 니세코 호텔(한화 솔루션)
https://www.muwaniseko.com/
================================================================================================================

- 깃랩 계정
gitlab.muwaniseko.com., tamario2/Abacus2024! --> asas12**!!
================================================================================================================

- [Ora2Pg] Oracle to PostgreSQL 데이터베이스 마이그레이션
https://diary-developer.tistory.com/21
================================================================================================================

- 2024 Vue.js 개발 가이드 - Full Course (feat. Composition API)
https://www.youtube.com/watch?v=9lWaIhE05m8

- js 2 (Vue.js 2) 기초 익히기 기본 강좌!
https://www.youtube.com/watch?v=gZBKGn0wQXU&list=PLB7CpjPWqHOtYP7P_0Ls9XNed0NLvmkAh
================================================================================================================

- 무와 니세코 호텔 Prj 회의(14:00, 회의실)
1. 류희정 선임, 서현미 선임
2. 주요 업무
 1) contents_detail(컨텐츠 상세 테이블 컨텐츠 상세 TB)
site_cd: 사이트 코드(관리자/사용자): USER --> ALL
================================================================================================================

- 지문 둥록
1. 류희정 선임 안내 ==> 11층 애머커스 사무실 방문 --> 여직원이 등록 해줌
================================================================================================================

- 00. 무와 니세코(admin) 운영에서
https://www.muwaniseko.com/en/admin/offers/little-ski-adventurer  ==> F12 --> 이미지 선택
<img src="https://d14bb7e1iugt0z.cloudfront.net/en/admin/offers/download/2176/shutterstock_1507106339_1200x800.jpg" 
	alt="" loading="lazy">

-- 메뉴 그룹별 컨텐츠 상세 정보 조회 @@@
SELECT  A1.contents_id AS "컨텐츠 ID■", A1.contents_detail_id AS "컨텐츠 상세  ID"
			, A1.contents_type_cd AS "컨텐츠 타입 코드■", A1.page_cd AS "페이지 코드■", A1.site_cd AS "사이트 코드■■■"    
			-- 사이트 코드(ADMIN, USER, ALL)
			, A1.lang_cd AS "언어 구분", A1."ord" AS "순서", A1."file_id" AS "파일 ID■", A1."content" AS "내용" 
			, A1.*
FROM contents_detail A1		 -- 컨텐츠 상세 TB
WHERE contents_id IN (SELECT contents_id FROM contents		-- 컨텐츠 TB
										WHERE menu_group_id = 'offers'			-- 메뉴 그룹 ID■  --> 496건
										)
-- AND contents_id = 187   -- 컨텐츠 ID
	AND file_id = 2176		-- 파일 ID■
ORDER BY contents_id, ord, lang_cd
;
================================================================================================================

-- 메뉴 정보 조회
SELECT A1.menu_id AS "메뉴 ID", A1.menu_name AS "메뉴 명", A1.up_menu_id AS "상위 메뉴 ID"
			, A1.menu_group_id AS " 메뉴 그룹 ID■", A1.site_cd AS "사이트 코드■■■"  
			, A1.lang_cd AS "언어 구분", A1.link_url AS "URL", A1.ord AS "순서"
			, A1.*
FROM menu A1		 -- 메뉴 TB
WHERE 1=1
  -- AND lang_cd = 'EN'		-- 언어 구분
  -- AND site_cd = 'USER'  	-- 사이트 코드(ADMIN, USER, ALL)
	AND menu_group_id = 'offers'		-- 메뉴 그룹 ID■
ORDER BY up_menu_id nulls first, ord
;
================================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2024.11.16(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 
	
- 주말[★]
06:06 기상
06:13 조식(돈가스 2개, 치킨)
06:33 집 출발(도보{자전거), 도림천 <=> 대림역)
08:10 귀가
08:13 조식(돈가스, 치킨): 수종
08:20 빨래  
10:10 수종 은천 센터에 감(센터 종료 후 바로 엄마집에 놀러감)
11:30 중식(라면)
11:45 집 출발(도보{자전거), 도림천 <=> 대림역)
12:48 종료
13:21 귀가
13:50 인터넷 서핑
14:00  js 2 (Vue.js 2) 기초 익히기 기본 강좌! [코지 코더] (동영상 강의 수강)
17:30 석식
17:45 실내 도보
18:50 종료
20:00 인터넷 서핑
20:05 js 2 (Vue.js 2) 기초 익히기 기본 강좌! [코지 코더] (동영상 강의 수강)
22:30 취침
==============================================================================================================

- PostgreSQL 입문 수업(동영상 강의 수강)
https://www.youtube.com/watch?v=dKuLA5BGPTY&t=10s
=============================================================================================================

- js 2 (Vue.js 2) 기초 익히기 기본 강좌! [코지 코더] (동영상 강의 수강)
https://www.youtube.com/watch?v=gZBKGn0wQXU&list=PLB7CpjPWqHOtYP7P_0Ls9XNed0NLvmkAh

- Vue.js(API)
https://ko.vuejs.org/guide/components/events.html
------------------------------------------------------------------------------------------------------------------------

- 2024 Vue.js 개발 가이드 - Full Course (feat. Composition API) (동영상 강의 수강)
https://www.youtube.com/watch?v=9lWaIhE05m8 
=============================================================================================================

- [Vue.js] Vue.js 주석
https://velog.io/@bami/Vue.js-Vue.js-%EC%A3%BC%EC%84%9D

<!--.vue 파일 기본-->
<template>
  <!-- template에선 HTML 주석 -->
</template>

<script>
  // script에선 js 주석
 /* script에선 js 주석 */
</script>

<style>
  /* style에선 CSS 주석 */
</style>
==============================================================================================================

- 로그 처리 @@@
sMsg2 = "[T_01] ■■■■■■  [######################### [01. git_pull_push 처리 Start] ################
#########] ■■■■■■"
sMsg0 = "\n\n\n ■■■ [/git_pull_push.py] ==> "
sMsg = "■■■ [/git_pull_push.py] ==> "
console.log(sMsg0 + sMsg2)
==============================================================================================================
 
- [Tool] 무료 다이어그램 그리기 도구 - app.diagrams.net
https://hbase.tistory.com/331
=============================================================================================================

- active DATABASE 설정(디비버에서)
1. 단축키 중 Switch active connection (for SQL script)라는 걸 찾았는데, CTRL + 9를 누르면 아래와 같이 창이 하나 뜨는데, 사용할 
데이터베이스를 클릭하고, 쿼리문을 실행하자 정상 파싱되고 테이블을 출력
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.17(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 한파(어제 밤에 비오고 기운 떨어짐: 영상 4도)

- 주말2[★]
06:00 기상
06:05 조식(돈가스, 치킨 남은 거)
06:30 집 출발(도보: 도림천 => 신본교(반환점) => 봉림교 삼거리 근처 다리 => 신본교(반환점) => 도림 보도교): 신본교 재 설치 공사 중
08:02 귀가
08:50 인터넷 서핑
09:00 Vue js 설치 분석
11:29 중식(라면, 돈가스 남은 거)
11:45 집 출발(자전거]: 도림천 <=> 대림역), 보라매역 공원(화장실)
13:16 귀가
13:40 인터넷 서핑
14:00 Vue js 설치 분석
17:00 수종 귀가
17:05 치킨 주문(맛닭꼬 신대방점)
17:20 집 출발(자전거]
17:25 맛닭꼬 신대방점 방문 ==> 갈릭 베이크[13,900원)
17:30 귀가
17:32 석식(갈릭 베이크 치킨: 수종)
17:45 실내 도보
18:50 종료 
20:10 청소(바닥 쓸기, 바닥 닦기) 
20:30 수종 귀가
21:00 샤워(체중: 69kg -> BMI: 23.88(과체중)
21:00 인터넷 서핑
23:00 취침
================================================================================================================ 
  
■■■■■■■■■■■■■■■■■■ 2024.11.18(월) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:00 ==> 05:30 도보(도림천: 한파(영하 0.7도), 07:25 모니터 자전거에 싣고 출근(노끈 2개: 풀림, 장갑 착용), 19;40 석식(라면)

- 무와 니세코 호텔 Prj[★]
- 01. 무와 니세코 데이타 확인
1. contents_detail_work_adm(컨텐츠 상세 WK TB) 수정
-- 메뉴 그룹별 컨텐츠 상세 정보 조회 @@@
SELECT  A1.contents_id AS "컨텐츠 ID■", A1.contents_detail_id AS "컨텐츠 상세  ID"
			, A1.contents_type_cd AS "컨텐츠 타입 코드■", A1.page_cd AS "페이지 코드■", A1.site_cd AS "사이트 코드■■■"
			, A1.lang_cd AS "언어 구분", A1."ord" AS "순서", A1."file_id" AS "파일 ID■", A1."active_yn" AS "활성화■", A1."content" AS "내용" 
FROM contents_detail_work_adm A1		 -- 컨텐츠 상세 WK TB
WHERE 1 = 1
	AND A1.contents_id = 11  	 -- 컨텐츠 ID 
	AND A1.contents_detail_id = 967   -- 컨텐츠 상세 ID  
;
----------------------------------------------------------------------------------

-- 컨텐츠 상세 WK 정보 수정 @@@ 
UPDATE contents_detail_work_adm  	-- 컨텐츠 상세 WK TB
SET site_cd = 'ALL'		 -- 사이트 코드■ -> 사이트 코드(ADMIN, USER, ALL)
WHERE 1 = 1
	AND contents_id = 11  	 -- 컨텐츠 ID 
	AND contents_detail_id = 967   -- 컨텐츠 상세 ID 
 	AND site_cd = 'USER'		 	-- 사이트 코드■
;
-------------------------------------------------------------------------------------------------------------------------------

-- 메뉴 그룹별 컨텐츠 상세 정보 조회 @@@
SELECT  A1.contents_id AS "컨텐츠 ID■", A1.contents_detail_id AS "컨텐츠 상세  ID"
			, A1.contents_type_cd AS "컨텐츠 타입 코드■", A1.page_cd AS "페이지 코드■", A1.site_cd AS "사이트 코드■■■"    
			-- 사이트 코드(ADMIN, USER, ALL)
			, A1.lang_cd AS "언어 구분", A1."ord" AS "순서", A1."file_id" AS "파일 ID■", A1."content" AS "내용" 
			, A1.*
FROM contents_detail_work_adm A1		 -- 컨텐츠 상세 WK TB
WHERE contents_id IN (SELECT contents_id FROM contents		-- 컨텐츠 TB
										WHERE B2.menu_group_id = 'about-gallery'		-- 메뉴 그룹 ID(accommodation, about-gallery
										, offers) ■  --> 496건
										)
-- AND contents_id = 187   -- 컨텐츠 ID
	AND file_id = 2176		-- 파일 ID■
-- AND page_cd = 'UP'     -- 페이지 코드■(UP, DEATAIL, ALL)
ORDER BY contents_id, ord, lang_cd
;
================================================================================================================
 
- 무와 니세코 호텔 Prj 회의(14:30, 회의실)
1. 류희정 선임, 서현미 선임
2. 주요 업무
 1) 작업한 01. DB 데이타 확인.sql 파일 설정
 2) 메뉴 그룹 ID(accommodation, about-gallery, offers)를 순으로 작업하라고 함 
================================================================================================================

- Visual Studio Code에서 PHP 개발하기
https://lordofkangs.tistory.com/41
================================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2024.11.19(화) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 05:30 집 출발(한파(영하 1도), 06:00 출근(건물 내 도보), 07:00 출근(310호 비번: 2013)

- 무와 니세코 호텔 Prj[★]
- 01. 무와 니세코 데이타 확인
d_save_recent ==> 1,04건
contents_mapping: 컨텐츠 맵핑 TB ==> 추가 컨텐츠별 카테고리 정보
contents_category: 컨텐츠 카테고리 TB 
-- 메뉴 그룹 ID  about-gallery, inquiries, offers
================================================================================================================

-- 포스트 카테고리 정보 조회 @@@
SELECT  B1.contents_id AS "컨텐츠 ID■",  A1.contents_id AS "컨텐츠 ID■", A1.uid_post AS "post ID■"
		, A1.category_id AS "카테고리 ID■■■", A1.uid_tag AS "uid_tag ID■"
			, A1.*
FROM d_post_category A1		 -- 포스트 카테고리 TB    --> 172건
	, d_post_renewal B1
WHERE 1=1
 	AND A1.uid_post = B1.uid
	AND A1.menu_group_id = 'about-gallery'		-- 메뉴 그룹 ID■(1052 2245)
  -- AND contents_id = 187   -- 컨텐츠 ID■ 
;
----------------------------------------------------------------------------------------
 
-- 포스트 카테고리 정보 조회 @@@
SELECT  B1.contents_id AS "컨텐츠 ID■", A1.uid_post AS "post ID■"
		, A1.category_id AS "카테고리 ID■■■", A1.uid_tag AS "uid_tag■■■"  -- uid_tag --> 분석해서 카테고리 ID 업데이트
			, A1.*
FROM d_post_category A1		 -- 포스트 카테고리 TB    --> 172건
	, d_save_renewal B1			--  d_save 리뉴얼 TB
WHERE 1=1
 	AND A1.uid_tag = B1.uid
	AND A1.menu_group_id = 'about-gallery'		-- 메뉴 그룹 ID■(1052 2245)
  -- AND contents_id = 187   -- 컨텐츠 ID■ 
;
================================================================================================================
 
-- d_save 리뉴얼 정보 조회 @@@
SELECT A1.uid  AS "uid■", A1.contents_id AS "컨텐츠 ID■" 
			, A1.*
FROM d_save_renewal A1			--  d_save 리뉴얼 TB
WHERE 1=1
  -- AND module LIKE '%gallery%'   -- 모율■(about-gallery)
	-- AND contents_id = 187   -- 컨텐츠 ID■ 
; 
----------------------------------------------------------------------------------------

 -- d_file 리뉴얼 정보 조회 @@@
SELECT A1.uid  AS "uid■", A1.contents_id AS "컨텐츠 ID■" 
			, A1.*
FROM d_file_renewal A1			--  d_file 리뉴얼 TB
WHERE 1=1 
	AND contents_id = 1541		-- 컨텐츠 ID■ 
; 
-------------------------------------------------------------------

-- d_post 리뉴얼 정보 조회 @@@
SELECT  A1.contents_id AS "컨텐츠 ID■" 
			, A1.*
FROM d_post_renewal A1		 -- d_post 리뉴얼 TB
WHERE 1=1
  AND module LIKE '%gallery%'   -- 모율■(about-gallery)
 ;
================================================================================================================
 
-- 컨텐츠 상세 onsen 정보 등록 @@@  
INSERT INTO contents_detail_onsen  (	 -- 컨텐츠 상세 onsen TB
	contents_detail_id,	--	컨텐츠 상세 ID
	contents_id, 			 -- 컨텐츠 ID	■■
	contents_type_cd, --	컨텐츠 타입 코드
	page_cd, --	페이지 코드
	site_cd, --	사이트 코드(관리자/사용자)
	content, --	내용
	link_url, --	링크 URL
	file_id, --	파일 id
	accomodation_type_id, --	숙소 타입 id
	active_yn, -- 활성화 여부	
	lang_cd, --	언어 코드
	ord, --	순서
	use_yn, 	--	사용 여부
	crte_dttm, -- 생성 일시
	crte_user, -- 생성 유저
	upd_dttm, -- 수정 일시
	upd_user	 -- 수정 유저
)
SELECT 
	(SELECT  NULLIF(MAX(contents_detail_id), 1)  FROM contents_detail) AS contents_detail_id, 	
	--	컨텐츠 상세 ID
	192, 			 -- 컨텐츠 ID	■■  ==> 191, 192, 193, 194■
	contents_type_cd, --	컨텐츠 타입 코드
	page_cd, --	페이지 코드
	site_cd, --	사이트 코드(관리자/사용자)
	content, --	내용
	link_url, --	링크 URL
	file_id, --	파일 id
	accomodation_type_id, --	숙소 타입 id
	active_yn, -- 활성화 여부	
	lang_cd, --	언어 코드
	ord, --	순서
	use_yn, 	--	사용 여부
	crte_dttm, -- 생성 일시
	crte_user, -- 생성 유저
	upd_dttm, -- 수정 일시
	upd_user	 -- 수정 유저
FROM contents_detail  -- 컨텐츠 상세 TB
WHERE 1=1
	AND contents_id = 26  	 -- 컨텐츠 ID  
;
================================================================================================================

- 01. Vue js 설치(MSI 노트븍)
D:\06_Vue_js> cd test_prj		# test_prj 폴더 경로로 이동 ♣
D:\06_Vue_js> npm run serve	  # vue 프로젝트 시작 ♣
==> http://localhost:8080/
================================================================================================================
      
■■■■■■■■■■■■■■■■■■ 2024.11.20(수) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 

- 무와 니세코 호텔 Prj[★]
- 컨텐츠 상세 onsen 정보 등록 @@@  
ONSEN
PUBLIC ONSEN
PRIVATE ONSEN  
--------------------------------------------------------------------------------------------------------------------------

- PUBLIC ONSEN @@@  ==> 컨텐츠 ID■■  ==> 191: ONSEN, 192: PRIVATE ONSEN, 193: PUBLIC ONSEN, 194: MORE ■
lang_cd_chk  --> 0
lang_cd_chk
image 1	==> 1546
title   2		 ==> PUBLIC ONSEN
title 	2 		==> 大浴場
subtitle	3 ==> HERAPEUTIC SPACE OF HOT SPRING WATER
subtitle 	3  ==> 温泉水の癒し空間
summary	4 ==> The warm waters of the hot spring create a soothing and comfor,,,,,, 
summary 4 ==> T開放的なインフィニティ温泉とはまた違った、瞑想的な雰囲気の温泉浴をお,,,,,,  

info	5 ==> 내용(데이타 없음)
info	5 ==> 내용(데이타 없음)
info_title	6 ==> INFORMATION
info_title	6 ==> INFORMATION
================================================================================================================
 
- PRIVATE ONSEN @@@	==>  컨텐츠 ID■■  ==>192: PRIVATE ONSEN ■
lang_cd_chk	EN	0
lang_cd_chk	JA	0 
title	EN	1		==> PRIVATE ONSEN
title	JA	1		==> インフィニティ温泉

image	ALL	2	 ==> 1544
subtitle	EN	2 	==> Mt. Yotei View
subtitle	JA	2 	==> プライベート茶道
summary	EN	2 	==> Be captivated by the awe-inspiring sight of the Mt...........
summary	JA	2 	==> 羊蹄山の壮大な景色を背景に...........

image	ALL	3	 ==> 1087  =======>
subtitle	EN	3 	==> Private Tea ceremony
subtitle	JA	3 	==> プライベート茶道
summary	EN	3 	==> Experience our holistic approach...........
summary	JA	3 	==> MUWAのホリスティッ...........

info	EN	4 		==> 내용(데이타 없음)  
info	JA	4  	==> 내용(데이타 없음) 
info_title	EN 	4 ==> INFORMATION
info_title	JA 	4 ==> INFORMATION
================================================================================================================

-- d_save 리뉴얼 정보 조회 @@@
SELECT A1.uid AS "uid■", A1.uid_parent AS "부모 uid", A1.contents_id AS "컨텐츠 ID■■" , A1.menu_group_id AS "메뉴 그룹 ID■■"
			, A1.contents_type AS "컨텐츠 타입■",  A1.title AS "제목■" 
			, A1.module AS "모듈■" ,  A1.extra AS "extra■" 
			, A1.*
FROM d_save_renewal A1			--  d_save 리뉴얼 TB
WHERE 1=1 
	-- AND contents_id = 187   -- 컨텐츠 ID■(26: ONSEN(191): wellness-onsen)
   -- AND uid = 1600   -- uid ■  	--	AND uid_parent >= 2038   -- 부모 uid ■
	-- AND file_id = 1544   -- 파일 id ■(1544, 1585)
	-- AND contents_type = 'summary'   -- 컨텐츠 타입■
	-- AND menu_group_id LIKE '%about-brand%'   -- 메뉴 그룹 ID
  AND module LIKE '%pdnktzuaiy8s0gsgo4ssoo4o4oogsgc%'   -- 모듈■(about-gallery)  ==> 51mtuiabn5c8c8o4scso0c4wgs0wwc0
    --AND extra LIKE '%A first-of-its-kind in Japan%'   -- extra■■■  --> 1600  --> The warm waters OF  , 1600, 1605
ORDER BY uid, contents_id, ord, lang_cd
; 
-- ================================================================================================================
 
-- 컨텐츠 상세 onsen 정보 조회 @@@
SELECT  A1.contents_id AS "컨텐츠 ID■", A1.contents_detail_id AS "컨텐츠 상세  ID"
			, A1.contents_type_cd AS "컨텐츠 타입 코드■" --, A1.page_cd AS "페이지 코드■", A1.site_cd AS "사이트 코드■■■"    -- 사이트 코드(ADMIN, USER, ALL)
			, A1.lang_cd AS "언어 구분", A1."ord" AS "순서■", A1."content" AS "내용" 
			, A1.*
FROM contents_detail_onsen  A1		 -- 컨텐츠 상세 onsen TB   --> 2,642건  contents_detail_onsen A1		 -- 컨텐츠 상세 onsen TB   --> 2,642건
WHERE 1=1 
 	  AND contents_id = 192 		-- 컨텐츠 ID■■  ==> 191: ONSEN, 192: PRIVATE ONSEN, 193: PUBLIC ONSEN, 194: MORE■
  	--  AND file_id = 2245		-- 메뉴 그룹 ID■(1052 2245)
  -- AND contents_type_cd LIKE '%_su%'		 -- 컨텐츠 타입 코드 ■
  	-- AND CONTENT LIKE '%onsen%'		 -- 내용 ■
ORDER BY contents_id, ord, lang_cd
; 
-- ================================================================================================================

- 파월셀에서 CLI 처리 @@@
PS D:\06_Vue_js> cd D:\"00. Prj"
PS D:\06_Vue_js> cd D:\"00. Prj■"
PS D:\06_Vue_js> cd D:\00. Prj 
Set-Location : 'Prj' 인수를 허용하는 위치 매개 변수를 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd D:\00. Prj
+ ~~~~~~~~~~~~~
    + CategoryInfo          : InvalidArgument: (:) [Set-Location], ParameterBindingException
    + FullyQualifiedErrorId : PositionalParameterNotFound,Microsoft.PowerShell.Commands.SetLocationCommand
================================================================================================================

- Bash에서 CLI 처리 @@@
tamario@TAMA-WORK-NB-MSI MINGW64 /d/06_Vue_js
$ cd /d/"00. Prj"
$ cd /d/"00. Prj■"

tamario@TAMA-WORK-NB-MSI MINGW64 /d/06_Vue_js
$ cd D:/00. Prj
bash: cd: too many arguments
================================================================================================================

- 포스트그레 SQL DB 저장 에러
1. 현상: 포스트그레SQL - 보기를 만들려고 할 때 오류 "42701"이 발생
SQL Error [42701]: ERROR: column "contents_detail_id" specified more than once Position: 113
2. 원인: "중복 열"로 인해 PostgreSql에서 보기를 만들 수 없음
================================================================================================================

- chrome 브라우저 안 열림
1. 현상: chrome 클릭 하면 하단 트레이에서 실행을 되는데 창이 안뜸
2. 조치: C:\Users\TAMA_HAart_404\AppData\Local\Google 폴더 삭제 후 chrome 재 설치
-------------------------------------------------------------------------------------------------------

- brave 브라우저 안 열림
1. 현상: brave 브라우저 클릭 하면 하단 트레이에서 실행을 되는데 창이 안뜸
2. 조치: C:\Users\TAMA_HAart_404\AppData\Local\BraveSoftware 폴더 삭제 후 brave 재 설치
================================================================================================================

- [DB/Postgres] PL/pgSQL이해하기 -1 : Function, Stored Procedure
https://adjh54.tistory.com/159
- Postgres] Procedure(프로시저), Function(함수) 생성 및 사용
https://bongra.tistory.com/52
================================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2024.11.21(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 ==> 

- 무와 니세코 호텔 Prj[★]
- 컨텐츠 상세 wellness-spa 정보 등록 @@@ contents_detail_spa TB
https://www.muwaniseko.com/en/wellness/spa
--------------------------------------------------------------------------------------------------------------------------

- PUBLIC ONSEN @@@  ==>  컨텐츠 ID■■  ==> 191: ONSEN, 192: PRIVATE ONSEN, 193: PUBLIC ONSEN, 194: MORE■
lang_cd_chk  --> 0
lang_cd_chk
image 1	==> 1546
title   2		 ==> PUBLIC ONSEN
title 	2 		==> 大浴場
subtitle	3 ==> HERAPEUTIC SPACE OF HOT SPRING WATER
subtitle 	3  ==> 温泉水の癒し空間
summary		4 ==> The warm waters of the hot spring create a soothing and comfor,,,,,, 
summary y	4 ==> T開放的なインフィニティ温泉とはまた違った、瞑想的な雰囲気の温泉浴をお 

info   --> 5 ==> 내용
info   --> 5 ==>
info_title   --> 6 ==> INFORMATION
info_title   --> 6 ==> INFORMATION
================================================================================================================

 


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
