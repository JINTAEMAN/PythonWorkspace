 
 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------// 01. ixi-VIOLET 분석 //---------------------------------/ 24.11.12(화) /----+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 01. ixi-VIOLET 분석 @@@
- ixi-VIOLET(보안 클라우드에서)
1. Prd ==> https://mgmt.tprd-sp.violet.uplus.co.kr   ==> 구글 계정으로 로그인: tamario2@lgupluspartners.co.kr/as**12**!!
2. Stg ==> https://mgmt.stg-sp.violet.uplus.co.kr
3. Dev ==> https://mgmt.temp-sp.violet.uplus.co.kr
-----------------------------------------------------------------------------------------------

- ArgoCD(보안 클라우드에서)
1. Prd ==> https://deploy.temp-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
2. Stg ==> https://deploy.stg-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
3. Dev ==> https://deploy.prd-sp.violet.uplus.co.kr, ixioadmin/ixioadm!n1
------------------------------------------------------------------------------------------------------------

1. INSTANCE 생성(INSTANCE 화면에서[ixi VIOLET > 커뮤니케이션 AI[보안 Cloud PC에서])
 1) CTEATE AN INSTANCE: 클릭
 2) New Instance(화면)
  가. Name: test-commai-Instance
  나. Image: (shared) 1367: sc-commai-ixi-api-base-img ■ 
  다. Node Group:
    가) eks-violet-service-communication-p4d-24xlarge-ng ==> p4d: GPU 존재(LLM 일때 사용) ■ 
    나) eks-violet-service-communication-c6i-2xlarge-ng ==> c6i: 일반  
  라. Flavor: (CPU) - GPU: 0. CPU: 0.5, MEMORY: 1Gi
==> SAVE: 클릭
------------------------------------------------------------------------------------------------------------

2. SERVICE 생성(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ▼ 버튼(Add Service) 클릭 ==> 서비스 추가
 2) Service Registry: ready(새창)
  가. Title: 14: commai-ixi-api (sc-commai-ixi-api) ==> 기존 서비스: 선택 ■(참조 --> 15: commai-ixi-worker (sc-commai-ixi-worker))
  나. Service Type: Service Core: 선택(참조 --> Custom Reusable Service)
  다. Description
  라. Version: 0.0.67 --> 0.0.68 ■
  마. Release Note:
	241112
	- deploy 'dev' branch
==> SAVE: 클릭
------------------------------------------------------------------------------------------------------------

3. VSC 화면으로 이동(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동 
1) 터미널 보기 단축키: Ctrl + ~
==============================================================================================================
 
4. SERVICE Deploy(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■ 버튼(Add Service) 클릭 ==> 서비스 추가
 2) Service Deploy(새창)
  가. Select Service Version:  0.0.68
  나. Select Rentime Language: Python
  다. Command:./bin/bash
  라. Arguments: ./app/startup_worker.sh ■ 
  마. Env:
  바. Select Secret: commai-encrypt-key
  사. Contact Port: 8080  ==> Strict Affinity: 체크  
   아. StartupProbe - Failure Threshold, AutoScale, AutoScale - Min Relicas, AutoScale - Max Relicas
	300. 10. 1, 1	 	==> ixi-api 일 경우
	1, 2Gi, 1, 2Gi   ==> ixi-worker 일 경우 ■
	1 1Gi, 1, Gi 		==> ixi-beat 일 경우
  ==> StartupProbe(시작 조사: 컨테이너 내의 애플리케이션이 시작되었는지를 냄) -Failure Threshold(실패 한계점)
  ==> StartupProbe가 성공하면, livenessProbe가 바로 동작하여 deadlock상태를 확인
  0. 노드 그룹
    가) eks-violet-service-communication-p4d-24xlarge-ng ==> p4d: GPU 존재(LLM 일때 사용) ■    --> 사용이 아닐 때
    나) eks-violet-service-communication-c6i-2xlarge-ng ==> c6i: 일반 ■
==> DEPLOY: 클릭
==============================================================================================================

5. VSC 화면으로 이동: 에러 발생(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■■ 버튼(Connect) 클릭 ==> VSC 화면으로 이동: 에러 발생 
  가. 현상: upstream connect error or disconnect/reset before haeders. reset reason: connection failure, transport failure reason:
  delayed connect error: 111
  나 조치: 서버 재시작
-----------------------------------------------------------------------------------------------------------------

6. 서버 멈춤(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ■ 버튼(Stop) 클릭 ==>서버 멈춤

7. 서버 시작(VIOLET 화면에서[보안 Cloud PC])
 1) INSTANCE Grid에서 actions 칼럼 ╊ 버튼(Start) 클릭 ==> 서버 시작
  1) name: txi-commai-instance: 클릭 ==> LOGS(Tab) ==> Image pusher Logs(이미지를 다시 생성)
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

