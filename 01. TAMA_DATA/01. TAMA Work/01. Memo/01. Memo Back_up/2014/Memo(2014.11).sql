

�����������������������������������������������������������
+---------------------------------------------// Memo(2014.11) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2014.11.01(��) �۾� ���������������� 
---> 07:30 ~ 20:00  ==>

- �ָ�
08:00 ���
09:30 �θ�ġ ������(��õ1���� APT 503ȣ) ���� ==> 3����(�� ��ó�� ����)
10:00 �Ͱ�
10:10 ���� 
10:30 ����� 
11:10 ����(X-RAY, ��������: ���[�㸮, ���]): �������̽�����
11:30 ���� �ܱ��ε���� �� ������ �ͼ� ���� ���� ��
12:00 ����
12:30 �߽�(�ع���(��): 3�� 7õ��, �����(2��)): ��ȣ�Ʊ��� ==> �� 3�� 9õ��
13:20 �Ͱ�
16:10 �����
16:10 ����ö(������Ա��� <-> ���빮���繮ȭ������): �翺, ���
17:00 ���빮���繮ȭ���� 1�� �ⱸ ==> D���빮 ������ �ö���(DDP) D�� 4��(��������ƮŸ�� ��): ��̲� ����
18:00 ���빮 �и����� 9�� ������ ����(�δ� 7õ��)
20:00 ��̲� ����(19�ÿ� DDP(Dream Design Play)�� ����ǰ� �߿� ��̲� ���ô� ���� �־���)
20:20 ����
21:20 �Ͱ�
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.02(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- �������౸
06:15 ���(�� ���� ��)
07:20 �������� ��õ������ ��(�������� ��)  
07:50 �ű��ʵ��б�(�� ��ħ)
08:20 ������
11:00 ����
11:40 �߽�(�������: �̼� �� ���� 1��[��� �� ����): ���� ��
13:11 ����
14:00 �Ͱ� 
14:20 ����(����)
14:30 ���� 
17:20 ���
18:30 ������ �� ���(���� �ö�� ÿ�η�): ����ġ �ı� �ۼ��ؼ� ���� ����� ����
20:00 ����
20:20 ����(��Ʈ)
20:50 �Ͱ�
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.03(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- ȣȯ�� ����
1. Comp. Assign Tester ���� ȭ�� ����
==============================================================================================================

- IE 11 ��ġ
http://windows.microsoft.com/ko-kr/internet-explorer/download-ie
1. F12 ������ ������ ����Ͽ� �� �������� ������ϴ� ���
http://msdn.microsoft.com/ko-kr/library/gg589507(v=vs.85).aspx
==============================================================================================================

������������������� 2014.11.04(ȭ) �۾� ����������������
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- ȣȯ�� ����
1. Comp. Assign Tester ���� ȭ�� ����
==============================================================================================================

- ����ȯ ����
- /CompAssignServiceImpl.java����
List<HashMap<String, Object>> prjIdList = new ArrayList<HashMap<String, Object>>();

prjIdList = compAssignDao.selectAssignTesters(paramMap);

if( prjIdList != null && prjIdList.size() > 0 ) {
	for( int i=0; i<prjIdList.size(); i++ ){
		HashMap<String, Object> prjInfo = prjIdList.get(i);

		testerIdArr = (ArrayList)prjInfo.get("TSTR_ID"); 
		logger.debug("[/CompCommCodeController.java][findAssignTesterList()] ==> [TSTR_ID]"+
		(ArrayList)prjInfo.get("TSTR_ID") +"[testerIdArr]"+ testerIdArr );
	}	// end of for()
}

GlobalControllerExceptionHandler java.lang.ClassCastException: java.lang.String cannot be cast to java.util.ArrayList
==============================================================================================================

������������������� 2014.11.05(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>  

- SMART TV App Mgt Prj- ȣȯ�� ����
1. Comp. Assign Tester ���� ȭ�� ����
1) ���Ϳ��� tester ���λ����Ǹ�
==> procedure�� to_status�� CP.PST.230C�� �Ѱ���
2) ���� �߻�
 ��. ����: Uncaught SyntaxError: Unexpected token : 
 ��. ��ġ: JSP ���� ������ ����(���� �ҽ��� Ȱ���ؼ� õõ�� ������� ��)
==============================================================================================================

- Comp. Assign Tester ���� ȭ�� ��� ��û
1. �޴���: Comp. Assign Tester ���� ȭ��
2. �޴� URL: /Diamond/comp/assign/m_assigned_tester_view
==> �޴� ���ȭ��(http://207.36.93.29/Diamond/portal/admin#)���� Add Page ������ ��â���� ����ϸ� ��
==============================================================================================================

- redmine ó�� ����
Resolved: 2��(1440, 1441)
Opened: 2��(1439, 1447)
1. No. 1447
Region, Project Name �ʵ� �߰�
==============================================================================================================

- Toad ��ġ
1. Toad for Oracle v 10.1.1.8 ��ġ[��, ȸ��(���� �Ｚ)]
2. Toad for Oracle v 10.6.1.3  ==> ���� ����
==============================================================================================================

- ����ȯ ����
if( prjIdList != null && prjIdList.size() > 0 ) {
	for( int i=0; i<prjIdList.size(); i++ ){
		//HashMap<String, Object> prjInfo = prjIdList.get(i);
		ArrayList<String> prjInfo =  prjIdList.get(i); 
	}
}
1. ���� ����: Type mismatch: cannot convert from HashMap<String,Object> to ArrayList<String>
==============================================================================================================

������������������� 2014.11.06(��) �۾� ����������������
---> 07:30 ~ 19:20  ==> �� ���ۼ� ���(�� ������ ��Ż ��)

- SMART TV App Mgt Prj- ȣȯ�� ����
1. Comp. Assign Tester ���� ȭ�� ����[No. 1439]
1) ���Ϳ��� tester ���� �����Ǹ�
==> procedure�� to_status�� CP.PST.230C�� �Ѱ���
2. Test Center ȭ�鿡�� Project Name, Region �ʵ� �߰�[No. 1447]
3. Loading Bar �߰�
4. More Pagin ��ư �߰�
5. ȣȯ�� �޼��� ���� ó��
==============================================================================================================

- jquery ����(JSP���� DB Table ������ ������ ����)
Uncaught SyntaxError: Invalid regular expression: missing
==============================================================================================================
 
������������������� 2014.11.07(��) �۾� ����������������
---> 14:10 ~ 20:00 ==> ���� ����(��������, �츮����), ������ �������� Ȯ��(���Ǳ�û û�Ұ�)

- SMART TV App Mgt Prj- ȣȯ�� ����(���������� �ݿ�)
1. Comp. Assign Tester ���� ȭ�� ����[No. 1439]
1) ���Ϳ��� tester ���� �����Ǹ�
==> procedure�� to_status�� CP.PST.230C�� �Ѱ���
2. Test Center ȭ�鿡�� Project Name, Region �ʵ� �߰�[No. 1447]
3. Loading Bar �߰�
4. More Pagin ��ư �߰�
5. ȣȯ�� �޼��� ���� ó��
==============================================================================================================

- ������ ��� IE11 ȣȯ�� ����
1. F12 > Emulation(��â)
1) ��� > ���� ���: 10���� ����(IE 10 ������)
http://vip125.blog.me/130179979575
http://www.devpia.com/Maeul/Contents/Detail.aspx?BoardID=35&MAEULNO=14&no=21422&page=1&ref=21422
==============================================================================================================

- ���� ����
08:30 ���(����� �� �� ����)
09:10 ����(�� ����)
09:30 �翺 �� ã��(ũ�����Ǿ�) 
09:40 ��Ȱ�� ���� �����(��������, üũī��)
	==> 1.����ī�� �߱�(�ſ� ��Ȱ�� 90���� �Ա� ==> �ſ� 100���� �Ա� ����)
	==> 2. ����, ���� ���� �� õ������ ������������ �ٲ�(������ ������ ��Ʈ�� ������ ����)
10:10 �츮���� ���� ���� Ÿ��(�翺, �¸�) --> �� �հ�: 7,458,168��(�� ����: 258,168��)
	==> ����帲 ���� ���� �簡��(�翺�� ����): 30���� ����
	==> ���� ���� ���� ����(�¸�: �� 10����): 10���� ����
	==> ���� ���� ���� ����(����: �� ���� ����, ���࿡�� ���� ����)
11:20 ����
11:20 ���Ǳ�û û�Ұ�(3��): ������ �з� ���� ���� ���� Ȯ��(���·� 8���� 11�� 21�ϱ��� ������ ��)
12:00 �Ͱ�
12:20 �߽�(�� ����)
12:40 �����
14:00 ���(����)
==============================================================================================================

������������������� 2014.11.08(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- �ָ�
06:15 ���
06:40 �������� ��õ������ ��(�������� ��)
06:50 �ű��ʵ��б�
07:20 ������
08:30 ����
09:10 �Ͱ�
09:00 ����
10:15 ���»���ΰ�(���� ����): ������ Ž
11:30 ����
11:40 �Ͱ�
12:00 �����
12:20 �� ȯ��(��վƿ﷿ 3�� �̼�: ���� ��(16����)�� ȯ���ϰ� ���Կ��� �� ������)
12:40 �翺 �޴��� �˾ƺ� ==> ��Ż� 3��: ��Ʈ 4 ���� ��õ��, LG �븮��: ������ 6+: 42 �����(5�� 6õ��)
13:30 �߽�(����, �ع�����2��: �翺, ����): ǳ��Ҹ�
14:00 �̸�Ʈ ������
	==> �Ϸ� ��������ǵ� ZB(���� û�ұ�(20����) => ó�� ����)
	==> �̸�Ʈ ����� ����(���� �ö��, ����ġ �۾���) 3���� ���, �̸�Ʈ �� ��ġ(ĵĿ�� ����, 3õ�� ����)
	==> LH ���� ���RG-3305(59,000��), LH ����� ���� ���� 24(28,800��), LH ����� ���� ���� 20(23,800��)
	--> �� 111,600��(���� ������ ������)
	16:30 ����
17:00 ������Ա���
17:30 �翺 �޴��� �˾ƺ� ==> KT �븮��: ������ 6+: 42 �����(5�� 8õ��) -> ��ȯ�� ������ �����ؼ� �ù�� �ޱ�� ��
18:20 �Ͱ�
19:00 ����
20:00 ����(���ϸ��� �� ������)
20:20 ��Ȱ�� �۱�(�翺): 90����
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.09(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- �������౸
06:15 ���
06:30 �������� ��õ������ ��(�������� ��)  
07:00 �ű��ʵ��б�(�� ��ħ)
07:20 ������
08:30 ����(������ ��������): 2���� �� ==> �ּ�����, ���㾾�� ��
	==> ������ ����: ����Ʈ ������ ��(����)
10:30 ����ȸ��(���� ��� ���̽����� ���� ����)
11:30 ����
11:40 �߽�(����: ���漼��): ����ȸ���� ��
13:00 ���� 
13:30 �Ͱ�
13:40 ������ ����(������ �� ��� ��)
14:40 ����(���� �� -> ������): �������� ���￪���� �� ��
15:20 ����ö(������Ա��� <-> ����õ��): ���� �Ⱦ�
19:00 �Ͱ� 
19:30 ����
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.10(��) �۾� ����������������
---> 07:30 ~ 20:00 ==>  

- SMART TV App Mgt Prj- ȣȯ�� ����(���������� �ݿ�)
1. App Info ȭ�� ����
1) Platform ������ �ش� defect�� �����µ� �ش� defect�� Ŭ�� ==> �˾�
==> /comp/integrated/app/platform/defect/m_defect => /CompAppIntegratedController.java, /modal_defect.jsp
==> /comp/integrated/app/platform/defect/m_defect/list/data.json => /CompAppIntegratedController.java 
==> /defect/common/m_defect => /DefectController.java, /portal/modal/defect/modal_defect.jsp
==> /app/defectinfo/list/data.json => /DefectController.java  
2. page view ����
==============================================================================================================

- �޴� ���
1. Defect List ��â ȭ��(modal) ���
1) �޴���: Defect List ��â ȭ��(modal)
2) �޴� URL: /Diamond/comp/integrated/app/platform/defect/m_defect
2. Defect List ��ȸ ���
1) �޴���: Defect List ��ȸ
2) �޴� URL: /Diamond/comp/integrated/app/platform/defect/m_defect/list/data.json
==============================================================================================================

- SW������� Ȯ��(22��)
1. ��� ���� ����: 2008-06-22  ==>  https://www.sw.or.kr/person/p_gii.jhtml
==============================================================================================================
 
������������������� 2014.11.11(ȭ) �۾� ����������������
---> 07:30 ~ 18:30 ==> ������ ����(���� �簡���� ��)

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country
 2) Passed Comp. App Status_Subsidiary 
/Diamond/comp/statistics/passedCompApptStatus, /CompStatusController.java, /passed_comp_app_status.jsp
/Diamond/comp/statistics/passedCompApptStatusCountrySearch.json
/Diamond/comp/statistics/passedCompApptStatusSubsidiarySearch.json
 
2. Project Status 
/Diamond/comp/statistics/projectStatus, /CompStatusController.java, /comp_project_status.jsp  
/Diamond/comp/statistics/projectStatusSearch.json
==============================================================================================================

- KT ���ͳ� ���� �Ű�
1. ���� ���ͳ��� �ȵȴٰ� �Ű�(�Ž�, �� �� ���� ��ġ ��û)  ==> 02-100: KT ������
2. ���� ���Ŀ� ��簡 �湮
3. ����: ������ ������ �ȵ�� ��
4. ����: �ƴ�Ÿ���� ������ ���� Ȯ���� ŭ
5. ��ġ: AS ��簡 �湮�ؼ� ������ �ƴ��� ��ü�ؼ� ������ �������� ��Ƴ�
 1) �Ž�: ������(���� �����ؼ� ������ ��, ���ι�: ���� ��ġ�� 
6. ���� ��� ����[2013�� 3�� �����ؼ� ��ġ(�������� 301ȣ)]: http://www.iptime.co.kr
1) ipTIME N704BCM  ==> http://shopping.naver.com/detail/detail.nhn?cat_id=50003150&nv_mid=6655022655&frm=NVSCMOD&query=iptime%20n704 

-������ A/S �湮����- 
���湮�Ͻ�: 11�� 11�� ���� 14��
���湮����: ��ö��(KT���� ����) 
������ó: 010-3476-2400 
==============================================================================================================

- ������(IP Time) ȯ�� ���� 
1. http://192.168.0.1/login/login.cgi?search=1 
2. ���� ���� 
 1) SSID(��Ʈ��ũ �̸�): 01_iptime_TAMA(Real)  ==> 01_iptime_TAMA_SAEMOON
 2) ���� ���� ���� 
  ��. ��ȣȭ �˰���: WPA(AES) 
  ��. WEP Ű �Է� ���(���� �Է�): 339000339(���Ű) 
------------------------------------------------------------------------------------------------------------------------------

- ������ ����
1. ipTIME A604 EFM��Ʈ���� ������, ����: 38,540��  ==> http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=608762994&GoodsSale=Y&jaehuid=200002673
==> ip TIME A604 11AC ������������ / 5dBi���׳�: G���� ==> �����ߴٰ� �����
2. ipTIME A3004 EFM��Ʈ���� ������, ����: 109,500�� ==> http://auction.kr/iA5vBfz
3. ��ũ DIR-806A �Ⱑ �������� ������, ����: 109,500�� ==> http://ddantgong.com/220161183756 
==============================================================================================================

������������������� 2014.11.12(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. �˻� ���� ����
==============================================================================================================

- ȣȯ�� ����(���������� �ݿ�)
1. 01. Test Center & State ȭ�� Display �ϸ鼭 ����Ÿ ��ȸ�� ����
==============================================================================================================
  
������������������� 2014.11.13(��) �۾� ����������������
---> 07:30 ~ 20:00  ==> ������(���� 1��)

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. �˻� ���� ����
==============================================================================================================

- checkbox�� radio ��ư ������� �����(jsp���Ͽ���)
<script type="text/javascript"> 
	<!--     
	$("document").ready(function() { 
	/** chkSex_sect checkbox ���� �̺�Ʈ */
	$("input:checkbox[chkSex_sect]").change(function(){ 
	$("input:checkbox[chkSex_sect]").prop("checked", false);   // 1. ��ü ���� 
	this.checked='checked';  // 2. ������ �ϳ��� check box �� ����
	});   
	});   // end of ready()
	//-->
</script>

<div>
	<ul>
	<li><label for="male">Pria / <em>Male</em></label><input type="checkbox" name="chkSex_sect" id="choice_gender_01" 
	chkSex_sect="1" value="M" /></li>
	<li><label for="female">Wanita / <em>Female</em></label><input  type="checkbox" name="chkSex_sect"
	id="choice_gender_02"  chkSex_sect="2" value="F" ></li></li>
	</ul>
</div>
==============================================================================================================
  
������������������� 2014.11.14(��) �۾� ����������������
---> 07:30 ~ 18:30  ==>

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. �˻� ���� ����
==============================================================================================================

- ȣȯ�� ��� ����
1. #1502 : ���� Export �� ����� �Ϻθ� ����� 
1  ~ 50: 7�� �ҿ�
1  ~ 100: 11�� �ҿ� 
1  ~ 150: 19�� �ҿ� 
1  ~ 200: 25�� �ҿ� 
1  ~ 1228: �� 5�� �ҿ�
==============================================================================================================

������������������� 2014.11.15(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- �ָ�
06:15 ���
06:40 �������� ��õ������ ��(�������� ��)
06:50 �ű��ʵ��б�
07:20 ������
08:30 ����
09:10 �Ͱ�
09:30 ����(�Ļ�)
11:20 ������ �ڹ��� ����(����ƿ﷿DC) ==> �����ȣ: 4541  
11:30 �翺 �ڵ��� ����(������ 6+ 16G)
     ==> ���Բ� LTE 42 �����(���� ��ȭ 300��, ����Ÿ: 750G), 24���� ����: �� ���ξ� �� 6����
     ==> 2014.11.17(��) ���� ���� -> SKT ���� ������, ������(010-5000-7334)
     ==> ���� �� ����(73,940��[10�� 11�� ���])�ϰ� �űԷ� ��
     ==> SK TB���� �°��� ����(3�� �߰�[ū����, ����]): �� õ�� ����(������������ ÷��)
13:10 ����
13:20 �Ͱ�
13:40 �߽�
13:20 IPTV ���� ��ȭ ����(�⽺) 
17:00 �����
17:20 ������ �ٶ� �ֱ�(������Ա���, ���� ���� ���Ա�): �����ϰ� �ִ� ���� ���� ���(�� ���� �ٶ� �� ����)
17:50 �ູ ��������(��õ�� ��ó): ������ ���� �� ==> ������ �ڱ�� �ִ� ���� ���� ���� �ٶ� ����
18:20 ����(�ﺸŸ�� ���� 2��)�� ���� ����� ũ����Ż���� ã��(�������� ����)
19:00 �Ͱ�
19:30 ����
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.16(��) �۾� ����������������
---> 07:30 ~ 20:00  ==>

- �������౸
06:15 ���(�ʰ� �Ͼ�� ��ħ �Ļ� ����)
06:45 �����
06:55 �� ����(�극�����): 4��
07:00 ������Ա��� ������ ����[������б��Ա���ö��  21-833(����)]
07:10 6003�� ���� ���� ž��
08:30 ��õ���� ����(1�ð� 20�� �ɸ�): �� �� ����
08:40 �Ա� ����(3�� ���� ��: 24kg) 
	==> üũ�� ī����: D19-D36(3�� �ⱹ��), ž�±�: 111, ��Ʈ���װ�(417��)
	==> ������ S3(�翺 ��), ���� R3(�� ��) ��Ʈ�� ó������ ������ ����
08:50 ���� 2�� ����Ʈ�� ��
09:40 ����
10:00 ���߿��� ����(09:00 ~ 10:00)  �Ż� 0:1 ����(��������) ==> ��ȭ �غ��� ���ٰ� ��
10:00 ��õ�������׿�(����ö��): 3,950��
11:00 ȫ�뿪(2ȣ�� ȯ��)
11:30 ������Ա���
11:40 �߽�(ġŲ ����, ¥���, �� ): ������ �������
12:40 ����
13:00 �Ͱ�
13:20 ����
19:30 ����
20:30 ���� �������� �������� ������ ��ȭ��(���±԰� ��ȭ�ؼ� �� ���� �޶�� �ߴٰ� ��, �뱸������� ħ)
24:00 ��ħ
==============================================================================================================

- �� ����(2014.11.22) 
1. �ǳ�: 23�� 
2. �µ�: 45�� 
3. �¼�: 55��
-------------------------------------------------------------------------------------------------------

- �浿 ���� ���Ϸ� ��� ����[����: �����ʿ��� ��������]
1. �Ž�[���� ���]
2. �ȹ�(ū��)
3. ������1[���� ���]
4. ������2(����)
==============================================================================================================

������������������� 2014.11.17(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. �˻� ���� ����
==============================================================================================================

- �翺 �ڵ��� ����(14��) 
1. �翺 �ڵ��� ����(������ 6+ 16G) ����
1) ���Բ� LTE 42 �����(���� ��ȭ 300��, ����Ÿ: 750M), 24���� ����: �� ���ξ� �� 6���� 
==============================================================================================================

������������������� 2014.11.18(ȭ) �۾� ����������������
---> 07:30 ~ 18:30 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. �˻� ���� ����
==============================================================================================================

- ������ SM ����(22��)
1. �Ⱓ: 2015.01 ~ 12
2. ���: ����ſ� ��ó
3. �ܰ�: �� 500(�߽�, ���� ����)
4. SW������� ����
5. ��Ÿ:
 1) 12�� �߼� �������ٰ� ��
 2) ���� ����
==============================================================================================================

������������������� 2014.11.19(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. excel �ٿ�ε� ����
1) ���� ����: ���� Ȯ������ ������ ���İ� �ٸ��ϴ�.
==============================================================================================================
 
- Excel �ٿ�ε�
http://hiddra.blog.me/20116105384
POI �̿��� EXCEL �� ����Ÿ �ٿ�ε� ���� ==> http://ejaeyeol.blog.me/134259206
[JSP] POI Excel �ٿ�ε� ����  ==> http://my1over.blog.me/120162397685
[jsp] excel �ٿ�ε� ==> http://www.cyworld.com/bonoken/3954850
==============================================================================================================

- SW������� Ȯ��(22��)
1. SW ����ڽŰ� ==> https://www.sw.or.kr/join/j_login.jsp ==> tamario / hpxoaks12!@ (lvfndPs12!)
2. T) 02-2188-6980
3. ��� ���� ����: 2008-06-22 
--------------------------------------------------------------------------------------------------

- ������ 
1. ��� ��� ��������(��Ͻ�): 25,000��
2. ����Ʈ���������� ��°���(�߰� ��Ͻ�): �� 5,000�� 
3. ����Ʈ���� ����ڰ�°����ý���] ���ڹ��� ��û(�����) �� ���ڹ��� ����(���) ���  
http://blog.naver.com/kindz3/90177876056 
---------------------------------------------------------------------------------------------------------

- ��� ��� ��������
����Ʈ�������о��� ����� �����ް��� �ϴ� �ڴ� ���� �� ȣ �� �ϳ��� Ȯ�ε� ������ �����Ͽ��� �մϴ�.
1. ����Ʈ���� ������� ������ Ȯ���� �� �ִ� ����ó �Ǵ� �Ҽӻ簡 Ȯ���� �����Ģ ���� ��22ȣ ������ ������Ȯ�μ� ����
2. ����Ʈ���� ������� ������ Ȯ���� �� �ִ� �뿪��༭ ���� 
==============================================================================================================

������������������� 2014.11.20(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. excel �ٿ�ε� ����
1) ���� ����: ���� Ȯ������ ������ ���İ� �ٸ��ϴ�.
==============================================================================================================

- Defect ó��
No. 86 Test Center & State ȭ�鿡�� Tester ���� ����� ����ó���� �� ==> ó��
No. 87 Test Center & State > Reassign Test Center�� �������� ���� �ۿ� Tester�� �����Ǿ� ����.  ==> ����Ÿ ���� �ǽ�
==============================================================================================================

- ���� EXPORT ���� ����
���� EXPORT ���� ������ ���ؼ� �������� ����Ǵ� ���� ������ xls ���� xlsx�� �����Ͽ����ϴ�. 
���� �ҽ� : /com.samsung.element/src/main/java/com/samsung/element/beans/wrapper/ElementExcelView.java 
���� �׽�Ʈ ��� 3000��(ȣȯ�� App ����Ʈ Export) (���� POI �� ���� ���� �ð�) ���� ���� Ȯ�εǾ����ϴ�. (���� PC����)
- ���� : 10~15�� �ҿ�
- ���� : 2~3�� �ҿ�
==============================================================================================================

������������������� 2014.11.21(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. excel �ٿ�ε� ����
1) ���� ����: ���� Ȯ������ ������ ���İ� �ٸ��ϴ�.
==============================================================================================================

- �������� TEST
==============================================================================================================

������������������� 2014.11.22(��) �۾� ����������������
---> 11:00 ~ 18:00 -->

- �ָ�
07:00 ���(��ͼ� �౸ �� ��)
11:30 �����
11:00 SKT �������� SHOP(������������(��������) �ְ� ������ 6+ ���� ���̽� �޾� ��)
11:30 ���»���ΰ� => ��������(����) ���� ����[13����], ���� ���� ���� 2��[2����]
12:30 �Ͱ� 
12:50 �߽� 
14:30 ����
17:30 ���
17:50 ��õ�� ��������(�� ���� �ٶ� ����)
18:00 ���̼� �������(���� ����)
19:00 �Ͱ�
19:30 ���� ��ġ(������, ���� ���� ���� ����)
20:00 ���� 
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.23(��) �۾� ����������������
---> 11:00 ~ 18:00 

- �������౸
07:00 ���
07:20 �����뵿 ���� ������(642��)
08:10 �ű��ʵ��б�
08:20 ����(3����): ���� ����ȸ
11:20 ����
11:40 �߽�(�������: �̼� �� ���� 1��[��� �� ����): ���� ��
==> S��Ʈ �ŷ� ������ �Ϳ� ���� �ѹ��� �������� ������ ��
13:20 ����
14:30 �Ͱ�(���� �Ƶ� ���� �ͼ� ��� ����, ������ ������ ��ٰ� ��)
14:50 �p�� 
17:20 ���
18:30 ����
19:00 �̹�(�翺 TV ���� ���� �Ƶ� �� ���ٰ� ����)
24:00 ��ħ
==============================================================================================================

������������������� 2014.11.24(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country ==> More ��ư(More page ����) ����
==============================================================================================================

- ����  WITH ~AS ��
WITH������ VIEW��Ī�� �����ϰ� () �ȿ� VIEW������ �ۼ��ϰ� 
�ٷ� �Ʒ� SELECT�������� VIEWó�� ����� �� �ִ�.  
WITH TEMP1 AS (SELECT 'A' AS COL1, 'B' AS COL2 FROM DUAL),
TEMP2 AS (SELECT 'C' AS COL3, 'D' AS COL4 FROM DUAL),
TEMP3 AS (SELECT 'E' AS COL5, 'F' AS COL6 FROM DUAL)
SELECT COL1, COL2, COL3, COL4, COL5, COL6 
FROM TEMP1, TEMP2, TEMP3
;
==============================================================================================================

- JTREE ü���ӱ� ���� ī�� ��
1. ü��� ��û�϶�� ��
==============================================================================================================

- ������ 6+ ���̽� 
1. ������ 6 +  ����� ���̽� B Series, ����: 20,900�� ==> http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=630091681&GoodsSale=Y&jaehuid=200002673
2. ������ 6 ����� ���̽�, ����: 18,480�� ==> http://auction.kr/iBIP7mE
==============================================================================================================

- ���û
http://www.kma.go.kr/weather/main.jsp ==> tamario / hp��*1*1*
==============================================================================================================

- �츮����
https://www.wooribank.com ==> tamario / hp��*1*@
==============================================================================================================

������������������� 2014.11.25(ȭ) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More ��ư(More page ����) ����
==============================================================================================================

������������������� 2014.11.26(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country ==> More ��ư(More page ����) ����
/ passed_comp_app_status_tab.jsp 
/ passed_comp_app_status_service_country.jsp ==> Service Country
/ passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

������������������� 2014.11.27(��) �۾� ����������������
---> 07:30 ~ 20:00 ==> 

- SMART TV App Mgt Prj
- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More ��ư(More page ����) ����
/ passed_comp_app_status_tab.jsp 
/ passed_comp_app_status_service_country.jsp ==> Service Country
/ passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

������������������� 2014.11.28(��) �۾� ����������������
---> 07:30 ~ 18:30 ==> 

- SMART TV App Mgt Prj
- ȣȯ�� ��� ����
1. Passed Comp. App Status  
 1) Passed Comp. App Status_Service Country  ==> More ��ư(More page ����) ����
/passed_comp_app_status_tab.jsp 
/passed_comp_app_status_service_country.jsp ==> Service Country
/passed_comp_app_status_subsidiary.jsp  ==> Subsidiary
==============================================================================================================

- �޴� ���
1. �޴���: Passed Comp. App Status Service Country Excel �ٿ�ε�
2. �޴� URL: /Diamond/comp/assign/statistics/passed_comp_app_status_country/excellist
1. �޴���: Passed Comp. App Status Subsidiary Excel �ٿ�ε�
2. �޴� URL: /Diamond/comp/assign/statistics/passed_comp_app_status_subsidiary/excellist
1. �޴���: Comp. Project Status Excel �ٿ�ε�
2. �޴� URL: /Diamond/comp/assign/statistics/comp_project_status/excellist
==============================================================================================================

- ������
18:40 ���
20:50 �Ͱ�
21:00 ����
22:00 �̷¼� �ۼ�(���û)�ؼ� �����忡�� ����(hgong@nextel.co.kr)�� ����
23:10 �����(����ö)
24:00 �����͹̳� 
24:30 ��ӹ���(���� -> ����, 00:30, �ɾ߿��): ������
==============================================================================================================

������������������� 2014.11.29(��) �۾� ����������������
---> 07:30 ~ 18:30 ==> 

- ������2
03:00 ���� �ްԼ�
03:40 ���� �� �°����� �� ��(��簡 �� ����)
==> ���� �ʹ� ���� ��� ���� �ǿ�(�ٽô� ���� Ÿ�� �� ��)
04:30 ���� ����͹̳� ����
04:40 �ý�(�����͹̳� -> ������)
05:50 ������ ����
06:00 ��ħ
12:00 ���
12:20 �߽�
14:30 ����(�翺, ���� ������� ���� ��)
17:30 ū���� �湮 
18:00 ����
19:00 �̹�
23:00 ��ħ
==============================================================================================================
 
������������������� 2014.11.30(��) �۾� ����������������
---> 07:30 ~ 18:30 ==> 

- ����  
09:00 ��� 
09:00 ���� �غ�
10:30 GS ���� ��ȣ�� �湮(����, ������)
11:00 �Ͱ�
11:20 ���� ���� ����
11:40 ������ ����
12:20 ����(�翺, ���� ó�� ����) 
==> ���� �뵷 ����[���, ���� �ƹ���, ������ ����, �Ǽ��� ���(3����)] => �� 6���� ����(�����뿡 ����)
==> �û� ���� ���� ���� �Կ�(���⿡�� ���� �� ��)
12:50 ���� ����
13:20 �Ļ�
13:30 ������ ���� ����
13:50 �Ǽ��� ���, ������ ��� ���� ����
15:30 ����
18:30 ����
19:00 ������ ���
19:10 �ý�(������ -> �����͹̳�): ���뱸��
19:30 ����(���� -> ���뱸)
20:50 ���뱸��
21:25 KTX[���뱸�� -> ���￪[11.30([��)] 21:25, -> 340, ������]
==> ���� ���� ��è(���� �ڸ� ���ܸ��� �� ����)
==> ������ KTX�� �������� Ÿ�� ���� ��(��� ����)
23:25 ���￪ ���� 
23:35 �ý�(���￪ -> ������, 8,600��)
23:55 �Ͱ�
00:20 ��ħ  
==============================================================================================================

- ���� ���� �ο� @@@@
1. �ƹ���, ��Ӵ�
2. �¸� ����(�Ƶ�)
3. ���� �ƹ���
4. ���
5. ������ ����, ����
6. ���� ����
7. ���� ����, ����(�Ƶ� 2��)
8. ���� ����, ����(�Ƶ�)
0. ���� ���, ����
0. �Ǽ� ���
==> �� 19�� ����
==> ���� ��� �� 40����(��ȥ ���� 5���� ��) 
==============================================================================================================

- Passed Comp. App Status Tab ����
1. passed_comp_app_status_tab.jsp ���Ͽ���
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<spring:eval var="pageInfo" expression="(pageInfoLib).getPageInfo()" />
<sec:authentication property="principal.userMap['${pageInfo.site.sysId}']" var="user"/>

<script type="text/javascript"> 
	;(function() {
		CommUtils.useLog = false;
		var log = function() {
		CommUtils.log('passed_comp_app_status_tab.jsp ${param.tabId}', arguments);
	};
	 
	var body = null;
	$(document).ready(function() {
		body = $("#${param.tabId}");
		 
		$(body).find("[name='${param.tabId}_assign_service_country_tab']").removeClass("dp_none").show();   // 01. Service Country  Tab
		$(body).find("[name='${param.tabId}_assign_subsidiary_tab']").removeClass("dp_none").show();   //  02. Subsidiary Tab

		var tab = $(body).find("[name='${param.tabId}_assign_tab_ul']").find("li:not(.dp_none):eq(0)");
		$(tab).addClass("on");
	}); 
	})();
</script>

<!-- Page Contents Start -->
<section class="wrap_page"> 
<h1 class="tit_page">Passed Comp. App Status</h1><!-- //Page Title -->

<!-- Tab -->
<ul class="bd_bottom tab_sub top" style="margin-top:-25px;" name="${param.tabId}_assign_tab_ul">
<li class="dp_inBlock dp_none" style="display:none" name="${param.tabId}_assign_service_country_tab"><a href="#" onclick="void(0); 
return false;" class="no_underline text_center">Service Country</a></li> <!--// 01. Service Country Tab //-->
 <li class="dp_inBlock dp_none" style="display:none" name="${param.tabId}_assign_subsidiary_tab"><a href="#" onclick="void(0); 
 return false;" class="no_underline text_center">Subsidiary</a></li><!--// 02. Subsidiary Tab //-->
</ul>
<!-- //Tab --> 
 <!--  01. Service Country  -->
<%@ include file="/WEB-INF/view/sapphire/backoffice/compatibilityapp/verification/passed_comp_app_status_service_country.jsp"%>
<!-- //Service Country  -->

<!-- 02. Subsidiary -->
 <%@ include file="/WEB-INF/view/sapphire/backoffice/compatibilityapp/verification/passed_comp_app_status_subsidiary.jsp"%>
<!-- //Subsidiary --> 

</section>
==============================================================================================================
 
2. passed_comp_app_status_service_country.jsp ���Ͽ��� ==> ��ȸ ����(check box, combo box. select box)
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:eval var="pageInfo" expression="(pageInfoLib).getPageInfo()" />

<script type="text/javascript">
;(function(){
CommUtils.useLog = false;
var log = function() {
CommUtils.log('passed_comp_app_status_service_country.jsp ${param.tabId}', arguments);
};

var tabId = '${param.tabId}';
var tabName = '${param.tabName}';
var body = null;
var bodyTab = null;
var datatablesUi = null;
var compYearCmb = null;
var platformCmb = null;
var tierCmb = null;
var roundFrCmb = null;
var roundToCmb = null;
var signatureCmb = null;
var codeReviewCenterCmb =null;
var exceptYnRdo =  null;
var categoryChb = null;
var strCurrentTotal = 0;
var strRecordsTotal = 0;

$(document).ready(function() { 
body = $("#${param.tabId}");
bodyTab = $("#${param.tabId}_comp_app_status_service_country");

$(body).find("ul.tab_sub li a").click(function() {
if($(this).text() == 'Service Country') {    // Service Country Tab�� Ŭ���ϸ�
if(datatablesUi == null) { 
init();
initEvent();
initDatatablesUi();
} else {
doSearchFirstSrch();
}
}
});

var tab = $(body).find("[name='${param.tabId}_assign_tab_ul']").find("li.on:eq(0) a");
if( $(tab).text() == 'Service Country' ){
$(tab).trigger("click");
}
});

function init(){
var param = {};
param["currentTotal"] = 0;
param["optMoreCnt"] = "50";
param["strFirstSearch"] = "";

// 01. Year( Combo Box )[search]
compYearCmb = new selectBoxUi($(bodyTab).find("[name='${param.tabId}_compYearCmb']"));
compYearCmb.load(BackofficeCompCode.getCompYearList("${pageInfo.site.sysId}", "" , false , ""), "All");
compYearCmb.setSelectedValue("2015");

// 02 Platform( Combo Box: Multi )[search]
var platformData = BackofficeCompCode.getPlatformList("${pageInfo.site.sysId}", "" , false , "");
platformCmb = new backofficeMultSelectUi($(bodyTab).find("[name='${param.tabId}_platformCmb']"));
platformCmb.load(platformData,true);
platformCmb.setCheckedIndex(0);

// 03. Except( Radio Box )[search]
exceptYnRdo = new backofficeRadio($(bodyTab).find("[name='${param.tabId}_exceptYnRdo']") );
exceptYnRdo.addItem({"codeId" : "Y", "codeName" : "Yes"});
exceptYnRdo.addItem({"codeId" : "N", "codeName" : "No"});

 // 05. Signature( Combo Box: Multi )[search]
var sgntrData = selectCodeRe("${pageInfo.site.sysId}", "AP.SGT", false, "");
signatureCmb = new backofficeMultSelectUi($(bodyTab).find("[name='${param.tabId}_signatureCmb']"));
signatureCmb.load(sgntrData,true);
signatureCmb.setCheckedIndex(0);

// 06. roundFr( Check Box )[search]
var roundFrData = BackofficeCompDfctObj.getRoundCmbListRe("${pageInfo.site.sysId}", "" , false , "");
roundFrCmb =  new selectBoxUi($(bodyTab).find("[name='${param.tabId}_roundFrCmb']"));
roundFrCmb.load(roundFrData, "All");
roundFrCmb.setSelectedValue("");

var roundToData = BackofficeCompDfctObj.getRoundCmbListRe("${pageInfo.site.sysId}", "" , false , "");
roundToCmb =  new selectBoxUi($(bodyTab).find("[name='${param.tabId}_roundToCmb']"));
roundToCmb.load(roundToData, "All");
roundToCmb.setSelectedValue("");

// 07. Code Review Center( Combo Box )[search]
var cmCntrParam = {};
cmCntrParam["cntrTypCd"] = "CM.CNTRT.CCR";  // CM.CNTRT.CCR[Comp. Code Review]
var codeReviewCenterData = BackofficeCode.selectCmCntr("${pageInfo.site.sysId}", cmCntrParam, false, "");
codeReviewCenterData = BackofficeUtil.conversionByCodeId(codeReviewCenterData, "CNTR_ID", "CNTR_NM");
codeReviewCenterCmb = new selectBoxUi($(bodyTab).find("[name='${param.tabId}_codeReviewCenterCmb']"));
codeReviewCenterCmb.load(codeReviewCenterData, "All");
codeReviewCenterCmb.setSelectedValue("");

// 09. category( Check Box )[search]
categoryChb = new Element.List($(bodyTab).find('#categoryChb'), {
useCheckBox: true,
useMultiSelect: true,
direction: 'right',
type: 'checkbox',
onCreated: function(id, text, tag, li) {
li.css({
'padding-right': '20px'
});
}
});

categoryChb.addItem('0', 'All');
categoryChb.addItem('1000000019', 'Videos');
categoryChb.addItem('1000000020', 'Sports');
categoryChb.addItem('1000000021', 'Game');
categoryChb.addItem('1000000022', 'Lifestyle');
categoryChb.addItem('1000000023', 'Information');
}

function initEvent(){
//alert("[/passed_comp_app_status_service_country.jsp] [initEvent()] ==> [btnSearch_click]" );

$(bodyTab).find("button[name='btnSearch']").click(function(){// 00. Search Click()
doSearch();
});

$(bodyTab).find("a[name='reset']").click(function(){
doReset();
}); 
}

function initDatatablesUi() { 
 showLoading();
 var params = setParams(0);

datatablesUi = new DatatablesUi($(bodyTab).find('#${param.tabId}_comp_app_status_service_country_table'), {
dataId: '${pageInfo.menu.menuId}-table101' // �ʵ弼�� �� ����/������ �� �ʿ� (��ü ȭ�鿡�� ������ ������ �����ؾ� ��. ��) pageId + 'table1')
, revision: 0// �ʵ弼���ϸ� ����� columnDefs ������ �ҷ����Ƿ� revision�� �÷��� ����� ��...
, param: params
, bAutoWidth: false
, bSort: false
, processing: false
, destroy: true
, dataURL: '/${pageInfo.site.sysId}/comp/statistics/passedCompApptStatusCountrySearch.json'
, columnDefs: [
      {
      targets: 0   // 01. Country Column
      , data: 'CNTRY_ENG_NM'
      , title: 'Country'
      , name: 'Country'
      , width: '450px'
      }
      , {
      targets: 1 // 02. Platform Column
      , data: 'PLATFORM'
      , title: 'Platform'
      , name: 'Platform'
      , width: '250px'
      }
      , {
       targets: 2// 03. S1 Passed Column[colspan]
      , data: 'S1_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S1 Passed'
   , width: '150px'
   , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 3// 04. S1 App Column
      , data: 'S1_APP'
      , title: 'App'
      , name: 'S1 App'
     , width: '150px'
    , createdCell: function ( td, cellData, rowData, row, col ) {
    $(td).attr('align', 'center');
    }
      }
      , {
      targets: 4// 05. S2 Passed Column
      , data: 'S2_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S2 Passed'
    , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 5// 06. S2 App Column
      , data: 'S2_APP'
      , title: 'App'
      , name: 'S2 App'
     , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 6// 07. S3 Passed Column
      , data: 'S3_PASSED_VIEW'
      , title: 'Passed'
      , name: 'S3 Passed'
    , render: function ( cellData, type, rowData ) {
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 7// 08. S3 App Column
      , data: 'S3_APP'
      , title: 'App'
      , name: 'S3 App'
      , createdCell: function ( td, cellData, rowData, row, col ) {
      $(td).attr('align', 'center');
      }
       }
      , {
      targets: 8// 09. Total Passed Column
      , data: 'TOTAL_PASSED_VIEW'
      , title: 'Passed'
      , name: 'Total Passed'
    , render: function ( cellData, type, rowData ) {1
   return cellData.format(1);
   }
      , createdCell: function ( td, cellData, rowData, row, col ) {
   $(td).attr('align', 'center');
   }
      }
      , {
      targets: 9// 10. Total App Column
      , data: 'TOTAL_APP'
      , title: 'App'
      , name: 'Total App'
     , createdCell: function ( td, cellData, rowData, row, col ) {
     $(td).attr('align', 'center');
     }
      }
      ]
, onPreXhr: function() {
showLoading();
}
, onLoadFail: function() {// �ε� ���н� �ݹ�
hideLoading();
}
, onLoadComplete: function(response) {  // �ε� ������ �ݹ�
hideLoading();

if (response.result == 'ok') {
$(bodyTab).find('#spanTotalCnt').text(response.recordsTotal);
strRecordsTotal = response.recordsTotal;
 
if(response.currentTotal == null  response.currentTotal=="undefined") {
strCurrentTotal = 0;
} else {
strCurrentTotal = response.currentTotal;
}
var param = datatablesUi.getParam();
$(param).attr("currentTotal", strCurrentTotal);
$(param).attr("recordsTotal", response.recordsTotal);
//alert("[/passed_comp_app_status_service_country.jsp] [initDatatablesUi()] [onLoadComplete()] [onLoadComplete_��ȸ Done] 
==> [[strCurrentTotal]"+ strCurrentTotal +"[response.recordsTotal]"+ response.recordsTotal );
datatablesUi.setParam(param);

} else {
$(bodyTab).find('#spanTotalCnt').text('0');
alert('Data load failure!');
}
}
, "drawCallback": function( settings ) {// draw �ݹ�
var table = $(bodyTab).find('#${param.tabId}-table'); 
 /* $(bodyTab).find('tbody tr').each(function(i, obj){
for (var i=0; i<7; i++) {
$(obj).find('td').last().remove();
}
}); */
},
onClickBtnMore: function(e) {// onClickBtnMore Click 
if( eval($(datatablesUi.getParam()).attr("currentTotal")) < eval($(datatablesUi.getParam()).attr("recordsTotal")) ){
var param = datatablesUi.getParam();
$(param).attr("optMoreCnt", datatablesUi.getLengthMenuValue() );
//alert("[/passed_comp_app_status_country.jsp] [initDatatablesUi()] [onClickBtnMore()] ==> [optMoreCnt]"+ 
datatablesUi.getLengthMenuValue() +"[currentTotal]"+ eval($(datatablesUi.getParam()).attr("currentTotal")) );
datatablesUi.setParam(param);
datatablesUi.movePage(0);
}else{
alert("No more data is available");
return false;
}
}
, lengthMenu: [
[50, 100, 200],
['50 View', '100 View', '200 View']
]
, useExport: false// Export ��� (flash)
, useColumnSetting: true// �÷� ���� ��� ��뿩��
, useInfinitePaging: true
, onChangeLengthMenu: function(val) {}
, useInfinitePaging: true, // �Ʒ��� ��� �߰��Ǵ� ����¡ ���
});
}

function doSearch(){// 00. Search Click() 
datatablesUi.clearParam();
datatablesUi.clearSearchParam();

var params = setParams(1);
datatablesUi.setParam(params);
datatablesUi.reload();
}

function doSearchFirstSrch(){// 00. Search(First Search) Click()
datatablesUi.clearParam();
datatablesUi.clearSearchParam();

var params = setParams(0);
datatablesUi.setParam(params);
datatablesUi.reload();
}

function setParams(intNo) { 
var param = {};
if(strCurrentTotal == null  strCurrentTotal == "null"  strCurrentTotal =="undefined") {
strCurrentTotal = 0;
}
 if( intNo == 1  intNo == 2 ) {  //  doSearch, Excel �̸�
param["strFirstSearch"] = "1";
} else {// initDatatablesUi  �̸�
param["strFirstSearch"] = "";
}
param["APP_ID"] = "test";
param["currentTotal"] = strCurrentTotal;
param["optMoreCnt"] = "50";

 // 01. Year( Combo Box )[search]
 param["compYear"] = compYearCmb.selectedValue(); // comp year
// 02. Platform( Combo Box: Multi )[search]
 var platformArr = platformCmb.getCheckedItem();
for( var i=0; i<platformArr.length; i++ ){
param["platformArr["+i+"]"] = platformArr[i];
}
// 03. Except( Radio Box)[search]
param["exceptYn"] = exceptYnRdo.getCheckedItem();
// 04. Comp.Type YN( Radio Box)[search]
//param["compTypeYn"] = compTypeRdo.getCheckedItem();
// 05. Signature( Combo Box: Multi )[search]
var signatureArr = signatureCmb.getCheckedItem();
for( var i=0; i<signatureArr.length; i++ ){
param["signatureArr["+i+"]"] = signatureArr[i];
}
// 06. Round( Combo Box )[search]
if (roundFrCmb.selectedValue() == 'All'  roundToCmb.selectedValue() =='All') {
param["roundFr"] = null;
param["roundTo"] = null;
} else {
param["roundFr"] = roundFrCmb.selectedValue();
param["roundTo"] = roundToCmb.selectedValue();
}
// 07. Code Review Center( Combo Box )[search]
param["codeReviewCenter"] = codeReviewCenterCmb.selectedValue();
// 08. Service Country( CheckBox )[search]
var serviceCountryChbAll_YN = null;
$("input[name='serviceCountryChbAll']:checked", body).each(function(index){
serviceCountryChbAll_YN = "Y";
});
if (serviceCountryChbAll_YN =='Y') {  // all �̸�
} else {
var chlen = $("input[name='serviceCountryChb']:checkbox:checked",body).length;
$("input[name='serviceCountryChb']:checked", body).each(function(index){
for( var i=0; i<chlen; i++ ){
param["serviceCountryArr["+i+"]"] = $(bodyTab).find("[name='serviceCountryChb']")[i].value;
}
});
}
// 09. category( Check Box )[search]
var categoryArr = categoryChb.getSelectedIdArray();
for( var i=0; i<categoryArr.length; i++ ){ 
param["categoryArr["+i+"]"] = categoryArr[i];
}

return param;
}

function doReset(){// 00. doReset Click()
//compYearCmb.setSelectedValue("");// 01. Year( Combo Box )[search]
platformCmb.setCheckedIndex(0);// 02. Platform( Combo Box: Multi )[search]
$(body).find("[name='${param.tabId}_exceptYnRdo']").prop('checked', false);// 03. Except( Radio Box)[search]
//$(body).find("[name='${param.tabId}_compTypeRdo']").prop('checked', false);// 04. Comp.Type YN( Radio Box)[search]
signatureCmb.setCheckedIndex(0);// 05. Signature( Combo Box: Multi )[search]
roundFrCmb.setSelectedValue("");// 06. Round( Combo Box )[search]
roundToCmb.setSelectedValue("");// 06. Round( Combo Box )[search]
codeReviewCenterCmb.setSelectedValue("");// 07. Code Review Center( Combo Box )[search]
$(body).find("[name='serviceCountryChb']").prop('checked', false);// 08. Service Country( CheckBox )[search]
categoryChb.clearSelected();// 09. category( Check Box )[search]
}

function selectCodeRe(sysId, upperCodeId, async, fnCallBack){
var result = "";
$.ajax({
type : "POST",
url : "/" + sysId + "/comp/commCode/selectCommCode/data.json",
dataType :'json',
data : {"upperCodeId" : upperCodeId, "isDelete" : 0},
async : async,
success : function(response){
if(async) {
if( $.isFunction(fnCallBack) )fnCallBack(response.dataList);
}else{
result = response.dataList;
}
} ,
error:function (request, err, ex) {
hideLoading();
alert(err + " ===> " + ex);
}
});
return result;
}

})();
</script>
 
<!-- Service Country -->
<section id="${param.tabId}_comp_app_status_service_country" class="tab_subcon dp_none">
<section class="tab_subcon clear">
 <h2 class="vi_out">Service Country</h2>
 <!-- search -->
 <section class="searchbox">
<h2 class="vi_out">Search</h2>
<ul>
<!--// Year //-->
<li class="col1">
<span class="tit_search">Comp. Year</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_compYearCmb"></div>
<!-- //select -->
</li>
<!--// Year ///-->

<!--// Platform //-->
<li class="col1">
<span class="tit_search">Platform</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_platformCmb"></div>
<!-- //select -->
</li>
<!--// Platform ///-->

 <!--// Except //-->
<li class="col1">
<span class="tit_search">Except </span>
<ul class="dp_inBlock" name="${param.tabId}_exceptYnRdo"></ul>
</li>
<!--// Except ///-->

<!--// Comp.Type //-->
<%-- <li class="col1">
<span class="tit_search">Comp.Type</span>
<ul class="dp_inBlock" name="${param.tabId}_compTypeRdo"></ul>
</li> --%>
<!--// Comp.Type ///-->

<!-- Signature -->
<li class="col1">
<span class="tit_search">Signature</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_signatureCmb"></div>
<!-- //select -->
</li>
<!--// Signature ///-->

<!--// Round //-->
<li class="col1">
<span class="tit_search">App Round</span>
<!-- select -->
<div class="select smr" name="${param.tabId}_roundFrCmb"></div>  
~ <div class="select smr" name="${param.tabId}_roundToCmb"></div>
<!-- //select -->
</li>
<!--// Round ///-->

<!-- Code Review Center -->
<li class="col1">
<span class="tit_search">Code Review Center</span>
<!-- select -->
<div class="select wide" name="${param.tabId}_codeReviewCenterCmb"></div>
<!-- //select -->
</li>
</ul>

<!-- hidden area --->
<ul class="con_search_more" style="display:none;">
 <!-- <ul class="con_search_more"  > -->
 <!--// Service Country //-->
<li class="col3">
<span class="tit_search" style="display:table-cell; vertical-align:top">Service Country</span>
<div class="dp_cell" style="padding-left:4px">
<label class="con_mr_longer dp_inBlock con_mb_short"><input type="checkbox"  name="serviceCountryChbAll" value="0" >All</label>

<label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.AF" >Africa</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.CIS" >CIS</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.CH" >China</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.EU" >EU</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="Global" >Global</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SA" >Latin America</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.ME" >Middle East</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.NA" >North America</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SEA" >South East Asia</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.KR" >South Korea</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="CM.SBGRP.SWA" >South West Asia</label>
                    <label class="con_mr_longer dp_inBlock con_mb_short" style="width:150px"><input type="checkbox"  name="serviceCountryChb"  value="User" >User</label>
</div>
</li>
<!--// Service Country ///-->

<!--// Category //-->
<li class="col2">
<span class="tit_search">Category</span>
<ul id="categoryChb" style="display:inline-block;vertical-align:middle;" checked></ul>
</li>
 <!--// Category ///-->
</ul>

<!-- //hidden area --->
<!-- buttons -->
<div class="btn_area">
<button name="btnSearch" class="btn btn_default txt_bold"><span class="icon_s icon_search_smr"></span>Search</button>
<!-- <button onClick="void(0); return false;" class="btn btn_default txt_bold" name="btnSearch" ><span class="icon_s icon_search_smr"></span>Search</button> -->
<a href="#" name="reset" onclick="void(0); return false;" class="dp_inBlock txt_bold con_ml_short" style="vertical-align:middle;">Reset</a>
</div>
<!-- //buttons -->
<!-- show/hide -->
<div class="btn_showHide">
<span class="inBlock" style="vertical-align:middle;">Detailed Search</span> <button class="icon_s icon_arr_down btn_more_search">More/Close</button>
</div>
<!-- //show/hide -->
</section>
<!-- //search -->

<section class="con_mt_longer">
<h2 class="vi_out">Results</h2>
<!-- Buttons -->
<div class="btn_area" style="padding-bottom: 5px;">
<div class="list_num"><span class="icon_s icon_list"></span> <span id="spanTotalCnt">0</span> Apps</div>
<button name="btn_Export" class="btn btn_default txt_bold"><span class="icon_s icon_export"></span>Export</button>
</div>
<!-- //Buttons -->

<!-- List -->
<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
<table id="${param.tabId}_comp_app_status_service_country_table" class="tb_list">
<thead>
<tr>
<th rowspan="2" style="width:400px">Country</th><!--// 01. Country Column  style="width:800px"//-->
<th rowspan="2" style="width:280px">Platform</th><!--// 02. Platform Column //-->
<th colspan="2"  style="width:280px">S1</th><!--// 03. S1 Passed Column //-->
<th style="display: none; width:280p"></th><!--// 04. S1 App Column //-->
 <th colspan="2"  style="width:280px">S2</th><!--// 05. S2 Passed Column //-->
<th style="display: none;; width:280p"></th><!--// 06. S2 App Column //-->
 <th colspan="2"  style="width:280px">S3</th><!--// 07. S3 Passed Column //-->
<th style="display: none;; width:280p"></th><!--// 08. S3 App Column //-->
<th colspan="2"  style="width:280px">Total</th><!--// 09. Total Passe Column //-->
<th style="display: none;; width:300p"></th> <!--// 10. Total App Column //-->
</tr>
<tr>
<th style="display: none;"></th><!--// 01. Country Column//-->
<th style="display: none;"></th><!--// 02. Platform Column //-->
<th style="">Passed</th><!--// 03. S1 Passed Column //-->
<th style="">App</th><!--// 04. S1 App Column //-->
<th style="">Passed</th><!--// 05. S2 Passed Column //-->
<th style="">App</th> <!--// 06. S2 App Column //-->
<th style="">Passed</th><!--// 07. S3 Passed Column //-->
<th style="">App</th><!--// 08. S3 App Column //-->
<th style="">Passed</th> <!--// 09. Total Passe Column //-->
<th style="">App</th><!--// 10. Total App Column //-->
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
<th style="display: none;"></th>
</tr>
</thead>
</table>
</div>
<!-- //List -->
</section>
 </section>
 </section>
<!-- Service Country --> 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������