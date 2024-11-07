port_no="8000"		# 00. 포트 번호(8080: 정상, 8000: 디버깅 모드) ■ 
project_key="dddd"		#  02. 프로젝트 키 ■
# url="http://localhost:8080/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
# url="http://localhost:8000/app/v1/text"		# 00. 로컬 서버(포트 번호(8080: 정상, 8000: 디버깅 모드)) ■ 
url="https://sc-commai-ixi-api.temp-sp.violet.uplus.co.kr/api/v1/text"		# 00. 개발 서버 ■
# url="https://sc-commai-ixi-api.prd-sp.violet.uplus.co.kr/api/v1/text"		# 01. 상용 서버 ■
# url="https://sc-commai-ixi-api.stg-sp.violet.uplus.co.kr/api/v1/text'		# 02. 검증 서버 ■  ==> TEST
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