

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.09) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.09.01(토) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~18:00 

09:30 기상 
09:10 집에서 쉼 
11:00 루이엔(부인)과 화상통화(먼저 야후 문자 옴) 
20:00 석식 
20:50 루이엔(부인)과 화상통화 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.02(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦조기축구
06:00 기상 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교 
07:10 운동장 골대 그물망 교체 
07:50 게임(7:6 승): 1 AS(라이트 윙) 
11:00 종료 
11:40 한우 국밥집(종록이형이 쏨) 
12:50 종료  
13:50 귀가(버스 타고 감) 
17:20 가계부 결산 
18:40 장보기(GS 마트) 
19:00 계약서(국결, 플젝) 스캔 작업 
20:00 석식 
21:00 루이엔(부인)과 화상통화(뚜언과 전화통화(루이엔이 공부 열심히 안 한다고 함) 
22:30 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.03(월) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:00 --> 구차장 휴가(호주 여행: 1주일) 

- IOSP(/oauth2) Prj
- Auth OGG 동기화에 따른 DB 소스 수정 
1. TransactionStatus status = transactionManager.getTransaction(defaultTxDefinition): 

//MERGE_20120903 
TransactionStatus status = transactionManager.getTransaction(defaultTxDefinition): 

//MERGE_20120822 
USER_EXIST_REGION region =  socialClient.getExistRegionCode(userID, xOspAppId): 
==============================================================================================================

- [일일보고] - Auth, License  
- 작업 내용  
1. Auth OGG 동기화에 따른 DB 소스 수정[OSP2.0 변경 사항_20120819.xls](진행율: 5%)     
  1) OSP2.0 소스 분석 

이상입니다. 
==============================================================================================================

- 인삼 센타(강화도) 
1. 연락처(011-9032-0) 
2. 주문(인삼 1kg: 7만 3천원, 인삼사탕: ) 
-------------------------------------------------------------------------------------------------------- 

- 경동시장 인터넷상인회 
http://internetkyungdong.or.kr/shoppingmall/shop/item.php?it_id=1175479734 
==============================================================================================================

- SK엔카 
1. http://www.encar.com, tamario/s*j**8*1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.04(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 --> 신부(루이엔) 올케 언니 남아 출산 

- IOSP(/oauth2) Prj
- EU Cloud STG#2 배포 확인 
1. EU Cloud(신규 생성) 
Ext - eu.api.samsungosp.com(54.247.179.87) 
Int - eu.api.samsungosp.net(54.247.179.87) 
2. US IDC(사용 중) 
def authEndpoint = 'http://auth.samsungosp.com' //20. US IDC External  
==============================================================================================================

- US Cloud STG#2 배포 확인 
1. US Cloud(신규 생성) 
def authEndpoint = 'http://api.samsungosp.com' //25. US Cloud External 
def profileEndpoint = 'http://api.samsungosp.com'  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.05(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 --> 신부(루이엔)과 화상통화 안함 

- IOSP(/oauth2) Prj
- Stg1 CN 등록 
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

00. [메인_HUB] Stg1, Dev, DB, Funk 
 50.16.215.98:70 ==> 사용자 이름(U), 키(K): auth/iosp-dev-account  
06. Stg1_CN_IDC(tomc)_06 
 122.248.232.129:70, 10006  ==> 사용자 이름(U), 키(K): auth/iosp-dev-account  
==============================================================================================================

- Stg1 서버 start 에러 
1. 상태: SEVERE: Error starting endpoint 
java.net.BindException: Address already in use <null>:8080 
2. 해결책 
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

- Stg1 서버 start 에러2 
1. 상태: SEVERE: Error starting endpoint 
java.net.BindException: Address already in use <null>:8080 
2. 해결책 
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

- Stg1 서버 start 에러3 
1. 상태:  
05-Sep-2012 10:45:01 org.apache.coyote.http11.Http11Protocol start 
INFO: Starting Coyote HTTP/1.1 on http-8080 
05-Sep-2012 10:45:01 org.apache.catalina.startup.Catalina start 
INFO: Server startup in 13723 ms 
2. 해결책 
~$  ./startup.sh  ==> 절대 2번 하지 말것(ps -ef  grep auth 서버 상태가 2개 떠 있는지 확인할 것) 
==============================================================================================================

- 주간 회의(10:00 ~10:30) 
1. Stg1 CN 등록(auth, licnese)(이번주까지) 
2. Sta2 CN 등록(auth, licnese) 
3. Sta2 Cloud(EU(licnese), US(auth, licnese) 등록 확인 
4. PRD CN 등록(auth, licnese) 
5. 향후 업무S 
 1) OSP2.0. 성능 개선 사항 
 2) CR Merg 
 3) OSP1.0 변경 사항(CR이외) 
6. 기한: 전체 9월 28일(금)까지 끝내기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.06(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN 등록 
1. cn.auth.samsungosp.com: 122.248.232.129 
06. Stg1_CN_IDC(tomc)_06 
 122.248.232.129, 10006 ==> 사용자 이름(U), 키(K): auth/iosp-dev-auth 
07. Stg1_CN_IDC(tomc)_07(license) 
 122.248.232.129, 10007 ==>  사용자 이름(U), 키(K): license/iosp-dev-license 

1. TA팀 강웅건 부장님이 CN IDC로 간다는 09.05(수)에 전달 받았다고 함 
2. TA팀에서 CN IDC관련 모든 관련 프로세스를 구동하려면 월요일부터 가능하다고 함 
==============================================================================================================

- Stg1 서버 @@@@ 
00. [메인_HUB] Stg1, Dev, DB, Funk 
 50.16.215.98:70 ==> 사용자 이름(U), 키(K): auth/iosp-dev-auth 
11. Stg1_EU_IDC(tomc) 
 122.248.232.129:70, 10011  ==> 사용자 이름(U), 키(K): auth/iosp-dev-auth 
13. Stg1_US_IDC(tomc)[사용안함] 
176.34.99.254:70, 10013 ==> 사용자 이름(U), 키(K): auth/iosp-dev-auth 
14. Stg1_US_Cloud(tomc) 
184.73.161.211:70, 100014 ==> 사용자 이름(U), 키(K): auth/iosp-dev-auth 
16. Stg1_CN_IDC(tomc) 
122.248.232.129:70, 10016 ==> 사용자 이름(U), 키(K): auth/iosp-dev-account  
-------------------------------------------------------------------------------------------------------- 

- Stg2 서버 @@@@ 
20. [메인_HUB] Stg2 
 54.247.161.217:70 ==> 사용자 이름(U), 키(K): account/iosp-dev-account 
21. Stg2_EU_IDC(tomc) 
 54.247.167.97:70, 10021 ==> 사용자 이름(U), 키(K): license/iosp-dev-account 
22. Stg2_EU_Cloud(tomc)(license) ===> 제외 
 54.247.167.1149:70, 10022 ==> 사용자 이름(U), 키(K): license/iosp-dev-account 
23. Stg2_US_IDC(tomc)[사용안함] 
 184.169.141.194:70, 10023 ==> 사용자 이름(U), 키(K): license/iosp-dev-account 
24. Stg2_US_Cloud(tomc) 
 174.129.178.2489:70, 10024 ==> 사용자 이름(U), 키(K): auth/iosp-dev-account 
26. Stg2_CN_IDC(tomc) 
 46.137.214.241:70, 10026 ==> 사용자 이름(U), 키(K): license/iosp-dev-account  
-------------------------------------------------------------------------------------------------------- 

- PRD 서버 @@@@ 
90. [메인] PRD_DB(현재 사용 안함) 
 54.247.161.217:70 ==> 사용자 이름(U), 키(K): account/iosp-dev-account 
91. [메인] PRD(cniosppro01) 
 109.10.162.143:22 ==> Pasword방식: tamario.jin/!iosp0000 
00. DB PRD(CNIOSP1) -->109.10.164.141:1521 
127.0.0.1, 9001 ==> CNIOSP1: SOC/#soc345!, WSOC/#wsoc789#! 
92. [메인] PRD(cniosppro02) 
 109.10.162.144:22 ==> Pasword방식: tamario.jin/!iosp0000 
00. DB PRD(CNIOSP1) -->109.10.164.141:1521 
127.0.0.1, 9002 ==> CNIOSP1: SOC/#soc345!, WSOC/#wsoc789#! 

- 중국IDC, DB 접속 정보(PRD) 
1. 중국IDC Oracle #1 ==> CNIOSP1: 109.10.164.141:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
2. 중국IDC Oracle #2 ==> CNIOSP2: 109.10.164.142:1521  ===> 현재 사용 안함 
SOC/#soc345!, WSOC/#wsoc789#!  
==============================================================================================================

- URL_TEST(CN_IDC) 방법  
1. WAS 서버 설정 
auth@ec2-122-248-232-129:/iosp/comp/auth/logs$ ls -al 
-rw-rw---- 1 auth account      0 2012-09-05 05:29 tomcat_access.2012-09-05.log 
-rw-rw---- 1 auth account    845 2012-09-06 04:30 tomcat_access.2012-09-06.log  @@@===> 최신 파일 확인 
auth@ec2-122-248-232-129:/iosp/comp/auth/logs$ tail -f /iosp/comp/auth/logs/tomcat_access.2012-09-06.log  
[06/Sep/2012:04:12:11 +0000] 127.0.0.1 0.002 - 0 /auth/ 
2. 브라이저에 URL 기입 
1) URL: http://cn.auth.samsungosp.com/auth/TEST_JIN_01  @@@===> 엔터 침 
3. WAS 서버에서 확인 
[06/Sep/2012:04:22:07 +0000] 127.0.0.1 0.002 - 0 /auth/TEST_JIN  @@@===>  보여짐(URL이 정확한 것으로 파악됨) 
==============================================================================================================

[일일보고] - Auth, License  
- 2012년 9월 6일  
- 작업 내용  
1. Stg1 CN 등록 
 1)  Stg1 CN 등록(auth)(진행율: 70%) 
 2) Stg1 CN 등록(licnese)(진행율: 40%)  
2. 통합OSP STG#2 CN-IDC 접속 확인(진행율: 100%)   
이상입니다. 
==============================================================================================================

- 해외심카드 
http://usimstore.com/Html/Goods/GoodsDetail.asp?intNum=83&intPage=&strCategory_Code=1049510004 
http://blog.naver.com/usimkorea?Redirect=Log&logNo=20157082478 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.07(금) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN 등록 
1. cn.auth.samsungosp.com: 122.248.232.129 
06. Stg1_CN_IDC(tomc)_06 
122.248.232.129, 10006 ==> 사용자 이름(U), 키(K): auth/iosp-dev-account 
07. Stg1_CN_IDC(tomc)_07(license) 
122.248.232.129, 10007 ==>  사용자 이름(U), 키(K): license/iosp-dev-license 

1. TA팀 강웅건 부장님이 CN IDC로 간다는 09.05(수)에 전달 받았다고 함 
2. TA팀에서 CN IDC관련 모든 관련 프로세스를 구동하려면 월요일부터 가능하다고 함 
==============================================================================================================

- PRD CN_IDC 등록  
91. [메인] PRD(cniosppro01) 
109.10.162.143:22 ==> tamario.jin/!iosp0000  
92. [메인] PRD(cniosppro01) 
109.10.162.144:22 ==> tamario.jin/!iosp0000 
-------------------------------------------------------------------------------------------------------- 

- 중국IDC, DB 접속 정보(PRD) 
1. 중국IDC Oracle #1 ==> CNIOSP1: 109.10.164.141:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
2. 중국IDC Oracle #2 ==> CNIOSP2: 109.10.164.142:1521  ===> 현재 사용 안함 
SOC/#soc345!, WSOC/#wsoc789#!  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.08(토) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~18:00 

05:30 기상 
06:10 신봉천 주유소(태훈이형 차): 바람 많이 붐 
06:30 신구초등학교 
06:50 숏게임(3:0 패) 
07:40 종료 
08:00 조식(화정식당: 한상봉 부회장님이 쏨) 
09:30 종료 
10:10 신사역 1번 출구(임모, 종환 도착) 
10:20 현용 도착(기아 K5 렌트 함(4만원 줌)) 
11:00 장보기(농협 하나로 마트(양재점): 359,689원) - 술 너무 많이 삼(맥주 안주 없음) 
12:00 서울 출발(차 많이 막힘) 
15:20 펜션 도착(웰빙하우스: 충남 공주시 계룡면 중장리 435-4): 6명 10만원(추가 1인: 만원, 숯 만원) 
15:40 고기 굽기(쇠고기) 
16:30 태용, 상환, 일남 도착 
18:00 족구(중장초교(폐교)) 
19:00 종료 
19:30 고기 굽기(돼지고기) 및 반찬  
22:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.09(일) 작업 ■■■■■■■■■■■■■■■ 
---> 09:00 ~ 18:00 

▦조기축구
06:40 기상 
07:00 설겆이 
08:30 조식(라면, 밥) 
09:30 계룡산 갑사 방문(일남차 운전): 태용, 일남, 상환, 임모(입장료: 2천원, 주차료 :4천원) 
12:00 짐정리 
12:30 철수 
13:00 중식(곰탕, 도가리탕) 
13:40 종료 
13:50 공주 출발(임모 운전, 차 많이 막힘) 
17:00 귀가 
19:40 석식 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.10(월) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 CN 등록 확인 ==> TA팀 Coherence 담당자인 전영호 과장에게 문의 
1. Coherence 에러 발생 
- Stg2 CN 등록 확인 
1. Coherence 에러 발생  
==============================================================================================================

- Auth OGG 동기화에 따른 DB 소스 수정 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java  
==============================================================================================================

- 오디오 CD 변경(FreeRIP) 
1. .cda 파일을 .avi 파일로 변경처리 함 
http://file.naver.com/pc/view.html?fnum=313207&cat=41 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.11(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG 동기화에 따른 DB 소스 수정 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

- 신부꺼. 하이드라2종으로 분홍색빛 나는 병. 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A611626310&cc=AA02&keyword=이자녹스X2D2하이드라2종&Fwk
=이자녹스X2D2하이드라2종&scoredtype=0&frm2=through&acode=SRP_SV_0301 
42800원  

- 이거는 올케꺼 쬐매 싼거. 
http://www.akmall.com/catalog/general/detail.jsp?disp_class_cd=59&goods_cd=241113030198&urlpath= A1_3@59@A01@@F01&front=N 
33900원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.12(수) 작업 ■■■■■■■■■■■■■■■ 
---> 06:30 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG 동기화에 따른 DB 소스 수정(//MERGE_20120903) 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

- Stg1 서버 Start  에러 
1. 현상 
2012. 9. 12 오후 5:51:37 org.apache.naming.NamingContext lookup 
경고: Unexpected exception resolving reference 
org.apache.commons.dbcp.SQLNestedException: Cannot create PoolableConnectionFactory (IO 예외 상황: 
The Network Adapter could not establish the connection) 
2. 에러 내용 
에러코드가 12505인 것은 TNS에러 입니다. TNS에러는 주로 오라클과의 네트워크 연결과 관련된 에러이죠 
3. 조치:  
00. [메인_HUB] Stg1, Dev, DB, Funk 시작 후 ecliset tomcat start 할 것  
==============================================================================================================

- 사증심사 결과조회(하노이 대사관) 
http://vnm-hanoi.mofat.go.kr/korean/as/vnm-hanoi/consul/visa/visaissue/index.jsp 

- ExK서비스 
http://blog.naver.com/treeindream/159001453 
1. 씨티은행: 현금카드 
==============================================================================================================

- 베트남에서 현지 유심으로 전화/인터넷(3G) 사용하기 
http://www.exk.kr/service/intro/sub_01.jsp  
==============================================================================================================

- 스마트 패드 구매 검토  
2. 뉴아이패드(16G): 545,000원  
http://blog.danawa.com/prod/?prod_c=1626331&cate_c1=224&cate_c2=38768&cate_c3=38783&cate_c4=&keyword= 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.13(목) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 20:00 

- IOSP(/oauth2) Prj
- Stg1 수정 소스 적용 
11. Stg1_EU_IDC: 작업 완료 
13. Stg1_US_IDC: 사용 안함 
14. Stg1_US_Cloud: 작업 중 ==> 184.73.161.211 
16. Stg1_CN_IDC: TA팀에서 작업 중 
-------------------------------------------------------------------------------------------------------- 

- Stg2 수정 소스 적용 
21. Stg2_EU_IDC: 작업 완료 
23. Stg2_US_IDC: 작업 완료 
24. Stg2_US_Cloud: 작업 중 ==> 174.129.178.248 
26. Stg2_CN_IDC: TA팀에서 작업 중 
==============================================================================================================

- 지방소득세(종합소득분) 납부(http://www.giro.or.kr/index.giro) 
1. 전자납부번호: 1162012012801197833 
2. 2011년 귀속분(확정신고분): 20,090원 
==============================================================================================================

- 06. 베트남어 300 
02-1과 ==> 1-02-1과 
03-트랙 3 ==> 1-03-트랙 3 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.14(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth OGG 동기화에 따른 DB 소스 수정(//MERGE_20120903) 
/biz/UserAuthBizImpl.java 
/biz/ServiceBizImpl.java 
==============================================================================================================

501. [Profile] UserService_getUser 
http://api.samsungosp.com/v2/profile/user/user/t70f55z2q1 
accept: text/xml 
x-osp-appId: sfteste001 
x-osp-userId: rlpil0b9px 
Content-Type: text/xml 
테스트 ==> userId : t70f55z2q1, rlpil0b9px 
==============================================================================================================

- 신부 선물(화장품, 미용 용품) 
우리은행 485-052481-02-001, 이후남, 90,880원 
-------------------------------------------------------------------------------------------------------- 

- 화장품 
아이리스 바디워시 
더페이스샵-아르생뜨 
멀티 케어 비비 크림1호 스킨 SPF 
파슬리&만다린  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.15(토) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~18:00 

06:30 기상 
09:10 베트남어 300 공부(16과 ~20과)(집에서) 
12:00 중식(라면) 
13:00 베트남어 300 공 
20:00 석식 
20:50 루이엔(부인)과 화상통화 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.16(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦조기축구
06:00 기상 
06:30 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교  
07:50 게임(8:8 무) 
09:00 게임(7:4 패): 점심 내기를 함 
11:00 종료  
11:40 류명국 해장국집(부대찌게: 치근이형이 쏨) 
12:50 종료 
13:00 귀가  
13:30 영화 시청(집으로, 작업의 정석)  
20:00 석식 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.17(월) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth 소스 분석 
==============================================================================================================

- 뉴아이패드 패드 구매 
1. 뉴아이패드(16G): 545,000원  
http://e-mate.co.kr/member/orderDetail.php?sOrderKey=20120917091811-PH105&nOrderYear=&sOrderName=&sOrderPass= 
2. 송금: 농협중앙회, 예금주: 홍준기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.18(화) 작업 ■■■■■■■■■■■■■■■
---> 06:10 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth 소스 분석 
==============================================================================================================

- 뉴아이패드 배송 및 설정 
1. 네트워크 설정(무선 네트워크로 공유) 
http://blog.naver.com/cadpia71?Redirect=Log&logNo=110095376436 
2. 아이튠 설정 
http://file.naver.com/pc/view.html?fnum=332340&cat=41 
-------------------------------------------------------------------------------------------------------- 

- 무선 네트워크 연결 
http://lambada.co.kr/80097069638 
1.제어판\네트워크 및 인터넷\네트워크 연결 
 1) 로컬 영역 연결 
  - "다른 네트워크 사용자가 이 컴퓨터의 인터넷 연결을 통해 연결할 수 있도록 허용" 체크 
  - "무선 네트워크 연결" 선택 
  - "다른 네트워크 사용자가 공유 인터넷 연결을 제어하거나 중지시킬 수 있도록 허용" 체크 
 2) 무선 네트워크 연결 
 3) 무선 네트워크 연결 2 ==> 사용 안함을 한 후 다시 사용으로 설정(에러가 날 때) 

2. 제어판\네트워크 및 인터넷\무선 네트워크 관리 > 추가(클릭) 
 1) 무선 애드혹(컴퓨터 대 컴퓨터) 네트워크를 설정합니다." 클릭 
 2) "무선 네트워크에 수동으로 연결" 
  - 네트워크 이름 : 01. TAMA_Ad hoc 
  - 보안 종류 : WEB  
  - 보안 키 : 33900 
3. Fn + F8: 네트워크 켜기(빨간 불이 옴) 
4. IE Tab + X ==> 모바일 센터[무선 테트워크 끄기(T)로 보임]] 
5. MSI MSI GT638DX-i7 노트북(업무용으로 사용하는 노트북) 무선 확인 
 1) Intel® Centrino® Wireless-N 130 ==> http://www.intel.com/p/ko_KR/support/detect/wireless 
-------------------------------------------------------------------------------------------------------- 

- Virtual Router Manager 
http://wwo.wo.tc/10147476178 
1. Virtual Router Settings 
 1) Network Name(SSID) : 02. TAMA_Virtual Router M  
 2) Password : aa11221122  
 3) Shard Connection: 로컬 영역 연결 
-------------------------------------------------------------------------------------------------------- 

- Connectify로 와이파이존을 만들자.(NASCA 보안 위배로 사용 불가함) 
http://elwlsek.tistory.com/21 
==============================================================================================================

- iPad 
1. Apple ID 
tamario@naver.com/ssjtm3390A 
2. Change your security questions. 
Q: 처음 만난 유명인? 
A: jt390A 
- iCloud 
*@*.*/ssjtm3390A 
- iTunes Store 
*@*.*/ssjtm3390A 
- iMessage 
*@*.*/ssjtm3390A 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.19(수) 작업 ■■■■■■■■■■■■■■■
---> 06:35 ~ 11:00 

- IOSP(/oauth2) Prj
- Auth 소스 분석 
==============================================================================================================

- 국제결혼 안내 프로그램 교육  
11:00 퇴근 
11:10 중식 
11:55 용산 터미널 전자랜드 방문(로지텍 울트라씬 키보드 커버 구매) 
12:20 용산 터미널 상가 방문(뱀부 스타일러스 펜 구매) 
13:20 서울출입국사무소 도착(양천구청역 1번 출구): 잘못 감 
13:30 택시탐(길 헤맴) 
13:50 한국이민재단 도착 
14:00 교육 시작 
17:00 교육 종료 
17:30 홈플러스(신도립역: 라면, 사탕 구입) 
19:00 귀가 
20:00 석식 
21:00 루이엔(부인)과 화상통화 
23:40 취침 
==============================================================================================================

- 국제결혼 안내 프로그램 교육 이수 
0. 국제결혼 안내 프로그램 이수증 
 1) 이수번호: SU-PP-12-0020989 
1. 국제결혼 안내 프로그램(http://www.hikorea.go.kr/pt/index.html) ==> 전자민원 > 전자민원신청하기  
 > 신청가능한 민원 사무목록 list: 민원사무명(국제결혼 안내 프로그램)(클릭) > 신청서 작성 
2, 교육 일정  
1) 9월 19일(수)(14:00~17:00), T) 2650-6228 ==> 서울출입국관리사무소((02-2650-6228) 
3. 장소: 한국이민재단(부설 사회교육원) 서울시 양천구 목동 923-6(대한민국예술인센터 5층)  
 1) 5호선 오목교역 2번 출구 
4. 참고 장소: 서울출입국사무소(서울특별시 양천구 신정동 330-11호 한국이민재단 사회교육원)  
 1) 위치: 지하철 2호선 양천구청역 1번 출구: 은정초교 뒷편) 
==============================================================================================================
   
- 뉴아이패드 악세사리 구입 
1. WACOM 뱀부 스타일러스 펜(터치펜)CS-100, 34.040원 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A586574545&frm3=V2 
 1) 판매점: 서울시 용산구 한강로3가 터미널 상가 406호/02-3272-1181 
2. 로지텍 울트라씬 키보드 커버: 111,530원 ==> 용산 직접 방문해서 11만원에 구입 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=281771423&GoodsSale=Y&jaehuid=200002657&service_id=pcdn  
 1) 판매점: 서울시 용산구 한강로3가 16-9 전자랜드 본관 C-354호 (주)아이티전산  ==> 02-3272-2261 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.20(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- Auth 소스 분석 
==============================================================================================================

- 베트남 신부 택배 받음 
1. 응우엣(김혜림: 친척, *): 김해시삼정동 58-6 태양주택 302호 
2. 능(김성용: 동네언니, *): 김해시 진영읍 진영리 중흥S 클래시1단지 APT 107동 1602호 
3. 국제특송 우체국 EMS 가격(http://ems.epost.go.kr:8080) 
4. 베트남항공 수하물 규정 
 1) 부치는 짐(여행용 캐리용 사용): 인당 20kg(관행적으로 5kg 추가 가능), 추가는 kg당 1~2만원 
 2) 기내에 들고 가는 짐: 10kg(가방 2개까지 가능), 액체는 100ml이하만 가능 
5.. 대한항공 수하물 규정 
 1) 부치는 짐(여행용 캐리용 사용): 인당 23kg(관행적으로 5kg 추가 가능), 추가되면 10만원 
 2) 기내에 들고 가는 짐: 7kg(가방 2개까지 가능), 액체는 100ml이하만 가능 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.21(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 
1. host 파일 
27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net  
==============================================================================================================

- soapUI memory 에러 처리 
C:\Program Files\SmartBear\soapUI-Pro-4.0.1\bin에 위치한 (설치된 위치) 
soapUI-Pro-4.0.1.vmoptions 와 soapui-pro  파일내 메모리 설정을 아래와 같이 수정해 주시면 됩니다. 
-Xms256m  ==> 이전: -Xms128m 
-Xmx512m  ==> 이전: -Xmx256m 
-Xms512m  ==> 이전: -Xms128m 
-Xmx748m  ==> 이전: -Xmx256m 
==============================================================================================================

- 뉴아이패드 업그레이드 
1. IOS 5.1에서 IOS 6.1로 업그레이드 
- 뉴아이패드 탈옥 
http://blog.naver.com/ifixhd?Redirect=Log&logNo=140164875480 

- 뉴아이패드 동영상 파일 변환(mp3로) 
http://blog.naver.com/agami11?Redirect=Log&logNo=110143139050 
==============================================================================================================

 - 뉴아이패드 추천 어플 
1. 돌핀브라우저 - 웹서핑(설치 완료) 
2. pooq - 텔레비전 보는 어플(설치 완료) 
3. 리디북스 - 책 보는 어플(설치 완료) 
4. 에버노트 - 메모, 필기, 노트 공유 
5. iPhoto - 사진 보관, 편집, 관리  
6. Paper - 드로잉  
7. Bamboo Paper - 드로잉, 이건 스타일러스 펜이 있어야 더 좋을 듯 (설치 완료) 
8. Polaris Office - 엑셀, 파워포인트, 워드 편집과 뷰가 가능한 오피스 프로그램(유료) 
9. Blogsy - 블로그에 글 쓸 수 있는 어플, 글과 사진 삽입 가능. 근데 완전 맘에 들진 않음 
10. 주키퍼 : 여자친구랑 같이 하면 연승도하고 참 재밌음 
11. fingle :  
12. AVplayer: 짤은 시네마천국 
13. Real Racing 2 HD(유료) 
14. 굳리더(goodreader) 
- texplus(없음) 
http://blog.naver.com/goodkissjc?Redirect=Log&logNo=166793615 
15. 에어비디오(유료) 
==============================================================================================================

- 뉴아이패드 도착 및 사양 
1. 운영 체제 - iOS 5.1 
2. 프로세서 - 1GHz, Dual-core Apple A5X 
3. 디스플레이 - 9.7인치, LED Backlight LCD(2048 X 1536) PowerVR SGX 543 MP4+ 
4. 하드 - 16GB(구매한 것), 32GB, 64GB 
5. 무게 - 약 0.66kg 
6. 웹 카메라 - 전면 30만 화소 / 후면 500만화소 
7. 블루투스 4.0 / 터치패드(멀티터치) 
-------------------------------------------------------------------------------------------------------- 

- 뉴아이패드 악세사리 구입 
1. WACOM 뱀부 스타일러스 펜(터치펜)CS-100, 34.040원 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A586574545&frm3=V2 
 1) 판매점: 서울시 용산구 한강로3가 터미널 상가 406호/02-3272-1181 
2. 로지텍 울트라씬 키보드 커버: 111,530원 ==> 용산 직접 방문해서 11만원에 구입 
http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=281771423&GoodsSale=Y&jaehuid=200002657&service_id=pcdn  
 1) 판매점: 서울시 용산구 한강로3가 16-9 전자랜드 본관 C-354호 (주)아이티전산  ==> 02-3272-2261 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.22(토) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~18:00 

07:30 기상 
07:50 글빛도서관(자전거 열쇠 없어서 그냥 집으로 옴) 
08:10 집에서 쉼 
09:00 영화 시청(도가니) 
12:00 석식 
18:00 석식 
18:30 추석 선물(사과: (주)아이엘포유에서 택배로 보냄) 
18:60 아날로그 체중계 받음(택배) 
20:00 장보기(신신파스 아렉스, 안티프라민S 로션 구입) 
20:00 석식 
20:50 루이엔(부인)과 화상통화 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.23(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦조기축구
06:00 기상 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교 
07:50 게임(1:3 패) 
09:00 게임(0:0 승): 연예인 프렌즈팀(드라마 "사랑과 전쟁" 멤버) 
11:30 종료 
11:40 순대국집(조기회에서 쏨) 
13:40 종료  
14:30 강남터미널(포항집에서 보낸 김치 찾아옴) 
15:30 이발(봉천동: 빅맨) 
16:00 귀가 
16:00 염색 
20:00 석식 
21:00 루이엔(부인)과 화상통화 
22:30 방청소 및 베트남 여행 짐 정리 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.24(월) 작업 ■■■■■■■■■■■■■■■
---> 06:43 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 
1. host 파일 
27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net  
-------------------------------------------------------------------------------------------------------- 

- CN IDC OSP 2.0 TEST 결과 
01. AuthService-createAccessToken 
==> 정상 

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
==> 정상 

05. AuthService-isValid 
1. getSignedUserInfo_400_01 ==> error: AUT_5002, The exception was occurred from isvalidUser Method using the UserService of the Profile. 

06. AuthService-revoke 
==> 정상 

07. AuthService-getSignedUserInfo 
1. getSignedUserInfo_400_01 ==> error: AUT_1027,invalid_request  
1. getSignedUserInfo_400_02 ==> error: AUT_1804,invalid_request  

08. AuthService-getSignedConfirmationInfo 
==> 정상 
==============================================================================================================

- 인삼 센타(강화도) 
1. 연락처(*) 
2. 주문: 인삼 1kg: 5만 5천원, 인삼사탕: 만원(4봉) ==> 총 6만 5천원(9월 25일에 주문하기로 함)  
3. 송금: 농협 241050-52-131434, 예금주 :조영림, 6만 5천원 송금 완료 
==============================================================================================================

- 신부 선물(화장품, 미용 용품) 
1 송금: 우리은행 485-052481-02-001, 이후남, 90,880원 송금 완료 
내용 금액 할인금액 총금액 
더페이스샵-아르생뜨  2 종 21,800 0 21,800 
슬리&만다린 2 종 15,400 310 15,090 
멀티 케어 비비 크림1호 스킨 SPF 12,900 260 12,640 
아이리스 바디워시2개/샴푸/엑사컨디셔너 33,900 2,000 31,900 
유아로션 샴푸 바스 오일 크림   10,450 1,000 9,450 
합계 94,450 3,570 90,880 
==============================================================================================================

- 넥타이 매는 법 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.25(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 20:00 

- IOSP(/oauth2) Prj
- LDAP 장애요소 제거
[기존 문제점] 
 - LDAP Connect 
      - LDAP 조회 
        - DB 조회                     ==> 이와 같이 LDAP Connection이 완료되기 전에 DB 로직이 포함되어있으면, LDAP delay 현상 발생 
          - LDAP Disconnect 
 
  [수정반영]   => SF 전체 서비스에 대해 LDAP vs DB 간 서로 중간에 끼워넣는 로직을 다 제거하고 독립적으로 완료이후에 호출하는 로직으로 변경됨. 
- LDAP Connect  
- LDAP 조회 
- LDAP Disconnect 
- DB 조회 
==============================================================================================================

- CN IDC OSP 2.0 TEST 결과 
01. AuthService-createAccessToken 
01. AuthService-createAccessToken 
createAccessToken_client_id_AUT_1806_02 
error: AUT_1024, The pattern of a client_id parameter is invalid.  

02. AuthService-createAuthorizationCode 

04. AuthService-deauthenticate 
==> 정상   

05. AuthService-isValid 
==> 정상 

06. AuthService-revoke 
==> 정상 

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
1. 사용중(방화벽 문제로) 
109.10.162.141 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
109.10.162.142 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
2. 사용 안함 
#27.106.206.97 tmp.cn.api.samsungosp.com tmp.cn.api.samsungosp.net 
#27.106.206.97 tmp.cn.auth.samsungosp.com tmp.cn.auth.samsungosp.net 
==============================================================================================================

- 베트남 문자 보내는 방법 
1. 한국에서 베트남으로 전송(해외) ==> 통신사번호 + 국가번호 + 휴대폰번호 
 1) 002-84-97-605-8762(루이엔) ==> 097-605-8762 
  ==> SKT= 1579, KTF = 00345, LGT= 002 
 2) 001-84-97-0, 00700-84-97-0 
2. 베트남에서 전송 
 1) 097-605-0(루이엔) 
3. 해외문자 전송 업체 
 1) 슈어엠: http://www.surem.com/smsintl/english/main.asp 
 2) 쏜다넷: http://www.xonda.net/Service/FareChart.asp 
4. 지인 연락처 
 1) 뚜원(통역): 002-84-9824-0 
 2) 허원석(의정부 녹차): 010-8884-0, 홍(녹차 신부): 002-84-16-4380-0(016-4380-0) 
 3) 최은영 실장(가원W): 010-6321-0 
 4) 김금숙 매니저(가원W): 010-8959-0  
 5) 웬티하(가원W 통역): 010-9733-0 
==============================================================================================================

- 해외유심칩 
1. 해외유심칩이란  
현재 본인이 사용하고 있는 휴대폰을 갖고 해외로 가서 (로밍이 아니라)  현지 전화번호를 갖고 전화통화를 할  
수 있게 해주는 서비스를 제공해 주는 칩 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.26(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 결과 
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
==> 정상  

05. AuthService-isValid 
==> 정상 

06. AuthService-revoke 
==> 정상 

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

■■■■■■■■■■■■■■■■■■ 2012.09.27(목) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 결과 
1. 김동준 선임에게 메일 발송 및 직접 방문하여 에러 확인 요청 
==============================================================================================================

- 은행 방문(환전, 시티은행 현금카드) 
1. 환전(SC은행) 
 1) 1달러: 1,128.39원 ==> 2,500달러: 2,820,975원 
 2) SC은행에서 단골고객으로 환전 
 3) 해외 출국시 소지 가능한 현금: 1만불 미만(1,200만원) 
 4) 베트남으로 소지 가능한 현금: 5천불 미만 
---------------------------------------------------------------------------------------------------- 

- 씨티은행 통장 개설 
1. 계좌번호: 151-16548-264-01, 참똑똑한 A+통장(제축예금) 
 1) 사용자ID: tamario/ta****9  
 2) 고객번호: 136180792 
 3) 씨티 국제현금카드 발급(베트남 처가를 위해 발급) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.09.28(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 

- IOSP(/oauth2) Prj
- CN IDC OSP 2.0 TEST 결과 
==============================================================================================================

- 은행 방문(환전, 시티은행 현금카드) 
1. 환전(SC은행) 
 1) 1달러: 1,124원 ==> 534달러: 600,216원(타오 남편) 
==============================================================================================================

- 루이엔 한국 지인 
1. 능[고향 언니, 김해: 짐부탁(부모님 옷, 샴푸)]: 한국결혼 5년, 애기 없음 
2. 허우[고향 언니, 의정부]: 한국결혼 3년, 딸(세라), 아들(임신 중), 남편이 버스기사 
3. 응우엣[고종 사촌 언니, 김해: 짐부탁(부모님 옷)], 박혜림 
4. 타오[고종 사촌 언니, 광주: 돈 전달 부탁(60만원)] 토와 언니 
==============================================================================================================

- 1일차: 09.28(금)  @@@@@@@@@@ 
13:00 퇴근 
13:30 귀가 
14:20 집출발 
14:40 공항버스 탑승(6003번[서울대입구역 --> 인천공항]: 9,000원) 
16:50 인천공항 도착(6번 게이트 앞) ==> 9번 게이트 2번으로 이동 
17:00 수하물 체크인(21.2kg[대한항공: 23kg까지 가능]) ==> 전자항공권 발행 확인서 보여주고 진짜 티켓 받음 
        대한항공이고 일찍와서 창가 좌석 받음 
18:00 보안검사(보딩패스 받음) 
18:20 자동출국심사 등록 및 심사 
19:00 대한항공 탑승 
19:30 대한항공 출발 
20:00 영화 시청(코리아, 시체가 사라졌다) 
22:05 하노이 공항 도착  
22:10 자동출국심사  
22:20 짐 찾기 
22:30 세관 보안 검사(2번 함) 
22:40 루이엔, 작은 처남, 토와(사촌 동생) 꽃들고 환영을 함 
22:50 택시 탑승 
01:50 하이퐁 처가 도착 
02:00 장인에게 결혼식 비용(1,000불), 신부에게 용돈(500불) 줌 
      --> 능(옷, 샴푸), 응우엣(옷) 선물, 타오 환전한 돈(554동)을 전달함 
03:00 취침 
---------------------------------------------------------------------------------------------------- 

 - 항공권 예약 결제(예약번호: GHHDVK) 
1. 항공권결제시한: 12/08/03 17:00( (예약번호 : GHHDVK) 
2. 항공 스케줄 
 1) 출국: 베트남항공(3411편): 인천  09-28(금) 19:30 ==> 하노이  09-28(금) 22:05  
 2) 입국: 베트남항공(416편): 하노이  10-03(수) 23:40 ==> 인천  10-04(목) 05:50 
3. 총 결제금액: 699,100원 (TAX/유류할증료 포함)(항공료: 590,000원)  
==============================================================================================================

- 2일차: 09.29(토)  @@@@@@@@@@ 
09:00 기상(S) 
09:10 조식(빵)  
13:00 중식 
13:30 응아, 푸흥씨 만남(루이엔 한글 공부반 친구) 
14:00 조부모집 방문(수저셋트 선물 함(아주 좋아함). 숙부님이 그림 선물로 줌) 
15:10 고모집(타오, 토와) 방문 
16:00 쇼핑(반바지 2개, 반팔티, 레알 축구 유니폼 구입, 루이엔 상의 구입) 
17:00 축구(처남들, 지인들(총 12명)과 바닷가 공터에서 함: 피곤해서 제대로 못 뜀) 
19:00 종료 
19:30 귀가 
19:50 석식(한국 김치 엄청 좋아함) 
21:00 취침 
==============================================================================================================
   
- 3일차: 09.30(일)  @@@@@@@@@@ 
09:00 기상(S) 
09:10 조식(빵) 
09:00 전통 결혼식 준비  
13:00 중식 
15:00 전통 결혼식 시작 
15:30 친척, 동네 주민 도착 
16:00 원석씨 부부 도착 
16:30 만찬 
20:00 종료 
20:30 가라오케(맥주만 마시고 옴) 
22:00 동네 여관(원석씨 부부와 함께) ==> 내가 쏨(5천동[27,073원]) 
23:00 취침(S) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■