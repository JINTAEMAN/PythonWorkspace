

�����������������������������������������������������������
+---------------------------------------------// Memo(2012.09) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2012.09.01(��) �۾� ����������������
---> 06:40 ~18:00 

09:30 ��� 
09:10 ������ �� 
11:00 ���̿�(����)�� ȭ����ȭ(���� ���� ���� ��) 
20:00 ���� 
20:50 ���̿�(����)�� ȭ����ȭ 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.02(��) �۾� ����������������
---> 09:00 ~ 18:00 

�������౸
06:00 ��� 
06:35 �ź�õ ������(�������� ��) 
07:00 �ű��ʵ��б� 
07:10 ��� ��� �׹��� ��ü 
07:50 ����(7:6 ��): 1 AS(����Ʈ ��) 
11:00 ���� 
11:40 �ѿ� ������(���������� ��) 
12:50 ����  
13:50 �Ͱ�(���� Ÿ�� ��) 
17:20 ����� ��� 
18:40 �庸��(GS ��Ʈ) 
19:00 ��༭(����, ����) ��ĵ �۾� 
20:00 ���� 
21:00 ���̿�(����)�� ȭ����ȭ(�Ѿ�� ��ȭ��ȭ(���̿��� ���� ������ �� �Ѵٰ� ��) 
22:30 ���� 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.03(��) �۾� ����������������
---> 06:45 ~ 19:00 --> ������ �ް�(ȣ�� ����: 1����) 

- IOSP(/oauth2) Prj
- Auth OGG ����ȭ�� ���� DB �ҽ� ���� 
1. TransactionStatus status = transactionManager.getTransaction(defaultTxDefinition): 

//MERGE_20120903 
TransactionStatus status = transactionManager.getTransaction(defaultTxDefinition): 

//MERGE_20120822 
USER_EXIST_REGION region =  socialClient.getExistRegionCode(userID, xOspAppId): 
==============================================================================================================

- [���Ϻ���] - Auth, License  
- �۾� ����  
1. Auth OGG ����ȭ�� ���� DB �ҽ� ����[OSP2.0 ���� ����_20120819.xls](������: 5%)     
  1) OSP2.0 �ҽ� �м� 

�̻��Դϴ�. 
==============================================================================================================

- �λ� ��Ÿ(��ȭ��) 
1. ����ó(011-9032-0) 
2. �ֹ�(�λ� 1kg: 7�� 3õ��, �λ����: ) 
-------------------------------------------------------------------------------------------------------- 

- �浿���� ���ͳݻ���ȸ 
http://internetkyungdong.or.kr/shoppingmall/shop/item.php?it_id=1175479734 
==============================================================================================================

- SK��ī 
1. http://www.encar.com, tamario/s*j**8*1 
==============================================================================================================

������������������� 2012.09.04(ȭ) �۾� ����������������
---> 06:40 ~ 20:00 --> �ź�(���̿�) ���� ��� ���� ��� 

- IOSP(/oauth2) Prj
- EU Cloud STG#2 ���� Ȯ�� 
1. EU Cloud(�ű� ����) 
Ext - eu.api.samsungosp.com(54.247.179.87) 
Int - eu.api.samsungosp.net(54.247.179.87) 
2. US IDC(��� ��) 
def authEndpoint = 'http://auth.samsungosp.com' //20. US IDC External  
==============================================================================================================

- US Cloud STG#2 ���� Ȯ�� 
1. US Cloud(�ű� ����) 
def authEndpoint = 'http://api.samsungosp.com' //25. US Cloud External 
def profileEndpoint = 'http://api.samsungosp.com'  
==============================================================================================================

������������������� 2012.09.05(��) �۾� ����������������
---> 06:40 ~ 20:00 --> �ź�(���̿�)�� ȭ����ȭ ���� 

- IOSP(/oauth2) Prj
- Stg1 CN ��� 
1. cn.auth.samsungosp.com: 122.248.232.129 
03. Stg1_CN_IDC(tomcat)_03   
27.106.206.97  10003 
-------------------------------------------------------------------------------------------------------- 

- IOSP2.0  STG#1   
01. Stg1_EU_IDC    10001 176.34.99.254 
02. Stg1_EU_Cloud 10002, 176.34.99.237 
03. Stg1_US_IDC  10003  184.169.145.113 
04. Stg1_US_Cloud 10004, 184.73.161.211 
05. Stg1_US_Cloud(license) 1005 
06. Stg1_CN_IDC  10006, 122.248.232.129 
-------------------------------------------------------------------------------------------------------- 

00. [����_HUB] Stg1, Dev, DB, Funk 
 50.16.215.98:70 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-account  
06. Stg1_CN_IDC(tomc)_06 
 122.248.232.129:70, 10006  ==> ����� �̸�(U), Ű(K): auth/iosp-dev-account  
==============================================================================================================

- Stg1 ���� start ���� 
1. ����: SEVERE: Error starting endpoint 
java.net.BindException: Address already in use <null>:8080 
2. �ذ�å 
auth@ec2-122-248-232-129:/iosp/comp/auth/configuration$ ps -ef  grep auth 
root     29122 18137  0 06:44 ?        00:00:00 /usr/sbin/rotatelogs /iosp/comp/auth/logs/auth-error_log.%y%m%d 86400 
root     29131 18137  0 06:44 ?        00:00:00 /usr/sbin/rotatelogs /iosp/comp/auth/logs/auth-access_log.%y%m%d 86400 
root     32083   586  0 10:21 ?        00:00:00 sshd: auth [priv]    
auth     32094 32083  0 10:21 ?        00:00:00 sshd: auth@pts/0     
auth     32095 32094  0 10:21 pts/0    00:00:00 -bash 
auth     32152     1 30 10:22 pts/0    00:00:23 /iosp/jdk/bin/java -Djava.util.logging.config.file=/iosp/comp/auth/conf/logging.properties 
-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Xms512m -Xmx512m -Dosp.server.type=stg  
-Dcomponent.name=auth -Dosp.home.dir=/iosp -Dosp.center.countrycode=CN-C -Dsf.repository.type=DB -Dosp.region.ou=gc  
-Dtangosol.coherence.site=DevSite -Dtangosol.coherence.localport=40005 -Dtangosol.coherence.localport.adjust=true  
-Dtangosol.coherence.distributed.localstorage=false -Dtangosol.coherence.cacheconfig=/iosp/coherence/config/osp2_cache_config.xml 
-Dtangosol.coherence.override=/iosp/coherence/config/osp2_dev_amazon_override_wkalist.xml  
-Dtangosol.coherence.mode=prod -Djava.endorsed.dirs=/iosp/tomcat/endorsed -classpath /iosp/tomcat/bin/bootstrap.jar  
-Dcatalina.base=/iosp/comp/auth -Dcatalina.home=/iosp/tomcat -Djava.io.tmpdir=/iosp/comp/auth/temp org.apache.catalina.startup.Bootstrap start  
auth@ec2-122-248-232-129:/iosp/comp/auth/configuration$ kill -9 32152 
auth@ec2-122-248-232-129:/iosp/comp/auth/configuration$ ps -ef  grep auth  
-------------------------------------------------------------------------------------------------------- 

- Stg1 ���� start ����2 
1. ����: SEVERE: Error starting endpoint 
java.net.BindException: Address already in use <null>:8080 
2. �ذ�å 
Sep 5, 2012 10:41:06 AM org.apache.coyote.http11.Http11Protocol start 
INFO: Starting Coyote HTTP/1.1 on http-8080 
Sep 5, 2012 10:41:06 AM org.apache.jk.common.ChannelSocket init 
INFO: Port busy 8009 java.net.BindException: Address already in use 
Sep 5, 2012 10:41:06 AM org.apache.jk.common.ChannelSocket init 
SEVERE: Can't find free port 8009 8009 
Sep 5, 2012 10:41:06 AM org.apache.jk.server.JkMain start 
INFO: Jk running ID=0 time=0/10  config=null 
Sep 5, 2012 10:41:06 AM org.apache.catalina.startup.Catalina start 
INFO: Server startup in 13596 ms 
---------------------------------------------------------------- 

- Stg1 ���� start ����3 
1. ����:  
05-Sep-2012 10:45:01 org.apache.coyote.http11.Http11Protocol start 
INFO: Starting Coyote HTTP/1.1 on http-8080 
05-Sep-2012 10:45:01 org.apache.catalina.startup.Catalina start 
INFO: Server startup in 13723 ms 
2. �ذ�å 
~$  ./startup.sh  ==> ���� 2�� ���� ����(ps -ef  grep auth ���� ���°� 2�� �� �ִ��� Ȯ���� ��) 
==============================================================================================================

- �ְ� ȸ��(10:00 ~10:30) 
1. Stg1 CN ���(auth, licnese)(�̹��ֱ���) 
2. Sta2 CN ���(auth, licnese) 
3. Sta2 Cloud(EU(licnese), US(auth, licnese) ��� Ȯ�� 
4. PRD CN ���(auth, licnese) 
5. ���� ����S 
 1) OSP2.0. ���� ���� ���� 
 2) CR Merg 
 3) OSP1.0 ���� ����(CR�̿�) 
6. ����: ��ü 9�� 28��(��)���� ������ 
==============================================================================================================

������������������� 2012.09.06(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN ��� 
1. cn.auth.samsungosp.com: 122.248.232.129 
06. Stg1_CN_IDC(tomc)_06 
 122.248.232.129, 10006 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-auth 
07. Stg1_CN_IDC(tomc)_07(license) 
 122.248.232.129, 10007 ==>  ����� �̸�(U), Ű(K): license/iosp-dev-license 

1. TA�� ������ ������� CN IDC�� ���ٴ� 09.05(��)�� ���� �޾Ҵٰ� �� 
2. TA������ CN IDC���� ��� ���� ���μ����� �����Ϸ��� �����Ϻ��� �����ϴٰ� �� 
==============================================================================================================

- Stg1 ���� @@@@ 
00. [����_HUB] Stg1, Dev, DB, Funk 
 50.16.215.98:70 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-auth 
11. Stg1_EU_IDC(tomc) 
 122.248.232.129:70, 10011  ==> ����� �̸�(U), Ű(K): auth/iosp-dev-auth 
13. Stg1_US_IDC(tomc)[������] 
176.34.99.254:70, 10013 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-auth 
14. Stg1_US_Cloud(tomc) 
184.73.161.211:70, 100014 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-auth 
16. Stg1_CN_IDC(tomc) 
122.248.232.129:70, 10016 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-account  
-------------------------------------------------------------------------------------------------------- 

- Stg2 ���� @@@@ 
20. [����_HUB] Stg2 
 54.247.161.217:70 ==> ����� �̸�(U), Ű(K): account/iosp-dev-account 
21. Stg2_EU_IDC(tomc) 
 54.247.167.97:70, 10021 ==> ����� �̸�(U), Ű(K): license/iosp-dev-account 
22. Stg2_EU_Cloud(tomc)(license) ===> ���� 
 54.247.167.1149:70, 10022 ==> ����� �̸�(U), Ű(K): license/iosp-dev-account 
23. Stg2_US_IDC(tomc)[������] 
 184.169.141.194:70, 10023 ==> ����� �̸�(U), Ű(K): license/iosp-dev-account 
24. Stg2_US_Cloud(tomc) 
 174.129.178.2489:70, 10024 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-account 
26. Stg2_CN_IDC(tomc) 
 46.137.214.241:70, 10026 ==> ����� �̸�(U), Ű(K): license/iosp-dev-account  
-------------------------------------------------------------------------------------------------------- 

- PRD ���� @@@@ 
90. [����] PRD_DB(���� ��� ����) 
 54.247.161.217:70 ==> ����� �̸�(U), Ű(K): account/iosp-dev-account 
91. [����] PRD(cniosppro01) 
 109.10.162.143:22 ==> Pasword���: tamario.jin/!iosp0000 
00. DB PRD(CNIOSP1) -->109.10.164.141:1521 
127.0.0.1, 9001 ==> CNIOSP1: SOC/#soc345!, WSOC/#wsoc789#! 
92. [����] PRD(cniosppro02) 
 109.10.162.144:22 ==> Pasword���: tamario.jin/!iosp0000 
00. DB PRD(CNIOSP1) -->109.10.164.141:1521 
127.0.0.1, 9002 ==> CNIOSP1: SOC/#soc345!, WSOC/#wsoc789#! 

- �߱�IDC, DB ���� ����(PRD) 
1. �߱�IDC Oracle #1 ==> CNIOSP1: 109.10.164.141:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
2. �߱�IDC Oracle #2 ==> CNIOSP2: 109.10.164.142:1521  ===> ���� ��� ���� 
SOC/#soc345!, WSOC/#wsoc789#!  
==============================================================================================================

- URL_TEST(CN_IDC) ���  
1. WAS ���� ���� 
auth@ec2-122-248-232-129:/iosp/comp/auth/logs$ ls -al 
-rw-rw---- 1 auth account      0 2012-09-05 05:29 tomcat_access.2012-09-05.log 
-rw-rw---- 1 auth account    845 2012-09-06 04:30 tomcat_access.2012-09-06.log  @@@===> �ֽ� ���� Ȯ�� 
auth@ec2-122-248-232-129:/iosp/comp/auth/logs$ tail -f /iosp/comp/auth/logs/tomcat_access.2012-09-06.log  
[06/Sep/2012:04:12:11 +0000] 127.0.0.1 0.002 - 0 /auth/ 
2. ��������� URL ���� 
1) URL: http://cn.auth.samsungosp.com/auth/TEST_JIN_01  @@@===> ���� ħ 
3. WAS �������� Ȯ�� 
[06/Sep/2012:04:22:07 +0000] 127.0.0.1 0.002 - 0 /auth/TEST_JIN  @@@===>  ������(URL�� ��Ȯ�� ������ �ľǵ�) 
==============================================================================================================

[���Ϻ���] - Auth, License  
- 2012�� 9�� 6��  
- �۾� ����  
1. Stg1 CN ��� 
 1)  Stg1 CN ���(auth)(������: 70%) 
 2) Stg1 CN ���(licnese)(������: 40%)  
2. ����OSP STG#2 CN-IDC ���� Ȯ��(������: 100%)   
�̻��Դϴ�. 
==============================================================================================================

- �ؿܽ�ī�� 
http://usimstore.com/Html/Goods/GoodsDetail.asp?intNum=83&intPage=&strCategory_Code=1049510004 
http://blog.naver.com/usimkorea?Redirect=Log&logNo=20157082478 
==============================================================================================================

������������������� 2012.09.07(��) �۾� ����������������
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN ��� 
1. cn.auth.samsungosp.com: 122.248.232.129 
06. Stg1_CN_IDC(tomc)_06 
122.248.232.129, 10006 ==> ����� �̸�(U), Ű(K): auth/iosp-dev-account 
07. Stg1_CN_IDC(tomc)_07(license) 
122.248.232.129, 10007 ==>  ����� �̸�(U), Ű(K): license/iosp-dev-license 

1. TA�� ������ ������� CN IDC�� ���ٴ� 09.05(��)�� ���� �޾Ҵٰ� �� 
2. TA������ CN IDC���� ��� ���� ���μ����� �����Ϸ��� �����Ϻ��� �����ϴٰ� �� 
==============================================================================================================

- PRD CN_IDC ���  
91. [����] PRD(cniosppro01) 
109.10.162.143:22 ==> tamario.jin/!iosp0000  
92. [����] PRD(cniosppro01) 
109.10.162.144:22 ==> tamario.jin/!iosp0000 
-------------------------------------------------------------------------------------------------------- 

- �߱�IDC, DB ���� ����(PRD) 
1. �߱�IDC Oracle #1 ==> CNIOSP1: 109.10.164.141:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
2. �߱�IDC Oracle #2 ==> CNIOSP2: 109.10.164.142:1521  ===> ���� ��� ���� 
SOC/#soc345!, WSOC/#wsoc789#!  
==============================================================================================================

������������������� 2012.09.08(��) �۾� ����������������
---> 06:40 ~18:00 

05:30 ��� 
06:10 �ź�õ ������(�������� ��): �ٶ� ���� �� 
06:30 �ű��ʵ��б� 
06:50 ������(3:0 ��) 
07:40 ���� 
08:00 ����(ȭ���Ĵ�: �ѻ�� ��ȸ����� ��) 
09:30 ���� 
10:10 �Ż翪 1�� �ⱸ(�Ӹ�, ��ȯ ����) 
10:20 ���� ����(��� K5 ��Ʈ ��(4���� ��)) 
11:00 �庸��(���� �ϳ��� ��Ʈ(������): 359,689��) - �� �ʹ� ���� ��(���� ���� ����) 
12:00 ���� ���(�� ���� ����) 
15:20 ��� ����(�����Ͽ콺: �泲 ���ֽ� ���� ���帮 435-4): 6�� 10����(�߰� 1��: ����, �� ����) 
15:40 ��� ����(����) 
16:30 �¿�, ��ȯ, �ϳ� ���� 
18:00 ����(�����ʱ�(��)) 
19:00 ���� 
19:30 ��� ����(�������) �� ����  
22:00 ��ħ 
==============================================================================================================

������������������� 2012.09.09(��) �۾� ���������������� 
---> 09:00 ~ 18:00 

�������౸
06:40 ��� 
07:00 ������ 
08:30 ����(���, ��) 
09:30 ���� ���� �湮(�ϳ��� ����): �¿�, �ϳ�, ��ȯ, �Ӹ�(�����: 2õ��, ������ :4õ��) 
12:00 ������ 
12:30 ö�� 
13:00 �߽�(����, ��������) 
13:40 ���� 
13:50 ���� ���(�Ӹ� ����, �� ���� ����) 
17:00 �Ͱ� 
19:40 ���� 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.10(��) �۾� ����������������
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN ��� Ȯ�� ==> TA�� Coherence ������� ����ȣ ���忡�� ���� 
1. Coherence ���� �߻� 
- Stg2 CN ��� Ȯ�� 
1. Coherence ���� �߻�  
==============================================================================================================

- Auth OGG ����ȭ�� ���� DB �ҽ� ���� 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java  
==============================================================================================================

- ����� CD ����(FreeRIP) 
1. .cda ������ .avi ���Ϸ� ����ó�� �� 
http://file.naver.com/pc/view.html?fnum=313207&cat=41 
==============================================================================================================

������������������� 2012.09.11(ȭ) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG ����ȭ�� ���� DB �ҽ� ���� 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

- �źβ�. ���̵��2������ ��ȫ���� ���� ��. 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A611626310&cc=AA02&keyword=���ڳ콺X2D2���̵��2��&Fwk
=���ڳ콺X2D2���̵��2��&scoredtype=0&frm2=through&acode=SRP_SV_0301 
42800��  

- �̰Ŵ� ���ɲ� �ظ� �Ѱ�. 
http://www.akmall.com/catalog/general/detail.jsp?disp_class_cd=59&goods_cd=241113030198&urlpath= A1_3@59@A01@@F01&front=N 
33900�� 
==============================================================================================================

������������������� 2012.09.12(��) �۾� ���������������� 
---> 06:30 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG ����ȭ�� ���� DB �ҽ� ����(//MERGE_20120903) 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

- Stg1 ���� Start  ���� 
1. ���� 
2012. 9. 12 ���� 5:51:37 org.apache.naming.NamingContext lookup 
���: Unexpected exception resolving reference 
org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (IO ���� ��Ȳ: 
The Network Adapter could not establish the connection) 
2. ���� ���� 
�����ڵ尡 12505�� ���� TNS���� �Դϴ�. TNS������ �ַ� ����Ŭ���� ��Ʈ��ũ ����� ���õ� �������� 
3. ��ġ:  
00. [����_HUB] Stg1, Dev, DB, Funk ���� �� ecliset tomcat start �� ��  
==============================================================================================================

- �����ɻ� �����ȸ(�ϳ��� ����) 
http://vnm-hanoi.mofat.go.kr/korean/as/vnm-hanoi/consul/visa/visaissue/index.jsp 

- ExK���� 
http://blog.naver.com/treeindream/159001453 
1. ��Ƽ����: ����ī�� 
==============================================================================================================

- ��Ʈ������ ���� �������� ��ȭ/���ͳ�(3G) ����ϱ� 
http://www.exk.kr/service/intro/sub_01.jsp  
==============================================================================================================

- ����Ʈ �е� ���� ����  
2. �������е�(16G): 545,000��  
http://blog.danawa.com/prod/?prod_c=1626331&cate_c1=224&cate_c2=38768&cate_c3=38783&cate_c4=&keyword= 
==============================================================================================================

������������������� 2012.09.13(��) �۾� ����������������
---> 06:20 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 ���� �ҽ� ���� 
11. Stg1_EU_IDC: �۾� �Ϸ� 
13. Stg1_US_IDC: ��� ���� 
14. Stg1_US_Cloud: �۾� �� ==> 184.73.161.211 
16. Stg1_CN_IDC: TA������ �۾� �� 
-------------------------------------------------------------------------------------------------------- 

- Stg2 ���� �ҽ� ���� 
21. Stg2_EU_IDC: �۾� �Ϸ� 
23. Stg2_US_IDC: �۾� �Ϸ� 
24. Stg2_US_Cloud: �۾� �� ==> 174.129.178.248 
26. Stg2_CN_IDC: TA������ �۾� �� 
==============================================================================================================

- ����ҵ漼(���ռҵ��) ����(http://www.giro.or.kr/index.giro) 
1. ���ڳ��ι�ȣ: 1162012012801197833 
2. 2011�� �ͼӺ�(Ȯ���Ű��): 20,090�� 
==============================================================================================================

- 06. ��Ʈ���� 300 
02-1�� ==> 1-02-1�� 
03-Ʈ�� 3 ==> 1-03-Ʈ�� 3 
==============================================================================================================

������������������� 2012.09.14(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG ����ȭ�� ���� DB �ҽ� ����(//MERGE_20120903) 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

501. [Profile] UserService_getUser 
http://api.samsungosp.com/v2/profile/user/user/t70f55z2q1 
accept: text/xml 
x-osp-appId: sfteste001 
x-osp-userId: rlpil0b9px 
Content-Type: text/xml 
�׽�Ʈ ==> userId : t70f55z2q1, rlpil0b9px 
==============================================================================================================

- �ź� ����(ȭ��ǰ, �̿� ��ǰ) 
�츮���� 485-052481-02-001, ���ĳ�, 90,880�� 
-------------------------------------------------------------------------------------------------------- 

- ȭ��ǰ 
���̸��� �ٵ���� 
�����̽���-�Ƹ����� 
��Ƽ �ɾ� ��� ũ��1ȣ ��Ų SPF 
�Ľ���&���ٸ�  
==============================================================================================================

������������������� 2012.09.15(��) �۾� ����������������
---> 06:40 ~18:00 

06:30 ��� 
09:10 ��Ʈ���� 300 ����(16�� ~20��)(������) 
12:00 �߽�(���) 
13:00 ��Ʈ���� 300 �� 
20:00 ���� 
20:50 ���̿�(����)�� ȭ����ȭ 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.16(��) �۾� ����������������
---> 09:00 ~ 18:00 

�������౸
06:00 ��� 
06:30 �ź�õ ������(�������� ��) 
07:00 �ű��ʵ��б�  
07:50 ����(8:8 ��) 
09:00 ����(7:4 ��): ���� ���⸦ �� 
11:00 ����  
11:40 ���� ���屹��(�δ����: ġ�������� ��) 
12:50 ���� 
13:00 �Ͱ�  
13:30 ��ȭ ��û(������, �۾��� ����)  
20:00 ���� 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.17(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth �ҽ� �м� 
==============================================================================================================

- �������е� �е� ���� 
1. �������е�(16G): 545,000��  
http://e-mate.co.kr/member/orderDetail.php?sOrderKey=20120917091811-PH105&nOrderYear=&sOrderName=&sOrderPass= 
2. �۱�: �����߾�ȸ, ������: ȫ�ر� 
==============================================================================================================

������������������� 2012.09.18(ȭ) �۾� ����������������
---> 06:10 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth �ҽ� �м� 
==============================================================================================================

- �������е� ��� �� ���� 
1. ��Ʈ��ũ ����(���� ��Ʈ��ũ�� ����) 
http://blog.naver.com/cadpia71?Redirect=Log&logNo=110095376436 
2. ����ƪ ���� 
http://file.naver.com/pc/view.html?fnum=332340&cat=41 
-------------------------------------------------------------------------------------------------------- 

- ���� ��Ʈ��ũ ���� 
http://lambada.co.kr/80097069638 
1.������\��Ʈ��ũ �� ���ͳ�\��Ʈ��ũ ���� 
 1) ���� ���� ���� 
  - "�ٸ� ��Ʈ��ũ ����ڰ� �� ��ǻ���� ���ͳ� ������ ���� ������ �� �ֵ��� ���" üũ 
  - "���� ��Ʈ��ũ ����" ���� 
  - "�ٸ� ��Ʈ��ũ ����ڰ� ���� ���ͳ� ������ �����ϰų� ������ų �� �ֵ��� ���" üũ 
 2) ���� ��Ʈ��ũ ���� 
 3) ���� ��Ʈ��ũ ���� 2 ==> ��� ������ �� �� �ٽ� ������� ����(������ �� ��) 

2. ������\��Ʈ��ũ �� ���ͳ�\���� ��Ʈ��ũ ���� > �߰�(Ŭ��) 
 1) ���� �ֵ�Ȥ(��ǻ�� �� ��ǻ��) ��Ʈ��ũ�� �����մϴ�." Ŭ�� 
 2) "���� ��Ʈ��ũ�� �������� ����" 
  - ��Ʈ��ũ �̸� : 01. TAMA_Ad hoc 
  - ���� ���� : WEB  
  - ���� Ű : 33900 
3. Fn + F8: ��Ʈ��ũ �ѱ�(���� ���� ��) 
4. IE Tab + X ==> ����� ����[���� ��Ʈ��ũ ����(T)�� ����]] 
5. MSI MSI GT638DX-i7 ��Ʈ��(���������� ����ϴ� ��Ʈ��) ���� Ȯ�� 
 1) Intel�� Centrino�� Wireless-N 130 ==> http://www.intel.com/p/ko_KR/support/detect/wireless 
-------------------------------------------------------------------------------------------------------- 

- Virtual Router Manager 
http://wwo.wo.tc/10147476178 
1. Virtual Router Settings 
 1) Network Name(SSID) : 02. TAMA_Virtual Router M  
 2) Password : aa11221122  
 3) Shard Connection: ���� ���� ���� 
-------------------------------------------------------------------------------------------------------- 

- Connectify�� ������������ ������.(NASCA ���� ����� ��� �Ұ���) 
http://elwlsek.tistory.com/21 
==============================================================================================================

- iPad 
1. Apple ID 
tamario@naver.com/ssjtm3390A 
2. Change your security questions. 
Q: ó�� ���� ������? 
A: jt390A 
- iCloud 
*@*.*/ssjtm3390A 
- iTunes Store 
*@*.*/ssjtm3390A 
- iMessage 
*@*.*/ssjtm3390A 
==============================================================================================================

������������������� 2012.09.19(��) �۾� ����������������
---> 06:35 ~ 11:00 

- IOSP(/oauth2) Prj
- Auth �ҽ� �м� 
==============================================================================================================

- ������ȥ �ȳ� ���α׷� ����  
11:00 ��� 
11:10 �߽� 
11:55 ��� �͹̳� ���ڷ��� �湮(������ ��Ʈ��� Ű���� Ŀ�� ����) 
12:20 ��� �͹̳� �� �湮(��� ��Ÿ�Ϸ��� �� ����) 
13:20 �������Ա��繫�� ����(��õ��û�� 1�� �ⱸ): �߸� �� 
13:30 �ý�Ž(�� ���) 
13:50 �ѱ��̹���� ���� 
14:00 ���� ���� 
17:00 ���� ���� 
17:30 Ȩ�÷���(�ŵ�����: ���, ���� ����) 
19:00 �Ͱ� 
20:00 ���� 
21:00 ���̿�(����)�� ȭ����ȭ 
23:40 ��ħ 
==============================================================================================================

- ������ȥ �ȳ� ���α׷� ���� �̼� 
0. ������ȥ �ȳ� ���α׷� �̼��� 
 1) �̼���ȣ: SU-PP-12-0020989 
1. ������ȥ �ȳ� ���α׷�(http://www.hikorea.go.kr/pt/index.html) ==> ���ڹο� > ���ڹο���û�ϱ�  
 > ��û������ �ο� �繫��� list: �ο��繫��(������ȥ �ȳ� ���α׷�)(Ŭ��) > ��û�� �ۼ� 
2, ���� ����  
1) 9�� 19��(��)(14:00~17:00), T) 2650-6228 ==> �������Ա������繫��((02-2650-6228) 
3. ���: �ѱ��̹����(�μ� ��ȸ������) ����� ��õ�� �� 923-6(���ѹα������μ��� 5��)  
 1) 5ȣ�� ���񱳿� 2�� �ⱸ 
4. ���� ���: �������Ա��繫��(����Ư���� ��õ�� ������ 330-11ȣ �ѱ��̹���� ��ȸ������)  
 1) ��ġ: ����ö 2ȣ�� ��õ��û�� 1�� �ⱸ: �����ʱ� ����) 
==============================================================================================================
   
- �������е� �Ǽ��縮 ���� 
1. WACOM ��� ��Ÿ�Ϸ��� ��(��ġ��)CS-100, 34.040�� 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A586574545&frm3=V2 
 1) �Ǹ���: ����� ��걸 �Ѱ���3�� �͹̳� �� 406ȣ/02-3272-1181 
2. ������ ��Ʈ��� Ű���� Ŀ��: 111,530�� ==> ��� ���� �湮�ؼ� 11������ ���� 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=281771423&GoodsSale=Y&jaehuid=200002657&service_id=pcdn  
 1) �Ǹ���: ����� ��걸 �Ѱ���3�� 16-9 ���ڷ��� ���� C-354ȣ (��)����Ƽ����  ==> 02-3272-2261 
==============================================================================================================

������������������� 2012.09.20(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth �ҽ� �м� 
==============================================================================================================

- ��Ʈ�� �ź� �ù� ���� 
1. ���쿧(������: ģô, *): ���ؽû����� 58-6 �¾����� 302ȣ 
2. ��(�輺��: ���׾��, *): ���ؽ� ������ ������ ����S Ŭ����1���� APT 107�� 1602ȣ 
3. ����Ư�� ��ü�� EMS ����(http://ems.epost.go.kr:8080) 
4. ��Ʈ���װ� ���Ϲ� ���� 
 1) ��ġ�� ��(����� ĳ���� ���): �δ� 20kg(���������� 5kg �߰� ����), �߰��� kg�� 1~2���� 
 2) �⳻�� ��� ���� ��: 10kg(���� 2������ ����), ��ü�� 100ml���ϸ� ���� 
5.. �����װ� ���Ϲ� ���� 
 1) ��ġ�� ��(����� ĳ���� ���): �δ� 23kg(���������� 5kg �߰� ����), �߰��Ǹ� 10���� 
 2) �⳻�� ��� ���� ��: 7kg(���� 2������ ����), ��ü�� 100ml���ϸ� ���� 
==============================================================================================================

������������������� 2012.09.21(��) �۾� ����������������
---> 07:00 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 
1. host ���� 
27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net  
==============================================================================================================

- soapUI memory ���� ó�� 
C:\Program Files\SmartBear\soapUI-Pro-4.0.1\bin�� ��ġ�� (��ġ�� ��ġ) 
soapUI-Pro-4.0.1.vmoptions �� soapui-pro  ���ϳ� �޸� ������ �Ʒ��� ���� ������ �ֽø� �˴ϴ�. 
-Xms256m  ==> ����: -Xms128m 
-Xmx512m  ==> ����: -Xmx256m 
-Xms512m  ==> ����: -Xms128m 
-Xmx748m  ==> ����: -Xmx256m 
==============================================================================================================

- �������е� ���׷��̵� 
1. IOS 5.1���� IOS 6.1�� ���׷��̵� 
- �������е� Ż�� 
http://blog.naver.com/ifixhd?Redirect=Log&logNo=140164875480 

- �������е� ������ ���� ��ȯ(mp3��) 
http://blog.naver.com/agami11?Redirect=Log&logNo=110143139050 
==============================================================================================================

 - �������е� ��õ ���� 
1. ���ɺ����� - ������(��ġ �Ϸ�) 
2. pooq - �ڷ����� ���� ����(��ġ �Ϸ�) 
3. ����Ͻ� - å ���� ����(��ġ �Ϸ�) 
4. ������Ʈ - �޸�, �ʱ�, ��Ʈ ���� 
5. iPhoto - ���� ����, ����, ����  
6. Paper - �����  
7. Bamboo Paper - �����, �̰� ��Ÿ�Ϸ��� ���� �־�� �� ���� �� (��ġ �Ϸ�) 
8. Polaris Office - ����, �Ŀ�����Ʈ, ���� ������ �䰡 ������ ���ǽ� ���α׷�(����) 
9. Blogsy - ��α׿� �� �� �� �ִ� ����, �۰� ���� ���� ����. �ٵ� ���� ���� ���� ���� 
10. ��Ű�� : ����ģ���� ���� �ϸ� ���µ��ϰ� �� ����� 
11. fingle :  
12. AVplayer: ©�� �ó׸�õ�� 
13. Real Racing 2 HD(����) 
14. ������(goodreader) 
- texplus(����) 
http://blog.naver.com/goodkissjc?Redirect=Log&logNo=166793615 
15. �������(����) 
==============================================================================================================

- �������е� ���� �� ��� 
1. � ü�� - iOS 5.1 
2. ���μ��� - 1GHz, Dual-core Apple A5X 
3. ���÷��� - 9.7��ġ, LED Backlight LCD(2048 X 1536) PowerVR SGX 543 MP4+ 
4. �ϵ� - 16GB(������ ��), 32GB, 64GB 
5. ���� - �� 0.66kg 
6. �� ī�޶� - ���� 30�� ȭ�� / �ĸ� 500��ȭ�� 
7. ������� 4.0 / ��ġ�е�(��Ƽ��ġ) 
-------------------------------------------------------------------------------------------------------- 

- �������е� �Ǽ��縮 ���� 
1. WACOM ��� ��Ÿ�Ϸ��� ��(��ġ��)CS-100, 34.040�� 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A586574545&frm3=V2 
 1) �Ǹ���: ����� ��걸 �Ѱ���3�� �͹̳� �� 406ȣ/02-3272-1181 
2. ������ ��Ʈ��� Ű���� Ŀ��: 111,530�� ==> ��� ���� �湮�ؼ� 11������ ���� 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=281771423&GoodsSale=Y&jaehuid=200002657&service_id=pcdn  
 1) �Ǹ���: ����� ��걸 �Ѱ���3�� 16-9 ���ڷ��� ���� C-354ȣ (��)����Ƽ����  ==> 02-3272-2261 
==============================================================================================================

������������������� 2012.09.22(��) �۾� ����������������
---> 06:40 ~18:00 

07:30 ��� 
07:50 �ۺ�������(������ ���� ��� �׳� ������ ��) 
08:10 ������ �� 
09:00 ��ȭ ��û(������) 
12:00 ���� 
18:00 ���� 
18:30 �߼� ����(���: (��)���̿��������� �ù�� ����) 
18:60 �Ƴ��α� ü�߰� ����(�ù�) 
20:00 �庸��(�Ž��Ľ� �Ʒ���, ��Ƽ�����S �μ� ����) 
20:00 ���� 
20:50 ���̿�(����)�� ȭ����ȭ 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.23(��) �۾� ����������������
---> 09:00 ~ 18:00 

�������౸
06:00 ��� 
06:35 �ź�õ ������(�������� ��) 
07:00 �ű��ʵ��б� 
07:50 ����(1:3 ��) 
09:00 ����(0:0 ��): ������ ��������(��� "����� ����" ���) 
11:30 ���� 
11:40 ���뱹��(����ȸ���� ��) 
13:40 ����  
14:30 �����͹̳�(���������� ���� ��ġ ã�ƿ�) 
15:30 �̹�(��õ��: ���) 
16:00 �Ͱ� 
16:00 ���� 
20:00 ���� 
21:00 ���̿�(����)�� ȭ����ȭ 
22:30 ��û�� �� ��Ʈ�� ���� �� ���� 
23:40 ��ħ 
==============================================================================================================

������������������� 2012.09.24(��) �۾� ����������������
---> 06:43 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 
1. host ���� 
27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net  
-------------------------------------------------------------------------------------------------------- 

- CN IDC OSP 2.0 TEST ��� 
01. AuthService-createAccessToken 
==> ���� 

02. AuthService-createAuthorizationCode 
1. createAuthorizationCode_400_03 ==> deleteUser 
error: USR_5312, LDAP(GC) exception was occurred. (deleteUser)  

03. AuthService-createUserAuthToken 
1. createUserAuthToken_200_01 ==> error: AUT_1804, invalid_grant 
2. createUserAuthToken_200_02 ==> error: AUT_1804, invalid_grant 
3. createUserAuthToken_400_02 ==> error: AUT_1804, invalid_grant 
4. createUserAuthToken_200_03 ==> error: AUT_1804, invalid_grant 
5. createUserAuthToken_400_03 ==> error: AUT_1804, invalid_grant 
6. createUserAuthToken_200_04 ==> error: AUT_1804, invalid_grant 
7. createUserAuthToken_400_05 ==> error: AUT_1804, invalid_grant 
8. createUserAuthToken_200_05 ==> error: AUT_1804, invalid_grant 
9. createUserAuthToken_200_06 ==> error: AUT_1804, invalid_grant 
11. createUserAuthToken_400_10 ==> error: AUT_1804, invalid_grant 
10. createUserAuthToken_200_07 ==> error: AUT_1804, invalid_grant 
11. createUserAuthToken_400_11 ==> error: AUT_1804, invalid_grant 
12. createUserAuthToken_200_08 ==> error: AUT_1804, invalid_grant 
13. createUserAuthToken_200_09 ==> error: AUT_1804, invalid_grant 
14. createUserAuthToken_400_13 ==> error: AUT_1804, invalid_grant 
15. createUserAuthToken_400_14 ==> error: AUT_1804, invalid_grant 
16. createUserAuthToken_200_10 ==> error: AUT_1804, invalid_grant 
17. createUserAuthToken_400_15 ==> error: AUT_1804, invalid_grant 
18. createUserAuthToken_200_11 ==> error: AUT_1804, invalid_grant 
19. createUserAuthToken_400_16 ==> error: AUT_1804, invalid_grant 
20. createUserAuthToken_200_12 ==> error: AUT_1804, invalid_grant 
21. createUserAuthToken_400_17 ==> error: AUT_1804, invalid_grant 
22. createUserAuthToken_200_13 ==> error: AUT_1804, invalid_grant 
23. createUserAuthToken_400_18 ==> error: AUT_1804, invalid_grant 
24. createUserAuthToken_200_14 ==> error: AUT_1804, invalid_grant 
25. createUserAuthToken_400_19 ==> error: AUT_1804, invalid_grant 
26. createUserAuthToken_200_15 ==> error: AUT_1804, invalid_grant  

04. AuthService-deauthenticate 
==> ���� 

05. AuthService-isValid 
1. getSignedUserInfo_400_01 ==> error: AUT_5002, The exception was occurred from isvalidUser Method using the UserService of the Profile. 

06. AuthService-revoke 
==> ���� 

07. AuthService-getSignedUserInfo 
1. getSignedUserInfo_400_01 ==> error: AUT_1027,invalid_request  
1. getSignedUserInfo_400_02 ==> error: AUT_1804,invalid_request  

08. AuthService-getSignedConfirmationInfo 
==> ���� 
==============================================================================================================

- �λ� ��Ÿ(��ȭ��) 
1. ����ó(*) 
2. �ֹ�: �λ� 1kg: 5�� 5õ��, �λ����: ����(4��) ==> �� 6�� 5õ��(9�� 25�Ͽ� �ֹ��ϱ�� ��)  
3. �۱�: ���� 241050-52-131434, ������ :������, 6�� 5õ�� �۱� �Ϸ� 
==============================================================================================================

- �ź� ����(ȭ��ǰ, �̿� ��ǰ) 
1 �۱�: �츮���� 485-052481-02-001, ���ĳ�, 90,880�� �۱� �Ϸ� 
���� �ݾ� ���αݾ� �ѱݾ� 
�����̽���-�Ƹ�����  2 �� 21,800 0 21,800 
����&���ٸ� 2 �� 15,400 310 15,090 
��Ƽ �ɾ� ��� ũ��1ȣ ��Ų SPF 12,900 260 12,640 
���̸��� �ٵ����2��/��Ǫ/��������ų� 33,900 2,000 31,900 
���Ʒμ� ��Ǫ �ٽ� ���� ũ��   10,450 1,000 9,450 
�հ� 94,450 3,570 90,880 
==============================================================================================================

- ��Ÿ�� �Ŵ� �� 
==============================================================================================================

������������������� 2012.09.25(ȭ) �۾� ����������������
---> 06:50 ~ 20:00 

- IOSP(/oauth2) Prj
- LDAP ��ֿ�� ����
[���� ������] 
 - LDAP Connect 
      - LDAP ��ȸ 
        - DB ��ȸ                     ==> �̿� ���� LDAP Connection�� �Ϸ�Ǳ� ���� DB ������ ���ԵǾ�������, LDAP delay ���� �߻� 
          - LDAP Disconnect 
 
  [�����ݿ�]   => SF ��ü ���񽺿� ���� LDAP vs DB �� ���� �߰��� �����ִ� ������ �� �����ϰ� ���������� �Ϸ����Ŀ� ȣ���ϴ� �������� �����. 
- LDAP Connect  
- LDAP ��ȸ 
- LDAP Disconnect 
- DB ��ȸ 
==============================================================================================================

- CN IDC OSP 2.0 TEST ��� 
01. AuthService-createAccessToken 
01. AuthService-createAccessToken 
createAccessToken_client_id_AUT_1806_02 
error: AUT_1024, The pattern of a client_id parameter is invalid.  

02. AuthService-createAuthorizationCode 

04. AuthService-deauthenticate 
==> ����   

05. AuthService-isValid 
==> ���� 

06. AuthService-revoke 
==> ���� 

07. AuthService-getSignedUserInfo  
1. getSignedUserInfo_200_01 ==> error: AUT_5082, signature generation was failed. 

08. AuthService-getSignedConfirmationInfo 
1. getSignedConfirmationInfo_200_01 ==> error: AUT_5082, signature generation was failed. 
==============================================================================================================

- CN IDC OSP 2.0 TEST URL 
def authEndpoint = 'http://tmp.cn.auth.samsungosp.com' // OSP 2.0 TEST  
def profileEndpoint = 'http://tmp.cn.api.samsungosp.com'   
---------------------------------------------------------------------------------------------------- 

- CN IDC OSP 2.0 TEST URL 
1. �����(��ȭ�� ������) 
109.10.162.141 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
109.10.162.142 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
2. ��� ���� 
#27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net 
#27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
==============================================================================================================

- ��Ʈ�� ���� ������ ��� 
1. �ѱ����� ��Ʈ������ ����(�ؿ�) ==> ��Ż��ȣ + ������ȣ + �޴�����ȣ 
 1) 002-84-97-605-8762(���̿�) ==> 097-605-8762 
  ==> SKT= 1579, KTF = 00345, LGT= 002 
 2) 001-84-97-0, 00700-84-97-0 
2. ��Ʈ������ ���� 
 1) 097-605-0(���̿�) 
3. �ؿܹ��� ���� ��ü 
 1) ���: http://www.surem.com/smsintl/english/main.asp 
 2) ��ٳ�: http://www.xonda.net/Service/FareChart.asp 
4. ���� ����ó 
 1) �ѿ�(�뿪): 002-84-9824-0 
 2) �����(������ ����): 010-8884-0, ȫ(���� �ź�): 002-84-16-4380-0(016-4380-0) 
 3) ������ ����(����W): 010-6321-0 
 4) ��ݼ� �Ŵ���(����W): 010-8959-0  
 5) ��Ƽ��(����W �뿪): 010-9733-0 
==============================================================================================================

- �ؿ�����Ĩ 
1. �ؿ�����Ĩ�̶�  
���� ������ ����ϰ� �ִ� �޴����� ���� �ؿܷ� ���� (�ι��� �ƴ϶�)  ���� ��ȭ��ȣ�� ���� ��ȭ��ȭ�� ��  
�� �ְ� ���ִ� ���񽺸� ������ �ִ� Ĩ 
==============================================================================================================

������������������� 2012.09.26(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST ��� 
01. AuthService-createAccessToken  
1. createUserAuthToken_200_05 ==> deleteUser 
 1) error: USR_3116, Only user who withdraws all application services can withdraw the account. 

02. AuthService-createAuthorizationCode 
1. createAuthorizationCode_200_06 ==> deleteUser 
 1) error: USR_5312, LDAP(GC) exception was occurred. (deleteUser) 
2. createAuthorizationCode_200_06 ==> deleteUser 
 1) error: USR_3116, Only user who withdraws all application services can withdraw the account.  

03. AuthService-createUserAuthToken 
1. createUserAuthToken_200_01 ==> createUserAuthToken_01 
 1) error: AUT_9001, Unknown error was occurred. 
2. createUserAuthToken_200_01 ==> createUserAuthToken_02 
 1) error: AUT_5008, The exception was occurred from checkMandatory Method using the UserService of the Profile. 
3. createUserAuthToken_200_05  ==> createUserAuthToken_country_code_01 
 1) error: AUT_9001, Unknown error was occurred. 
4. createUserAuthToken_200_05  ==> createUserAuthToken_country_code_02  
 1) error: AUT_9001, Unknown error was occurred.  
5. createUserAuthToken_400_09  ==> createUserAuthToken_country_code_AUT_1037_01 
 1) error: AUT_9001, Unknown error was occurred. 
6. createUserAuthToken_200_06  ==> createUserAuthToken_mobile_country_code_01 
 1) error: AUT_9001, Unknown error was occurred. 
6. createUserAuthToken_200_06  ==> createUserAuthToken_mobile_country_code_02 
 1) error: AUT_9001, Unknown error was occurred. 
7. createUserAuthToken_400_10  ==> createUserAuthToken_mobile_country_code_AUT_1037_01 
 1) error: AUT_9001, Unknown error was occurred. 
8. createUserAuthToken_200_07  ==> createUserAuthToken_tnc_accepted_01_remove  
 1) error: AUT_9001, Unknown error was occurred. 
9. createUserAuthToken_400_11  ==> createUserAuthToken_tnc_accepted_AUT_1038_03 
 1) error: AUT_9001, Unknown error was occurred. 
10. createUserAuthToken_200_08  ==> createUserAuthToken_tnc_type_code_01 
 1) error: AUT_9001, Unknown error was occurred. 
11. createUserAuthToken_200_08  ==> createUserAuthToken_tnc_type_code_02 
 1) error: AUT_9001, Unknown error was occurred. 
12. createUserAuthToken_200_09  ==> createUserAuthToken_privacy_accepted_01 
 1) error: AUT_9001, Unknown error was occurred. 
13. createUserAuthToken_400_13  ==> createUserAuthToken_privacy_accepted_AUT_1039_03 
 1) error: AUT_9001, Unknown error was occurred. 
14. createUserAuthToken_400_14  ==> createUserAuthToken_privacy_accepted_tnc_accepted_AUT_1040 
 1) error: AUT_9001, Unknown error was occurred. 
15. createUserAuthToken_200_10  ==> createUserAuthToken_check_mandatory_01 
 1) error: AUT_9001, Unknown error was occurred. 
16. createUserAuthToken_200_10  ==> createUserAuthToken_check_mandatory_02_N_allRemove 
 1) error: AUT_9001, Unknown error was occurred. 
17. createUserAuthToken_200_10  ==> createUserAuthToken_check_mandatory_06_Y_not3rd 
 1) error: AUT_5008, The exception was occurred from checkMandatory Method using the UserService of the Profile. 
18. createUserAuthToken_200_11 ==> createUserAuthToken_country_01 
 1) error: AUT_9001, Unknown error was occurred. 
19. createUserAuthToken_200_11 ==> createUserAuthToken_country_02 
 1) error: AUT_5008, The exception was occurred from checkMandatory Method using the UserService of the Profile. 
20. createUserAuthToken_200_12 ==> createUserAuthToken_appId_01_remove_checkN 
 1) error: AUT_9001, Unknown error was occurred. 
21. createUserAuthToken_200_12 ==> createUserAuthToken_appId_02_is3rd_checkN 
 1) error: AUT_9001, Unknown error was occurred. 
22. createUserAuthToken_200_12 ==> createUserAuthToken_appId_03_not3rd_checkN 
 1) error: AUT_9001, Unknown error was occurred. 
23. createUserAuthToken_200_12 ==> createUserAuthToken_appId_06_not3rd_checkY 
 1) error: AUT_9001, Unknown error was occurred. 
24. createUserAuthToken_200_13 ==> createUserAuthToken_langCode_01 
 1) error: AUT_9001, Unknown error was occurred. 
25. createUserAuthToken_200_13 ==> createUserAuthToken_langCode_02 
 1) error: AUT_9001, Unknown error was occurred. 
26. createUserAuthToken_200_13 ==> createUserAuthToken_langCode_defaultValue 
 1) error: AUT_9001, Unknown error was occurred. 
27. createUserAuthToken_200_14 ==> createUserAuthToken_check_email_validation_01 
 1) error: AUT_9001, Unknown error was occurred. 
28. createUserAuthToken_200_14 ==> createUserAuthToken_check_email_validation_02 
 1) error: AUT_9001, Unknown error was occurred. 
29. createUserAuthToken_200_14 ==> createUserAuthToken_check_email_validation_03 
 1) error: AUT_9001, Unknown error was occurred. 
30. createUserAuthToken_200_14 ==> createUserAuthToken_check_email_validation_04 
 1) error: AUT_5008, The exception was occurred from checkMandatory Method using the UserService of the Profile. 
31. createUserAuthToken_400_19 ==> createUserAuthToken_check_email_validation_AUT_1814 
 1) error: AUT_5008, The exception was occurred from checkMandatory Method using the UserService of the Profile. 
32. createUserAuthToken_200_15 ==> deleteService_01 
 1) error: FAILED 
33. createUserAuthToken_200_15 ==> deleteService_02 
 1) error: FAILED 
34. createUserAuthToken_200_15 ==> deleteService_03 
 1) error: FAILED 
35. createUserAuthToken_200_15 ==> deleteService_04 
 1) error: FAILED 

04. AuthService-deauthenticate 
==> ����  

05. AuthService-isValid 
==> ���� 

06. AuthService-revoke 
==> ���� 

07. AuthService-getSignedUserInfo  
1. getSignedUserInfo_200_01 ==> getSignedUserInfo 
 1) error: AUT_5082, signature generation was failed. 
2. getSignedUserInfo_400_02 ==>getSignedUserInfo_client_id_AUT_1086_05  
 1) error: AUT_1084, The value of access_token parameter is invalid. 
3. getSignedUserInfo_400_02 ==>getSignedUserInfo_client_id_AUT_1086_06  
 1) error: AUT_1084, The value of access_token parameter is invalid. 

08. AuthService-getSignedConfirmationInfo 
1. getSignedConfirmationInfo_200_01 ==> getSignedConfirmationInfo 
 1) error: AUT_5082, signature generation was failed. 
2. getSignedUserInfo_400_02 ==>getSignedUserInfo_client_id_AUT_1086_05  
 1) error: AUT_1084, The value of access_token parameter is invalid. 
3. getSignedUserInfo_400_02 ==>getSignedUserInfo_client_id_AUT_1086_06  
 1) error: AUT_1084, The value of access_token parameter is invalid.  
==============================================================================================================

������������������� 2012.09.27(��) �۾� ����������������
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST ��� 
1. �赿�� ���ӿ��� ���� �߼� �� ���� �湮�Ͽ� ���� Ȯ�� ��û 
==============================================================================================================

- ���� �湮(ȯ��, ��Ƽ���� ����ī��) 
1. ȯ��(SC����) 
 1) 1�޷�: 1,128.39�� ==> 2,500�޷�: 2,820,975�� 
 2) SC���࿡�� �ܰ������ ȯ�� 
 3) �ؿ� �ⱹ�� ���� ������ ����: 1���� �̸�(1,200����) 
 4) ��Ʈ������ ���� ������ ����: 5õ�� �̸� 
---------------------------------------------------------------------------------------------------- 

- ��Ƽ���� ���� ���� 
1. ���¹�ȣ: 151-16548-264-01, ���ȶ��� A+����(���࿹��) 
 1) �����ID: tamario/ta****9  
 2) ����ȣ: 136180792 
 3) ��Ƽ ��������ī�� �߱�(��Ʈ�� ó���� ���� �߱�) 
==============================================================================================================

������������������� 2012.09.28(��) �۾� ����������������
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST ��� 
==============================================================================================================

- ���� �湮(ȯ��, ��Ƽ���� ����ī��) 
1. ȯ��(SC����) 
 1) 1�޷�: 1,124�� ==> 534�޷�: 600,216��(Ÿ�� ����) 
==============================================================================================================

- ���̿� �ѱ� ���� 
1. ��[���� ���, ����: ����Ź(�θ�� ��, ��Ǫ)]: �ѱ���ȥ 5��, �ֱ� ���� 
2. ���[���� ���, ������]: �ѱ���ȥ 3��, ��(����), �Ƶ�(�ӽ� ��), ������ ������� 
3. ���쿧[���� ���� ���, ����: ����Ź(�θ�� ��)], ������ 
4. Ÿ��[���� ���� ���, ����: �� ���� ��Ź(60����)] ��� ��� 
==============================================================================================================

- 1����: 09.28(��)  @@@@@@@@@@ 
13:00 ��� 
13:30 �Ͱ� 
14:20 ����� 
14:40 ���׹��� ž��(6003��[������Ա��� --> ��õ����]: 9,000��) 
16:50 ��õ���� ����(6�� ����Ʈ ��) ==> 9�� ����Ʈ 2������ �̵� 
17:00 ���Ϲ� üũ��(21.2kg[�����װ�: 23kg���� ����]) ==> �����װ��� ���� Ȯ�μ� �����ְ� ��¥ Ƽ�� ���� 
        �����װ��̰� ����ͼ� â�� �¼� ���� 
18:00 ���Ȱ˻�(�����н� ����) 
18:20 �ڵ��ⱹ�ɻ� ��� �� �ɻ� 
19:00 �����װ� ž�� 
19:30 �����װ� ��� 
20:00 ��ȭ ��û(�ڸ���, ��ü�� �������) 
22:05 �ϳ��� ���� ����  
22:10 �ڵ��ⱹ�ɻ�  
22:20 �� ã�� 
22:30 ���� ���� �˻�(2�� ��) 
22:40 ���̿�, ���� ó��, ���(���� ����) �ɵ�� ȯ���� �� 
22:50 �ý� ž�� 
01:50 ������ ó�� ���� 
02:00 ���ο��� ��ȥ�� ���(1,000��), �źο��� �뵷(500��) �� 
      --> ��(��, ��Ǫ), ���쿧(��) ����, Ÿ�� ȯ���� ��(554��)�� ������ 
03:00 ��ħ 
---------------------------------------------------------------------------------------------------- 

 - �װ��� ���� ����(�����ȣ: GHHDVK) 
1. �װ��ǰ�������: 12/08/03 17:00( (�����ȣ : GHHDVK) 
2. �װ� ������ 
 1) �ⱹ: ��Ʈ���װ�(3411��): ��õ  09-28(��) 19:30 ==> �ϳ���  09-28(��) 22:05  
 2) �Ա�: ��Ʈ���װ�(416��): �ϳ���  10-03(��) 23:40 ==> ��õ  10-04(��) 05:50 
3. �� �����ݾ�: 699,100�� (TAX/���������� ����)(�װ���: 590,000��)  
==============================================================================================================

- 2����: 09.29(��)  @@@@@@@@@@ 
09:00 ���(S) 
09:10 ����(��)  
13:00 �߽� 
13:30 ����, Ǫ�ﾾ ����(���̿� �ѱ� ���ι� ģ��) 
14:00 ���θ��� �湮(������Ʈ ���� ��(���� ������). ���δ��� �׸� ������ ��) 
15:10 �����(Ÿ��, ���) �湮 
16:00 ����(�ݹ��� 2��, ����Ƽ, ���� �౸ ������ ����, ���̿� ���� ����) 
17:00 �౸(ó����, ���ε�(�� 12��)�� �ٴ尡 ���Ϳ��� ��: �ǰ��ؼ� ����� �� ��) 
19:00 ���� 
19:30 �Ͱ� 
19:50 ����(�ѱ� ��ġ ��û ������) 
21:00 ��ħ 
==============================================================================================================
   
- 3����: 09.30(��)  @@@@@@@@@@ 
09:00 ���(S) 
09:10 ����(��) 
09:00 ���� ��ȥ�� �غ�  
13:00 �߽� 
15:00 ���� ��ȥ�� ���� 
15:30 ģô, ���� �ֹ� ���� 
16:00 ������ �κ� ���� 
16:30 ���� 
20:00 ���� 
20:30 �������(���ָ� ���ð� ��) 
22:00 ���� ����(������ �κο� �Բ�) ==> ���� ��(5õ��[27,073��]) 
23:00 ��ħ(S) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������