
 
����������������������������������������������������������
+------------------------------------------------// 41. ���� //-----------------------------------------/ 24.11.04(��) /----+ 
����������������������������������������������������������

 
- 41. ����(VIOLET ȭ�鿡��[���� Cloud PC]) @@@ ==> 03. Dev(���߰�) ����
A. commai-ixi-api @@@
1. INSTANCE ����
 1) Instance(ȭ��) > CTEATE AN INSTANCE: Ŭ��
 2) New Instance(ȭ��)
  ��. Name: test-commai-instance
  ��. Image: (shared) 1367: sc-commai-ixi-api-base-img �� 
  ��. Node Group: 
    ��) eks-violet-service-communication-c6i-4xlarge-ng ==> c6i: �Ϲ�  
  ��. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: Ŭ��
---------------------------------------------------------------------------------------------------------------------------

A-1. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵�  
   ��. name: test-commai-instance  ==> ���� ����
$  git checkout dev		# dev Branch�� ��ȯ ��
--  $ git branch  		# ����Ʈ ������� branch ���� Ȯ�� 
$ git fetch -a		 # ���� ����ҿ��� ���� ��������(merge ����) ��
$ git pull origin dev		 # dev Branch���� ���� ��������(merge) ��
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
$ cd /app/app/libs/ixigen_post_utils		# 01. ��� ���� ��
$ git checkout dev		# dev Branch�� ��ȯ ��
$ git fetch -a		 		# ���� ����ҿ��� ���� ��������(merge ����) ��  
$ git pull origin dev		# 02. dev Branch���� ���� �������� �� 
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
$ cd /app/app/libs/llm_utils	# 01. ��� ���� ��  
$ git checkout dev		# dev Branch�� ��ȯ �� 
$ git pull origin dev		# 02. dev Branch���� ���� �������� ��
-----------------------------------------------------------------------------------------------

- ���̽� ��Ű�� ������Ʈ @@@
$ cd /app		# ��� ���� ��
$ poetry update		# ���̽� ��Ű�� ������Ʈ �� 		==> poetry install
$ pyproject.toml -> poetry.lock ���Ͽ� ���� ����� ��Ű�� ��� �� ���� ȯ�� ������Ʈ 
-----------------------------------------------------------------------------------------------

$ ./startup.sh 		# startup ���� �׽�Ʈ ��
[INFO] Application startup complete.

$ ./startup_worker.sh 		# startup_worker ���� �׽�Ʈ ��
/startup_worker.sh: line 44: 6954 killed  celery -A celery_task.tasks workder -1 info -c 12
==============================================================================================================

2. SERVICE ����
 1) Instance(ȭ��) > INSTANCE Grid���� actions Į�� �� ��ư(Add Service): Ŭ�� ==> ���� �߰�
   ��. name: test-commai-instance  ==> ���� ����
 2) Service Registry: ready(��â)
  ��. Title: 14: commai-ixi-api-test(sc-commai-ixi-api-test) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(����Ʈ: ���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 0.0.65 --> 0.0.66 	 ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.64(0.0.66)   ==> ����Ÿ Ȯ�� ��
  ��. ����: Created Į������: deployed --> ��
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� Action Į������  0.0.64(0.0.66) �� ��ư(Deploy): Ŭ��
 2) Service Deploy(��â)
  ��. Select Service Version:0.0.66	 ==> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup.sh 	����� ==> ����Ʈ(api�� ���)
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 20, 1, 1 	==> ���� ������ ��� ��
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 1, 2Gi, 1, 2Gi  ==> ���� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�
	��) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU ����(LLM �϶� ���) ��
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU  ==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
==> DEPLOY: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.66  ==> ����Ÿ Ȯ�� ��  
  ��. ����: Progressing --> Heathy�� ����� ��
============================================================================================================== 
�����������������������������������������������������������


B. commai-ixi-worker @@@
2. SERVICE ����
 1) Instance(ȭ��) > INSTANCE Grid���� actions Į�� �� ��ư(Add Service): Ŭ�� ==> ���� �߰�
    ��. name: test-commai-instance  ==> ���� ����
 2) Service Registry: ready(��â)
  ��. Title: 15: commai-ixi-api (sc-commai-ixi-worker) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 0.0.65 --> 0.0.66	 ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.65(0.0.66)  ==> ����Ÿ Ȯ�� ��
  ��. ����: Created Į������: deployed --> ��
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� Action Į������ 0.0.65(0.0.66) �� ��ư(Deploy): Ŭ��
 2) Service Deploy(��â)
  ��. Select Service Version: 0.0.66  ==> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup_worker.sh 	�����
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 20, 2, 2 	==> ���� ������ ��� ��
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 1, 4Gi, 1, 4Gi  	==> ���� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�
	��) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU ����(LLM �϶� ���) ��
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
==> DEPLOY: Ŭ��

  3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.66  ==> ����Ÿ Ȯ�� ��  
  ��. ����: Progressing --> Heathy�� ����� ��
============================================================================================================== 
�����������������������������������������������������������


C. commai-ixi-beat @@@
2. SERVICE ����
 1) Instance(ȭ��) > INSTANCE Grid���� actions Į�� �� ��ư(Add Service): Ŭ�� ==> ���� �߰�
    ��. name: test-commai-instance  ==> ���� ����
 2) Service Registry: ready(��â)
  ��. Title: 32: commai-ixi-beat (sc-commai-ixi-beat) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 0.0.23 --> 0.0.24	 ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.23(0.0.24) ==> ����Ÿ Ȯ�� ��  
   ��. ����: Created Į������: deployed --> ��
==============================================================================================================

3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� atest Version Į������ 0.0.23(0.0.24) ==> ����Ÿ Ȯ�� ��
 ==> Action Į�� �� ��ư(Deploy): Ŭ�� 
 2) Service Deploy(��â)
  ��. Select Service Version: 0.0.24	 ==> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup_beat.sh �����
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 20, 1, 1	 ==> ���� ������ ��� �� 
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 500m, 500Mi, 500m, 500Mi ==> ���� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�   
	��) Select Node Groups: eks-violet-service-communication-p4d-24xlarge-ng - Exist GPU	==> p4d: GPU ����(LLM �϶� ���) ��
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
==> DEPLOY: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.24  ==> ����Ÿ Ȯ�� ��
  ��. ����: Progressing --> Heathy�� ����� ��
  ��. ����: Degraded(OutOfSync) ��  ==> Degraded �� IMAGE �����( Instance(ȭ��) Service Version ����)���� �� ��
=============================================================================================================
�����������������������������������������������������������


D. ���� ���� ���� �Ϸ� �� �׽�Ʈ @@@
D-1. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵�  
   ��. name: commai-Instance  ==> ���� ���
$ /app/client/text/post_text.sh		# step 1. post text ����(JOB ID ����) ��
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text

$ /app/client/text/get_job_status.sh		# step 2. post tex ���� Ȯ�� ��
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex ��� Ȯ�� ��
 https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts ���� �� 
https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts
=============================================================================================================

D. ���� ���� ���� �Ϸ� �� �׽�Ʈ(��)( @@@
D-1. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
1. /post_text.sh ���� ���� @@@
port_no="8000"		# 00. ��Ʈ ��ȣ(8080: ����, 8000: ����� ���) �� 
project_key="dddd"		#  02. ������Ʈ Ű ��
# url="http://localhost:8080/app/v1/text"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
# url="http://localhost:8000/app/v1/text"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. ���� ���� ��
# url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. ��� ���� ��
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. ���� ���� ��
# $ /app/client/text/post_text.sh		# step 1. post text ����(JOB ID ����) ��
echo "	���� [/post_text.sh] [T_01] ���� [#### step 1. post text ���� ####] ���� [url��]${url}[00. ��Ʈ ��ȣ��]${port_no}[02. ������Ʈ Ű��]${project_key}"
 
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
									"sttText": "�ƺ�, �ȳ��ϼ���. ���� �Ϸ�� ����?",
									"startTime": "00:00:05",
									"endTime": "00:00:07"
								},
								{
									"turn": "2",
									"speaker": "RX",
									"sttText": "�ȳ�, ö����! ������ ȸ�翡�� �ٻ����� ������ �Ϸ翴��. �ʴ� ���?",
									"startTime": "00:00:08",
									"endTime": "00:00:12"
								},
							]
		}
	}'
	
 1) ���� ���(���� ���� URL(8080)�� ����)
   ��. 00. ���� ������ ����
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. ���� ���� ��
   ��. /app/client/text/get_text_result.sh	 # step 1. post text ����(JOB ID ����) ��
�� {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....}

 2) ����� ��� ���
   ��. 00. ���� ������ ����
url="http://localhost:8000/app/v1/text"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
   ��. /app/client/text/get_text_result.sh	 # step 1. post text ����(JOB ID ����) ��
�� {responseCode: 20200000, responseMsg: "Queue Accepted", jobId: "380b8297-ebc7-4c58.7217d", . ....} 
----------------------------------------------------------------------------------------------------------

2. /get_job_status.sh ���� ���� @@@ 
job_id="380b8297-ebc7-4c58.7217d"		# 01. job_id �� 
project_key="dddd"		#  02. ������Ʈ Ű ��
port_no="8000"		# 00. ��Ʈ ��ȣ(8080: ����, 8000: ����� ���) �� 
# url="http://localhost:8080/api/v1/text/job-status"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) ��
# url="http://localhost:8000/api/v1/text/job-status"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) ��
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/job-status"		# 00. ���� ���� ��
# $ /app/client/text/get_job_status.sh		# step 2. post tex ���� Ȯ�� ��
echo "	���� [/get_job_status.sh] [T_99] ���� [#### step 2. post tex ���� Ȯ�� ��� ####] ���� [url��]${url}[00. ��Ʈ ��ȣ��]${port_no}[02. ������Ʈ Ű��]${project_key}"

curl -X GET ${url}  \	
--H "Content-Type: application/json"		\
--H "Tranaasction-Id: PJTR_20240122_13...-04f3c000000"	\
--H "X-Ixi-Project-Id: PJ000000" 	\
--H "X-Ixi-Project-Key: ${project_key}" 	\
--d ' {"jobId": "'"${job_id}"'", "common": null}' -vvv	 \		# ����Ÿ ���� ���� 
 
# /app/client/text/get_job_status.sh	# step 2. post tex ���� Ȯ�� ��
�� {responseCode: 20100000, responseMsg: "Completed", ....}   --> ���� 
----------------------------------------------------------------------------------------------------------

3. /get_text_result.sh ���� ���� @@@ 
job_id="380b8297-ebc7-4c58.7217d"		# 01. job_id �� 
project_key="dddd"		#  02. ������Ʈ Ű ��
port_no="8000"		# 00. ��Ʈ ��ȣ(8080: ����, 8000: ����� ���) ��  
# url="http://localhost:8080/api/v1/text/result"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) ��
# url="http://localhost:8000/api/v1/text/result"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) ��
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text/result"		# 00. ���� ���� ��
# /app/client/text/get_text_result.sh	# step 3. post tex ��� Ȯ�� ��
echo "	���� [/get_text_result.sh] [T_99] ���� [#### step 3. post tex ��� ####] ���� [url��]${url}[00. ��Ʈ ��ȣ��]${port_no}[01. job_id��]${job_id}[02. ������Ʈ Ű��]${project_key}"

curl -X GET ${url}  \	
--H "Content-Type: application/json"	 \
--H "Tranaasction-Id: PJTR_20240122_13...-04f3c000000" \
--H "X-Ixi-Project-Id: PJ000000" 	\
--H "X-Ixi-Project-Key: ${project_key}" 	\
--d ' {"jobId": "'"${job_id}"'", "common": null}' -vvv	 \		# ����Ÿ ���� ���� 
 
# /app/client/text/get_text_result.sh	# step 3. post tex ��� Ȯ�� ��
��  {responseCode: 500000000, responseMsg: "argument should de bytes,", ....}	--> ���� 
----------------------------------------------------------------------------------------------------------

4. /tts.sh ���� ���� @@@ 
port_no="8000"		# 00. ��Ʈ ��ȣ(8080: ����, 8000: ����� ���) �� 
project_key="dddd"		#  02. ������Ʈ Ű ��
# url="http://localhost:8080/api/v1/audio/tts"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
# url="http://localhost:8000/api/v1/audio/tts"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts"		# 00. ���� ���� ��
# $ /app/client/tts/tts.sh		# step 4. post tts ���� �� 
echo "	���� [/sh.sh] [T_01] ���� [#### step 4. post tts ���� ####] ���� [url��]${url}[00. ��Ʈ ��ȣ��]${port_no}[02. ������Ʈ Ű��]${project_key}"
 
 curl --location -vvv  ''"${url}"''  \
--header 'Transaction-Id: TR_20240122_13...-04f3c' 	\
--header 'X-Ixi-Project-Id: PJ000000' 	\
--header 'X-Ixi-Project-Key: '"${project_key}"''' 	\
--header 'Content-Type: application/json'		 \
--data '{
		"modelId": "ixi-audio/tts:commai-2406",
		"modelParams":  {
			"text": : "�ȳ��ϼ���. ���� �ٽ� �����帮�ڽ��ϴ�",
			"speaker": "M_W00J00"  
		}
	}'
	
# /app/client/tts/tts.sh	# step 4. post tts ���� ��
�� {responseCode: 20000000, responseMsg: "Success", modelId: "ixi-audio/tts:commai-2406:", 
, "resutl":{"buffer" :"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"....}} 	--> ����
=============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------+ 
����������������������������������������������������������� 
