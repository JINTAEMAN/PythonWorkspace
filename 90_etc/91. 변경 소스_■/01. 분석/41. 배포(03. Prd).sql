
 
����������������������������������������������������������
+------------------------------------------------// 41. ���� //-----------------------------------------/ 24.11.04(��) /----+ 
����������������������������������������������������������

 
- 41. ����(VIOLET ȭ�鿡��[���� Cloud PC]) @@@ ==> 01. Prd(����) ����
A. commai-ixi-api @@@
1. INSTANCE ����
 1) Instance(ȭ��) > CTEATE AN INSTANCE: Ŭ��
 2) New Instance(ȭ��)
  ��. Name: commai-Instance
  ��. Image: � ����: (shared) 1153: [STG] ixi-api, ,  (shared) 1154[STG] ixi-worker ��
  ��. Node Group: 
    ��) eks-violet-service-communication-c6i-4xlarge-ng ==> c6i: �Ϲ�  
  ��. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: Ŭ��
---------------------------------------------------------------------------------------------------------------------------

A-1. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵�  
   ��. name: commai-Instance  ==> ���� ����
$  git checkout main		# main Branch�� ��ȯ ��
--  $ git branch  		# ����Ʈ ������� branch ���� Ȯ�� 
$ git fetch -a		 		# ���� ����ҿ��� ���� ��������(merge ����) ��  
$ git pull origin main	# main Branch���� ���� ��������(merge) ��
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
$ cd /app/app/libs/ixigen_post_utils		# 01. ��� ���� ��
$ git checkout 		# dev Branch�� ��ȯ ��
$ git pull origin main		# 02. dev Branch���� ���� �������� �� 
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
$ cd /app/app/libs/llm_utils	# 01. ��� ���� ��  
$ git checkout main		# main Branch�� ��ȯ ��
$ git pull origin main		# 02. main Branch���� ���� �������� ��
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
   ��. name: test-commai-api  ==> ���� ����
 2) Service Registry: ready(��â)
  ��. Title: 344: commai-ixi-api-test(sc-commai-ixi-api-test) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(����Ʈ: ���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 1.1.2 --> 1.1.3	 ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 1.1. 2(1.1.3)  ==> ����Ÿ Ȯ�� ��
  ��. ����: Created Į������: deployed --> ��
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� Action Į������ 1.1. 2(1.1.3)   �� ��ư(Deploy): Ŭ��
 2) Service Deploy(��â)
  ��. Select Service Version: 1.1.3 ==> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup.sh 	����� ==> ����Ʈ(api�� ���)
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 10, 12, 20	==> ��� ������ ��� ��
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 1, 2Gi, 1, 2Gi	==> ��� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU  ==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
==> DEPLOY: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.66  ==> ����Ÿ Ȯ�� ��  
  ��. ����: Progressing --> Heathy�� ����� ��
============================================================================================================== 
�����������������������������������������������������������


B. commai-ixi-worker @@@
2. SERVICE ����
 1) Instance(ȭ��) > INSTANCE Grid���� actions Į�� �� ��ư(Add Service): Ŭ�� ==> ���� �߰�
 2) Service Registry: ready(��â)
  ��. Title: 345: commai-ixi-api (sc-commai-ixi-worker) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 1.1.2 --> 1.1.3  ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 1.1.2(1.1.3)  ==> ����Ÿ Ȯ�� ��
  ��. ����: Created Į������: deployed --> ��
==============================================================================================================
 
3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� Action Į������ 1.1.2(1.1.3) �� ��ư(Deploy): Ŭ��
 2) Service Deploy(��â)
  ��. Select Service Version: 1.1.3  --> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup_worker.sh 	�����
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 20, 30, 30		==> ��� ������ ��� ��
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 1, 4Gi, 1, 4Gi 	 	==> ��� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
==> DEPLOY: Ŭ��

  3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.66  ==> ����Ÿ Ȯ�� ��  
  ��. ����: Progressing --> Heathy�� ����� ��
============================================================================================================== 
�����������������������������������������������������������


C. commai-ixi-beat @@@
2. SERVICE ����
 1) Instance(ȭ��) > INSTANCE Grid���� actions Į�� �� ��ư(Add Service): Ŭ�� ==> ���� �߰�
 2) Service Registry: ready(��â)
  ��. Title: 32: commai-ixi-beat (sc-commai-ixi-beat) ==> ���� ����: ���� ��
  ��. Service Type: Service Core: ����(���� --> Custom Reusable Service)
  ��. Description: ==> TEST(by JTM)
  ��. Version: 0.0.24 --> 0.0.25	 ==> �ű� ���� ���� ��
  ��. Release Note:
	241104
	- deploy 'dev' branch ==> TEST(by JTM)
==> SAVE: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.23(0.0.24)  ==> ����Ÿ Ȯ�� ��  
   ��. ����: Created Į������: deployed --> ��
==============================================================================================================

3. SERVICE Deploy
 1) Service Manager(ȭ��) > Service Manager Grid���� atest Version Į������ 0.0.23(0.0.24) ==> ����Ÿ Ȯ�� ��
 ==> Action Į�� �� ��ư(Deploy): Ŭ�� 
 2) Service Deploy(��â)
  ��. Select Service Version: 0.0.25  --> ������ �̹��� ���� ��
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: -c /app/startup_beat.sh �����
  ��. Env: �⺻ ��
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> APIKEY: Disable(üũ  �ڽ� ����) , Strict Affinity: Enable(üũ �ڽ� ����) ��
  ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	��) 300, 20, 2, 2		==> ��� ������ ��� ��
  ��. Requests - CPU, Requests - Memory, Limits - CPU, Limits - Memory
	��) 1, 1Gi, 1, 1Gi	==> ��� ������ ��� ��
 ��. Gpu
	0
  ī. ��� �׷�   
	��) Select Node Groups: eks-violet-service-communication-c6i-4xlarge-ng - Only CPU 	==> c6i: �Ϲ� ��  ==> ��� ������ ��� 1���� ���� ����
	==> p4d: GPU ����(LLM �϶� ���) ��
==> DEPLOY: Ŭ��

 3) Service Manager(ȭ��) > Service Manager Grid���� Latest Version Į������ 0.0.25  ==> ����Ÿ Ȯ�� ��
  ��. ����: Progressing --> Heathy�� ����� ��
  ��. ����: Degraded(OutOfSync) ��  ==> Degraded �� IMAGE �����( Instance(ȭ��) Service Version ����)���� �� ��
=============================================================================================================
�����������������������������������������������������������


D. � ���� ���� �Ϸ� �� �׽�Ʈ @@@
D-1. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵�  
   ��. name: commai-Instance  ==> ���� ���
$ /app/client/text/post_text.sh		# step 1. post text ����(JOB ID ����) ��
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text
# 02. ������Ʈ Ű(Project Key): � ����
X-Ixi-Project-Key= "4304b0d54bb204a1b6f686d0e0fc145a258ca2185a609695a590e6de9edf7b6adeb183ec07be251054633be4458
a0a142cc24453295bbca390278ddf9de2a4b0";

$ /app/client/text/get_job_status.sh		# step 2. post tex ���� Ȯ�� ��
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/job-status

$ /app/client/text/get_text_result.sh		# step 3. post tex ��� Ȯ�� ��
 https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text/result

$ /app/client/tts/tts.sh		# step 4. post tts ���� �� 
https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/audio/tts
=============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------+ 
����������������������������������������������������������� 
