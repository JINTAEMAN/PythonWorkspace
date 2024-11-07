
 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------------// 41. 배포 //-----------------------------------------/ 24.11.04(월) /----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 
- 41. 배포(VIOLET 화면에서[보안 Cloud PC]) @@@ ==> 01. Prd(상용계) ■■■
A. commai-ixi-api @@@
1. INSTANCE 생성
 1) Instance(화면) > CTEATE AN INSTANCE: 클릭
 2) New Instance(화면)
  가. Name: commai-Instance
  나. Image: 운영 서버: (shared) 1153: [STG] ixi-api, ,  (shared) 1154[STG] ixi-worker ■
  다. Node Group: 
    나) eks-violet-service-communication-c6i-4xlarge-ng ==> c6i: 일반  
  라. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: 클릭
---------------------------------------------------------------------------------------------------------------------------

A-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동  
   가. name: commai-Instance  ==> 선택 ■■■
$  git checkout main		# main Branch로 전환 ♣
--  $ git branch  		# 리모트 저장소의 branch 정보 확인 
$ git fetch -a		 		# 원격 저장소에서 내용 가져오기(merge 안함) ♣  
$ git pull origin main	# main Branch에서 내용 가져오기(merge) ♣
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
$ cd /app/app/libs/ixigen_post_utils		# 01. 경로 선택 ♣
$ git checkout 		# dev Branch로 전환 ♣
$ git pull origin main		# 02. dev Branch에서 내용 가져오기 ♣ 
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
$ cd /app/app/libs/llm_utils	# 01. 경로 선택 ♣  
$ git checkout main		# main Branch로 전환 ♣
$ git pull origin main		# 02. main Branch에서 내용 가져오기 ♣
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
   가. name: test-commai-api  ==> 선택 ■■■
 2) Service Registry: ready(새창)
  가. Title: 344: commai-ixi-api-test(sc-commai-ixi-api-test) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(디폴트: 참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 1.1.2 --> 1.1.3	 ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 1.1. 2(1.1.3)  ==> 데이타 확인 ■
  가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 Action 칼럼에서 1.1. 2(1.1.3)   ╊ 버튼(Deploy): 클릭
 2) Service Deploy(새창)
  가. Select Service Version: 1.1.3 ==> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup.sh 	■■■■ ==> 디폴트(api일 경우)
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 10, 12, 20	==> 상용 서버일 경우 ■
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 1, 2Gi, 1, 2Gi	==> 상용 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹
	가) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU  ==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
==> DEPLOY: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.66  ==> 데이타 확인 ■  
  가. 성공: Progressing --> Heathy로 변경됨 ■
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


B. commai-ixi-worker @@@
2. SERVICE 생성
 1) Instance(화면) > INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service): 클릭 ==> 서비스 추가
 2) Service Registry: ready(새창)
  가. Title: 345: commai-ixi-api (sc-commai-ixi-worker) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 1.1.2 --> 1.1.3  ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 1.1.2(1.1.3)  ==> 데이타 확인 ■
  가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 Action 칼럼에서 1.1.2(1.1.3) ╊ 버튼(Deploy): 클릭
 2) Service Deploy(새창)
  가. Select Service Version: 1.1.3  --> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup_worker.sh 	■■■■
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 20, 30, 30		==> 상용 서버일 경우 ■
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 1, 4Gi, 1, 4Gi 	 	==> 상용 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹
	가) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
==> DEPLOY: 클릭

  3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.66  ==> 데이타 확인 ■  
  가. 성공: Progressing --> Heathy로 변경됨 ■
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


C. commai-ixi-beat @@@
2. SERVICE 생성
 1) Instance(화면) > INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service): 클릭 ==> 서비스 추가
 2) Service Registry: ready(새창)
  가. Title: 32: commai-ixi-beat (sc-commai-ixi-beat) ==> 기존 서비스: 선택 ■
  나. Service Type: Service Core: 선택(참조 --> Custom Reusable Service)
  다. Description: ==> TEST(by JTM)
  라. Version: 0.0.24 --> 0.0.25	 ==> 신규 버전 생성 ■
  마. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.23(0.0.24)  ==> 데이타 확인 ■  
   가. 성공: Created 칼럼에서: deployed --> ■
==============================================================================================================

3. SERVICE Deploy
 1) Service Manager(화면) > Service Manager Grid에서 atest Version 칼럼에서 0.0.23(0.0.24) ==> 데이타 확인 ■
 ==> Action 칼럼 ╊ 버튼(Deploy): 클릭 
 2) Service Deploy(새창)
  가. Select Service Version: 0.0.25  --> 생성한 이미지 버전 ■
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: -c /app/startup_beat.sh ■■■■
  마. Env: 기본 값
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> APIKEY: Disable(체크  박스 해제) , Strict Affinity: Enable(체크 박스 설정) ■
  아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	가) 300, 20, 2, 2		==> 상용 서버일 경우 ■
  자. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	가) 1, 1Gi, 1, 1Gi	==> 상용 서버일 경우 ■
 차. Gpu
	0
  카. 노드 그룹   
	가) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: 일반 ■  ==> 상용 서버일 경우 1개만 선택 ■■■
	==> p4d: GPU 존재(LLM 일때 사용) ■
==> DEPLOY: 클릭

 3) Service Manager(화면) > Service Manager Grid에서 Latest Version 칼럼에서 0.0.25  ==> 데이타 확인 ■
  가. 성공: Progressing --> Heathy로 변경됨 ■
  나. 실패: Degraded(OutOfSync) ■  ==> Degraded 후 IMAGE 재생성( Instance(화면) Service Version 생성)에서 할 것
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


D. 운영 서버 배포 완료 후 테스트 @@@
D-1. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동  
   가. name: commai-Instance  ==> 선택 ■■
$ /app/client/text/post_text.sh		# step 1. post text 실행(JOB ID 생성) ♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text
# 02. 프로젝트 키(Project Key): 운영 서버
X-Ixi-Project-Key= "4304b0d54bb204a1b6f686d0e0fc145a258ca2185a609695a590e6de9edf7b6adeb183ec07be251054633be4458
a0a142cc24453295bbca390278ddf9de2a4b0";

$ /app/client/text/get_job_status.sh		# step 2. post tex 상태 확인 ♣
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex 결과 확인 ♣
 https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts 실행 ♣ 
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/audio/tts
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
