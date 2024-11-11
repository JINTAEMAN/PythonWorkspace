
 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------// 01. ixi-VIOLET 분석 //------------------------------------/ 24.10.10(목) /----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 01. ixi-VIOLET 분석 @@@ ==> 24.10.31(목) 수정 ■
- GIT HUB 관련 @@@
- ixi API  @@@
-- $ git branch -r	 	# 리모트 저장소의 branch 정보 확인 ♣
로그: Your branch is up to date with 'origin/dev'.

$ git fetch 		 	# 원격 저장소에서 내용 가져오기(merge 안함) ♣
$ git checkout FETCH_HEAD 		# dev Branch로 전환 ♣

$ git checkout dev		# dev Branch로 전환 ♣
$ git pull origin dev		# dev Branch에서 내용 가져오기(merge) ♣  ==> git pull origin <branch 이름>
-- $ git branch  -v 	 	# 등록된 Branch의 상세한 정보 확인
-- $ git branch -r	 		# 리모트 저장소의 branch 정보 확인
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
# cd /app/app/libs/ixigen_post_utils		# 01. 경로 선택 ♣
$ git checkout dev		# dev Branch로 전환 ♣
$ git pull origin dev		# 02. dev Branch에서 내용 가져오기 ♣
$ git reset --hard origin/dev		# 원하는 지점의 커밋으로 되돌아가는 가기 ♣
git reset --hard 해시값
ex) git reset --hard 13fed34029807a6dedcbcc6b865250fe5897b71b

$ git log --pretty=format:"%h - %an, %ar : %s"	--since=8.hours   	# 커밋 기록 확인 ♣ ==> q: git log 빠져 나가기 
출처: https://systorage.tistory.com/entry/Git-원하는-지점의-커밋으로-되돌아가는-방법-git-reset-hard [SY Storage:티스토리]
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
# cd /app/app/libs/llm_utils	# 01. 경로 선택 ♣  
$ git checkout dev		# dev Branch로 전환  ♣
$ git fetch --prune		# dev Branch에서 remote에 존재하지 않는 refs(참조)를 지우기 처리 ♣ 
$ git pull origin dev		# 02. dev Branch에서 내용 가져오기 ♣
-----------------------------------------------------------------------------------------------

- 파이썬 패키지 업데이트 @@@
$ cd /app		# 경로 변경 ♣
$ poetry update		# 파이썬 패키지 업데이트 ♣ 		==> poetry install
$ pyproject.toml -> poetry.lock 파일에 실제 사용한 패키지 기록 및 가상 환경 업데이트  
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- API test @@@
-- local에서 API 서버 띄우는 명령어 @@@
# cd /app			# 경로 변경 ♣
# ./startup.sh 		# 서버 시작 ■  (8080 포트 사용) ♣
==> 3개의 Applicatin startup 완료됨 ==> 정상적으로 시작됨
--------------------------------------------------------------------------

# lsof -ti :8080   	# list open files(시스템에서 열린 파일 목록을 알려주고 사용하는 프로세스) ■ (-t : 동작하고 있는 프로세서들의 
PID만 출력, i: 특정 프로토콜과 포트 정보를 출력)
Port 8080 is already in use
# ps -ef | grep gunicorn	 # 특정 파일에서 특정 문자열 찾기 ♣
# kil -9 25510   # 해당 프로세스 종료 ♣
-----------------------------------------------------------------------------------------------------------

- debug 모드로 호출 하는 방법 @@@
.vscode/launch.json 파일 참조하셔서 vscode 의 debug 모드 실행 (8000)
하기 4가지 sh 스크립트로 로컬로 호출한 API 서버를 테스트할수 있습니다.
8080 / 8000 포트 변경

1. /post_text.sh 파일 수정 @@@
port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
# url="http://localhost:8080/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
# url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. 개발 서버 ■
# url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. 상용 서버 ■
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. 검증 서버 ■
echo "	■■■ [/post_text.sh] [T_01] ■■■ [#### step 1. post text 실행 ####] ■■■ [url■]${url}[00. 포트 번호■]${port_no}[02. 프로젝트 키■]${project_key}"
 
curl --location -vvv  ''"${url}"''  \	
--header 'Transaction-Id: TR_20240122_13...-04f3c' 	\
--header 'X-Ixi-Project-Id: PJ000000' 	\
--header 'X-Ixi-Project-Key: '"${project_key}"''' 	\
--header 'Content-Type: application/json'	 \
--data '{
		"modelId": "ixi-gen/8.8b0v1.0:commai-2406",
		"modelParams":  {
			"text":  {
				"input":  {	
					"callTimeStt": "2024-06-13 15:22:32:32.22932",
					"callTimeEnd": "2024-06-13 15:28:28:32.22932",
					"Content": [
								{
									"turn": "1",
									"speaker": "TX",
									"sttText": "아빠, 안녕하세요. 오늘 하루는 어땠어요?",
									"startTime": "00:00:05",
									"endTime": "00:00:07"
								},
								{
									"turn": "2",
									"speaker": "RX",
									"sttText": "안녕, 철수야! 오늘은 회사에서 바빴지만 보람찬 하루였엉. 너는 어땠어?",
									"startTime": "00:00:08",
									"endTime": "00:00:12"
								},
							]
		}
	}'

 1) 정상 모드(개발 서버 URL(8080)로 실행)
   가. 00. 개발 서버로 설정
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. 개발 서버 ■
   나. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ■
▶ {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....}

 2) 디버깅 모드사용
   가.  00. 로컬 서버로 설정
url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
   나. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ■
▶ {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....} 
----------------------------------------------------------------------------------------------------------

2. /get_job_status.sh 파일 수정 @@@ 
job_id="380b8297-ebc7-4c58.7217d"		# 01. job_id ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■ 
# url="http://localhost:8080/api/v1/text/job-status"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■
# url="http://localhost:8000/api/v1/text/job-status"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/job-status"		# 00. 개발 서버 ■
# $ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣
echo "	■■■ [/get_job_status.sh] [T_99] ■■■ [#### step 2. post tex 상태 확인 결과 ####] ■■■ [url■]${url}[00. 포트 번호■]${port_no}[02. 프로젝트 키■]${project_key}"

curl -X GET ${url}  \	
--H "Content-Type: application/json"		\
--H "Tranaasction-Id: PJTR_20240122_13...-04f3c000000"	\
--H "X-Ixi-Project-Id: PJ000000" 	\
--H "X-Ixi-Project-Key: ${project_key}" 	\
--d ' {"jobId": "'"${job_id}"'", "common": null}' -vvv	 \		# 데이타 셋팅 ■■■ 
 
# /app/client/text/get_job_status.sh	# step 2. post tex 상태 확인 ■
▶ {responseCode: 20100000, responseMsg: "Completed", ....}   --> 정상 
----------------------------------------------------------------------------------------------------------

3. /get_text_result.sh 파일 수정 @@@ 
job_id="380b8297-ebc7-4c58.7217d"		# 01. job_id ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■  
# url="http://localhost:8080/api/v1/text/result"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■
# url="http://localhost:8000/api/v1/text/result"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/result"		# 00. 개발 서버 ■
# /app/client/text/get_text_result.sh	# step 3. post tex 결과 확인 ■
echo "	■■■ [/get_text_result.sh] [T_99] ■■■ [#### step 3. post tex 결과 ####] ■■■ [url■]${url}[00. 포트 번호■]${port_no}[01. job_id■]${job_id}[02. 프로젝트 키■]${project_key}"

curl -X GET ${url}  \	
--H "Content-Type: application/json"	 \
--H "Tranaasction-Id: PJTR_20240122_13...-04f3c000000" \
--H "X-Ixi-Project-Id: PJ000000" 	\
--H "X-Ixi-Project-Key: ${project_key}" 	\
--d ' {"jobId": "'"${job_id}"'", "common": null}' -vvv	 \		# 데이타 셋팅 ■■■ 
 
# /app/client/text/get_text_result.sh	# step 3. post tex 결과 확인 ■
▶  {responseCode: 500000000, responseMsg: "argument should de bytes,", ....}	--> 정상 
----------------------------------------------------------------------------------------------------------

4. /tts.sh 파일 수정 @@@ 
port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
# url="http://localhost:8080/api/v1/audio/tts""		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
# url="http://localhost:8000/api/v1/audio/tts""		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts"		# 00. 개발 서버 ■
# /app/client/text/get_text_result.sh	# step 3. post tex 결과 확인 ■
echo "	■■■ [/sh.sh] [T_01] ■■■ [#### step 4. post tts 실행 ####] ■■■ [url■]${url}[00. 포트 번호■]${port_no}[02. 프로젝트 키■]${project_key}"
 
 curl --location -vvv  ''"${url}"''  \
--header 'Transaction-Id: TR_20240122_13...-04f3c' 	\
--header 'X-Ixi-Project-Id: PJ000000' 	\
--header 'X-Ixi-Project-Key: '"${project_key}"''' 	\
--header 'Content-Type: application/json'		 \
--data '{
		"modelId": "ixi-audio/tts:commai-2406",
		"modelParams":  {
			"text": : "안녕하세요. 제가 다시 연락드리겠습니다",
			"speaker": "M_W00J00"  
		}
	}'
	
# /app/client/tts/tts.sh	# step 4. post tts 실행 ■
▶ {responseCode: 20000000, responseMsg: "Success", modelId: "ixi-audio/tts:commai-2406:", 
, "resutl":{"buffer" :"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"....}} 	--> 정상=========
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- [HTTP] 상태 코드 200, 201, 202, 204
https://m.blog.naver.com/fbfbf1/222682972994
responseCode
200 OK 
201 Created: 요청이 성공적으로 처리되어서 리소스가 만들어졌음을 의미
202 Accepted: 요청은 받아들여졌으나, 아직 동작을 수행하지 않은 상태로 요청이 적절함을 의미함
204 No Content: 서버가 요청을 성공적으로 수행했지만, 응답 페이로드 본문에 보낼 데이터가 없다.
-----------------------------------------------------------------------------------------------------------

- 디버깅 모드 사용
- 서버 시작
- 포스트 맨 사용
- Data dog 분석 및 문서화 작업
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 



