
 
����������������������������������������������������������
+-----------------------------------------// 02. API test //----------------------------------------/ 24.10.15(ȭ) /---+ 
����������������������������������������������������������


- 02. API test @@@ ==> 24.10.29(ȭ) ���� ��
- step 1. post tex ���� �׽�Ʈ @@@
- DEBUG ���� ȣ�� �ϴ� ���(ixi-VIOLET ȭ�鿡��[���� Cloud PC])
0. Ctrl + z ==>./startup.sh 	# ���� ���� ���� ��
# lsof -ti :8000   	# list open files(�ý��ۿ��� ���� ���� ����� �˷��ְ� ����ϴ� ���μ���) ��=
1. /post_text.sh ���� ����
 1) curl --location -vvv 'http://localhost:8000/v1/text'		# ��Ʈ ����(8080 -> 8000[debug ���]) �� 
-----------------------------------------------------------------------------------------------------

2. DEBUG > RUN AND DEBUG > Python: FastAPI(/.vscode/launch.json ���Ͽ��� �����Ǿ� ����): �� ��ư: Ŭ��(����)
INFO: Start server process [1812]
INFO: Application startup complete. 
-----------------------------------------------------------------------------------------------------

- step 1. post tex ���� �׽�Ʈ @@@
1. /llm_model.py ���Ͽ���(/v1/) ����
@router.post("", response_model=ResponsePostTextBody)
async de post_text(

)
	sMsg = "���� [#### step 1. post text ���� Start ####] ����"
	print("\n\n\n ���� [/llm_model.py] [post_text()] ==> [T_01]" + sMsg)
 
	resquest_tlo = get_request_tlo(      	# ===> breakpoint ���� ����

	}
	
	job_request_datetime = get_timestamp()
	request_date = request.model_dump(by_alias=True)
	job_id = str(uuid.uujid4())	# JOB ID ���� ����

	call_id = request_data[":modelParams"]["meta"].get(:"callId", None)
	
	task = llm_proecss_task.apply_async(
		kwagrs={
			"data": mes_data.model_dump (),
		},
		MessageGroupId=get_mes_group_id(),
		MessageDeduplication=call_id,
	)
	
	if task:
		async with AsyncDatabaseSession(db_url) as session:
			try:
				job_status_record = JobStatus(
					job_id = job_id,	# JOB ID ����
					model_name =  request.model_id,	# �� ��
					result_code = JobStatusResultCode.ACCEPTED.value.status_code,		# ��� �ڵ�
				)
				session.add(job_status_record)		# tb_job_status TB ����Ÿ ��� ����
				await session.commit()
	
			sMsg = "���� 42. tb_job_status TB ����Ÿ ��� ����	\n"
			sMsg += "INSERT TNTO tb_job_status (job_id, update_at, response_at,"
			sMsg += " job_started_at, job_finished_at, model_name, result_code) VALUES (,,,,,,)  \n"
			sMsg += "[�� 01. job_id(P)]" + job_id + "  \n"
			sMsg += "[�� 02. �� ��(P)]" + request.model_id + "  \n"
			sMsg += "[�� 03. ��� �ڵ�(P)]"
			sMsg += "" + str(JobStatusResultCode.ACCEPTED.value.status_code) + "  \n"
			print("\n\n ���� [/llm_model.py] [post_text()] ==> [T_42]" + sMsg)
 
		sMsg = "���� 91. JOB ID ���� ��� ����\n"
		sMsg += "[�� 00. job_id]" + job_id
		sMsg += "[�� 00. call_id]" + call_id
		sMsg += "[��01. respnseCode]20200000"
		sMsg += "[��02. respnseMsg]Queue Accepted\n\n\n"		# ===> breakpoint ���� ����
		print("���� [/llm_model.py] [post_text()] ==> [T_91]" + sMsg)
		
		return JSONRespnse(	
		)
	
	sMsg = "���� 99. JOB ID ���� ���_���� ����\n"
	sMsg += "[��01. respnseCode]999999\n\n"
	print("���� [/llm_model.py] [post_text()] ==> [T_99]" + sMsg)   # missing withespace around operator
	
	raise QueueError()
}
-----------------------------------------------------------------------------------------------------

2. /db_handler.py ���Ͽ��� @@@
class JobStatus(Base):
	__tablename__ = "tb_job_status"
	
	job_id = Column(Stirng(36), primay_key=True, commnet="��� �ĺ���")
	created_at = Column(
		DateTime.
		primay_key=True,
		server_default=text("CURRNET_TIMESTAMP"),
		 commnet="�����Ͻ�",
	)
	update_at = Column(DateTime, commnet="�����Ͻ�")
	response_at = Column(DateTime, commnet="���� �Ͻ� - Ŭ���̾�Ʈ�� ��� ����Ʈ�� ��ȸ�� �ð�"
	)
	job_started_at = Column(DateTime, commnet="wordker ���� �ð�")
	job_finished_at = Column(DateTime, commnet="wordker �Ϸ� �ð�")
	model_name = Column(String(200), nullable=False, commnet="�� ��")
	result_code = Column(Integer, nullable=False, commnet="��� �ڵ�") 
	
class ResultData(Base):
	__tablename__ = "tb_result_data"
	
	job_id = Column(Stirng(36), primay_key=True, commnet="��� �ĺ���")
	created_at = Column(
		DateTime.
		primay_key=True,
		server_default=text("CURRNET_TIMESTAMP"),
		 commnet="�����Ͻ�".,
	)
	model_name = Column(String(200), nullable=False, commnet="�� ��")
	result_data = Column(Text, nullable=False, commnet="��� ������")
-----------------------------------------------------------------------------------------------

3. post text ���� �� ==> TERMINAL(Tab)����
$ /app/client/text/post_text.sh		# step 1. post text ����(JOB ID ����) ��
-----------------------------------------------------------------------------------------------------

4. �α� Ȯ�� �� ==> DEBUG CONSOLE(Tab)����
���� [/llm_model.py] [post_text()] ==> [T_01] ���� [#### step 1. post text ���� Start ####] ����
���� [/llm_model.py] [post_text()] ==> [T_41] [job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc
���� [/llm_model.py] [post_text()] ==> [T_42] ��� 01. post text ó�� ����
�� 01. job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc

���� [/llm_model.py] [post_text()] ==> [T_91] ��� 91. post text ��� ����
[��01. respnseCode]20200000[��02. respnseMsg]Queue Accepted		--> ���� ���

INFO: 127.0.0.1:56864 - "POST /api/vi/text HTTP/1.1" 202 Accepted	
=============================================================================================================
�����������������������������������������������������������

 
- step 2. post tex ���� Ȯ�� �׽�Ʈ @@@
1. /llm_model.py ���Ͽ���(/v1/) ����
@router.get("/job-status", response_model=ResponsePostTextBody)
async de post_text(

)
	sMsg = "���� [#### step 2. post tex ���� Ȯ�� Start ####] ����"
	print("\n\n\n ���� [/llm_model.py] [post_text()] ==> [T_01]" + sMsg)
 
	resquest_tlo = get_request_tlo(      	# ===> breakpoint ���� ����

	}
	
	async with AsyncDatabaseSession(db_url) as session:
		try:
			sql_stmt = select(JobStatus).where(
				and_(
					JobStatus.job_id == job_id,  	# JOB ID ��
					JobStatus.created_at >= one_day_midnight_kst,
					JobStatus.created_at < curren_datatime_kst,
				) 	# tb_job_status TB ��ȸ ��
			result = await session.execute(sql_stmt)
			job_record = result.fechone()
			
			sMsg = "���� 40. tb_job_status TB ��ȸ ����	\n"
			sMsg += "SELECT * FROM tb_job_status \n"
			sMsg += "WHERE job_id = s AND tb_job_status.created_at >= s"
			sMsg += "	AND ResultData.created_at < s \n"
			sMsg += "[�� 01. ���� ���� �Ͻ�(P)]" + str(one_day_midnight_kst) + "  \n"
			sMsg += "[�� 02. ���� �Ͻ�(P)]" + str(curren_datatime_kst) + "  \n"
			sMsg += "[�� 00. job_id(P)]" + job_id + "  \n"
			print("n\n ���� [/llm_model.py] [get_text_result()] ==> [T_40]" + sMsg)
  
			if job_record is None:
				raise BadRequestError(f"Job Id '{job_id}' not found") 
	try:
		:record_row = job_record[0]
		
		if record_row.result_code in (JobStatusResultCode.ACCEPTED.value.status_code,):		  
			sMsg = "���� 91. JOB ���� ��� ����\n"
			sMsg += "[�� 00. job_id]" + job_id
			sMsg += "[�� 01. ���� �ڵ�]20100000"
			sMsg += "[�� 02. ���� �޼���]Completed	\n\n\n"
			print("���� [/llm_model.py] [post_text()] ==> [T_91]" + sMsg)
			
			return JSONRespnse(	
			)

	except BadRequestError as e:
		raise e
}
-----------------------------------------------------------------------------------------------------

2. step 2. post tex ���� Ȯ�� ���� �� ==> TERMINAL(Tab)����
$ /app/client/text/get_job_status.sh		# step 2. post tex ���� Ȯ�� ��
-----------------------------------------------------------------------------------------------------

3. �α� Ȯ�� �� ==> DEBUG CONSOLE(Tab)����
���� [/llm_model.py] [post_text()] ==> [T_01] ���� [#### step 2. post tex ���� Ȯ�� Ȯ�� Start ####] ���� 
���� [/llm_model.py] [post_text()] ==> [T_41] [job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc
���� [/llm_model.py] [post_text()] ==> [T_42] ��� 01. post text ó�� ����
�� 01. job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc

���� [/llm_model.py] [post_text()] ==> [T_91] ��� 91. post text ��� ����
[�� 01. respnseCode]20100000[�� 02. respnseMsg]Completed    --> ���� ����������
[�� 01. respnseCode]20200000[�� 02. respnseMsg]Queue Accepted

INFO: 127.0.0.1:56864 - "POST /api/vi/text HTTP/1.1" 202 Accepted
==============================================================================================================
�����������������������������������������������������������

 
- step 3. post tex ��� �׽�Ʈ @@@
1. /llm_model.py ���Ͽ���(/v1/) ����
@router.get("/result", response_model=ResponsePostTextBody)
async de get_text_result(

)
	sMsg = "���� [#### step 3. post tex ��� Ȯ�� Start ####] ����"
	print("\n\n\n ���� [/llm_model.py] [get_text_result()] ==> [T_01]" + sMsg)
 
	async with AsyncDatabaseSession(db_url) as session:
		try:
			select_sql_stmt = select(ResultData).where(
				and_(
					ResultData.job_id == job_id,
					ResultData.created_at >= one_day_midnight_kst,
					ResultData.created_at < curren_datatime_kst,
				) 	# tb_result_data TB ��ȸ �� ==> �ش� ����Ÿ ����
		
				result = await session.execute(select_sql_stmt)
				
				update_sql_stmt = (
					update(JobStatus)
					.where(JobStatus.job_id == job_id)
					.values(
						result_at == curren_datatime_kst,			# ���� �Ͻ� ��
						updated_at == current_datatime_kst,		# ���� �Ͻ� ��
					)
				)	# tb_job_status TB ���� ��
				await session.execute(update_sql_stmt)\
				await session.commit()
			
				sMsg = "���� 42. tb_job_status TB ����Ÿ ���� ó�� ����\n"
				sMsg += "UPDATE tb_job_status SET result_at=s, updated_at=s \n"
				sMsg += "WHERE tb_job_status.job_id =s \n"
				sMsg += "[�� 01. ���� �Ͻ�(P)]" + str(curren_datatime_kst) + "  \n"
				sMsg += "[�� 02. ���� �Ͻ�(P)]" + str(curren_datatime_kst) + "  \n"
				sMsg += "[�� 00. job_id(P)]" + job_id + "  \n"
				print("\n\n ���� [/llm_model.py] [get_text_result()] ==> [T_42]" + sMsg)
				
				result_record =  result.fetchone()
				
				if result_record is None:	# 41. result_data TB ����Ÿ ��ȸ�� ���� ���ϸ� ����
					raise BadRequestError(f"Job ID '{job_id}' not found:)	// Job ID �� ����
			) 		
	try:
		record_row =  result_record[0]
		
		sMsg = "���� 41. tb_result_data TB ����Ÿ ��ȸ ����\n"
		sMsg += "SELECT result_data FROM tb_result_data \n"
		sMsg += "WHERE created_at >= s AND ResultData.created_at < s \n"
		sMsg += "[�� 01. ���� ���� �Ͻ�(P)]" + str(one_day_midnight_kst) + "  \n"
		sMsg += "[�� 02. ���� �Ͻ�(P)]" + str(curren_datatime_kst) + "  \n"
		sMsg += "[�� 00. job_id(P)]" + job_id + "  \n"
		print("n\n ���� [/llm_model.py] [get_text_result()] ==> [T_41]" + sMsg)
		
		if record_row.result_data is not None:	# 41. result_data TB ����Ÿ ��ȸ�� �����ϸ� ���� 
			s_ENCR_KEY = "469782f0c..........23c2"		#:APP_ENCRPYTION_HEX_KEY Ű �߰� ==> TEST @@@ ==> # 16���� ��ȣȭ Ű
			encryption_bytes_key = covert_hex_key_to_bytes(s_ENCR_KEY ) 	# 16���� ��ȣȭ Ű byte�� ��ȯ  ==> TEST @@@ ==> 
			# encryption_bytes_key = covert_hex_key_to_bytes(APP_ENCRPYTION_HEX_KEY ) 	# 16���� ��ȣȭ Ű byte�� ��ȯ   ==> TEST @@@ ==> 
			cihper_text: str = record_row.result_data		# ��� ����Ÿ �� 
			plain_text: str = decryptcihper_text, encryption_bytes_key)		# ��� ����Ÿ �ص�(��ȭ) ��
			
			json_result_data = json.loads(plain_text)			
		else:
			raise InteralServerError("Result data is None")
		
	print("���� [/llm_model.py] [get_text_result()] ==> [T_51] [delete_job_result ȣ��]" )
	
	background_tasks.add_task(delete_job_result, job_id) 	 # delete_job_result ȣ��

	sMsg = "���� 91. step 3. post tex ��� Ȯ�� ����\n"
	sMsg += "[�� 00. job_id]" + job_id
	sMsg += "[�� 11. ��ȭ ���]" + json_result_data['summary']['summary']  + " \n"
	sMsg += "[�� 12. ��ȭ Dtl]" + str(json_result_data['summary']['summary'Detail])  + " \n"
	sMsg += "[�� 13. keyword]" +str(j json_result_data['keyword'])  + " \n"
	sMsg += "[�� 91. ���� �ڵ�]20000000"
	sMsg += "[�� 92. ���� �޼���]Success \n\n\n"
	print("���� [/llm_model.py] [get_text_result()] ==> [T_91]" + sMsg)
	
	return JSONRespnse(	  # get_request_handler ȣ��
	) 
	
	sMsg = "���� step 3. post tex ���_���� ����\n"
	sMsg += "[��01. respnseCode]999999\n\n"
	print("���� [/llm_model.py] [get_text_result()] ==> [T_99]" + sMsg)   # missing withespace around operator
	
	raise QueueError()
}
-----------------------------------------------------------------------------------------------------

2. /background_tasks.py ���Ͽ���(/v1/) ����
from sqlalchemy import delete, update

async def delete_job_result(job_id: str):
	sMsg2 = "[T_01 ���� [#### background_tasks ó�� Start ####] ����"
	sMsg = "[delete_job_result()] ==> "
	sMsg = "\n\n\n ���� [/delete_job_result.py] " + sMsg
	print(sMsg + sMsg2)
  
	delete_sql_stmt = delete(ResultData).where(ResultData.job_id == job_id)		# tb_result_data ����Ÿ ���� ó��
	delete_result = await session.execute(delete_sql_stmt 
	await session.commit()
	
	sMsg2 = "[T_51] ���� tb_result_data TB ����Ÿ ���� ó�� ���� \n"
	sMsg2 += "DELETE FROM result_data "
	sMsg2 += "WHERE tb_result_data.job_id =s \n"
	sMsg2 += "[�� 00. job_id(P)]" + job_id + " \n"
	print(sMsg + sMsg2)

	if delete_result.rowcount == 0;
		logger.error(
			f"No data to delete for job_id: {job_id} in result_data Table"
		)
	else:
		update_sql_stmt = (
			updatg(JobStatus)
			.where(
				JobStatus.job_id == job_id
			)
			.values(
				result_code == JobStatusResultCode.DELETED.value.status_code,	# ��� �ڵ�
				updated_at == current_datatime_kst,		# ���� �Ͻ�
			)	# table�� �ִ� ���� ���� ó��
		)
		update_result = await session.execute(update_sql_stmt)		# ���� ���
		await session.commit()
		
		sMsg2 = "[T_52] ���� tb_job_status TB ����Ÿ ���� ó�� ����\n"
		sMsg2 += "UPDATE tb_job_status "
		sMsg2 += "SET result_code=s, updated_at=s "
		sMsg2 += "WHERE tb_job_status.job_id =s \n"
		sMsg2 += "[�� 01. ��� �ڵ�(P)]"
		sMsg2 += + str(JobStatusResultCode.DELETED.value.status_code) + " \n"
		sMsg2 += "[�� 02. ���� �Ͻ�(P)]" + str(current_datetime_kst) + " \n"
		sMsg2 += "[�� 00. job_id(P)]" + job_id + " \n"
		print(sMsg + sMsg2)

	logger.info(
		f"Job result data deleted successfully. job_id: {job_id} in result_data Table"
	)
---------------------------------------------------------------------------------------

3. /routing.py ���Ͽ��� @@@
def get_request_handler(
) -> callable[[Request], Coroutine[Any, Any, Response]]:

	async def app(request: Request) --> Response:
		response: Union[Response, None] = None
		async with AsyncExitStack() as file_stack
		
			if not errors:
				if isinstance(raw_response, Response):
					if raw_response.background is None:
						raw_response.background = bakground_tasks
					response = raw_response
					
	await wrap_app_handling_exception(app, sessin)(scope, receive, send)		# delete_job_result ȣ��			

	return app 
-----------------------------------------------------------------------------------------------------

4. get_text_result text ���� �� ==> TERMINAL(Tab)����
$ /app/client/text/get_text_result.sh		# step 3. post tex ��� Ȯ�� ��
-----------------------------------------------------------------------------------------------------

5. �α� Ȯ�� �� ==> DEBUG CONSOLE(Tab)����
���� [/llm_model.py] [get_text_result()] ==> [T_01] ���� [#### step 3. post tex ��� Ȯ�� Start ####] ���� 

	���� [/llm_model.py] [get_text_result()] ==> [T_42]���� tb_job_status TB ����Ÿ ���� ó�� ����\
UPDATE tb_job_status FROM result_at=s, updated_at=s WHERE tb_job_status.job_id  =s
�� 01. ���� �Ͻ�(P)]2024-10-24 16:58:42. 245085+09:00
�� 02. ���� �Ͻ�(P)]2024-10-24 16:58:42. 245085+09:00
�� 00. job_id(P)]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc
 
	���� [/llm_model.py] [get_text_result()] ==> [T_41]���� result_data TB ����Ÿ ��ȸ ����
SELECT result_data FROM result_data
WHERE ResultData.created_at >= s AND ResultData.created_at < s
�� 01. ���� ���� �Ͻ�(P)]2024-10-23 00:00+09:00
[�� 02. ���� �Ͻ�(P)]2024-10-24 16:58:42. 245085+09:00
�� 00. job_id(P)]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc
 
���� [/llm_model.py] [get_text_result()] ==> [T_51] [delete_job_result ȣ��]

	���� [/llm_model.py] [get_text_result()] ==> [T_91] ���� step 3. post tex ��� Ȯ�� ����
�� 00. job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc
�� 00. ��ȭ ���]�ָ� ���� ��ȹ�� ���� ������Ʈ �غ� ����
�� 01. ���� �ڵ�]20000000
�� 02. ���� �޼���]Success
--------------------------------------------------------------------------------------------------------------------------

	���� [/delete_job_result.py] [delete_job_result()] ==> [T_01] ���� [#### background_tasks ó�� Start ####] ����
	���� [/background_tasks.py] [delete_job_result()] ==> [T_51] ���� tb_result_data TB ����Ÿ ���� ó�� ����
DELETE FROM tb_result_data WHERE tb_result_data.job_id  =s \n"
�� 00. job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc


	���� [/background_tasks.py] [delete_job_result()] ==> [T_52]�� ��� tb_job_status TB ����Ÿ ���� ó�� ����
UPDATE tb_job_status FROM result_code=s, updated_at=s WHERE tb_job_status.job_id  =s
[�� 01. ��� �ڵ�(P)]204000000
�� 02. ���� �Ͻ�(P)]2024-10-24 16:58:42. 245085+09:00
�� 00. job_id]7047ade2-ab82-4cdc-=b54c-0d2fb8899abc

024-10-24 17:15:42. INFO sqlalchemy.engine.Engin COMMIT
==============================================================================================================
�����������������������������������������������������������


- step 4. post tts ���� �׽�Ʈ @@@
1. /tts.py ���Ͽ���(api > api > v >) ����
@router.get("/tts", response_model=ResponsePostTextBody)
async de post_tts(

):
	sMsg = " ���� [#### step 4. post tts ���� Start ####] ����"
	print("\n\n\n ���� [/tts.py] [post_tts()] ==> [T_01]" + sMsg)
 
	requst_tlo = get_request_tlo(
		http_method = requst_obj.method,
		api_uri = str(requst_obj.url.path),
		transaction_id = headers["transaction_id"],
		project_id = headers["x_ixi_project_id_id"],
		model_id = requst.model_id,
	)
	
	if not is_valid_tts_model_id(requst.model_id):
		raise BadRequestError("Invalid model id")
	try :
		chck_word, check_result = badword_filter(text)		# badword_filter ��� ��
		
		if bool(check_result):
			raise TtsInappropriateTextError()
			
		stt_handler = TTShandler(
			tts_query = text,
			transaction_id = transaction_id,
			model_id = model_id,
			speaker = speaker,
		)
		
		stt_result = await stt_handler.predict()		# TTS ����� ��
		
		sMsg = "���� 91.step 4. post tts ��� Ȯ�� ����\n"
		sMsg += "[�� badword_filter ���]" + str(check_result) + " \n"
		sMsg += "[�� 00. �� ID]" + model_id 	+ " \n"
		sMsg += "[�� 00. speaker]" + speaker	+ " \n"
		sMsg += "[�� 01. ���� �ڵ�]200"
		sMsg += "[�� 02. ���� �޼���]Success \n\n\n"
		print("���� [/tth.py] [post_tts()] ==> [T_91]" + sMsg)
		
		return	JSONRespnse(
			status_code = 200,
			content = ResponsePostAudioTtsBody(
				responseCode = 200000000,
				responseMsg= "Success",
				model_id = model_id,
				result = stt_result,
			).model_dump(by_alias=True),
		}
-----------------------------------------------------------------------------------------------------

2. /badword_filter.py ���Ͽ���(app > utiles >) ����
def badword_filter(tts_script: str):-> Tuple[str, int]: 
	sMsg2 = "[T_01] ���� [#### badword_filter ó�� Start ####] ����"
	sMsg2 += "[�� 01. tts_script]" + tts_script + " \n"
	sMsg = "[badword_filter()] ==> "
	sMsg = "\n\n\n ���� [/badword_filter.py] " + sMsg
	print(sMsg + sMsg2)
	
	badwords = get_badword()	 # badword ��������

	# badword ���͸� ó�� ����"
	check_word, check_result = badword_fitlter_executor(badwords, tts_script)
	sMsg2 = "[T_91] ���� [#### badword ���͸� ó�� ��� ####] ����"
	sMsg2 += "[�� 01. check_word]" + check_word + " \n"
	sMsg2 += "[�� 02. check_result]" + str(check_result) + " \n" 
	print(sMsg + sMsg2)
	
	return check_word, check_result
 
def get_badword(): 
	sMsg2 = "[T_01] ���� [#### get_badword �������� Start ####] ����"
	sMsg = "[get_badword()] ==> "
	sMsg = "\n\n\n ���� [/badword_filter.py] " + sMsg
	print(sMsg + sMsg2)
	
	current_file = Path(__file__)		# ���� ������ ���
	
	# �θ��� �θ� ���丮�� ���� ���
	project_file = current_file.parent.parent.parnet.resolve()
	
	with open(
		f"{str(project_file)}/app/libs/ixigen_post_utils/badwordfilter/badwords.json",
		"r",
	) as f:
		data = json.load(f)
		badwords = sorted(data["badwords"], key=len, reverse=True)
	
	return badwords
-----------------------------------------------------------------------------------------------------

3. /badword_filter.py ���Ͽ���(app > libs> ixigen_post_uitls > badwordfilter >) ����
def badword_fitlter_executor(badwords: list, tts_script: str) -> Tuple[str, str]:
	sMsg2 = "[T_01] ���� [#### badword ���͸� ó�� Start ####] ����"
	sMsg2 += "[�� 01. tts_script]" + tts_script + " \n"
	sMsg2 += "[�� 51. badwords Ÿ��]" +  str(type(badwords)) + " \n"
	sMsg2 += "[�� 52. badword �� ����]" + str(len(badwords)) + " \n"
	sMsg2 += "[�� 53. badwords " + str(badwords) + " \n"
	sMsg = "[badword_fitlter_executor()] ==> "
	sMsg = "\n\n ���� [/badword_filter.py] " + sMsg
	print(sMsg + sMsg2)
	
	cheick_rusult = ["", 0]
	
	for badword in badwords:
		sMsg2 = "[T_51] [�� 01. badword]" + badword + " \n" 
		sMsg2 += "[�� 02. ts_sccript.lower():]" + ts_sccript.lower(): + " \n"
		print(sMsg + sMsg2)
		
		# tts_sccript�� badword ���ؼ� badword�� �������� ����"
		if badword in tts_sccript.lower():
			check_result[0] = badword
			check_result[1] = 1
			break	
	return tuple(check_result)	
-----------------------------------------------------------------------------------------------------

4. tts���� �� ==> TERMINAL(Tab)����
$ /app/client/tts/tts.sh	# step 4. post tts ���� ��
-----------------------------------------------------------------------------------------------------

5. �α� Ȯ�� �� ==> DEBUG CONSOLE(Tab)����
�� {responseCode: 20000000, responseMsg: "Success", modelId: "ixi-audio/tts:commai-2406:", 
, "resutl":{"buffer" :"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"....}} 	--> ����
=============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------+ 
�����������������������������������������������������������
