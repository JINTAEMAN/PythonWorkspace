

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.05) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.05.01(화) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 15:00 --> 노동절, 치과 치료(입술 다쳐서 1주일 동안 밥도 제대로 못 먹음) 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() 수정 
1. response 추가(테스트) 
==============================================================================================================
   
04:50 기상 
04:50 프리미어(맨유:맨시티) ==> (36라운드 맨유 1:0 패배 -> 승점 86점으로 동률, 골득실차로 맨시티 1위 
06:50 신구초등학교 ==> 상설이형(공 찾아 옴): 사람이 없어서 축구 못함 
07:00 출근(걸어서 역삼823 빌딩까지 옴) 
11:30 중식(콩나물국밥)  
15:00 퇴근  
15:50 다빈치 치과의원 
16:00 스켈링 받음 
17:00 귀가 
18:00 다빈치 치과의원(왼쪽 아래 어금니 2개 치료, 오른쪽 송곳니 1개 치료)  
20:00 종료(다음주 화요일 예약) 
17:00 귀가 
08:00 취침  
-------------------------------------------------------------------------------------------------------- 

- 치과치료(다빈치 치과의원: T)884-2757) ==> 치료 
1. 치료(왼쪽 아래 어금니 2개 치료, 오른쪽 송곳니 1개 치료) ==> 3개 105만원 
2. 스켈링비(6만원) ==> 서비스 
3. 왼쪽 아래 어금니 금값(5만원) ==> 총 100만원(94만원 카드 계산, 6만원 현금 계산) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.02(수) 작업 ■■■■■■■■■■■■■■■
---> 07:15 ~ 21:00 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() 수정 
1. response 추가(테스트) 
1) response.addHeader("Location", result.toString());  //==> Response does not contain any headers. 
---------------------------------------------------------------------------------------------------------- 

- SocialProxyServlet.java 파일에서 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 

response.addHeader(headerName, headerValue); 
==============================================================================================================

- check_mandatory 추가 
1. 필수 항목 체크(추후 적용할 것) 
==============================================================================================================

- Client Stub Gen 실행 방법(local에서)  @@@@@@@ 
1. auth-svc project에서 Run As ==> Maven build ==> Goals: dependency:copy-dependencies로 실행 
2. Build.xml 실행 
1) Build.xml(마우스 오른쪽 버튼) ==> Run As ==> 1. Ant Build ==> Edit configration(새창) >  
Target(Tab) : clean-all, build(체크) > Apply(클릭) > Run(클릭) 
[jar] Building jar: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\dist\auth-client.jar 
BUILD SUCCESSFUL 
Total time: 16 seconds 
3. /auth-svc/dist/auth-client.jar와 /auth-svc/auth-client/src/main/java/com/samsungosp/auth/oauth2/service 
/AuthServiceResourceClient.java가 생성됨 
---------------------------------------------------------------------------------------------------------- 

- java Application(local에서)  @@@@@@@ 
1. /stub-2.0-client-sample(마우스 우 클릭) > Import as Project 
(/ClientStubSample/branches/stub-2.0-client-sample 폴더) 
2. Package 및 파일 생성 및 파일 수정 작업: com.samsungosp.client.auth, 
/stub-2.0-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java 
3. Tomcat v6.0 Server at localhost 시작 
4.  java Application 빌드 
1) AuthServiceClient.java(마우스 우 클릭) > Run As > java Application(클릭) 

- java Application 환경 셋팅 
1. Name: 91. AuthServiceClient[Client Stub] 
2. Project: stub-2.0-client-sample 
3. Maiin Class: com.samsungosp.client.auth.AuthServiceClient 
4. Arguments: Arguments> VM Arguments: Tomcat v6.0 Server at localhost 복사하여 붙여넣기 처리 
---------------------------------------------------------------------------------------------------------- 

- client stub 테스트 방법(local에서)  @@@@@@@ ==> /stub-2.0-client-sample 
1. /auth-svc/auth-client/src/main/java/com/samsungosp/auth 폴더를 복사 
2. /stub-2.0-client-sample/src/com/samsungosp 폴더에 붙여넣기(/stub-2.0-client-sample/src 폴더에 해당 pakage 생성됨) 
3. /stub-2.0-client-sample/src/com/samsungosp/client/auth/AuthServiceClient.java 파일로 디버깅(Open Declaration이 
가능해짐) 
4. /AuthServiceResource.java 파일 @param 값 정확히 점검할 것(log.debug 안찍힘) 
1) * @param grant_type [required] - only use in Customized Flow for Device 
* @param client_id [required] - app_id is client identifier. 
2) AuthServiceResource.java 파일에서 
public class AuthServiceResourceClient extends GenericResourceClient { 
public java.lang.String createUserAuthToken ( 
// content-type(response type) 
builder = builder.type(MediaType.valueOf("text/xml")); 
builder = setHttpHeader(builder); 
System.out.println("[/AuthServiceResourceClient.java] [createUserAuthToken()] ==> [resource]"+ resource +"[builder]"+ builder ); 

getResponseHttpHeader().setProperties(response.getMetadata()); 
int responseHttpStatus = response.getStatus(); 
System.out.println("[/AuthServiceResourceClient.java] [createUserAuthToken()] ==> [responseHttpStatus]"+ responseHttpStatus ); 
} 
} 
---------------------------------------------------------------------------------------------------------- 

1. IOSP Open API Client Stub Guide 
D:\OSP2.5\workspace\IOSP\Co-work\1. IOSP 공식문서\1. Archtect\2.설계\AA/통합OSP_Open API Client  
Stub가이드(v0.1)_AA.pptx 
2. Client Stub Development Guide 
D:\OSP2.5\workspace\DOC\DOC\OspServer\Work\3. OAF\3. SF/OAF_Client_Stub_Guide_v1 3.ppt 
==============================================================================================================

- 프로그램 설치(Database for Oracle) 
1. OraClient10g 설치(setup. exe) 
 1) Oracle 홈페이지(http://www.oracle.com)에서 client 설치파일을 다운 받는다.  
가. 설치파일: 10201_client_win32.zip   
나. 설치유형 선택에서 관리자 유형(SQL Plus 워크시트가 포함되어있다.)을 선택 
 2) 압축된 설치파일을 적당한 폴더에 풀고 setup.exe 파일을 실행시킨다.  
 http://blog.naver.com/wangkkulmul?Redirect=Log&logNo=30023175932 
 3) 연결 확인 
가. OraClient10g_Home1 > 통합된 관리 툴 > SQLPlus 워크시트(새창) 
나. 사용자 이름(U): wsoc, 암호(P): osp123, 서비스: 127.0.0.1:7080/DEVIOSP1(10.76.249.108:1521/DEVIOSP1) 
2. PL/SQL Developer 9.0.3 설치(PLSQL Developer.exe) ==> 실행(F8) 
---------------------------------------------------------------------------------------------------------- 

- 오라클 DB 연결 ==>  
1. 70. 개발 DB 서버(대기포트: 7080) 
1) 호스트(H): 10.76.249.108:1521 ==> wsoc/osp123 
2) 서비스 이름(A): DEVIOSP1 
2. 71. Stg_1 DB 서버(대기포트: 7070) 
1) 호스트(H):176.34.96.106 ==> wsoc/osp123 
2) 서비스 이름(A): IOSPS1EU 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.03(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 --> 통합OSP PVT6차 시작, 김성채 팀장 면담(6월부터 통합OSP 글로벌 확산으로 연계 하기로 잠정 합의) 

- IOSP(/oauth2) Prj
- createUserAuthToken(), createAuthorizationCode(), revoke() 수정 
1. response 추가(테스트) 
1) response.addHeader("Location", result.toString());  //==> Response does not contain any headers. 
==============================================================================================================

- [iOSP] STG#2 구축 방법 
1. 통합OSP STG#1 Svc Build & Deploy > stg_auth_svc-build(작업) ==> 즉시 빌드실행(클릭) 
2. 통합OSP STG#2 Svc Build & Deploy > svn_stg2_auth_svc-deploy(작업) ==> 즉시 빌드실행(클릭)  
3. Project svn_stg2_auth_svc-deploy(http://165.213.146.213:3450/view/4.Stg2%20Svc/job/svn_stg2_auth_svc-deploy/build?delay=0sec) 
BUILD_NUMBER: 7 ==> (BUILD_NUMBER: STG#1에서 빌드 성공한 BUILD_NUMBER) 
4. Restart ==> 72. STG서버_EUIDC(tomcat)_72 에서 처리(STG#1 방법과 같음) 

5. 빌드 에러 
BUILD FAILED 
Target "cleanup-stg-svc" does not exist in the project "auth" ==> AA에게 가서 처리 
---------------------------------------------------------------------------------------------------------- 

- [iOSP] STG#2 구축 관련 요청 
# IOSP STG2 External # 
54.247.179.87 eu.api.samsungosp.com  
176.34.230.38 www.ospserver.net 
176.34.230.38 account.samsung.com auth.samsung.com 
176.34.230.38 dn2.ospserver.net up2.ospserver.net 
176.34.230.38 phub.samsungosp.com eu.phub.samsungosp.com api.samsungapps.com payment.ospserver.net 
176.34.230.38 eu.auth.samsungosp.com 
==============================================================================================================

- 지역코드 추가 
1. Tomcat 서버(더블 클릭) > Overview(화면) > Opent launch configuration(클릭) 
2. Tomcat v6.0 Server at localhost(새창) > Arguments > VM Arguments: -Dosp.center.countrycode=US-U 
==============================================================================================================

- putty로 터널링 
1. Session(Category) 
1) Saved Sessions: 00. Stg_1. IOSP_HUB(메인) ==> 50.16.215.98:70 
2) Tunnels 
01. Stg_1_EU_Cloud_71 ==> 176.34.99.237:70[Source port::71] 
02. Stg_1_EU_IDC(tomcat)_72 ==> 176.34.99.254:70[Source port::72] 
03. Stg_1_US_Cloud_73 ==> 184.73.161.211:70[Source port::73] 
04. Stg_1_US_IDC_74 ==> 184.169.145.113:70[Source port::74] 
05. Stg_1_CN_IDC_75 ==> 122.248.232.129:70[Source port::75] 

2. Session(Category) 
1) Saved Sessions: 01. Stg_1_EU_Cloud_71 ==> localhost:71 
1) Saved Sessions: 02. Stg_1_EU_IDC(tomcat)_72 ==> localhost:72 
1) Saved Sessions: 03. Stg_1_US_Cloud_73 ==> localhost:73 
1) Saved Sessions: 04. Stg_1_US_IDC_74 ==> localhost:74 
1) Saved Sessions: 05. Stg_1_CN_IDC_75 ==> localhost:75  
------------------------------------------------------------ 

1. Session(Category) 
1) Saved Sessions: 20. Stg_2. IOSP_HUB(메인) ==> 54.247.161.217:70 
2) Tunnels 
21. Stg_2_EU_Cloud_71 ==> 54.247.161.217:70[Source port::71] 
22. Stg_2_EU_IDC(tomcat)_72 ==> 54.247.167.97:70[Source port::72] 
23. Stg_2_US_Cloud_73 ==>  
24. Stg_2_US_IDC_74 ==> 184.169.141.194:70[Source port::74] 
25. Stg_2_CN_IDC_75 ==> 46.137.214.241:70[Source port::75] 

2. Session(Category) 
1) Saved Sessions: 21. Stg_2_EU_Cloud_71 ==> localhost:71 
1) Saved Sessions: 22. Stg_2_EU_IDC(tomcat)_72  ==> localhost:72 
1) Saved Sessions: 
1) Saved Sessions: 24. Stg_2_US_IDC_74 ==> localhost:74 
1) Saved Sessions: 25. Stg_2_CN_IDC_75 ==> localhost:75  
==============================================================================================================

- SC은행 마이캐쉬존(365자동화: 편의점 수수료 무료 현금 출금 서비스) 
(http://asp.talkyple.com/scbank/map/index.jsp?type=2) 
1. 낙성대점; 서울특별시 관악구 관악로12길 113(봉천7동 1625-29) 
2. 포항 두호점: 경상북도 포항시 북구 두호로 45(두호동 1053-2) 
3. 365자동화 이용 수수료 
1) SC은행 두드림 통장 ==> 24시간 무료(집에서 긴급하게 사용할 것) 
2) SC은행 두드림2U 통장 ==> 영업외 시간 600원 수수료 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.04(금) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:00 

- IOSP(/oauth2) Prj
- Client Stub Gen 수정 
1. 에러 내용: CODSTA.BP.AMRO: Method 'createUserAuthToken' returns Object ==> Jtest 에러 
2. 조치: public static Object createUserAuthToken() { 
==> public static java.lang.String createUserAuthToken() 로 변경 
==============================================================================================================

- redirect_uri 관련 문의(메일 전송) 
response.setStatus(Oauth2LibConstants.HTTPSTATUS_INT_302);  //redirect message(302 ==> Location 삽입) 
result = ValidatorUtil.redirectionSetting(redirectUri, "code", jsonObject, state, null); 
response.addHeader("Location", result);  //Location 추가  ===> 
//response.setStatus(200);  //성공 message 

200 => "HTTP/1.1 200 OK", 
302 => "HTTP/1.1 302 Found", 
http://cafe.naver.com/q69/10259 
==============================================================================================================

21:00 퇴근  
21:50 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원  
23:20 당구 게임(3구(2명), 2등(5개)): 멤버 안 옴 
23:50 야식(짬뽕):====> 2012.05.05(토) 
00:30 당구 게임(4구(4명), 팀게임(패)): 소방 공무원 멤버와 짜장면 내기(짐: 만원) 
02:00 당구 게임(4구(4명), 팀게임(승))  
06:50 종료 
07:00시스템 설명(왓다갔다 마시) 
08:30 종료 
09:30 귀가 
16:00 기상 
16:10 2012년 상반기 도시가스 점검(h: *) 
20:00 석식 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.06(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:00 기상 
08:00 신구초등학교 
08:30 조기축구(4:4 무) 
09:30 조기축구(4:3 패) 
10:30 종료 
11:30 중식(수정식당: 제육덮밥): 상요형이 남권이형 한테 전화해서 나에게 전화 옴(못 받음) ==> 
        남권이형한테 공증 해달라고 요청하라고 함 
12:40 종료 
13:30 BBQ치킨(병규형, 승렬이형, 호성이형): 2만원 
17:30 종료 
17:30 택시(승렬이형이 만원 줌) 
18:10 방배역(택시비: 8천 5백원 나옴) 
18:20 버스(461번) 
18:30 이발 
19:00 귀가 
20:00 석식 
22:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.07(월) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 18:30 --> 어버이날 용돈(20만원 송금), 중식(account팀: 나책임, 마키노차야(뷔페)(http://www.makinochaya.co.kr)) 

- IOSP(/oauth2) Prj
- Client Stub Gen 수정(완료) 
1. /stub-iosp-client-sample 
1) 에러: The declared package "com.samsungosp.client.auth" does not match the expected package" 
2) 원인: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\branches\stub-iosp-client-sample\bin 
폴더에 .class 파일 생성 안됨(Java Build Pah. Default output folder: stub-iosp-client-sample/bin) 
3) 조치: D:\OSP2.5\workspace\IOSP\Workspace\ClientStubSample\branches\stub-iosp-client-sample 
\src\com\samsungosp\client 폴더 읽기 전용 해제 
==============================================================================================================

[iOSP-공지] STG_2 테스트 현황 및 내부 검증 요청 
1. 5건은 SoapUI 테스트 Profile에서 운영되고 있는 creatUser 때문 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.08(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 --> 다반치 치과(아랫니 2개, 윗니 1개 덮어 씌우기), 2012년 종합소득세 신고서 작성2 

- IOSP(/oauth2) Prj
- check_email_validation 추가 
1. check_email_validation: Y 
-- 1. country+AppID 조건의 가변필드 세팅값 조회(추후 적용할 것) @@@@ ==> Table 미존재 
SELECT FLD_NM, MNDTRY_FG, DISP_ORD_NUM 
FROM TFMB_APSVC_JN_FLD 
WHERE CNTY_CD = 'KOR' 
  AND APSVC_ID =  '22n6hzkam0' 
  AND MNDTRY_FG = '1' 
ORDER BY DISP_ORD_NUM     
--; 

-- 2. 타이틀(prefixName) 항목 누락의 경우 조회(추후 적용할 것) @@@@ ==> Table 미존재 
SELECT CNTY_CD, LANG_CD, CD_VAL, DISP_ALS_TXT 
FROM TFMB_PRFX_DFNTN T                      
WHERE CNTY_CD =  'KOR' 
    AND LANG_CD = 'KO' 
ORDER BY DISP_ORD_NUM  
--; 
==============================================================================================================

- 삼성전자 myProject > B2B(협력업체 사용자) myProject 사이트 신규 가입 
https://partnerlogin.samsungelectronics.com/common/frameMain.jsp 
1. tamario/ssp**m8**1 
==============================================================================================================

- Junit 을 이용한 효율적인 단위 테스트 전략 
http://www.javajigi.net/pages/viewpage.action?pageId=278 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.09(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 --> 2012년 종합소득세 신고서 작성3 

- IOSP(/oauth2) Prj
- Merge 작업 
1. check_email_validation 추가 
==============================================================================================================

- 공인인증서 갱신[1년에 한번씩(4월) SC은행(http://www.standardchartered.co.kr/gw/index.htm)에서 시행할 
것(집에서 할 것)] ==> 2013년 5월 이후 시행할 것 
1. 갱신일: 2012.05.09(수) 
2. 계좌번호: 130-20-502841(13020502841) ==> 보안카드 3, 4, 5자리: 429 
3. 사용자ID: tamario/ta****9 
4. 인증서 유효기간: 2012/05/09 ~ 2013/05/08 
5. 인증서 생성: yessignCA Class1, 금융결재원(발급자), 2013-05-09(만료일자) 
6. 공인인증 센터 > 공인인증서 관리 > 인증서 삭제 > 인증서삭제 바로가기 
-------------------------------------------------------------------------------------------------------- 

- 타행 공인인증서 등록(국민은행(http://www.kbstar.com)에서 수행) 
1. 갱신일: 2012.05.09(수) 
2. 계좌번호: 640-21-0052-309(640210052309) ==> 보안카드 뒷4자리: 3971 
3. 사용자ID: tamario/ta****9 
-------------------------------------------------------------------------------------------------------- 

- 공인인증서 갱신(증권: 동양증권(http://www.myasset.com/myasset/mainindex.html) 에서 수행)  
1. 계좌번호: 710-01-003202(71001003202) 
2. 보안카드 일련번호: 211(2,3, 4번째 자리) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.10(목) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 18:30 --> 2012년 종합소득세 신고서 작성, merge 작업 시점(OSP2.0 profile_auth변경이력_0209-0510.xml) 

- IOSP(/oauth2) Prj
- Merge 작업 
1. Auth SCloud 지원 기능추가 
==============================================================================================================

- 중식(남권이형(서초역 7번 출구, 12시)) 
1. 주소: 서울시 서초구 서초동 1719-3 태흥빌딩 202호 법무법인 산하 조남권 법률상담실장 
2. 공증서 작성 
1) 공정증서작성료(법무법인 한중): 66,500원, 등본료: 3,00원 ==> 총: 69,500원 
2) 법무법인 한중: 서울시 서초구 서초3동 1572-1 서보빌딩 4층 
2. 기타 
1) 특약 사항: 1달전에 상호 합의하에 상환 연장 가능 
2) 공증: 국가나 공공단체, 혹은 가 그 직권으로 특정한 법률사실 또는 법률관계의 존부(存否)를 공적으로 증명 
하는 일, 혹은 공적인 자격을 가진 공증인이 당사자들의 계약을 법률, 공적으로 증명하게 하여 분쟁의 소지를 
미연에 방지하게 하는 것을 말한다.  
예컨대 전자는 공무원이 하는 부동산등기가 있으며, 후자는 공증인가를 받은 합동법률사무소와 법무법인의 임 
명된 공증인이 하고, 법률사무소가 없는 곳은 지방검찰청 또는 지청의 임명받은 검사가 담당한다. 공증으로  
작성한 서류를 공정증서라 하며, 이것은 민사재판이나 형사재판에서 강력한 증거력이 있기 때문에 분쟁예방은 
물론 분쟁해결에도 도움을 준다.  
공정증서는 공증인이 법률행위 그 밖의 사권(私權)에 관한 사실을 작성하는 문서인데, 이것이 작성되면 이는 
진정한 것으로 추정되므로 공증을 받은 문서는 진정성이 추정된다. 그리고 공증한 문서는 공증사무소에서 일정 
기간 동안 보관하기 때문에 분실의 위험도 줄어든다. 
따라서 각종 계약서 등을 작성할 때는 증거력을 확보하고 보관을 확실하게 하기 위해 공증해놓는 것이 좋다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.11(금) 작업 ■■■■■■■■■■■■■■■
---> 07:06 ~ 18:00 --> 2012년 종합소득세 신고서 작성5 

- IOSP(/oauth2) Prj
- Merge 작업 
1. Auth 이메일인증 기능 추가 및 필수항목 체크 
AUTH.AUT_1057.400=The pattern of a username(emailID) parameter is invalid (@UserService).  
// EMAIL_VLD_CHK 확인 
 UserBaseVO userBaseVOForCheckEmailValidation = userDAO.getUserBase(userID); 
==============================================================================================================

17:00 이사짐 싸기(미림타워로 이사 준비: 포장 이사) 
17:50 종료  
18:00 퇴근 
18:10 석식(청목 백반)  
19:40 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원  
20:00 혼자 연습: 멤버 안 옴 
23:00 당구 게임(3구(2명), 팀게임(패)) 
01:00 당구 게임(3구(2명), 팀게임(패)) ====> 2012.05.12(토) 
04:00 쪽잠 
05:00 당구 게임(3구(2명), 팀게임(패)): 야간 당구 하지 말 것 
06:50 종료 
07:50 귀가 
08:00 낮잠 
16:00 기상 
20:00 석식 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.13(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:00 기상 
08:00 신구초등학교 
08:30 조기축구(4:4 무) 
09:30 조기축구(4:3 패) 
11:00 종료 
11:20 중식(문경새재: 갈비탕): 오세림 고문님이 쏨 
12:30 종료 
13:30 수화(샤우나실 공사중: 만원 할인(투샷: 18만원) 
13:40 휴식(TV 시청: 코빅, 개콘) 
18:10 그리스(176cm, 삼척, 투샷(반응이 약간 미약함)) 
19:30 종료 
19:50 석식(수화) 
20:00 버스 
20:50 귀가 
22:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.14(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 20:00 --> 미림타워 이사(9층): 짐풀기, 크린스토아 세탁물 맡김, 다림질 

- IOSP(/oauth2) Prj
- 보안검증 조치(Auth_-___OSP.doc) 
1. userPassword 
 1) /UserIdentificationVO.java  파일에서 
public String getUserPassword() { 
return userPassword; 
}  

 2) /Oauth2VerifyBizImpl.java  파일에서 
public Oauth2IsVaildUserVO isValidUser(String username, String password) throws OSPException {    
userIdentificationVOResult = userAuthBiz.getUserIdentification(userIdentificationVO);  //User DB, LDAP 조회 
String returnPassword = userIdentificationVOResult.getUserPassword(); 
} 

 11) /UserAuthVO.java  파일에서  
public void setPassword(String password) { 
this.password = password; 
} 

  21) /IdentityBizImpl.java  파일에서 
public UserAuthVO makePassword(UserAuthVO vo) { 
vo.setPassword(getEncPassword(vo.getUserID(), vo.getPassword())); 
} 

3. /AuthServiceTest_authenticate_Test.java 파일에서 
@Test 
public void testAuthServiceTest_authenticate_Test() throws OSPException { 
String m_pwd = "osp123";  //password -> m_pwd 변경 
} 
2. /UserConstants.java 파일에서 
public static final String NAME_CHECK_SITE_PASSWORD = "50831625" 
==> NAME_CHECK_SITE_PWD로 변경(NAME_CHECK_SITE_PASSWORD) 
==============================================================================================================

- IP 주소(통합OSP Proj): 미림타워 9층(서울 강남구 역삼동 825-22 미림타워 9층 통합OSP Proj Account팀)  
1. 제어판\모든 제어판 항목\네트워크 및 공유 센터\네트워크 연결 ==> 로컬영역 연결: 속성 > TCP/IPv4 
IP: 70.4.152.164 GW: 70.4.152.1 
SM: 255.255.255.0, DNS: 203.241.135.135, 203.241.135.85 
임시 DNS: 54.247.161.217, 50.16.215.98 ==> 2012.05.16(수) 
----------------------------------------------------------------------------------------------------- 

- 프린터 서버(미림타워 9층) 
01. Lexmark T652(9층) --> IP 주소: 70.4.152.191 
02. SCX-7635 Series PCL6(9층) --> IP 주소: 70.4.152.190 
==============================================================================================================

- Merge 작업 
1. Auth 이메일인증 기능 추가 및 필수항목 체크 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.15(화) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 21:00 

- IOSP(/oauth2) Prj
- 보안검증 조치(Auth_-___OSP.doc) 
1. IdentityBizTest.java 
==============================================================================================================

- deploy war 파일 slim화 적용 
1./pom.xml 파일에서 
 <scope>provided</scope> <!--// deploy war 파일 slim화 적용 //--> 
<artifactId>spring-jdbc</artifactId>  <!--// deploy war 파일 slim화 적용 안됨(에러 발생) //--> 
==============================================================================================================

- 복사하고 Source Folder 생성 
1. java폴더 복사 
2. D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\test 폴더에 붙여넣기 
3  source Folder 생성: auth-svc > Java Resources(마우스 우 클릭) > New > source Folder 
1) Project Name: auth-svc 
2) Folder Name: src/test/java 
4. src/test/java source Folder폴더 생성됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.16(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 

- IOSP(/oauth2) Prj
- PRT(Funkload) 
1. Funkload Client Script 작성 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ vi test_auth.py 
$ vi auth.conf 
$ vi monitor.conf 
==============================================================================================================

2. Funkload Command 
1) 모니터 Instance Start(최초 실행 시 한번 만 실행) @@@@@@@ 
$ fl-monitor-ctl monitor.conf start 

2) 한 건 호출 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ fl-run-test -dv test_auth.py auth.test_getInitResult  
$ fl-run-test -dv test_auth.py auth.test_createUserAuthToken 
$ fl-run-test -dv test_auth.py auth.test_createAuthorizationCode  ==> 에러 발생 
$ fl-run-test -dv test_auth.py auth.test_authenticateApplication 
$ fl-run-test -dv test_auth.py auth.test_authenticateUserByEmailID    
$ fl-run-test -dv test_auth.py auth.test_validateUserByEmailId 

3) 성능 테스트 명령어 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken  
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createAuthorizationCode  ==> 에러 발생 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId 
   
4) Run Script Background 실행 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createAuthorizationCode & ==> 에러 발생 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId & 
-------------------------------------------------------------------------------------------------------- 

3. Report 작성 @@@@@@@ 
$ cd /mnt/bench-log/auth 
$ fl-build-report --html /mnt/bench-log/auth/AUTH-credential-test.xml 
test_authenticateUserByEmailID-20120516T074633 폴더 ==> 생성 

 1) ftp romote host: /home01/iosptest/funkload/iosp/auth 
 2) tar 파일 생성 
$ tar cvf test_auth.tar ./test_authenticateUserByEmailID-20120516T074633/ 
test_auth.tar  ==> 생성 
$ gzip ./test_auth.tar 
test_auth.tar.gz  ==> 생성 
-------------------------------------------------------------------------------------------------------- 

4. log  확인 
$ cd /iosp/comp/auth/logs 
$ tail -f /iosp/comp/auth/logs/catalina.out   
$ tail -f /var/log/nginx/access.log  
==============================================================================================================

- Xshell 설치 및 Xshell에서 세션(터널링) 설정 
C:\Users\TAMA\AppData\Roaming\NetSarang\Xshell(http://www.netsarang.co.kr/download/down_xsh.html) 
- Xftp4 설치 
http://www.netsarang.co.kr/download/down_xfp.html 
==============================================================================================================

- putty로 터널링(Funkload: stg2) 
1. Session(Category) 
1) Saved Sessions: 00. IOSP-HUB ==> 50.16.215.98:70 --> iosp-dev-auth.pem(auth) 
2) Tunnels 
91. Funkload client ==> 10.28.163.41:70[대기 포트(H)::91] 

2. Session(Category) 
1) Saved Sessions: 01. Funkload client ==> localhost:91 --> iosptest.pem(iosptest/iosptest) 
==============================================================================================================

- 파일 조회(리눅스에서) 
$ find /iosp/comp/auth -name 'monitor.conf' 
$ mkdir tmp   ===> tmp 라는 폴더 생성 
==============================================================================================================

- 보안점검 수정 
1. Account_auth(05.16).doc: 3건 수정 
/Oauth2VerifyBizImpl.java, /Oauth2IssueBizImpl.java, /JsonObjectUtil.java 
==============================================================================================================

- 소액 결제 항의(무료 문자) 
1. 모빌리언스 > 문의하기: http://www.mobilians.co.kr/korean/service/inquiry/board_write.php 
2. 국민신문고(검토할 것): http://www.epeople.go.kr 
결제일자 결제대행사 고객센터☎ 이용서비스 이용서비스☎ 서비스업체 결제구분 내역구분 서비스  발신번호  010-3072-0  
2012/4/6  모빌리언스  1600-1705  컴퍼니   1600-1705 간지스타일 일반결제 소액결제  www.comfany.com  16,500  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.17(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:50 

- IOSP(/oauth2) Prj
- PRT(Funkload) 
 1. 제니퍼4 서버(http://50.19.120.204/login.jsp) 안보임 ==> Fire Fox(브라우저) 설치(jre6 설치) 
==============================================================================================================

- Funkload 세부 테스트 결과(UIA) 
1. 제니퍼4 서버(http://50.19.120.204/login.jsp) > 통계 분석 > 보고서 > 일일 보고서  
-> 에이전트: UIA, 날짜: 하루 전날(검색: 클릭) ==> 5. 에이전트 별 현황(5분 단위) 
 1) 최대 TPS ==> 서비스 요청률 > 최대: 124.90 
 2) 0.3초 이내 TPS ==> 서비스 요청률 > 평균: 2.14 
 3) Max CPU(%) ==> 시스템 CPU 사용률(%) > 최대: 83.06 
 4) 최대 Memory 사용량(%)  ==> 힙 메모리 사용량(MB) > 평균: 144.00 

2. 응답시간 그래프 분석(통합OSP_성능테스트_Auth.ppt에서) 
D:\02. TAMA Project\01. 2012.02(통합OSP_IL4U)\00. Work\74. PRT(Funkload)\02. Funkloal Report 
\test_createUserAuthToken-20120516T232740\index.html(클릭) 
5. Request stats 
1) PPS(Requests Per Second), RPT(Requests Response Time 
==============================================================================================================

- STG#2 권역별 도메인 테스트 수정 
1. Auth_auth.samsungosp.com_20120517_001 
 1) createAccessToken_200_01 
 2) revoke_200_01 
2. Auth_auth.samsungosp.net_20120517_001 
 1) createAccessToken_200_01 
 2) revoke_200_01  
3. 에러 원인 
 1) cache Method 에러(Coherence 조회가 안됨: 미존재(/Oauth2CacheBizImpl.java파일에서) 
public List<ProfileOauthAccessTokenEntryVO> existAccessToken(ProfileOauthAccessTokenEntryVO profileAccess 
TokenEntryVO) throws OSPException {  
List<PoolDataVO> searchedAccessTokenList = ospMemory.getAllAccessToken(params); 
} 
4. 조치 
 1) Coherence 재시작 및 서버 재시작 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.18(금) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 20:40 

- IOSP(/oauth2) Prj
- Merge 작업 
1. disclaimer 추가 에러(/RequestTokenVO.java에서) 
1) auth-client-1.0.jar 파일과 충돌 나는 것으로 추정 
2) requestUserauthTokenVO.setDisclaimer(disclaimer);   // disclaimer동의(/AuthServiceResourceImpl.jva에서) 
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\dist/auth-client.jar 복사하여 
C:\OSP2.5\lib_repository\repository\com\samsungosp\auth-client\1.0/auth-client-1.0.jar로 덮어쓰기  
==============================================================================================================

- auth-client 폴더 삭제(/repository 폴더에서) 
1. C:\OSP2.5\lib_repository\repository\com\samsungosp/auth-client 폴더 삭제 
2. eclipse 재시작 
3. auth_svc > java Resources > Libaries > Maven Dependencies에서 auth-client.jar 안 보임(삭제되었음) 
==============================================================================================================

- 통합 merge작업에 따른 테이블 생성 요청 
1. OSP2.0의 현황(현재 상태) 
 1) auth1.0에서 원본 테이블 존재(SMB) 
 2) auth2.0에서 테이블 생성하여 auth1.0 원본 테이블과 ETL를 통해서 동기화 
2. OSP2.5의 계획(차후 변경 상황) 
 1) auth1.0에서 원본 테이블 존재(SMB): DBA에서 SYNONYM 불가능 하다고 통보 
 2) auth2.0에서 JNDI를 통해서 연결(최선책)  
 3)auth2.0에서 테이블 생성하여 auth1.0 원본 테이블과 ETL를 통해서 동기화(차선책: 기존 방식) 
3. 결론 
 1) JNDI를 이용한 방법 알아볼 것(7월 중순 미주 이관 전 까지) 
----------------------------------------------------------------------------------------------------- 

 1. 필수항목 체크   ==> getCheck_mandatory 추가 
< !--// country+AppID 조건의 가변필드 세팅값 조회 //-->    
SELECT * 
FROM   TFMB_APSVC_JN_FLD 
--; 

<!--// 타이틀(prefixName) 항목 누락의 경우 조회  //-->    
SELECT * 
FROM   TFMB_PRFX_DFNTN 
--;  
==============================================================================================================

- auth2 정의 
1. 약관 체크 및 동의 
cc, mcc, tnc_type_code, privacy_accepted 
2. 이메일 검증 
check_email_validation 
3. 필수값 체크 
check_mandatory, country, appId, langCode 
4. 3rd Party disclaimer 
appId, disclaimer(3rd Party(협력사 구분) 동의 여부) 
==============================================================================================================

- 크로스 사이트 스크립팅(XSS) 취약점 수정 
1. 에러 내용 
 1) createAccessToken__200_OK_01 > createAuthorizationCode  > state 변수에 "><script>alert('xss')</script> 구문 삽입 
2. 조치 
 1) state = StringUtil.cleanXSS(state);  //XSS 취약점 수정 
==============================================================================================================

17:00 이사짐 싸기(미림타워로 이사 준비: 포장 이사) 
17:50 종료  
18:00 퇴근 
18:10 석식(청목 백반)  
19:40 고려 당구클럽: 세븐 당구 동호회(서울 시청 지역), 회비 만원  
20:00 혼자 연습: 멤버 안 옴 
23:00 당구 게임(3구(2명), 팀게임(패)) 
01:00 당구 게임(3구(2명), 팀게임(패)) ==> 2012.05.12(토) 
04:00 쪽잠 
05:00 당구 게임(3구(2명), 팀게임(패)): 야간 당구 하지 말 것 
06:50 종료 
07:50 귀가 
08:00 낮잠 
16:00 기상 
20:00 석식 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.19(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:30 기상  
06:30 신구초등학교 
06:40 조기축구(5:4 패): 큰 게임(1골 넣음) 
07:30 종료 
08:00 조식(화정식당: 상설이형이 쏨) 
09:30 종료  
10:30 귀가 
10:40 다빈치 치과의원(오른쪽 송곳니 신경 치료 다시 해야 된다고 함) 
       --> 신경 재치료 비용 청구해서 강력하게 항의(난동 부림): 신경 치료 비(14,400원)       
12:30 귀가 
14:30 낮잠 
18:50 기상  
19:00 장보기(라면, 초코파이) 
20:00 석식 
22:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.20(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
04:00 기상 
04:05 챔스 결승(첼시: 뮌헨): 첼시(4:3) 승부차기 승 ==> 첼시 창단 첫 챔피언스리그 우승 
07:00 SK 신봉천 주유소(태훈이형 차) 
07:30 신구초등학교(한상봉 감사님이 임진희씨 남자 기피증 증세 있다고 함 ==> 미련 버리기) 
08:30 조기축구(4:4 무) 
09:45 조기축구(5:3 승): 컨디션 좋음 
10:20 종료 
10:30 종순이 초교팀 논현FC팀이랑 게임(안우주(병춘이형 아들: 15번)도 뜀) 
11:20 중식(수정식당: 콩국수): 상권이형이 쏨 
12:30 종료  
12:40 제과점(빵(태훈형, 병룡, 정홍) 사줌: 19,700원) 
12:50 태훈이형 차 
13:30 귀가 
15:30 낮잠 
18:50 기상 
19:00 어미니 전화(다음주 포항행 일정 조정 협의) 
23:00 스캔(차용증(남권이형), 공정증서 스캔 처리 함) 
12:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.21(월) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 21:00 --> 중식(철판볶음밥: 남권이(*@*.*)형이 사줌): 다빈치 치과 사건 상담 받음 

- IOSP(/oauth2) Prj
- Merge 작업 
1. sf-client 추가(/auth-lib/pom.xml) 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency>  
----------------------------------------------------------------------------------------------------- 

- sf-client.jar 파일서 필드 추가 요청 
1. UserTncRequestVO.java 에서 
setAppID(), setCheckCountryCode() 추가  
2. UserTncResultVO.java 에서 
getIs3rdParty(), getRequireDisclaimer() 추가 
==> SFClient, SFClientImpl 
==> SocialClient, SocialClientImpl 
----------------------------------------------------------------------------------------------------- 

- repository에 sf-client.jar 등록 방법(http://165.213.146.213:8080) ==> sf-client 담당자: 오민철 
1. artifact Searh에서 sf-client 조회 
2. Maven Information XML  확인 
==============================================================================================================

- 다빈치치과 사건 기술(6하 원칙) 
0. 6하원칙 - 누가(who), 언제(when), 어디서(where), 무엇(what), 왜(why), 어떻게(how)의 여섯 가지 
1. 누가(who): 치과 의사가 
2. 언제(when): 2012년 05월 19일(토) 11시경에 
3. 어디서(where): 관악구 행운동에 소재하는 다빈치 치과에서  
4. 무엇(what): 신경 치료 재치료비를 청구함 
5. 왜(why): 신경 치료를 다시 한다는 명목으로 
6. 어떻게(how): 이미 끝난 신경 치료의 재치료비를 청구함 
----------------------------------------------------------------------------------------------------- 

- 명문치과(02-873-7203): 2003년 10월에 치료 받은 곳 
1. 주소: 서울특별시 관악구 서원동 1638-19 동진빌딩 4층 
2. 09:30~18:00: 공휴일, 명절 휴무 
==============================================================================================================

- 원종록형 대여금 상환(50만원) 
1. 2012.05.21 19:18 0 500,000 원 신한 원상연 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.22(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 22:00 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 보류 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

1. disclaimer 추가 ==> appId, disclaimer(3rd Party(협력사 구분) 동의 여부) ==> disclaimer=Y, appId=22n6hzkam0 
tncResult = oauth2VerifyBiz.verifyTNCRequest(passwordVO);  // 3rd Party 동의여부 검증 및 저장 Biz flow 
resultVO = userAuthBiz.userTNCRequest(verifiedUserTNCRequestVO, serviceID);  // OSP 1.0, 2.0 정보 조회 Biz flow 

- auth-client, sf-client 문제 
C:\OSP2.5\lib_repository\repository\com\samsungosp\auth-client\1.0/auth-client-1.0.jar // TEST ===> 

- auth-client 로컬에서 사용 
1. /UserAuthTokenResultVO.java 파일에서 필드 추가(예: userId) 
2. Maven buil로 auth-client.jar 파일 생성(/auth-svc/dist/auth-client.jar) 
3. auth-client.jar 파일을 auth-client-1.0.jar 파일로 이름 변경 
4. C:\OSP2.5\localhome\webapps\auth-svc\WEB-INF\lib/auth-client-1.0.jar에 붙여넣기 
5. eclipse 재시작 
==============================================================================================================

- auth-client 생성(/auth-lib/pom.xml에서) 
<!--// auth-client 생성 --> 
<dependency> 
<groupId>com.samsungosp</groupId> 
<artifactId>osp-framework</artifactId> 
<version>0.0.1-SNAPSHOT</version> 
</dependency> 
----------------------------------------------------------------------------------------------------- 

- 배포 lib와 개발자 로컬 디렉토리 구성 
1. tomcat(더블 클릭) > Overview(새창) 
==> Server Locations 
1) Server Path: .metadata\.plugins\org.eclipse.wst.server.core\tmp0 ==> C:\OSP2.5\localhome    
2) Deploy Path: C:\OSP2.5\localhome\webapps 
==============================================================================================================

- Update 에러 
1. 현상:  
Can't clobber writable file D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main 
\java\com\samsungosp\sf\common\Constants.java 
2. 조치: /auth-lib(마우스 우 클릭) > Team > Get Revision(클릭) > Sync Files to Revision(새창) 
Revision Number(체크), Force Operation0(체크) ===> OK(클릭) 
==============================================================================================================

- eclipse tomcat 서버 시작 에러 
1. 현상: Caused by: org.springframework.context.NoSuchMessageException: No message found under code 
'sscom.userinfo.endpoint' for locale 'ko_KR'. 
2. 조치:  
D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\resources\properties\local\authConfig.xml 
복사하여 C:\에 붙여넣기 
C:\OSP2.5\localhome\comp\auth\resources\properties\local/authConfig.xml 
==============================================================================================================

- eclipse tomcat 서버 시작 에러 
1. 현상: Illegal access: this web application instance has been stopped already.  Could not load com.tangosol.coherence. 
component.application.DefaultApplication.  The eventual following stack trace is caused by an error thrown for  
debugging purposes as well as to attempt to terminate the thread which caused the illegal access, and has no  
functional impact.  
2. 조치: coherence 에러(이과장에게 요청) 
==============================================================================================================

- eclipse tomcat 서버 시작 에러 
1. 현상: org.springframework.beans.factory.BeanDefinitionStoreException: Failed to load bean class: com.samsungosp.auth.user. 
dao.CommonDAOImpl; nested exception is java.io.FileNotFoundException: class path resource  
[com/samsungosp/framework/dao/BaseDAO.class] cannot be opened because it does not exist 
2. 조치: tomcat 서버 clean 
==============================================================================================================

- eclipse 서tomcat 서버 시작 에러 
1. 현상: Publishing failed with multiple errors 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\m2e-wtp\web-resources\META-INF\MANIFEST.MF. 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\classes\com\samsungosp\auth\oauth2\service\AuthServiceResource.class. 
File not found: D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\target\classes\com\samsungosp\auth\oauth2\service\AuthServiceResourceImpl.class.File not found: D:\  
File not found:  
2. 조치: Maven 빌드 ==> tomcat 서버 clean 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.23(수) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 21:20 --> 구차장 6월 철수 예정 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 보류 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

- mybatis VO 설정 
/UserAuthDAOImpl.java 파일에서 @@@@@ 
/** 
* 3rd 특정 버전에 대한 약관동의 내역 조회(추후 적용할 것) 
*/ 
public int get3rdDisclaimerAcceptance(User3rdDisclaimerAcceptanceCreateVO user3rdDisclaimerAcceptanceCreateVO) throws OSPException {  
int result = 0; 
log.debug("[get3rdDisclaimerAcceptance()] ==> [DB조회(3rd 특정 버전에 대한 약관동의 내역 조회)]  
[user3rdDisclaimerAcceptanceCreateVO]"+ user3rdDisclaimerAcceptanceCreateVO ); 
      
try { 
result = (Integer)getSqlSession().update("com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance", user3rdDisclaimerAcceptanceCreateVO); 
} catch(Exception e) { 
e.printStackTrace(); 
throw new OSPException("AUTH", "USR_5221", 500, this.getClass(), "get3rdDisclaimerAcceptance(user3rdDisclimerAcceptanceCreateVO)" + e.getMessage());         
} 

 log.debug("[getServiceInforList()] ==> [DB조회결과] [result]"+ result ); 
return result; 
} 

/userAuthDAO.xml 파일에서 @@@@@ 
<resultMap id="User3rdDisclaimerAcceptanceCreateVO" type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO"> 
	<result property="applicationID" column="APSVC_ID"/> 
	<result property="userID" column="USR_ID"/> 
	<result property="disclaimerVersionText" column="DSCMR_VER_TXT"/>  
</resultMap>  

<!--// 3rd 특정 버전에 대한 약관동의 내역 조회 //--> 
<select id="get3rdDisclaimerAcceptance" parameterType="com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO" resultType="java.lang.Integer">   
	SELECT  
	    /* [userAuthDAO.xml].[com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance] */ 
	    COUNT(*) 
	FROM  
	    TCSO_3RD_PRTY_DSCMR_ACPTNC 
	WHERE 
	    APSVC_ID = #{applicationID} 
	AND USR_ID = #{userID} 
	AND DSCMR_VER_TXT = #{disclaimerVersionText}  
</select> 

<insert id="insertService" parameterType="com.samsungosp.auth.user.inner.vo.ServiceVO" > 
	INSERT  
	    /* [serviceDAO.xml].[com.samsungosp.auth.user.dao.ServiceDAO.insertService].[01] 변경일자(20110517) */  
	INTO  
 </insert>  

 ==> type(type, parameterType)은 무조건 VO 작성: com.samsungosp.auth.user.inner.vo 
==============================================================================================================
- /osp-framework import 후 에러 
1. 현상: /AuthServiceResourceImpl.java에서 
import org.springframework.beans.factory.annotation.Autowired;   //===> 에러 발생(빨간색: 인식 못함) 
import org.springframework.stereotype.Controller; 
2. 조치:  
 1. eclipse ==> close 
 2. auth-svc, /auth-lib, /osp-framework ==> target 폴더 삭제 
 3. eclipse ==> open 
 4. /auth-svc, /auth-lib ==> close project 
 5. /osp-framework ==> Maven 빌드 
 6. /auth-svc, /auth-lib ==> Maven 빌드 
----------------------------------------------------------------------------------------------------- 

- auth-client 수정 후 조치 
1. RequestTokenVO.java 파일 수정 
2. /auth-svc/build.xml(마우스 우 클릭) > Ant Bulid ==> /auth-svc/dist/auth-client.jar 파일 생성(auth-client-1.2.jar로 변경) 
3. /osp-framework/pom.xml 파일에 변경 처리 
     <dependency> 
          <groupId>com.samsungosp</groupId> 
          <artifactId>auth-client</artifactId> 
          <version>1.2</version>   //===> 1.1을 1.2로 변경 
        </dependency> 
4. 소부장님에게 메일로 통보 
5. nexus 서버에 등록(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
1) auth-client-1.2.jar로 등록됨  
==============================================================================================================

- 개발서버 Hudson 빌드 에러(노명석 차장에게 메일 발송) 
1. auth-client-1.10.jar을 auth-client-1.1.jar로 업데이트 한 후 개발서버 Hudson 빌드 에러가 납니다. 
 1) Downloading: http://165.213.146.213:8080/nexus/content/groups/public/com/samsungosp/auth-client/1.0/auth-client-1.0-sources.jar 이 다운됨 
  ==> Downloading: http://165.213.146.213:8080/nexus/content/groups/public/com/samsungosp/auth-client/1.1/auth-client-11-sources.jar이 다운 되어야 함 
==============================================================================================================

- DB 연결(Tunneling)(개발 DB서버) 
1. /config/local/applicationSystemConfig.xml 파일에서 
  <!--entry key="oracle.jdbc.url">jdbc:oracle:thin:@50.16.234.94:1521:DEVIOSP1</entry--> 
==> <entry key="oracle.jdbc.url">jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1</entry>  <!--// local dev(Tunneling) //--> 
2. 70. 개발 DB 연결(Tunneling) IP 추가: 10.76.249.108:1521 ==> 7080(127.0.0.1:7080/DEVIOSP1) --> wsoc/osp123 

- DB 연결(Tunneling)(Stg_1 DB서버) 
1. /config/local/applicationSystemConfig.xml 파일에서 
    <entry key="oracle.jdbc.url">jdbc:oracle:thin:@10.238.202.179:1521:IOSPS1EU</entry> <!--// local dev(Tunneling) //--> 
2. 71. Stg_1 DB 연결(Tunneling) IP 추가: 10.238.202.179:1521 ==> 7081(127.0.0.1:7081/IOSPS1EU) --> wsoc/osp123 

- DB 연결 확인 
telnet 10.76.249.108 1521  ==>  70. 개발 DB 서버(연결 성공) 
telnet 10.238.202.179 1521 ==>  71. Stg_1 DB 서버(연결 실패: Tunneling 안되어 있음) 
----------------------------------------------------------------------------------------------------- 

- MB 관련 생성 요청 테이블 ==> 테이블 생성 확인: 2012년 5월 23일 수요일 오후 4:06  
1. TFMB_APSVC_INFOR: countryCode조건에 해당하는 AppId 리스트 테이블 
2. TFMB_APSVC_JN_FLD: ountry+AppID 조건의 가변필드 세팅값 조회 테이블 
3. TFMB_PRFX_DFNTN:  타이틀(prefixName) 항목 누락의 경우 조회 테이블 
==============================================================================================================

- VO 에러 
1. /Oauth2VerifyBizImpl.java 파일에서 
public boolean verifyTNCRequest(RequestTokenVO passwordVO) throws OSPException { 
	UserTNCRequestVO verifiedUserTNCRequestVO = new UserTNCRequestVO();  
	log.debug("[verifyTNCRequest()] ==> [test_2] [passwordVO.getAppId()]"+ passwordVO.getAppId() ); 
	 //verifiedUserTNCRequestVO.setAppID(passwordVO.getAppId()); // disclaimer 검증  // TEST ===> 
	 log.debug("[verifyTNCRequest()] ==> [test_3] [passwordVO.getAppId()]"+ passwordVO.getAppId() ); 
} 

2. /UserTNCRequestVO.java 파일에서 
@XStreamAlias("UserTNCRequestVO") 
public class UserTNCRequestVO extends SystemAttributeVO { 
	public String getAppID() { 
	return appID; 
} 
public void setAppID(String appID) { 
this.appID = appID; 
} 
} 
2. 현상: 
java.lang.NoSuchMethodError: com.samsungosp.auth.user.vo.UserTNCRequestVO.setAppID(Ljava/lang/String;)V 
at com.samsungosp.auth.oauth2.biz.Oauth2VerifyBizImpl.verifyTNCRequest(Oauth2VerifyBizImpl.java:808) 
3. 조치: VO에 appID가 제대로 반여잉 안됨(UserTNCRequestVO.class파일 확인) 
==============================================================================================================

- eclipse tomcat 서버 시작 에러 
1. 현상: 그냥 loaing 없이 서버 재작됨 
정보: JK: ajp13 listening on /0.0.0.0:9010 
2012. 5. 23 오후 8:57:07 org.apache.jk.server.JkMain start 
정보: Jk running ID=0 time=0/0  config=null 
2012. 5. 23 오후 8:57:07 org.apache.catalina.startup.Catalina start 
정보: Server startup in 1281 ms 
2. 조치: 1) xml 파일 중에 auth-svc, auth-lib 빌드가 빠져 있는지 확인(개발서버 소스와 싱크 맞춰 볼 것) 
2) 안되면 target 삭제 후 Maven 빌드할 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.24(목) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 21:20 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 보류 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

- Nexus Repository 관리 
1. Artifact 등록(반듯이 2개 등록) 
1) Repositories > 3rd party > Artifact Upload  ==>3rd party 라이브러리 artifact 등록 
- Repositories > releases > Artifact Upload  ==> 내부 프로젝트에서 생성한 artifact 등록 
2) Artifact 등록 하기(3rd party 라이브러리 등록) 
- Select GAV Definition Source 
 1. GAV Definition : GAV Parameters(선택) 
 2. GroupId: com.samsungosp 
 3. Artifact: auth-client 
 4. version: 1.1 
 5. Packing: jar 
- Upload Artifact(s) 
 1. Select  Artifact(s) to Upload(클릭) ==>  auth-client-1.1.jar 선택((업로드 됨)  
 2. Add Artifact(클릭) 
 3. Upload Artifact(s)(클릭) 

2. Artifact 삭제 
 1) Artifact Search: auth-client(클릭) > Artifact Information(Tab   클릭): Detete(클릭) 
==============================================================================================================

- auth-client 1.2(/auth-client 1.2.jar) 등록 절차 @@@@@@@ 
A.  auth-client-1.2.jar 등록 
1. RequestTokenVO.java 파일 수정 
2. Maven Build > auth-svc[auth_client]: auth-svc ==> clean dependency:copy-dependencies(Run: 클릭) 
3. /auth-svc/build.xml(마우스 우 클릭) > Ant Bulid ==> /auth-svc/dist/auth-client.jar 파일 생성(auth-client-1.2.jar로 변경) 
4. 소부장님에게 메일로 통보 
5. nexus 서버에 등록(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
1) auth-client-1.2.jar로 등록됨  
------------------------------------------------------------------------------------------------------ 

B. osp-framework-0.0.1-SNAPSHOT.jar 등록 
1. RequestTokenVO.java 파일 수정 확인 
2. /osp-framework/pom.xm 에서 auth-client 1.2로 변경(변경 안하고 곽차장에게 요청할 것) 
<dependency> 
<groupId>com.samsungosp</groupId> 
<artifactId>auth-client</artifactId> 
<version>1.2</version>  ===> 1.1에서 1.2로 변경 
</dependency> 
3. P4에 Commit 처리(변경 안하고 곽차장에게 요청할 것) 
4. 곽재우(JaewooKwag) 차장에게 요청 
5. nexus 서버에 등록 확인(http://165.213.146.213:8080/nexus/index.html#nexus-search;quick~auth-client) 
 1) Repository Path:/com/samsungosp/osp-framework/0.0.1-SNAPSHOT/osp-framework-0.0.1-20120524.011601-64.jar에  
등록됨(osp-framework-0.0.1-SNAPSHOT.jar) 
==============================================================================================================

- PRT(Funkload) 재작업 @@@@@@@@@@@@@@ 
1. Funkload Client Script 작성 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth 
$ vi test_auth.py 
$ vi auth.conf 
$ vi monitor.conf 
------------------------------------------------------------------------------------------------------ 

2. Funkload Command 
1) 모니터 Instance Start(최초 실행 시 한번 만 실행) @@@@@@@ 
$ fl-monitor-ctl monitor.conf start 

2) 한 건 호출 
iosptest@ip-10-28-163-41:~$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-test -dv test_auth.py auth.test_createUserAuthToken 
$ fl-run-test -dv test_auth.py auth.test_authenticateApplication 
$ fl-run-test -dv test_auth.py auth.test_getInitResult 
$ fl-run-test -dv test_auth.py auth.test_authenticateUserByEmailID    
$ fl-run-test -dv test_auth.py auth.test_validateUserByEmailId  
$ fl-run-test -dv test_auth.py auth.test_createAuthorizationCode  ==> 에러 발생(사용안함) 
$ fl-run-test -dv test_auth.py auth.test_random ==> 사용안함 

3) 성능 테스트 명령어 
$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-bench -c 100:500:700:1000 -D 20 test_auth.py auth.test_random 
===> 최적 에러 찾기_1(기본) 
$ fl-run-bench -c  100:450:500:550:600:650:700 -D 20 test_auth.py auth.test_random 
===>  최적 에러 찾기_2(450 TPS, 3초) 

$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication 
===> 최적 에러 찾기_1(기본) 
$ fl-run-bench -c 100:500:700:1000 -D 20 test_auth.py auth.test_createUserAuthToken 
===> 최적 에러 찾기_2(450 TPS, 3초) 
$ fl-run-bench -c 100:450:500:550:600  -D 20 test_auth.py auth.test_createUserAuthToken   
===> 최적 에러 찾기_3(76.5 TPS, 0.7초) 

$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication  
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_getInitResult 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID 
$ fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId 
   
4) Run Script Background 실행 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_createUserAuthToken &  
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateApplication & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py test_getInitResult & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_authenticateUserByEmailID & 
$ nohup fl-run-bench -c 100:300:400:500 -D 20 test_auth.py auth.test_validateUserByEmailId & 
-------------------------------------------------------------------------------------------------------- 

3. Report 작성 @@@@@@@ 
1. index.html 파일 생성 
$ cd /mnt/bench-log/auth 
$ fl-build-report --html /mnt/bench-log/auth/AUTH-credential-test.xml 
done:  
/home01/iosptest/funkload/iosp/auth/test_createUserAuthToken-20120524T013305/index.html ==> 생성 

2. 응답시간 그래프 분석(통합OSP_성능테스트_Auth.ppt에서) 
D:\02. TAMA Project\01. 2012.02(통합OSP_IL4U)\00. Work\74. PRT(Funkload)\02. Funkloal Report 
\test_createUserAuthToken-20120524T013305\index.html(클릭) 
 5. Request stats 
 1) PPS(Requests Per Second), RPT(Requests Response Time) 
3.  제니퍼 서버(http://50.19.120.204/login.jsp) 
1) 실시간 모니터링 > 실시간 현황 
가. CPU(최근 시스템 CPU 사용률(%): 70% 지점 찾을 것), 메모리, DB 
-------------------------------------------------------------------------------------------------------- 

4. log  확인 
$ cd /iosp/comp/auth/logs 
$ tail -f /iosp/comp/auth/logs/catalina.out   
$ tail -f /var/log/nginx/access.log 
-------------------------------------------------------------------------------------------------------- 

- host 도메인 확인 
$ vi /etc/hosts 
1. url 설정(auth.conf 파일에서 설정) 
url=http://eu.api.samsungosp.com/ ===>/ 10.124.138.138(아님)  ===> 의미 없음 
2. iosp_stg2_hosts_direct 파일에서 
# IOSP STG2 External # ===> 54.247.179.87 eu.api.samsungosp.com  
==============================================================================================================

- Stg_2 US_IDC 서버 
1. 현재 상태: 184.169.141.194[UIA](Stg_2 US_IDC 서버) ==> 제니퍼 설치되어 있음 
2. 요청: 54.247.167.97(Stg_2 EU_IDC 서버) ==> 제니퍼 설치안되어 있음(사용 안함) 
==============================================================================================================

- 이선미 과장 tomcat 서버 테스트 
1. http://70.4.152.163:8089/auth/oauth2/authenticate 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.25(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00  --> 중식(account팀: 김성채 팀장) 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 적용 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

- auth-client 문제점 발견 
1. 원인: 내부 VO는 XStream, 외부 소스 VO는 JAXB로 연동 
 1) VO명이 같아서 auth-client1.0.jar 내부에 포함된 VO를 먼저 참조함(필드 하나 추가 때 마다 .jar 재배포 해야함) 
3. 해결책 
 1) 기존 VO 파일의 폴더(auth.oauth2.vo)를 auth.oauth2.inner.vo로 변경(소스까지 완전 변경) 
 2) VO 파일 앞에 주석으로 target_package적용 
 - /AccessTokenVO.java 파일에서 
package com.samsungosp.auth.oauth2.inner.vo;   // vo ==> inner.vo로 수정 

import com.thoughtworks.xstream.annotations.XStreamAlias; 

/** 
 * This is the AccessTokenVO class 
 *  
 * @version 1.0 
 * @author Tae-Man Jin 
 *  
 * @target_package com.samsungosp.auth.oauth2.vo 
 *  
 */ 
@XStreamAlias("accessTokenVO") 
public class AccessTokenVO { 
} 
 3) type(type, parameterType)은 com.samsungosp.auth.user.inner.vo를 포함할 것 
 (type="User3rdDisclaimerAcceptanceCreateVO" ==> type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO") 

/userAuthDAO.xml 파일에서 @@@@@ 
<resultMap id="User3rdDisclaimerAcceptanceCreateVO" type="com.samsungosp.auth.user.vo.User3rdDisclaimerAcceptanceCreateVO"> 
	<result property="applicationID" column="APSVC_ID"/> 
	<result property="userID" column="USR_ID"/> 
	<result property="disclaimerVersionText" column="DSCMR_VER_TXT"/>  
</resultMap>  

<!--// 3rd 특정 버전에 대한 약관동의 내역 조회 //--> 
<select id="get3rdDisclaimerAcceptance" parameterType="com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO" resultType="java.lang.Integer">   
	SELECT  
	    /* [userAuthDAO.xml].[com.samsungosp.auth.user.dao.UserAuthDAO.get3rdDisclaimerAcceptance] */ 
	    COUNT(*) 
	FROM  
	    TCSO_3RD_PRTY_DSCMR_ACPTNC 
	WHERE 
	    APSVC_ID = #{applicationID} 
	AND USR_ID = #{userID} 
	AND DSCMR_VER_TXT = #{disclaimerVersionText}  
</select> 
4. 기타 
 1) auth-client 문제점로 Merge 작업한 것 Stage1 서버에 못 올렸다고 나책임에게 불려 감 
==============================================================================================================

- 개발서버 Hudson 빌드 실패 
1. 원인: 로컬 서버에서 Maven 빌드 성공 했으면 99% udson 빌드 성공 해야 함 
2. 실패 원인:  
 1) 새로 생성된 파일(/SystemAttributeVO.java)을 P4 Commit 안 했을 경우(대부분 P4 Commit 에러) 
2. 해결책:  
 1) 소스 세밀히 확인 
 2) 다른 개발자 로컬 서버에서에서 P4 Upadate 받아서 Maven 빌드 및 확인 해볼 것 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.26(토) 작업 ■■■■■■■■■■■■■■■
---> 09:30 ~ 22:00  --> 조기축구, 출근 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 적용 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

05:30 기상  
06:40 신구초등학교 
06:40 조기축구(0:4 패): 큰 게임 
07:25 종료 
07:40 조식(화정식당: 상설이형이 쏨) 
08:30 종료  
09:30 출근 
12:00 중식(바나나: 2천원) 
18:00 석식콩나물 국밥: 4천원) 
21:00 퇴근 
22:20 귀가 
23:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.27(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
07:20 기상 
08:30 신구초등학교 
08:50 조기축구(6:1 패): 숏게임  
10:00 종료 
10:20 중식(류명국 해장국: 부대찌게): 류명국 회원님이 쏨 
12:30 종료 
12:30 류명국 회원님이 빌라에 데려다 줌(월드 메르디앙 703호) 
13:30 남태령 호프집(유감독, 승렬이형, 창원이형): 5만원(내가 쏨) 
16:00 종료 
17:10 스페셜(안) 
19:30 안(스: 카라(B, 169, 포항):무한): 첫방문 ==> ㅇㄴ이 Perfect 외침(오 느낌) 
20:40 종료 
21:00 석식(짜파게티) 
22:30 취침(스페셜(안)) 
06:00 기상 ==> 2012.05.28(월) 
06:20 조식((스페셜(안) 백반) 
06:50 종료 
07:10 출근 
17:30 퇴근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.28(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 17:30 --> 공휴일(부처님 오신날) 

- IOSP(/oauth2) Prj
- Merge 작업 
01_Auth_authenticate 
1. OSP-661: 이메일 인증 기능 추가 및  필수항목 체크 ==> 적용 
2. OSP-928: Auth authenticate API errorCode 추가(AUT_1057) ==> 적용 
3. OSP-1059: Auth SHA256 반영 ==> 적용, OK 
4. OSP-857: 약관,이메일정보 검증위해 SF Client 적용 ==> 적용 
5. OSP-1211: grant_type=auth_token 통한 code발급, authorize 에러(AUT_1307.400) ==> 적용 
6. 곧 반영: 3rd Party 연동 위한 신규 및 API 수정==> 적용 

02_Auth_authorize 
1. OSP-636: redirect_uri, Implicit Type 추가(response_type=token) ==> 적용 
==============================================================================================================

- sf-client 에러(/SFClientImpl.java 파일에서) 
public UserAccountAuthResultVO validateUserAccountByEmailId (UserAccountAuthRequestVO userAccountAuthRequestVO,  
    String AppID, String AppSecretKey, OSPUserRegionTypeCode regionTypeCode) throws OSPException { 
UserAccountAuthResultVO userAccountAuthResultVO = new UserAccountAuthResultVO(); 

try { 
    AuthenticateServiceResourceClient client = new AuthenticateServiceResourceClient(/*endpointURI*/getEndPointURIFromRegionTypeCode(regionTypeCode)); 
    //setHttpHeader(client, AppID, AppSecretKey); // 확인 필요! // TEST ===>  
    userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO);  
}  
-------------------------------------------------------------------------------------------------------- 

[WARNING] advice defined in org.springframework.scheduling.aspectj.AbstractAsyncExecutionAspect has not been applied [Xlint:adviceDidNotMatch] 
[INFO] ------------------------------------------------------------------------ 
[INFO] BUILD FAILURE 
[INFO] ------------------------------------------------------------------------  
[ERROR] Failed to execute goal org.codehaus.mojo:aspectj-maven-plugin:1.3:compile (default) on project auth-lib: Compiler errors: 
[ERROR] error at userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO); 
[ERROR] ^^^^^^^^^^^^^^^ 
[ERROR] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-lib\src\main\java\com\samsungosp\auth\user\clien 
t\SFClientImpl.java:306:0::0 The method validateUserAccountByEmailId(String, UserAccountAuthRequestVO) is undefined for the type AuthenticateServiceResourceClient 
[ERROR] -> [Help 1] 
==============================================================================================================

- 구주 사용자 등록(이진욱 책임이 등록) 
1. username: *@*.*, password: osp123 
2. client_id(app_id): 5zjyopnywm, client_secret(app_secret): , app_id(service ID)  
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123 
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123
&check_email_validation=Y&country=KOR&country_code=KOR&langCode=KO&appId=22n6hzkam0 
3. 등록 했지만 로컬 LDAP에 회원 인증 정보 조회(GC)에 미존재(STG_1에는 존재) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.29(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 22:00 --> 2012년 종합소득세 신고 완료(납부금: 195,030원) 

- IOSP(/oauth2) Prj
- PVT_Defect[ 처리([auth] OSP1.0, 2.0 Source Merge 변경분 CR 요청: http://10.254.218.34:8080/browse/IOSP-8) 
1. IOSP-49 ==> 처리 완료 
==> 1. grant_type=refresh_token code 누락함(createAccessToken_200_02)  
2. IOSP-56 ==> 처리 완료 
==> 1. check_mandatory에 Y(createUserAuthToken_200_01) 
 1) 요청 파라메터 appId에 "22n6hzkam0" 값을 대입하여 API 요청함.  
 2) 요청 파라메터 appId에 "j5p7ll8g33" 값을 대입하여 API 요청함. 
3. IOSP-61 ==> 처리 완료 
==> 1. createAccessToken API Request 파라미터인 refresh_token의 Mandatory가 상이함  
==============================================================================================================

- LDAP 설정(ApacheDirectoryStudio 설치 및 설정)  
1. New LDAP Connection(새창): 
 1) Connection Name: 01. auth LDAP(local 서버) 
 2) Host Name: localhost 
 3) Port: 1689 
2. Authenticcation 
 1) Bind DN or user: cn=writer,ou=manager,dc=samsung,dc=com 
 2) Bind password: password 
-------------------------------------------------------------------------------------------------------- 

- LDAP 서버 
81. IOSP LDAP(local 서버): 210.118.57.208:1689  ==> ldap://localhost:1689 
02. stg_1: 210.118.57.29:1689 ==> ldap://localhost:1689 
==============================================================================================================

- /auth-lib/pom.xml 파일에서 
<!--// sf-client(/auth2): /sf-client-1.2.jar //-->  ==> 사용 안함 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency> 

<!--// social-client(/auth2): /social-client-1.1.jar //-->  ==> 사용 
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>social-client</artifactId> 
  <version>1.1</version> 
</dependency> 
==============================================================================================================

- sf-client 사용 안함(auth-client-1.3.jar 사용) 
import com.samsungosp.openapi.client.*;   ==> GenericResourceClient 

- AuthenticateServiceResourceClient.class(/sf-client-1.2.jar)파일에서 
import com.samsungosp.openapi.client.*;   
public class AuthenticateServiceResourceClient extends GenericResourceClient { 
} 
==============================================================================================================

- 구주 사용자 등록(개발 서버: 박종무 과장에게 요청) ==> /user/createUser(http://www.ospserver.net): 안됨 
1. username: *@*.*, password: osp123 
2. client_id(app_id): 5zjyopnywm, client_secret(app_secret): , app_id(service ID)  
3. UserServicePrfResourceImpl.java 파일에서 
public ModelAndView createUser(OSPHttpHeaderInfo header, @RequestBody UserCreateVO userCreateVO) { 
	UserCreateResultVO resultVO = userBiz2.createUser(userCreateVO, header); 
}  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.30(수) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  --> OSP2.0 운영 담당자(김동준 선임, 정한진 사원) 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-57 ==> 처리 완료 
1. 요청 파라메터 isValid를 누락 ==> REQUEST_ERROR"로 응답됨 
AUTH.AUT_1003.400=The value of username parameter must be present and have a non-empty value. 

IOSP-58 ==> 처리 완료 
1. isValid_passwrod_AUT_1004_01가 AUT_1805 "The password is incorrect." 응답됨 
AUT_1004 "The value of password parameter must be present and have a non-empty value." 응답로 응답 되어야 함 

IOSP-60 ==> 처리 완료 
1. createUserAuthToken API fault Code Description이 N/A로 기재 되어 있는 fault code 
-AUT_1815 Did not agree the latest disclaimer(3rd Party).  
2. OSP 2.0 스펙 문서에는 삭제 되어있으나 통합 OSP 스펙문서에는 포함되어있는 faultcode 
 1) createUserAuthToken의 AUT_1018 제거 처리(createAuthorizationCode의 AUT_1018 존재(OSP 2.0 문서와 동일하게 처리)) 

IOSP-50  ==> 처리 완료 
1. 미국 계정으로 createAuthorizaionCode API를 요청 --> privacyAccepted가 Y가 응답 ==> 처리 완료  
해당 userID(nvfclhqmtr) 사용자의 최근 약관 동의 여부 조회에서 데이타가 존재하지 않았기 때문에 사용자의 최근  
약관 동의 여부(privacyAccepted)가 Y 설정되어 있음(정상적인 상황으로 추정됨) 
 ==> 미국 계정의 경우 privacyAccepted 대상이 아니므로 N으로 응답되어야 한다면 DB에 해당 데이타가 존재하지  
 않아서 나는 에러로 판단됩니다. (조회 성공(Y)이면 privacyAccepted: N, N이면 privacyAccepted: Y))  
/UserAuthBizImpl.java 파일에서 
public UserTNCResultVO verifyTNCRequest(String strLoginID, String appId) throws OSPException {  
 // 6. 사용자의 최근 약관 동의 여부 가져오기 
boolean isAcceptedRecentTNC = isExistTNCAcceptance(strUserID, prioryMobileCountryCode, 
userTNCContent.getTncVersionText()); 
boolean isAcceptedPrivacy = isExistPrivaceAcceptance(strUserID, orgCountryCode); 
 log.debug("[verifyTNCRequest()] ==> [사용자의 최근 약관 동의 여부] [isAcceptedPrivacy]"+ isAcceptedPrivacy); 

userTNCResultVO.setPrivacyAccepted(strAcceptedPrivacyYn); 
        log.debug("[verifyTNCRequest()] ==> [사용자의 최근 약관 동의 여부_Re][strAcceptedPrivacyYn]"+ strAcceptedPrivacyYn); 
} 

IOSP-51 ==> 처리 완료 
1. userauth_token 만 응답됨 --> userId, userauth_token, userauth_token_expires_in가 응답 ==> 처리 완료 
1) getUserAuthTokenExpiresIn이 0이여서 결과값에 표현이 안됨 

IOSP-52 ==> 처리 완료 
1. 필수값 누락, 최소, 최대값 누락 
 1) AUT_1004 "The value of password parameter must be present and have a non-empty value." 응답. 
 2) AUT_1013 "The length of a password parameter is invalid." 응답.  

IOSP-54  ==> 처리 완료 
1. tncAccepted, privateAccepted에 "N"을 대입하여 요청하였을 때, AUT_9001 가 응답 
1. AUT_1038 "Did not agree the latest terms and conditions." 가 응답됨.  
2. AUT_1039 "Did not agree the privacy conditions." 가 응답됨.  
3. AUT_1040 "Did not agree the latest terms and privacy conditions." 가 응답됨. 

IOSP-55 ==> 처리 완료 
1. countryCode에 invalid 값 "AAA"를 대입하여 요청, AUT_1000 "invalid_request" 가 응답 ==> 처리 완료  
 1) AUT_1037 "Service is not available in your country.(Cannot get the terms and condition content.)" 가 응답됨. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.05.31(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00  --> 신경치료3(다빈치치과): 첫번 신경치료비(14,400원) 이 덮어쓰우는 걸로 퉁치로 함 

- IOSP(/oauth2) Prj
- PVT_Defect 
==============================================================================================================

- oauth2 통합OSP 2.0으로 전환 요청 메일(김은재(EunjaeKim) 책임에게 보냄): 강웅건 부장 담당 
1/ 저희쪽(oauth2)에서 호출을 하면 OSP 2.0으로 전환 되어 테스트 에러가 발생 
(oauth2를 개발, 테스트 중인 통합OSP 2.0으로 전환 요청) 
2. 참조: 통합OSP_운영_라우팅_20110229_v1_4_TA.xlsx 파일(첨부파일 참조)을 열어 보면 auth.samsungosp.net을 
 "5월 이전에 OSP 2.0, 이후 통합 2.0으로 전환"이라고 되어 있는데 이게 아직 처리 되지 않음 
==============================================================================================================

- PRT(Funkload) 재작업 @@@@@@@@@@@@@@ 
1. Funkload Client Script 작성 
3) 성능 테스트 명령어 
$ cd /home01/iosptest/funkload/iosp/auth  
$ fl-run-bench -c 100:450:500:550:600:650:700 -D 20 test_auth.py auth.test_random  
===>  최적 에러 찾기_2(450 TPS, 3초)  ==> 5.24 

$ fl-run-bench -c 10:30:50:70 -D120 test_auth.py auth.test_random 
===>  최적 에러 찾기_2(450 TPS, 3초)  ==> 5.31_01 

$  fl-run-bench -c  10:50:100:110:120:130:140:150:200 -D 120 test_auth.py auth.test_random 
===>  최적 에러 찾기_2(450 TPS, 3초)  ==> 5.31_02_2(실제 사용 함) 

$  fl-run-bench -c  10:50:100:110:120:130:140 -D 120 test_auth.py auth.test_random 
===>  최적 에러 찾기_2(450 TPS, 3초)  ==> 5.31_02_3 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■