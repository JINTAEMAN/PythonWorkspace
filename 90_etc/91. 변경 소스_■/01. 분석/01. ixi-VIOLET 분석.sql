 
 
����������������������������������������������������������
+---------------------------------------// 01. ixi-VIOLET �м� //---------------------------------/ 24.11.12(ȭ) /----+ 
����������������������������������������������������������


- 01. ixi-VIOLET �м� @@@
- ixi-VIOLET(���� Ŭ���忡��)
1. Prd ==> https://mgmt.tprd-sp.violet.uplus.co.kr   ==> ���� �������� �α���: tamario2@lgupluspartners.co.kr/as**12**!!
2. Stg ==> https://mgmt.stg-sp.violet.uplus.co.kr
3. Dev ==> https://mgmt.temp-sp.violet.uplus.co.kr
-----------------------------------------------------------------------------------------------

- ArgoCD(���� Ŭ���忡��)
1. Prd ==> https://deploy.temp-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
2. Stg ==> https://deploy.stg-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
3. Dev ==> https://deploy.prd-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
------------------------------------------------------------------------------------------------------------

1. INSTANCE ����(INSTANCE ȭ�鿡��[ixi VIOLET > Ŀ�´����̼� AI[���� Cloud PC����])
 1) CTEATE AN INSTANCE: Ŭ��
 2) New Instance(ȭ��)
  ��. Name: test-commai-Instance
  ��. Image: (shared) 1367: sc-commai-ixi-api-base-img �� 
  ��. Node Group:
    ��) eks-violet-service-communication-p4d-24xlarge-ng ==> p4d: GPU ����(LLM �϶� ���) �� 
    ��) eks-violet-service-communication-c6i-2xlarge-ng ==> c6i: �Ϲ�  
  ��. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: Ŭ��
------------------------------------------------------------------------------------------------------------

2. SERVICE ����(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� �� ��ư(Add Service) Ŭ�� ==> ���� �߰�
 2) Service Registry: ready(��â)
  ��. Title: 14: commai-ixi-api (sc-commai-ixi-api) ==> ���� ����: ���� ��(���� --> 15: commai-ixi-worker (sc-commai-ixi-worker))
  ��. Service Type: Service Core: ����(���� --> Custom Reusable Service)
  ��. Description
  ��. Version: 0.0.67 --> 0.0.68 ��
  ��. Release Note:
	241112
	- deploy 'dev' branch
==> SAVE: Ŭ��
------------------------------------------------------------------------------------------------------------

3. VSC ȭ������ �̵�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵� 
1) �͹̳� ���� ����Ű: Ctrl + ~
==============================================================================================================
 
4. SERVICE Deploy(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� �� ��ư(Add Service) Ŭ�� ==> ���� �߰�
 2) Service Deploy(��â)
  ��. Select Service Version:  0.0.68
  ��. Select Rentime Language: Python
  ��. Command:./bin/bash
  ��. Arguments: ./app/startup_worker.sh �� 
  ��. Env:
  ��. Select Secret: commai-encrypt-key
  ��. Contact Port: 8080  ==> Strict Affinity: üũ  
   ��. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	300. 10. 1, 1	 	==> ixi-api �� ���
	1, 2Gi, 1, 2Gi   ==> ixi-worker �� ��� ��
	1 1Gi, 1, Gi 		==> ixi-beat �� ���
  ==> StartupProbe(���� ����: �����̳� ���� ���ø����̼��� ���۵Ǿ������� ��) -Failure Threshold(���� �Ѱ���)
  ==> StartupProbe�� �����ϸ�, livenessProbe�� �ٷ� �����Ͽ� deadlock���¸� Ȯ��
  0. ��� �׷�
    ��) eks-violet-service-communication-p4d-24xlarge-ng ==> p4d: GPU ����(LLM �϶� ���) ��    --> ����� �ƴ� ��
    ��) eks-violet-service-communication-c6i-2xlarge-ng ==> c6i: �Ϲ� ��
==> DEPLOY: Ŭ��
==============================================================================================================

5. VSC ȭ������ �̵�: ���� �߻�(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� ��� ��ư(Connect) Ŭ�� ==> VSC ȭ������ �̵�: ���� �߻� 
  ��. ����: upstream connect error or disconnect/reset before haeders. reset reason: connection failure, transport failure reason:
  delayed connect error: 111
  �� ��ġ: ���� �����
-----------------------------------------------------------------------------------------------------------------

6. ���� ����(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� �� ��ư(Stop) Ŭ�� ==>���� ����

7. ���� ����(VIOLET ȭ�鿡��[���� Cloud PC])
 1) INSTANCE Grid���� actions Į�� �� ��ư(Start) Ŭ�� ==> ���� ����
  1) name: txi-commai-instance: Ŭ�� ==> LOGS(Tab) ==> Image pusher Logs(�̹����� �ٽ� ����)
==============================================================================================================
�����������������������������������������������������������

