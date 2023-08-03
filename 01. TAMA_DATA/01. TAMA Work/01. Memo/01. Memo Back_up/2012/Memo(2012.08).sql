

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.08.01(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 

- IOSP(/oauth2) Prj
- OSP1.0 SF API 수정건 
1. 이메일 인증 필요여부 조회  
회원가입시 DB에 등록된 TCSO_PRTY.EMAIL_VLD_CHK=Y 이면서, 
회원이 이메일인증을 하지 않은 상태(LDAP emailvldynfg=N)이면 requireEmailValidation=Y 를 리턴해줌 
cf. 기존 2012-01-19이후 가입자면서, WEB가입자 체크는 삭제 
==============================================================================================================

- 운영 매뉴얼 [통합OSP_Admin Guide_Account.doc] 업데이트 
1. p17 수정 
< Perforce상 SOAP UI TC파일위치> 
//OSP/IOSP/Workspace/OpenAPITest/testcase/IOSP_Profile.xml 처럼 넣으시면 될 것 같습니다 
2. p22 수정 
1.1.1.  Auth Problem 
 : 문제에 대한 Define 이 없습니다. 예로 Case 1. 인증이 안되는 경우 
1. 미주(US)지역에서 조회가 되지 않으면 LDAP에 회원 인증 정보 조회(GC) 조회 안되면 에러 발생 
 : LDAP 조회 방법에 대해 명시 필요 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.02(목) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 20:10 

- IOSP(/oauth2) Prj
- OSP1.0 SF API 수정건 
==============================================================================================================

- 97. 이미지편집 
1. http://pixlr.com/editor 
==============================================================================================================

- 현용돈 송금 
1. 우리은행(607 067319 18 061), 예금주: 올앳황현용 ==> 200만원 송금 완료 
2. 현재 현용 급여: 4,285,500원이 남아 있음 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.03(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 

- IOSP(/oauth2) Prj
- Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

- 항공권 예약 결제(예약번호: GHHDVK): 결제 완료 처리함 
1. 항공권결제시한: 12/08/03 17:00( (예약번호 : GHHDVK) 
2. 항공 스케줄 
 1) 출국 [베트남항공(3411편)] 인천: 09-28(금), 19:30 ==> 하노이: 09-28(금), 22:05  
 2) 입국 [베트남항공(416편)] 하노이: 10-03(수), 23:40 ==> 인천: 10-04(목), 05:50 
3. 총 결제금액: 699,100원(TAX/유류할증료 포함)(항공료: 590,000원) ==> 실제 결제금액: 693,100원 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.04(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

07:30 기상 
07:40 고장난 노트북 복구 
09:10 성은동 작은 도서관(열람실 전기 사용 안됨): 도서관 내부는 가능한 것으로 추정됨 
09:30 베트남어 공부(가장 쉬운 베트남어 첫걸음) 
18:20 종료 
20:00 석식 
21:30 루이엔(부인)이 고종 사촌 결혼 준비로 피곤하다고 해서 화상통화 못함(전화만 잠깐함) 
22:30 종료  
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.05(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

▦조기축구
04:40 기상 
04:45 런던올림픽 축구[8강] 한국 0 <PK 5 vs 4> 0 영국(03:40) ==> 4강 진출 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교 
07:20 숏게임(3:2 패): 김영배 회장님이 수박(2만 천원) 쏨 
08:30 종료(더워서 일찍 끝냄) 
09:30 순대국집(한상봉 부회장님이 쏨) 
10:30 종료  
12:30 귀가(태훈이형 차) 
13:20 글빛 도서관 
13:30 독서(베트남어 리포트) 
16:00 베트남어 공부(가장 쉬운 베트남어 첫걸음) 
19:30 종료 
19:40 귀가 
20:00 석식 
21:00 루이엔(부인)과 화상통화(광주의 고종 사촌 언니(타오(Tho))씨와 채팅) 
22:30 종료  
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.06(월) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 --> 구형회 차장 조모상, 루이엔 나이 속였다고 삐짐(거짓말하지 말 것) 

- IOSP(/oauth2) Prj
- Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.07(화) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 18:00 --> 녹차 의정부님 만남 

- IOSP(/oauth2) Prj
- Coheren를 DB 변경시 영향도 조사  
==============================================================================================================

- 국가코드 확인 
아래의 데이터들이 GRP 테이블에는 있으나 DTL 테이블에는 존재하지 않음. 
해당 데이터가 사용되지 않는 부분인지 아니면 
GRP 테이블에 데이터가 존재해야 하는 것인지 확인 필요. 
TSCO_LKP_CD_GRP, TSCO_LKP_CD_DTL 

SCOM.TSCO_LKP_CD_GRP -> LKP_CD_GRP_ID   ===> 사용 안함 
           UA00000001 : 해당 데이터 없음 
           UA00000002 : 해당 데이터 없음 
           UA00000003 : 해당 데이터 없음 

SCOM.TSCO_LKP_CD_DTL -> LKP_CD_GRP_ID  
           UA00000001 
           UA00000002 
           UA00000003 
--------------------------------------------------------------------------------------------------------  

/commonDAO.xml 파일에서 @@@@@@ 
<select id="getLookupCodeByCodeName" parameterType="map" resultType="java.lang.String"> 
<![CDATA[ 
    SELECT   
/* [commonDAO.xml].[com.samsungosp.auth.user.dao.CommonDAO.getLookupCodeByCodeName].[08] 변경일자(20110523) */ 
    LKP_CD 
FROM     
TSCO_LKP_CD_DTL 
WHERE    
LKP_CD_GRP_ID = #{lookupCodeGroupId} 
AND UPPER(LKP_CD_NM) = UPPER(#{lookupCodeName}) 
]]> 
</select> 

<select id="getLookupCodeListByGroupID" parameterType="java.lang.String" resultType="java.lang.String"> 
<![CDATA[ 
SELECT  
/* [commonDAO.xml].[com.samsungosp.auth.user.dao.CommonDAO.getLookupCodeListByGroupID].[09] 변경일자(20110523) */ 
    LKP_CD 
FROM 
TSCO_LKP_CD_DTL 
WHERE    
LKP_CD_GRP_ID = #{value} 
]]> 
</select> 
==============================================================================================================

- 녹차 의정부(허원석)님 만남 
1. 허원석: 010-8884-0,  @naver.com 
2, 청목 식당(서울 강남구 역삼동 823 풍림빌딩 지하 1층 가운데 집): 국기원 사거리 
==> 석식 및 맥주(15,000원: 내가 쏨) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.08(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 --> 전자지갑 개발팀 투입(옆자리 200년 10월달에 함께 일 했든 삼성 네트워크 기획자 앉음: 원광연 부장) 

- IOSP(/oauth2) Prj
- Coheren를 DB 변경시 영향도 조사 
1. 변경 라이브러리, 클래스 명 및 어떤 방식으로 변경 해야 하는 지 
1) 변경해야할 클래스명  
/Oauth2IssueBizImpl.java, 
/Oauth2CacheBiz.java, /Oauth2CacheBizImpl.java,  
/UserAuthBiz.java, /UserAuthBizImpl.java,  
/UserAuthDAO.java, /UserAuthDAOImpl.java, 
/userAuthDAO.xml 
-------------------------------------------------------------------------------------------------------- 

- Coheren pool명 대신 DB TALBE명으로 대체(샘플) 
osp_oauth_userauth_token_pool  ===>  TCSO_USERAUTH_TOKEN_POOL 
osp_app_pool ===>  TCSO_APP_POOL 
osp_oauth_code_pool ===>  TCSO_OAUTH_CODE_POOL 
oauth_access_token_pool ===>  TCSO_ACCESS_TOKEN_POOL 
oauth_refresh_token_pool ===>  TCSO_REFRESH_TOKEN_POOL 
==============================================================================================================

- [4강] 한국 0 : 3  브라질(03:40) 
1. 2012 런던올림픽 축구 4강 ==> 3, 4위전으로 밀려남 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.09(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
1. 작성 완료 및 보고서 작성(Coheren를 DB 변경시 영향도 조사.ppt) 및 제출 
==============================================================================================================

- 삼성SDS 전자서명 등록 
사번: WA967 
아이디: tamario.jin 
비밀번호: s*j**8*1 
1. 등록 에러: [ MarkAny Server Daemon: Verify client cert error] 에러가 발생하였습니다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.10(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.11(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

04:30 기상 
04:40 2012 런던올림픽 축구 3-4위전 시청 ==> 한국 2 : 0 일본 
==> 한국 올림픽 사상 최초 동메달 획득(선수 18명 전원 병력 면제) 
08:30 집 출발 
09:10 글빛도서관 
09:30 베트남어 공부(가장 쉬운 베트남어 첫걸음) 
17:00 종료 
20:00 석식 
22:30 루이엔(부인)과 화상통화 못해서 전화만 함 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.12(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

▦조기축구
06:00 기상 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교 
07:20 숏게임(3:2 패) 
07:20 게임(5:5 무): 수박 2 통 이치근 부회장님이 쏨 
10:00 종료 
10:30 문경세제(오세림 고문님이 쏨) 
12:00 종료  
12:10 귀가(태훈이형 차)  
12:40 귀가 
13:00 낮잠 
19:00 석식 
21:00 루이엔(부인)과 화상통화(광주의 사촌 언니(타오(Tho))씨와 채팅) 
22:30 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.13(월) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.14(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 --> 루이엔 한국말 공부 시작(응아씨 포함 총 3명) 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.15(수) 작업 ■■■■■■■■■■■■■■■
---> 07:50 ~ 15:10 --> 광복절(출근), 교보문고 강남점 방문(베트남어 책 분석), 출입문 고장(경비실에 통보) 

- IOSP(/oauth2) Prj
- 한송이의 베트남 초급문법 
1. Book: 20과 완료, 동영상: 20과 완료 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.16(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

- 베트남어 VSL 작성 
1. 01. VSL,doc 작성 및 교재 만들기 
2. 베트남어 교재 VSL(1~6) 
http://blog.naver.com/yaleejihyun?Redirect=Log&logNo=10018490001 
==============================================================================================================

- 책 주문(http://www.bandinlunis.com) 
1. 베트남어 300 
2. 한번만 봐도 기억에 남는 테마별 베트남 단어 2300  
3. 열공 베트남어 회화  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.17(금) 작업 ■■■■■■■■■■■■■■■
---> 06:45~ 20:10 

- IOSP(/oauth2) Prj
- Auth Coheren를 DB 변경시 영향도 조사 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.18(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

08:30 기상 
09:10 성은동 작은 도서관 
09:30 도서대출(성은동 도서관) ==> 1. (열공)베트남어 첫걸음, 2. 베트남어 300 
15:00 종료 
15:30 귀가 
16:30 루이엔(부인)과 화상통화 
17:00 집출발 
18:20 가원커플 인천사무실 
18:30 루이엔(부인)과 화상통화2 ==> 매니저님, 최살장님, 웬티하(아들 아파서 먼저 감), 원석씨 
19:10 국결행사] 인천 정모 ==> 각시보쌈(인천시 간석동 221-2 ) 
 ==> 원석씨 아이패드2(가격 57만원 선) 가지고 와서 자랑함 
 ==> 매니저님이 베트남 신부 입국이 보통 6개월 걸린다고 함 
19:30 루이엔(부인)과 화상통화3 
22:30 종료 
23:10 신도림역 
23:50 서울대입구역 
24:10 귀가 
24:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.19(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

▦조기축구
06:00 기상 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교 
07:20 숏게임(1:1 무) 
08:30 게임(6:5 승) 
10:00 종료 
10:30 순대국집(조기회에서 쏨) 
12:00 종료  
12:10 귀가(태훈이형 차)  
12:40 귀가 
14:00 낮잠 
20:00 석식 
21:00 루이엔(부인)과 채팅 ==> 야후 화상통화가 네트워크 문제로 안되어서 채팅만 함 
22:30 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.20(월) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:10 

- IOSP(/oauth2) Prj
- OSP2.0 변경 회의 
1. OGG 동기화(10초 내외)에 따른 소스 변경 
==============================================================================================================

- 스카이프(무료 화상통화) 
1. PC버전: http://skype.daesung.com/download/ndownwin.asp 
2. 로지텍 C510 
==============================================================================================================

00. VN News ==> http://www.vnnews.kr 
==============================================================================================================

- 차멀미 안하는 법 
1. 선글라스 끼기: 차멀미는 빛이 반사되어 그것을 보았을 때 머리에서 어지러움을 느낌, 그때 빛의 차단을 막기 
위해서 선글라스를 낌 
2. 멀미약(물약) 
3. 차 앞좌석에 앉기 
==============================================================================================================

- 신사조기회 회비 납부(2012년) 
1. 3월 27일 송금: 진태만(1~3월): 6만원 ==> 납부 완료 
2. 8월 20일 송금: 진태만(4~12월): 18만원 ==> 납부 완료 
==============================================================================================================

- 현용돈 송금 
1. 우리은행(607 067319 18 061), 예금주: 올앳황현용 ==> 200만원 송금 완료 
2. 하나은행(190-910238-58407), 예금주: 황현용 ==> 100만원 송금 완료 
3. 현재 현용 급여: 9,571,000원이 남아 있음 
==============================================================================================================

- 급여 자동 이체 설정 
1. SC은행 두드림통장(130-20-502841) --> SC 내지갑 통장(202-20-030608) ==> 월 100만원 
2. 이체일: 매월 25일 
==============================================================================================================

- 네이버 회원가입(진태규/루이엔) @@@@@ 
1. 유선(054-242-0) 인증 
2. 진태규(730625-10): 루이엔에게 만들어 줄 것 
3. URL: http://www.naver.com 
 1) ID: tamaluyen/lulu3*9 
4. @naver.coom 
---------------------------------------------------------------- 

- 야후 회원가입(진태규/루이엔) 
1. 진태규(730625-10): 휴대폰 화상통화 테스트에 이용할 것    
2. URL: http://www.naver.com 
 1) ID: tamaluyen/lulu3*9 
3. *@*.* 
---------------------------------------------------------------- 

- 네이트온 회원가입(진태규/루이엔) 
1. 휴대폰(010-3072-0) 메일(*@*.*) 인증 
2. 진태규(730625-10): 루이엔에게 만들어 줄 것 
3. URL: https://member.nate.com/Member/Regist/Join.sk?cp=nateon 
 1) ID: @nate.com/lulu3*9 
---------------------------------------------------------------- 

- 스카이프 회원가입(진태규/루이엔) 
1. tamaluyen/lulu3*9 
2. PC버전: http://skype.daesung.com/download/ndownwin.asp 
-------------------------------------------------------------------------------------------------------- 

- 야후 회원가입(진태만)  @@@@@ 
1. taemario/ta*a3*9 
2. 야후 매신저 다운로드: http://kr.messenger.yahoo.com/beta/win 
---------------------------------------------------------------- 

- 스카이프 회원가입(진태만) 
1. taemario/ta*a3*9 
2. PC버전: http://skype.daesung.com/download/ndownwin.asp 
---------------------------------------------------------------- 

- 네이버 라인 회원가입(진태만) 
1. tamario/s*pe**8*1* 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.21(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40~ 20:10 

- IOSP(/oauth2) Prj
- OSP2.0 변경 회의 
1. OGG 동기화(10초 내외)에 따른 소스 분석 
==============================================================================================================

- 샌둘
[애드라인]이월상품/트렉스타[정품]레져타임,뉴바이칼,트레킹화,등산화,샌달: 45,120원 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A539222030&frm3=V2 
==============================================================================================================

- 아이패드2(16G): 450,000원  
http://blog.danawa.com/prod/?prod_c=1315713&cate_c1=224&cate_c2=38768&cate_c3=38783&cate_c4=&keyword= 
- 뉴아이패드(16G): 550,000원  
http://blog.danawa.com/prod/?prod_c=1626331&cate_c1=224&cate_c2=38768&cate_c3=38783&cate_c4=&keyword= 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.22(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40~ 18:20 

- IOSP(/oauth2) Prj
- Oracle Failover를 위해 설정을 변경 
1. DB 접속방법 변경 
 1) Spring DBCP를 이용하여 접속 ==> JNDI를 이용한 접속 
2. 프로퍼티 암호화 삭제 - DB 패스워드 암호화 관련 내용임 
 1) 접속정보를 프로퍼티에서 읽어옴. ==> server.xml 파일에 지정. 
경로: C:\OSP2.5\localhome\webapps\auth-svc\WEB-INF\lib 
- mysql-connector-java-5.1.20.jar (mySQL jdbc lib)  ==> 없음 
- ojdbc6-11.2.0.3.jar(Oracle 11g jdbc lib)  ==> 없음 
- commons-collections-3.2.1.jar 
- commons-dbcp-1.4.jar 
- commons-pool-1.5.4.jar 
==============================================================================================================

- 석식(account팀: 김팀장) 
1. 장소: 리틀 옥스(기념일 50% DC)(http://www.littleoaks.co.kr) ==> 회전 레스트랑(H: 564-8001) 
2. 일시: 18:30 ~ 20:30 
==============================================================================================================

- 가족 구성도 
http://blog.daum.net/simjika/42 
http://moonky.woobi.co.kr/tc/102 
==============================================================================================================

- 고대사이버대(http://ecamp.cyberkorea.ac.kr) 
1. 고유번호: 10360 
- EBS 두리안 
http://www.ebsd.co.kr/ebs/vat/vod.do?cmd=vodlist&menucd=MC001 
==============================================================================================================

- 마우스 더블 클릭 현상 조사 
1. 마우스를 바닥에 두고 주먹으로 강하게 내려 치세요.(내려 치는 강도: 부숴지지 않을 정도) 
2. 바닥에 수평으로 떨어 뜨리는 방법도 있음 
3. 원인: 인터넷에서 좀 더 찾아 보니 마우스를 때릴 때 마우스 내부의 클릭을 조절하는 부분이 풀어지면서 
고쳐지는 것임 
4. 주의: 이 방법은 임시 방편용입니다. 
인터넷을 찾아보니 한번 더블클릭 되기 시작하면 계속 그런다고 하더라고요. 
좀 더 확실하게 고치실려면 분해해서 안을 깨끗히 청소하시고 클릭되는 스위치 부분의 이 물질을 최대한 제거 
해야 한다고 함. 비싼 마우스는  A/S 받기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.23(목) 작업 ■■■■■■■■■■■■■■■
---> 06:45~ 20:00 

- IOSP(/oauth2) Prj
- OSP2.0 변경 회의 
1. OGG 동기화(10초 내외)에 따른 소스 분석 
==============================================================================================================

- DB 접속 방법 변경건에 대한 추가 공지 
1. DB 정보 설정 변경시에는 각 component 담당자께서 server.xml을 변경할 것 
==============================================================================================================

- 현용돈 송금 
1. 우리은행(607-067511-18-892), 예금주: 올앳황현용 ==> 450만원 송금 완료 
2. 현재 현용 급여: 5,071,000원이 남아 있음 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.24(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40~ 20:00 

- IOSP(/oauth2) Prj
- OSP2.0 변경 회의 
1. OGG 동기화에 따른 소스 분석 
==============================================================================================================

- Windows Media 인코더 녹음  
http://cafe.naver.com/rayone7/14637 
http://blog.naver.com/etwas0227?Redirect=Log&logNo=60015778070 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.25(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

08:30 기상 
09:10 성은동 작은 도서관 
09:30 도서대출 반납(성은동 도서관) ==> 1. (열공)베트남어 첫걸음, 2. 베트남어 300 
15:30 종료 
15:50 귀가 
20:00 석식 
20:50 루이엔(부인)과 화상통화  
24:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.26(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 

▦조기축구
06:00 기상 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교(창원이형: 2012년 회비 완납 구두 확인 받음) 
07:20 숏게임(2:2 무) 
08:30 게임(6:5 패) 
11:00 종료 
11:30 문경세재(오세림 고문님이 쏨) 
12:00 종료  
12:40 귀가(태훈이형 차)  
14:00 낮잠 
20:00 석식 
21:00 루이엔(부인)과 채팅 
22:30 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.27(월) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:10 --> 응아씨와 화상통화함 

- IOSP(/oauth2) Prj
- password 변경(emailID: @yopmail.com에 대한 pwd를 osp123로 변경 처리) 
1. Tomcat 서버 ==> VM Arguments: -Dsf.repository.type=DB로 설정)(-Dsf.repository.type=LDAP에서 변경) 
2. sopaUI에서(/IdentityService_makePasswordForEmailID) 
 1) makePasswordForEmailID_200_OK_01  
  가. MakePasswordForEmailID - Request 1에서 emailID: @yopmail.com(실행할 것) 
  나. temporary password동적생성에서(실행할 것) 
 2) tearDown  
  가. REST ChangePasswordForEmailID 
 <loginID>@yopmail.com</loginID> 
 <newPassword>osp123</newPassword>로 변경 후 실행할 것 
==> @yopmail.com의 password가 osp123로 변경 됨 

3. Tomcat 서버(WAS서버) 에서 -Dsf.repository.type=DB로 설정 변경 
auth@ec2-174-129-6-106:~$ cd /iosp/comp/auth/configuration 
auth@ec2-174-129-6-106:/iosp/comp/auth/configuration$ vi startup.sh 
export CATALINA_OPTS="$CATALINA_OPTS -Dosp.server.type=dev -Dcomponent.name=auth  
-Dosp.home.dir=/iosp -Dosp.center.countrycode=GC-G -Dsf.repository.type=LDAP -Dosp.region.ou=gc"   ===> 
export CATALINA_OPTS="$CATALINA_OPTS -Dosp.server.type=dev -Dcomponent.name=auth  
-Dosp.home.dir=/iosp -Dosp.center.countrycode=GC-G -Dsf.repository.type=DB -Dosp.region.ou=gc"로 변경 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.28(화) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:10 --> 태풍 "볼라벤" 서울 거처 북한에 상륙 

- IOSP(/oauth2) Prj
- US IDC: auth.samsungosp.com DB 조회 오류 
원인: 미주(US)(/applicationSystemConfig.US-U.xml)에서 ID를 wprf로 사용(wsoc로 변경 처리함)   
ORA-04045: USERNAME.SYNONYM_NAME의 재 컴파일/재 검증시 오류  
ORA-00980: 동의어 해석이 불가능합니다.   

org.springframework.jdbc.BadSqlGrammarException:  
### Error updating database.  Cause: java.sql.SQLException: ORA-04045: errors during recompilation/revalidation of WPRF.TCSO_PRTY_IDNTN 
ORA-00980: synonym translation is no longer valid 

### The error may involve com.samsungosp.sf.idm.dao.IdmDAO.makePartyIdentificationPassword-Inline 
### The error occurred while setting parameters 
### Cause: java.sql.SQLException: ORA-04045: errors during recompilation/revalidation of WPRF.TCSO_PRTY_IDNTN 
ORA-00980: synonym translation is no longer valid 

; bad SQL grammar []; nested exception is java.sql.SQLException: ORA-04045: errors during recompilation/revalidation of WPRF.TCSO_PRTY_IDNTN 
ORA-00980: synonym translation is no longer valid 

at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:98) 
at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72) 
at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:80) 
at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:80) 
at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:71) 
at org.mybatis.spring.SqlSessionTemplate$SqlSessionInterceptor.invoke(SqlSessionTemplate.java:358) 
at $Proxy63.update(Unknown Source) 
at org.mybatis.spring.SqlSessionTemplate.update(SqlSessionTemplate.java:246) 
at com.samsungosp.sf.idm.dao.IdmDAOImpl.makePartyIdentificationPassword(IdmDAOImpl.java:111) 
at sun.reflect.GeneratedMethodAccessor138.invoke(Unknown Source) 
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25) 
at java.lang.reflect.Method.invoke(Method.java:597) 
at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:309) 
at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:183) 
at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:150) 
at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:80) 
at com.samsungosp.framework.aspect.OSPLoggingAspect.logging(OSPLoggingAspect.java:94) 
at sun.reflect.GeneratedMethodAccessor34.invoke(Unknown Source) 
at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25) 
at java.lang.reflect.Method.invoke(Methodㄴ.java:597) 
==============================================================================================================

- DB 연결(Tunneling)(Dev DB서버)(Oracle) @@@@@@@@@@@@ 
1. 40. Dev DB 연결(Tunneling) IP 추가: 10.76.249.108:1521 ==> 7080(127.0.0.1:7080/DEVIOSP1) --> wsoc/osp123 
2. /config/local/applicationSystemConfig.xml 파일에서 
  <!--entry key="oracle.jdbc.url">jdbc:oracle:thin:@10.76.249.108:1521:DEVIOSP1</entry--> 
==> <entry key="oracle.jdbc.url">jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1</entry>  <!--// local dev(Tunneling) //-->  

- DB 연결(Tunneling)(Stg1 DB서버) 
1. 41. Stg1 DB 연결(Tunneling) IP 추가: 176.34.96.106:1521 ==> 4010(127.0.0.1:4010/IOSPS1EU) --> wsoc/osp123 
2. /config/local/applicationSystemConfig.xml 파일에서 
    <entry key="oracle.jdbc.url">jdbc:oracle:thin:@176.34.96.106:1521:IOSPS1EU</entry> 
==> <entry key="oracle.jdbc.url">jdbc:oracle:thin:@127.0.0.1:7070:IOSPS1EU</entry>  <!--// local dev(Tunneling) //-->  

- DB 연결(Tunneling)(Stg2 DB서버)  ===> DBA가 보안상 막아 놓음[현재 사용 안함] 
1. 42. Stg2 DB 연결(EU)(Tunneling) IP 추가: @ec2-54-247-161-218.eu-west-1.compute.amazonaws.com:1521 ==> 4020(127.0.0.1:4020/IOSPS2EU) --> wsoc/osp123 
2. EU IDC(GC): /config/local/applicationSystemConfig.xml 파일에서 
<entry key="oracle.jdbc.url">jdbc:oracle:thin:@ec2-54-247-161-218.eu-west-1.compute.amazonaws.com:1521:IOSPS2EU</entry> 

- DB 연결(Tunneling)(Stg2 DB서버) ===> DBA가 보안상 막아 놓음[현재 사용 안함] 
1. 43. Stg2 DB 연결(US)(Tunneling) IP 추가: @ec2-184-169-128-208.us-west-1.compute.amazonaws.com:1521 ==> 4021(127.0.0.1:4021/IOSPS2US) --> wsoc/osp123 
2. US IDC: /config/local/applicationSystemConfig.xml 파일에서 
<entry key="oracle.jdbc.url">jdbc:oracle:thin:@ec2-184-169-128-208.us-west-1.compute.amazonaws.com:1521:IOSPS2US</entry> 

3. telnet 10.76.249.108 1521  ==>  DB 연결 확인 
==============================================================================================================

- 중국 IDC 접속 정보 
cniosppro01: 109.10.162.143 ==> tamario.jin/!iosp0000 --> OK 
cniosppro02: 109.10.162.144 ==> tamario.jin/!iosp0000 --> OK 
cniospdb01: 109.10.164.141 ==> tamario.jin/!iosp0000 
cniospdb02: 109.10.164.142 ==> tamario.jin/!iosp0000 
==============================================================================================================
   
- 동기모임 펜션 예약 완료 
1. 웰빙하우스(계룡산 펜션)-비지니스룸(8명: 12만원) 
http://blog.naver.com/PostList.nhn?blogId=baikoh&from=postList&categoryNo=23 
*, *,(041)857-1958 
국민은행 457-05-0026-032, 예금주: 백인기 
주소: 충남 공주시 계룡면 중장리 345-4 웰빙하우스 
http://blog.naver.com/memo/MemologPostView.nhn?blogId=tamario&logNo=140166800409&currentPage=1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.29(수) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:10 

- IOSP(/oauth2) Prj
- OGG 동기화에 따른 소스 분석 
==============================================================================================================

- 휴대폰 신청 및 도착(번호이동: LGU --> SKT) 
1. 신청일: 2012.08.29(수) 13:30 
2. 택배 도착일: 2012.06.14(목) 12:00(12시간 정도 통화 안됨) 
3. 단말기 사양 
 1) 기종: 베가 S5(IM-A840S)(5인치, 16GB RAM 내장, 1300만 화소) 
 2) 조건: 가. 약정기간: 24개월, 할부원금(24개월 약정위약금): 100,000원 
             나. 개통후 4개월 유지 위반시 출고가대로 청구(출고가: 95만원대) 
 3) 요금제: lte62 이상 요금제(월 55,028원) 익월말까지 사용 조건(하위요금제로 변경은 10월 1일 이후부터 가능) 
             ==> lte34 요금제(34,128원) 
-------------------------------------------------------------------------------------------------------- 

- 베가 S5(IM-A840S) 휴대폰 사양 ==> 구매 
1. CPU: 퀄컴 스냅드래곤 S4 MSM8960 1.5GHz 듀얼코어 
2. RAM: 1GB DDR2 메모리 
3. OS: 안드로이드 4.0(아이스크림 샌드위치) 
4. 디스플레이: 5.0인치 정전식 터치스크린 
4. 크기: 134.8(L) x 69.2(W) x 9.0(H) mm 
5. 무게: 139.8 g 
6. 내장메모리: 16GB 
7. 외장메모리: 최대 32GB 지원 
8. 배터리: 착탈식 2100 mAh(대기시간 333시간, 연속통화 11시간) 
9. 카메라: 1300만화소(후면), 200만화소(전면) 
10. 기타:  
==============================================================================================================

- 베가 레이서2(IM-A830S) 휴대폰 사양 분석 
1. CPU: 퀄컴 스냅드래곤 S4 MSM8960 1.5GHz 듀얼코어 
2. RAM: 1GB 
3. OS: 안드로이드 4.0(아이스크림 샌드위치) 
4. 디스플레이: 4.8인치 HD 
4. 크기: 132.4 x 68.9 x 9.35mm 
5. 무게: 133g 
6. 내장메모리: 16GB 
7. 외장메모리: 최대 32GB 지원 
8. 배터리: 착탈식 2,020 mAh(대기시간 245시간, 연속통화 9.5시간) 
9. 카메라: 800만화소(후면), 200만화소(전면) 
10. 기타:  
==============================================================================================================

-  LG 휴대폰(옵티머스 빅(LG-LU6800)) 해지 
1. 위약금: 152,068원(2년 위약금: 170,000원) 
==============================================================================================================

- Windows Media 인코더 녹음  
http://cafe.naver.com/rayone7/14637 
http://blog.naver.com/etwas0227?Redirect=Log&logNo=60015778070 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.30(목) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:10 

- IOSP(/oauth2) Prj
- OGG 동기화에 따른 소스 분석 

- DB 연결(Tunneling)(Dev DB서버)(Oracle) @@@@@@@@@@@@ 
1. 40. Dev DB 연결(Tunneling) IP 추가: 10.76.249.108:1521 ==> 7080(127.0.0.1:7080/DEVIOSP1) --> wsoc/osp123 
2. /config/local/applicationSystemConfig.xml 파일에서 
  <!--entry key="oracle.jdbc.url">jdbc:oracle:thin:@10.76.249.108:1521:DEVIOSP1</entry--> 
==> <entry key="oracle.jdbc.url">jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1</entry>  <!--// local dev(Tunneling) //-->  
==============================================================================================================

~$ cd /iosp/comp/auth/conf  
/server.xml, /context.xml 

 1. /server.xml(Resource의 추가 옵션은 Component별 상황에 맞게 수정)(%TOMCAT_HOME%/conf)  
 <!--// 트랜잭션 처리 설정(JNDI)- Oracle: 2012.08.29 //-->  
  <!--// url="jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1"(Local 서버), url="jdbc:oracle:thin:@50.16.234.94:1521:
  DEVIOSP1"(DEV 서버) //--> 
   <Resource auth="Container" description="User database that can be updated and saved" factory="org.apache.
   catalina.users.MemoryUserDatabaseFactory" name="UserDatabase" pathname="conf/tomcat-users.xml" type="org.apache.catalina.UserDatabase"/> 
<Resource auth="Container" driverClassName="oracle.jdbc.OracleDriver" factory="org.apache.commons.dbcp.BasicDataSourceFactory" 
initialSize="20" logAbandoned="true" maxActive="50" maxIdle="25" maxOpenPreparedStatements="10" maxWait="60000" 
minIdle="10" name="jdbc/OracleDS" password="osp123" poolPreparedStatements="true" removeAbandoned="true" 
removeAbandonedTimeout="60" testOnBorrow="true" type="javax.sql.DataSource" url="jdbc:oracle:thin:@127.0.0.1:7080:DEVIOSP1" 
username="WSOC" validationQuery="SELECT 1 FROM DUAL"/> 
  </GlobalNamingResources> 

2. context.xml ( %TOMCAT_HOME%/conf)(%TOMCAT_HOME%/conf)  
<!--// 트랜잭션 처리 설정(JNDI)- Oracle: 2012.08.29 //-->  
 <ResourceLink global="jdbc/OracleDS" name="jdbc/OracleDS" type="javax.sql.DataSource" /> 

3. /web.xml(web.xml( /auth-svc/src/main/webapp/WEB-INF/) 
<!-- // 트랜잭션 처리 설정(JNDI)- Oracle: 2012.08.29 //--> 
<resource-ref> 
<res-ref-name>jdbc/OracleDS</res-ref-name> 
<res-type>javax.sql.DataSource</res-type> 
<res-auth>Container</res-auth> 
</resource-ref> 

4. /auth-lib/pom.xml(eclipse에서) 
<!-- Oracle jdbc --> <!-- // 트랜잭션 처리 설정(JNDI)- Oracle: 2012.08.29 //--> 
<dependency> 
<groupId>com.samsungosp.oracle</groupId> 
<artifactId>ojdbc6</artifactId> 
<version>11.2.0.3</version> 
</dependency> 

5. /applicationContext-datasource.xmll(eclipse에서) 
<!-- // 트랜잭션 처리 설정(JNDI)- Oracle: 2012.08.29 //--> 
 <bean id="defaultDataSource" class="org.springframework.jndi.JndiObjectFactoryBean"> 
<property name="jndiName"> 
    <value>java:comp/env/jdbc/OracleDS</value> 
</property> 
</bean> 

6. /applicationContext-resource.xmll(eclipse에서) 
<bean id="defaultTxDefinition" class="org.springframework.transaction.support.DefaultTransactionDefinition"> 
</bean> 
==============================================================================================================

- 트랜잭션 처리 설정(JNDI) - Oracle 
1. DB 접속방법 변경 
 1) Spring DBCP를 이용하여 접속 ==> JNDI를 이용한 접속 
2. 프로퍼티 암호화 삭제 - DB 패스워드 암호화 관련 내용임 
 1) 접속정보를 프로퍼티에서 읽어옴. ==> server.xml 파일에 지정. 
경로: C:\OSP2.5\localhome\webapps\auth-svc\WEB-INF\lib  
==> C:\OSP2.5\localhome\lib 
- ojdbc6-11.2.0.3.jar(Oracle 11g jdbc lib) 
- commons-collections-3.2.1.jar 
- commons-dbcp-1.4.jar 
- commons-pool-1.5.4.jar 
==============================================================================================================

- xshell 단축 버튼 편집(즐겨찾기) 
1. 레이블(L): 01. configuration[start_stop]s 
2. 동작: 문자열(T): cd /iosp/comp/auth/configuration 
-------------------------------------------------------------------------------------------------------- 

- 01. xshell QuickButton.qbl 
[QuickButton] 
Label_2=02. /shutdown 
Type_3=0 
Label_1=01. configuration[start_stop] 
Type_2=0 
TextFile_4= 
Label_0=00. catalina.out 
Type_1=0 
TextFile_3= 
Type_0=0 
TextFile_2= 
TextFile_1= 
Command_4= 
Count=5 
TextFile_0= 
Command_3= 
Command_2= 
Command_1= 
Parameter_4= 
Command_0= 
Parameter_3= 
Parameter_2= 
Visible_4=1 
Parameter_1= 
Visible_3=1 
CR_4=1 
Parameter_0= 
Visible_2=1 
CR_3=1 
Visible_1=1 
CR_2=1 
Text_4=cd /iosp/comp/auth/conf  
Visible_0=1 
CR_1=1 
Text_3=./startup.sh 
CR_0=1 
Text_2=./shutdown.sh 
Text_1=cd /iosp/comp/auth/configuration 
Label_4=50. conf[TOMCAT] 
Text_0=tail -f /iosp/comp/auth/logs/catalina.out  
Label_3=03. /startup.sh  
Type_4=0 
==============================================================================================================

- 중국IDC, DB 접속 정보 
1. 중국IDC Oracle #1 ==> CNIOSP1: 109.10.164.141:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
2. 중국IDC Oracle #2 ==> CNIOSP2: 109.10.164.142:1521 
SOC/#soc345!, WSOC/#wsoc789#! 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.08.31(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:10 --> 전자지갑 개발팀 이사 감(옆자리 200년 10월달에 함께 일 했든 삼성 네트워크 기획자 앉음: 원광연 부장) 

- IOSP(/oauth2) Prj
- 트랜잭션 처리 설정(JNDI) - Oracle 
1. Stg1 서버: 완료 
2. Stg2 서버(EU-IDC): 완료 
2. Stg2 서버(US-IDC): 완료 
==============================================================================================================

- Stg1 서버 Start  에러 
auth@ec2-176-34-99-254:/iosp/comp/auth/configuration$ tail -f /iosp/comp/auth/logs/catalina.out  
30-Aug-2012 23:28:14 org.apache.catalina.startup.ContextConfig start 
SEVERE: Marking this application unavailable due to previous error(s) 
30-Aug-2012 23:28:14 org.apache.catalina.core.StandardContext start 
SEVERE: Error getConfigured   
==============================================================================================================

- tomcat 서버 설정(local(elipset) 서버) 환경 설정 @@@@@@@@@@@@  
1. Overview 
 1) Geneal Information 
  가. Open launch coofigration > Agruments > VM Aaruments 
-Dcatalina.base="C:\OSP2.5\localhome" -Dcatalina.home="C:\OSP2.5\server\apache-tomcat-6.0.35"  
-Dwtp.deploy="C:\OSP2.5\localhome\webapps" -Djava.endorsed.dirs="C:\OSP2.5\server\apache-tomcat-6.0.35\endorsed"  
-Dosp.home.dir="C:\OSP2.5\localhome" -Dcomponent.name="oauth2" -Dosp.server.type="local"  
-Dtangosol.coherence.cacheconfig="C:\coherence-putter-utility\osp2_cache_config.xml"  
-Dtangosol.coherence.clusteraddress="224.153.111.222" -Dtangosol.coherence.clusterport=2222  
-Dtangosol.coherence.ttl=0 -Dosp.center.countrycode=US-U  
 2) Server Locations => Use custom localhost (3) 
 ==> Server path: C:\OSP2.5\localhome 
 ==> Deply path: C:\OSP2.5\localhome\webapps 
 3) Ports: HTTP/1.1: 9080 
2. Moduls 
 1) Document base : auth-svc 
 2) path: / 
==============================================================================================================

- 항공권 예매 정보(인천-하노이(예약번호 : GHHDVK)) 
1. 승객명(Passenger Name): JIN/TAEMANMR  
2. 전자항공권번호(Ticket Number): 738 2248062430  
3. 예약번호(Booking Reference): GHHDVK/1B (VN-OGXUHD) 
http://flight.onlinetour.co.kr/mypage/MpRevDetail.lts?PcdId=3180923&PnrAddr=GHHDVK&SsCode=ONLINETOUR 
==============================================================================================================

- 사증심사결과조회 
http://vnm-hanoi.mofat.go.kr/korean/as/vnm-hanoi/civil_appeal/result/index.jsp 
-------------------------------------------------------------------------------------------------------- 

- 국제 결혼 추후 절차 
1. 2차 인터뷰(신부와 함) 후 한달정도 후에 결혼증명서 나옴 
2. 영사관에 접수 
3. 비자 나옴 
4. 바로 한국 입국 가능 
5. 입국 후 외국인등록증 만들고 의료보험가입 할 것 
6, 다문화센터 교육 신청 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■