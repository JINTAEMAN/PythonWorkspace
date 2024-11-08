
 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------------// 41. 배포 //-----------------------------------------/ 24.11.04(월) /----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 
- 41. 배포(VIOLET 화면에서[보안 Cloud PC]) @@@ ==> 03. Dev(개발계) ■■■
A. commai-ixi-api @@@
1. INSTANCE 생성
 1) Instance(화면) > CTEATE AN INSTANCE: 클릭
 2) New Instance(화면)
  가. Name: test-commai-instance
  나. Image: (shared) 1367: sc-commai-ixi-api-base-img ■ 
  다. Node Group: 
    나) eks-violet-service-communication-c6i-4xlarge-ng ==> c6i: 일반  
  라. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: 클릭
---------------------------------------------------------------------------------------------------------------------------

A-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동  
   가. name: test-commai-instance  ==> 선택 ■■■
$  git checkout dev		# dev Branch로 전환 ♣
--  $ git branch  		# 리모트 저장소의 branch 정보 확인 
$ git fetch -a		 # 원격 저장소에서 내용 가져오기(merge 안함) ♣
$ git pull origin dev		 # dev Branch에서 내용 가져오기(merge) ♣
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
$ cd /app/app/libs/ixigen_post_utils		# 01. 경로 선택 ♣
$ git checkout dev		# dev Branch로 전환 ♣
$ git fetch -a		 		# 원격 저장소에서 내용 가져오기(merge 안함) ♣  
$ git pull origin dev		# 02. dev Branch에서 내용 가져오기 ♣ 
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
$ cd /app/app/libs/llm_utils	# 01. 경로 선택 ♣  
$ git checkout dev		# dev Branch로 전환 ♣ 
$ git pull origin dev		# 02. dev Branch에서 내용 가져오기 ♣
-----------------------------------------------------------------------------------------------

- 파이썬 패키지 업데이트 @@@
$ cd /app		# 경로 변경 ♣
$ poetry update		# 파이썬 패키지 업데이트 ♣ 		==> poetry install
$ pyproject.toml -> poetry.lock 파일에 실제 사용한 패키지 기록 및 가상 환경 업데이트 
-----------------------------------------------------------------------------------------------

$ ./startup.sh 		# startup 파일 테스트 ♣
[INFO] Application startup complete.

$ ./startup_worker.sh 		# startup_worker 파일 테스트 ♣
/startup_worker.sh: line 44: 6954 killed  celery -A celery_task.tasks workder -1 info -c 12
==============================================================================================================

2. SERVICE 생성
 1) Instance(화면) > INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service): 클릭 ==> 서비스 추가
   가. name: test-commai-instance  ==> 선택 ■■■
 2) Service Registry: ready(새창)
  가. Title: 14: commai-ixi-api-test(sc-commai-ixi-api-test) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(디폴트: 참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 0.0.65 --> 0.0.66 	 ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.64(0.0.66)   ==> 데이타 확인 ■
  가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 Action 칼럼에서  0.0.64(0.0.66) ╊ 버튼(Deploy): 클릭
 2) Service Deploy(새창)
  가. Select Service Version:0.0.66	 ==> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup.sh 	■■■■ ==> 디폴트(api일 경우)
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 20, 1, 1 	==> 개발 서버일 경우 ■
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 1, 2Gi, 1, 2Gi  ==> 개발 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹
	가) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU 존재(LLM 일때 사용) ■
	나) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU  ==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
==> DEPLOY: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.66  ==> 데이타 확인 ■  
  가. 성공: Progressing --> Heathy로 변경됨 ■
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


B. commai-ixi-worker @@@
2. SERVICE 생성
 1) Instance(화면) > INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service): 클릭 ==> 서비스 추가
    가. name: test-commai-instance  ==> 선택 ■■■
 2) Service Registry: ready(새창)
  가. Title: 15: commai-ixi-api (sc-commai-ixi-worker) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 0.0.65 --> 0.0.66	 ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.65(0.0.66)  ==> 데이타 확인 ■
  가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 Action 칼럼에서 0.0.65(0.0.66) ╊ 버튼(Deploy): 클릭
 2) Service Deploy(새창)
  가. Select Service Version: 0.0.66  ==> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup_worker.sh 	■■■■
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 20, 2, 2 	==> 개발 서버일 경우 ■
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 1, 4Gi, 1, 4Gi  	==> 개발 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹
	가) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU 존재(LLM 일때 사용) ■
	나) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
==> DEPLOY: 클릭

  3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.66  ==> 데이타 확인 ■  
  가. 성공: Progressing --> Heathy로 변경됨 ■
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


C. commai-ixi-beat @@@
2. SERVICE 생성
 1) Instance(화면) > INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service): 클릭 ==> 서비스 추가
    가. name: test-commai-instance  ==> 선택 ■■■
 2) Service Registry: ready(새창)
  가. Title: 32: commai-ixi-beat (sc-commai-ixi-beat) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 0.0.23 --> 0.0.24	 ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.23(0.0.24) ==> 데이타 확인 ■  
   가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================

3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 atest Version 칼럼에서 0.0.23(0.0.24) ==> 데이타 확인 ■
 ==> Action 칼럼 ╊ 버튼(Deploy): 클릭 
 2) Service Deploy(새창)
  가. Select Service Version: 0.0.24	 ==> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup_beat.sh ■■■■
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 20, 1, 1	 ==> 개발 서버일 경우 ■ 
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 500m, 500Mi, 500m, 500Mi ==> 개발 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹   
	가) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU 존재(LLM 일때 사용) ■
	나) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
==> DEPLOY: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.24  ==> 데이타 확인 ■
  가. 성공: Progressing --> Heathy로 변경됨 ■
  나. 실패: Degraded(OutOfSync) ■  ==> Degraded 후 IMAGE 재생성( Instance(화면) Service Version 생성)에서 할 것
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


D. 개발 서버 배포 완료 후 테스트 @@@
D-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동  
   가. name: commai-Instance  ==> 선택 ■■
$ /app/client/text/post_text.sh		# step 1. post text 실행(JOB ID 생성) ♣
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text

$ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex 결과 확인 ♣
 https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣ 
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts
=============================================================================================================

D. 개발 서버 배포 완료 후 테스트(상세)( @@@
D-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
1. /post_text.sh 파일 수정 @@@
port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
# url="http://localhost:8080/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
# url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. 개발 서버 ■
# url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. 상용 서버 ■
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. 검증 서버 ■
# $ /app/client/text/post_text.sh		# step 1. post text 실행(JOB ID 생성) ♣
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
   나. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ♣
▶ {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....}

 2) 디버깅 모드 사용
   가. 00. 로컬 서버로 설정
url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
   나. /app/client/text/get_text_result.sh	 # step 1. post text 실행(JOB ID 생성) ♣
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
# url="http://localhost:8080/api/v1/audio/tts"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
# url="http://localhost:8000/api/v1/audio/tts"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts"		# 00. 개발 서버 ■
# $ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣ 
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
, "resutl":{"buffer" :"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"....}} 	--> 정상
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
