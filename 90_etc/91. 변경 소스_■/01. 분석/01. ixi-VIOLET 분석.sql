
 
����������������������������������������������������������
+---------------------------------------// 01. ixi-VIOLET �м� //------------------------------------/ 24.10.10(��) /----+ 
����������������������������������������������������������


- 01. ixi-VIOLET �м� @@@ ==> 24.10.31(��) ���� ��
- GIT HUB ���� @@@
- ixi API  @@@
-- $ git branch -r	 	# ����Ʈ ������� branch ���� Ȯ�� ��
�α�: Your branch is up to date with 'origin/dev'.

$ git fetch 		 	# ���� ����ҿ��� ���� ��������(merge ����) ��
$ git checkout FETCH_HEAD 		# dev Branch�� ��ȯ ��

$ git checkout dev		# dev Branch�� ��ȯ ��
$ git pull origin dev		# dev Branch���� ���� ��������(merge) ��  ==> git pull origin <branch �̸�>
-- $ git branch  -v 	 	# ��ϵ� Branch�� ���� ���� Ȯ��
-- $ git branch -r	 		# ����Ʈ ������� branch ���� Ȯ��
--------------------------------------------------------------------------------

- SUB MODULE @@@
(ixigen_post_utils) --> https://github.com/AICallAgent-AIServer/callAgent-ixiGENPost-Badwordfilter
# cd /app/app/libs/ixigen_post_utils		# 01. ��� ���� ��
$ git checkout dev		# dev Branch�� ��ȯ ��
$ git pull origin dev		# 02. dev Branch���� ���� �������� ��
$ git reset --hard origin/dev		# ���ϴ� ������ Ŀ������ �ǵ��ư��� ���� ��
git reset --hard �ؽð�
ex) git reset --hard 13fed34029807a6dedcbcc6b865250fe5897b71b

$ git log --pretty=format:"%h - %an, %ar : %s"	--since=8.hours   	# Ŀ�� ��� Ȯ�� �� ==> q: git log ���� ������ 
��ó: https://systorage.tistory.com/entry/Git-���ϴ�-������-Ŀ������-�ǵ��ư���-���-git-reset-hard [SY Storage:Ƽ���丮]
-----------------------------------------------------------------------------------------------

- SUB MODULE_02 @@@
(llm_utils) -->  https://github.com/AICallAgent-AIServer/callAgent-ixigen-utils
# cd /app/app/libs/llm_utils	# 01. ��� ���� ��  
$ git checkout dev		# dev Branch�� ��ȯ  ��
$ git fetch --prune		# dev Branch���� remote�� �������� �ʴ� refs(����)�� ����� ó�� �� 
$ git pull origin dev		# 02. dev Branch���� ���� �������� ��
-----------------------------------------------------------------------------------------------

- ���̽� ��Ű�� ������Ʈ @@@
$ cd /app		# ��� ���� ��
$ poetry update		# ���̽� ��Ű�� ������Ʈ �� 		==> poetry install
$ pyproject.toml -> poetry.lock ���Ͽ� ���� ����� ��Ű�� ��� �� ���� ȯ�� ������Ʈ  
=============================================================================================================
�����������������������������������������������������������


- API test @@@
-- local���� API ���� ���� ��ɾ� @@@
# cd /app			# ��� ���� ��
# ./startup.sh 		# ���� ���� ��  (8080 ��Ʈ ���) ��
==> 3���� Applicatin startup �Ϸ�� ==> ���������� ���۵�
--------------------------------------------------------------------------

# lsof -ti :8080   	# list open files(�ý��ۿ��� ���� ���� ����� �˷��ְ� ����ϴ� ���μ���) �� (-t : �����ϰ� �ִ� ���μ������� 
PID�� ���, i: Ư�� �������ݰ� ��Ʈ ������ ���)
Port 8080 is already in use
# ps -ef | grep gunicorn	 # Ư�� ���Ͽ��� Ư�� ���ڿ� ã�� ��
# kil -9 25510   # �ش� ���μ��� ���� ��
-----------------------------------------------------------------------------------------------------------

- debug ���� ȣ�� �ϴ� ��� @@@
.vscode/launch.json ���� �����ϼż� vscode �� debug ��� ���� (8000)
�ϱ� 4���� sh ��ũ��Ʈ�� ���÷� ȣ���� API ������ �׽�Ʈ�Ҽ� �ֽ��ϴ�.
8080 / 8000 ��Ʈ ����

1. /post_text.sh ���� ���� @@@
port_no="8000"		# 00. ��Ʈ ��ȣ(8080: ����, 8000: ����� ���) �� 
project_key="dddd"		#  02. ������Ʈ Ű ��
# url="http://localhost:8080/app/v1/text"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
# url="http://localhost:8000/app/v1/text"		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. ���� ���� ��
# url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. ��� ���� ��
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. ���� ���� ��
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

 2) ����� �����
   ��.  00. ���� ������ ����
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
# url="http://localhost:8080/api/v1/audio/tts""		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
# url="http://localhost:8000/api/v1/audio/tts""		# 00. ���� ����(��Ʈ ��ȣ(8080: ����, 8000: ����� ���)) �� 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/audio/tts"		# 00. ���� ���� ��
# /app/client/text/get_text_result.sh	# step 3. post tex ��� Ȯ�� ��
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
, "resutl":{"buffer" :"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"....}} 	--> ����=========
�����������������������������������������������������������


- [HTTP] ���� �ڵ� 200, 201, 202, 204
https://m.blog.naver.com/fbfbf1/222682972994
responseCode
200 OK 
201 Created: ��û�� ���������� ó���Ǿ ���ҽ��� ����������� �ǹ�
202 Accepted: ��û�� �޾Ƶ鿩������, ���� ������ �������� ���� ���·� ��û�� �������� �ǹ���
204 No Content: ������ ��û�� ���������� ����������, ���� ���̷ε� ������ ���� �����Ͱ� ����.
-----------------------------------------------------------------------------------------------------------

- ����� ��� ���
- ���� ����
- ����Ʈ �� ���
- Data dog �м� �� ����ȭ �۾�
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------+ 
����������������������������������������������������������� 



