

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.06.01(금) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:40 --> 이종진 과장 투입(박승필 과장 인수인계) 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-50(Reopen) ==> 처리 완료(정상 추정): 개인정보 동의 확인 조회 DB 테이블 필드 미존재로  문제 발생한 것으로 추정됨 
1. 미국 계정으로 createAuthorizaionCode API를 요청 --> privacyAccepted가 Y가 응답 ==> 처리 완료  

IOSP-54(Reopen) ==> 처리 완료(정상 추정): 개인정보 동의 확인 조회 DB 테이블 필드 미존재로  문제 발생한 것으로 추정됨 
1. AUT_1040가 응답됨 --> AUT_1039가 응답되어야 함 
tnc_accepted에 Y, privacy_accepted에 N을 대입하였으므로 privacy_accepted 관련 에러 코드인 AUT_1039가 응답되어야 할 것으로 보입니다.  

IOSP-56(Reopen) ==> 처리 완료 
1. 요청 파라메터 appId에 "j5p7ll8g33" 값을 대입하여 API 요청함. 
==============================================================================================================

- 대구 만남 
1. 김채헌: 010-8832-0 
2. 일시: 06.02(토) 16시 
3. 장소: 롯데리아 대구서부정류장점(대구 서부정류장 근처) 
1) 주소: 대구 달서구 송현동 1033-2(http:place.map.daum.net/11732002), T) 053-623-0 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.02(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:30 기상  
06:20 신구초등학교 
06:40 조기축구(4:2 패) 
07:20 조기축구(2:0 패): 큰 게임 
07:50 종료 
08:20 조식(화정식당: 호성이형이 쏨) 
08:50 종료 
09:00 귀가  
10:20 집 출발 
11:10 강남 터미널 
11:20 고속버스(대구행, 우등(24,100원) 
15:00 서대구 고속버스 터미널 
15:10 726번 버스(비산7동 우체국건너) 
15:40 서부정류장 
16:00 롯데리아 대구서부정류장점(김채헌(010-8832-0) 만남): 문자 못 받았다고 티입고 나옴, 키 작음(150cm대) 
17:00 와바 호프(김채헌씨) 
19:00 종료 
19:10 805번 버스(LG전자서비스센터) 
19:40 이마트 성서점(자호 만남) 
19:50 조은터 고기집(재득이형, 태성, 창섭): 113,000원(내가 쏨) 
        - 재득이형 흥국이형 사인 부탁(3학년 권용신, 5학년 권노은: 대구시 북구 침산동 친산 동서타운 101동 112호) 
24:00 종료 ==> 2012.06.03(일) 
24:10 당구(자호: 100놓고 내가 짐, 자호가 계산함) 
24:30 종료 
24:40 팥빙수(조은터 사장님(조기회 회원)이 쏨) 
01:00 택시(7,800원) 
01:20 서대구 고속버스 터미널(대구행, 심야우등(26,500원)) 
01:50 고속버스 탑승(1시 30분 차) 
05:00 강남 고속버스 도착 
05:40 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.03(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
06:10 신봉천 주유소(태훈이형 차)  
06:30 신구초등학교(평택 원정(30여명): 버스 도착): 김밥, 떡 
07:20 버스 출발 
08:20 평택 공설 운동장(평택 원평 조기회, 포항 선후 조기회) 
08:40 게임(2게임 뜀): 1승5패(완패 당함) ==> 안병춘 코치(김상권 감독 대행) 
       - 정홍 가족(서가연 7살), 김효순형 가족(김희원 9살) 
14:20 종료 
15:20 평택 출발(임진희씨에게 친구 아버님이 상 당했다고 문자 옴) 
16:20 신구초등학교 도착0 
16:40 현대고 주차장(태훈이형 차) 
17:10 귀가(임진희씨에게 전화함 ==> 다음주 목욜에 보기로 함)  
17:20 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.04(월) 작업 ■■■■■■■■■■■■■■■
---> 07:05 ~ 19:00 --> 현용 만남(19시: 현용돈(5,651,046원) 찾아 갈것(5만원권)) ==> 전달함 

- IOSP(/oauth2) Prj
- PVT_Defect 
1. throwOSPException 주석 처리(OSPResultMessage.raiseException로 대체) 
catch(ClientException ce) {  
    throwOSPException(ce); 
    OSPResultMessage.raiseException(new OSPException(ce.getStatus(), ce.getErrorEntity().getCode(),  
    ce.getErrorEntity().getMessage(), ce.getErrorEntity().getResource())); 
} 
==============================================================================================================

- kman의 라인자켓 
http:cafe.naver.com/ArticleRead.nhn?clubid=18064087&menuid=22&boardtype=P&page=4&specialmenutype=&articleid=4346&referrerAllArticles=false 
==============================================================================================================

19:10 퇴근 
19:40 짱구 횟집(현용돈 전달, 현용 쏨): 나눔 동기회 총무 현용이 하기로 함 
23:40 종료 
23:45 택시 
24:00 포스코 사거리 뒷편 도착 ==> 2012.06.05(화) 
24:10 오슬로(마: 23만(현용 쏨)) 
24:30 ㅇㄴ때문에 스트레스 받아서 난동 부림 
01:00 종료 
01:30 취침 
06:30 기상 
08:10 출근 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.05(화) 작업 ■■■■■■■■■■■■■■■
---> 08:10 ~ 20:00 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-78 ==> 처리 완료 
요청 파라메터 country에 Invalid 값 "ABC"를 대입하여 요청하였을 때,  
응답되는 에러코드가 AUT_1813이 아닌 AUT_5008으로 응답됩니다.  
==============================================================================================================

- Administrator's Guide (Component - Account) 문서 작성 
1. 통합OSP_Admin Guide_Account.doc 
==============================================================================================================

- Client Stub을 통한 OSP2.0 API 검증 
1. OSP2.0 Client Stub와 IOSP Client Stub의 Response 비교 
(d:\OSP2.5\workspace\IOSP\Co-work\1. IOSP 공식문서\1. Archtect\7.개발검증\세부검증결과 
\ClientStub API 검증결과\Client Stub API 내부검증_Account.xlsx) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.06(수) 작업 ■■■■■■■■■■■■■■■
---> 11:20 ~ 17:40 --> 현충일, 공휴일 출근 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-78 ==> 처리 완료 
요청 파라메터 country에 Invalid 값 "ABC"를 대입하여 요청하였을 때, 응답되는 에러코드가 AUT_1813이 아닌 AUT_5008으로 응답. 

IOSP-79 ==> 처리 완료 
요청 파라메터 check_email_validation에 Y를 대입하고, username에 인증되지 않은 email 주소값을 대입하였을 때,  
에러코드 AUT_1814가 응답되지 않고 정상 응답 하고 있습니다. 
==============================================================================================================

- HttpHeaderConfig 변경 
import com.samsungosp.framework.auth.header.OSPHttpHeaderInfo; 
OSPHttpHeaderInfo httpHeaderConfig ==> OSPHttpHeaderInfo httpHeaderConfig  
==============================================================================================================

▦조기축구 
05:30 기상 
06:40 신구초등학교 
06:50 숏게임 
07:30 게임(4:2 승) 
07:30 게임(5:2 승) 
09:10 종료 
09:50 화정식당(한상봉 부회장님이 쏨) 
10:40 종료 
11:20 출근 
17:40 퇴근 
17:55 스페셜(안) 
18:00 안(스: 민수(A, 165, 서울, 프로, 한수 배움)) 
19:00 종료 
19:10 석식((스페셜(안) 백반)  
19:20 종료 
20:10 귀가 
22:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.07(목) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 18:40 --> 우리저축은행 예금 만기(재예금): 총수령액: 49,476,840원, 임진희씨 만남(강남 JS치킨): 최고 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-50(Reopen) ==> 처리 완료 
1. 미국 계정으로 createAuthorizaionCode API를 요청 --> privacyAccepted가 Y가 응답 ==> 처리 완료 
==============================================================================================================

- ADS, DDS 산출물 작성 
1. 통합OSP_ADS_Account(완료) 
OSP/IOSP/Co-work/7. PMO취합/30. 산출물관리/20. 최종산출물/10. 프로젝트 공정산출물/20. 설계/MSC-IOSP-DE01_ADS 
/통합OSP_ADS_Account.docx 
2. 통합OSP_Detail Design Specification_Content(완료) 
OSP/IOSP/Co-work/7. PMO취합/30. 산출물관리/20. 최종산출물/10. 프로젝트 공정산출물/20. 설계/MSC-IOSP-DE03_DDS 
/통합OSP_Detail Design Specification_Content.doc 
-------------------------------------------------------------------------------------------------------- 

- Amateras(AmaterasERD, AmaterasUML)  
1. GEF(Graphical Editing Framework) 설치  
 1) GEF 다운로드 바로가기 ==> http:www.eclipse.org/gef/downloads/  
가. 먼저 다운로드 페이지를 열어서 최종 버전의 "Draw2D, GEF and Zest"에서 "All-In-One SDK(Runtime, Source, Examples)"를 클릭 
나. GEF-ALL-3.7.2.zip 다운로드 됨 
 2) GEF-ALL-3.7.2\eclipse 폴더에서 features, plugins 복사하여 Eclipse가 설치된 폴더에 붙여넣습니다 

2. Amateras 설치 
 1) Amateras 다운로드 바로가기 ==> http:sourceforge.jp/projects/amateras/releases/ 
다운로드 사이트로 방문하여 아래 이미지에 표시 부분을 클릭하여 AmaterasERD, AmaterasUML 을 다운 받는다. 
(net.java.amateras.db_1.0.8.jar, AmaterasUML_1.3.3.jar) 
이 세개의 jar 파일과 AmaterasERD의 jar 파일을 모두 %Eclipse_Home%\plugins  
폴더(C:\OSP2.5\tools\eclipse_N\plugins)에 붙여넣으면 설치는 완료.  

3. Amateras 실행  
이제 Eclipse를 실행하여 "File" 메뉴 > "New" > "Other..."를 차례대로 클릭해보면 아래처럼  
AmaterasERD와 AmaterasUML 플러그인이 추가되어 사용할 준비가 되어 있는 것을 알 수 있습니다. 

UML Diagram은 사용빈도가 많은 아래의 네가지 Diagram만 지원하는 것을 알 수 있습니다.  
- Usecase Diagram 
- Class Diagram 
- Sequence Diagram 
- Activity Diagram 
==============================================================================================================

- UML 강좌 
1. OJT KOREA 무료강의(UML): http:www.ojtkorea.com/contents/e-learning/?code=uml 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.08(금) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 18:30 --> 박승필 과장 철수(중식, 당구침), 통합OSP 재계약(600, 10월까지): 김팀장 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-80 ==> 처리 완료   
1. tnc_accepted, privacy_accepted 파라메터에 대입한 값이 반영되지 않습니다. ==> 처리 완료 
 1) tnc_accepted: 약관동의 여부, privacy_accepted: 개인정보동의 여부  
==============================================================================================================

- 개발서버 Hudson(허드슨) 빌드 에러 
1. 현상: 개발서버 Hudson(허드슨) 빌드 에러 발생 
build-client: 
[javac] D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\build.xml:235:  
warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds 
[javac] Compiling 90 source files to D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace 
\auth\auth-svc\auth-client\build\classes 
[javac] D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\auth-client\src 
\main\java\com\samsungosp\auth\oauth2\common\vo\BooleanVO.java:34: warning: unmappable character for encoding UTF-8 
[javac]  * BooleanVO??boolean 값을 ?????Value Object ??다. 
   
BUILD FAILED 
D:\osp2.5\hudson\dev\jobs\dev_auth_svc-build\workspace\auth\auth-svc\build.xml:235: Compile failed; see the compiler error output for details. 

2. 조치: /build.xml를 local 서버(eclipse) build.xml 빌드 처리  ==>  public application/xml isValid 아래 에러 발견 됨 
build-client: 
    [javac] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\build.xml:235: warning:  
    'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds 
    [javac] Compiling 90 source files to D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk 
    \auth-svc\auth-client\build\classes 
    [javac] D:\OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\auth-client\src 
    \main\java\com\samsungosp\auth\oauth2\service\AuthServiceResourceClient.java:1101: <identifier> expected 
    [javac]     public application/xml isValid ( 
==============================================================================================================

- isValid() API 변경 
1. json 방식에서 xml 방식으로 변경 
@RequestMapping(value = "user/isvalid", method = RequestMethod.POST, headers =  
{"Content-Type=application/x-www-form-urlencoded", "accept=application/xml"})  
@ResponseResult("com.samsungosp.auth.oauth2.inner.vo.Oauth2IsVaildUserVO") 
public ModelAndView isValid(OSPHttpHeaderInfo headers, 
     @RequestParam("username") String username, 
     @RequestParam("password") String password) throws OSPException; 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.09(토) 작업 ■■■■■■■■■■■■■■■
---> 10:00 ~ 15:00 --> EFA EURO 2012 개막(01시 ==> 폴란드 1: 1 그리스) 

- IOSP(/oauth2) Prj
- isValid() client-stub 에러 
1. json 방식에서 xml 방식으로 변경 
==============================================================================================================

▦조기축구
05:00 기상 
05:00 EURO 2012(A조 러시아 4:1 체코) 
05:30 집출발 
06:30 신구초등학교 
06:40 숏게임(3:2 패)  
07:30 종료 
09:50 화정식당(이승형이 쏨) 
09:30 종료 
10:00 출근 
15:00 퇴근  
15:30 다빈치 치과(신경치료3) 
16:30 귀가   
17:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.10(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:00 기상 
05:00 EURO 2012(B조 ==> 독일 1 vs 0 포르투갈) 
07:00 집출발 
07:05 신봉천 주유소(태훈이형 차(차번호: 26나 5439)) 
07:30 신구초등학교  
07:40 숏게임(0:0 무) 
09:00 게임(3:0 패)  
09:50 종료 
10:10 커피샵 팥빙수(만 2천원): 태훈형이 쏨) 
11:30 신구초교 앞 
11:50 광수형 봉고차(한상봉 부회장, 상요형, 태훈형, 병용): 한 부회장님이 3만원 기름값으로 쏨 
12:30 초원웨딩홀(7호선 도봉산역 2번 출구) 
12:40 희원(부주 5만원) 
13:00 예식 
13:20 식당(뷔페) 
15:00 종료 
15:00 광수형 봉고차(한상봉 부회장, 상요형, 태훈형, 병용) 
15:20 도착(신구초교 앞) 
15:30 현대고 주차장(태훈이형 차) 
16:00 귀가 
17:20 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.11(월) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 20:00 

- IOSP(/oauth2) Prj
- isValid() json 방식에서 xml 방식으로 변경  
1. STG#2에 반영 성공 
2. client-stub 에러 발생 
==============================================================================================================

- client-stub 설계 오류와 인한 에러 발생 
1. 원인: auth isValid API를 json 방식에서 xml 방식으로 변경으로 인한 에러를 분석한 결과 client-stub에서 InputStream  
생성시 com.samsungosp.auth.oauth2.vo.Oauth2IsVaildUserVO가 아니라 com.samsungosp.auth.oauth2.inner.vo. 
Oauth2IsVaildUserVO로 수행해서 에러가 발생 
2. 대책: source_package를 사용하지 않고 근본적인 대책을 세워야 함 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.12(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 20:20 --> 임씨 한상봉 부회장님 통해 결별 통보 

- IOSP(/oauth2) Prj
- PVT_Defect 
IOSP-87 ==> 처리 완료 
1. AuthService_isValid) 정상값 적용 테스트 수행시 CMM_1003 에러코드가 응답됩니다. ==> 처리 완료  
 1) Headers 부분에 Accept를 xml방식으로 변경처리 했습니다. 
 2) 변경 근거:  현재 운영중인 OSP2.0 API에서 POST user/isvalid의 Response Type이 application/xml로 
 되어 있어서 변경 처리함(http:devdoc.iosp.com/docs/apispec_kr/auth/index.html) 
 3) 통합 OSP OSP2.0 API에서 POST user/isvali 호출시 Headers 부분에서 아래 부분으로 변경 처리 요망 
  Accept: application/json===> Accept: application/xml 

IOSP-88 ==> 처리 완료 
1. email_id 값과 userauth_token 값의 계정이 서로 불일치 할 때, AUT_1000 에러코드가 응답됩니다. ==> 처리 완료 
==============================================================================================================

- client-stub 설계 오류와 인한 에러 발생 
1. 원인: auth isValid API를 json 방식에서 xml 방식으로 변경으로 인한 에러를 분석한 결과 client-stub에서 InputStream  
생성시 com.samsungosp.auth.oauth2.vo.Oauth2IsVaildUserVO가 아니라 com.samsungosp.auth.oauth2.inner.vo. 
Oauth2IsVaildUserVO로 수행해서 에러가 발생 
2. 대책: source_package를 사용하지 않고 근본적인 대책을 세워야 함 
3. 해결: 기존 source_package에서/applicationContext-marshaller.xml 파일에서 VO 경로에 inner 추가 
<value>com.samsungosp.auth.user.inner.vo.User3rdDisclaimerAcceptanceCreateVO</value> 
==============================================================================================================

- jsonObject 리턴 에러 
1. return시 jsonObject이 아니라 VO로 리턴해야 jsonObject로 자동 리턴 시켜줌 
public ModelAndView createUserAuthToken(..) {  
return success(jsonObject); 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.13(수) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 20:50 

- IOSP(/oauth2) Prj
- isValid 수정 
1. success 파라미터 수정 
<?xml version="1.0" encoding="UTF-8"?> 
<ResultIsValidate> 
<userID>01gg5uki5o</userID> 
<ResponseValue>true</ResponseValue> 
</ResultIsValidate> 
2. auth.samsungosp.com, auth.samsungosp.net 테스트 완료 
==============================================================================================================

- OSP2.0 stub-2.0-client 테스트 불가 
삼성 전자 이진욱 책임께서 OSP2.0 stub-2.0-client은 Profile와 함께 사용하여 그 당시에 사용을 하지 않은  
상태여서 테스트가 현실적으로 불가하다고 테스트 중지함 
==============================================================================================================

- 소액 결제 항의(무료 문자) 
1. 모빌리언스 > 문의하기: http:www.mobilians.co.kr/korean/service/inquiry/board_write.php 
2. 국민신문고(검토할 것): http:www.epeople.go.kr 
결제일자 결제대행사 고객센터☎ 이용서비스 이용서비스☎ 서비스업체 결제구분 내역구분 서비스  발신번호  010-3072-0  
2012/4/6  모빌리언스  1600-1705  컴퍼니   1600-1705 간지스타일 일반결제 소액결제  www.comfany.com  16,500  
2012/5/7  모빌리언스  1600-1705  oudition.com(자동)   1600-1705 앤디랩 자동결제 소액결제  www.oudition.com  16,500  
==> 15,000원 환불해준다고 함(벋움) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.14(목) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 20:30 --> 통합OSP PM 인수인계(나대균 책임 --> 이강현 책임(*)) 

- IOSP(/oauth2) Prj
- PVT_Defect  
IOSP-80(Reopen) ==> 처리 완료   
1. tnc_accepted, privacy_accepted 파라메터에 대입한 값이 반영되지 않습니다. ==> 처리 완료 
 1) tnc_accepted: 약관동의 여부, privacy_accepted: 개인정보동의 여부 
이지훈 연구원께 메일과 전화 통화를 하여 정상 결과값이 나왔다는 확인하여 Resolve 처리 합니다.  
H) 010-3312-0(이지훈 연구원) 
-------------------------------------------------------------------------------------------------------- 

- isValid(OSP 2.0 API) ==> 표준 
<?xml version="1.0" encoding="UTF-8" standalone="yes"?> 
<ResultIsValidate> 
<ResponseValue>true</ResponseValue> 
<UserID>cntslpbig4</UserID> 
</ResultIsValidate>   
==============================================================================================================

- 휴대폰 신청 및 도착(번호이동: SKT --> U+) 
1. 신청일:  2012.06.13(수) 08:00 
2. 택배 도착일: 2012.06.14(목) 12:00(12시간 정도 통화 안됨) 
3. 단말기 사양 
 1) 기종: 옵티머스 빅(LG-LU6800)(4.3인치, 16GB RAM 내장, 500만 화소) 
 2) 조건: 약정기간: 24개월, 약정금액: 170,000원(1년사용후 해지시엔 위약금 85,000원만 부담) 
 3) 요금제: 일반요금제(월 10,900원), 데이타 요금제(1G 월 만원): 추가로 신청 
 4) 통신사: (0505-299-0, @naver.com) 
가입신청서: http:onsalemobile.uplus.co.kr/AppFormUserTypeCmd.lgtelecom?formId=90079&agentId=309911&openmktCd=2342 

- 옵티머스빅 진저브레드 업그레이드방법 ==> 설치완료 
http:hansh862.blog.me/100151943506 
http:blog.naver.com/PostView.nhn?blogId=hansh862&logNo=100152413571 
-------------------------------------------------------------------------------------------------------- 

- 단말기 개통 방법(개통 완료 되어 도착됨) 
1. 휴대폰 전원을 켬 
2. 통화 > ##10306#(누름) 
3. 편집 > 0103070(확인 누름) 
4. 휴대폰 자동 켜짐  
5. 휴대폰 다시 켜짐 
-------------------------------------------------------------------------------------------------------- 

- 옵티머스 빅(LG-LU6800) 휴대폰 사양 
1. PU: T1 OMAP 3630 1GHz 
2. RAM: 512M 
3. OS: 프로요(진저브레드 Upgrade 완료 ==> 2012년 3분기에 아이스크림 샌드위치 업그레이드 지원 예정) 
4. 크기: 132 * 69.3 * 10.1 
5. 무게: 151g 
6. 내장메모리: 16GB 
7. 외장메모리: 최대 32GB 지원 
8. 배터리: 1500mAh 
9. 카메라: 전면 VGA, 후면 500만 AF 카메라 
10. 기타: GPS, WIFI, 영상통화, WIFI 다이렉트, DLNA, 블루투스 3.0, 2011년 5월 출시 등 
-------------------------------------------------------------------------------------------------------- 

- 옵티머스 빅(LG-LU6800) 휴대폰 화면잠금번호 
1. 패턴 확인: 69 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.15(금) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 19:20 

- IOSP(/oauth2) Prj
- isValid XML schema 변경 
1. http://stgdoc.iosp.com/docs/apispec/auth/index.html의 isValid XML schema(현재) 
<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO"> 
    <xs:sequence> 
      <xs:element name="userID" type="xs:string" minOccurs="0"/> 
      <xs:element name="value" type="xs:boolean"/> 
      <xs:element name="errorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="errorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
-------------------------------------------------------------------------------------------------------- 

2. http://stgdoc.iosp.com/docs/apispec/auth/index.html의 isValid XML schema(변경 요청): 대소문자 구분, 순서가 정확해야 함 
<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO"> 
    <xs:sequence> 
      <xs:element name="ResponseValue" type="xs:string" minOccurs="0"/> 
      <xs:element name="UserID" type="xs:boolean"/> 
      <xs:element name="ErrorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
==============================================================================================================

- return success(VO) 문제 
1. return success("authenticate", jsonObject) ==> return success(responseValueVO) 
1) {"responseValueVO":{"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0}} 

http://forum.springsource.org/showthread.php?81132-Can-a-spring-controller-return-a-json-object 
==============================================================================================================

- 드라마 VOD(http://jwcoolguy1.blog.me/70140063381) 
1. 선덕여왕(고현정), 해품달(이수현), 대장금(이영애), 허준(전광열), 여명의 눈동자(최재성, 최시라), 뿌리깊은 나무(한석규) 
==============================================================================================================

19:20 퇴근 
19:50 현용 만남 
20:00 짱구(횟집): 내가 쏨 
23:00 호프집: 내가 쏨 
24:30 수화: 현용 쏨 
05:00 승희(165, 서울, 피곤해 함)[66P] ==> 2012.06.16(토) 
06:00 종료 
07:30 귀가 
08:00 낮잠 
13:00 기상 
13:00 다빈치 치과(신경치료4)  
13:20 종료 
13:30 중식(배할머니국밥집): 김치찌게(3천 5백원) 
14:00 귀가 
20:00 석식 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.17(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:00 기상 
05:00 EURO 2012(그리스 1 vs 0 러시아) ==> A조 체코, 그리스 8강 진출 
06:30 집출발 
06:35 신봉천 주유소(태훈이형 차) 
07:00 신구초등학교  
07:30 게임(3:4 승): 1AS(또 공 넘김: 바로 찾아 옴) 
08:30 게임(3:3 패): 1골 넣음 
10:30 종료 ==> 한상봉 부회장이 임양 다시 만나라고 하길래 거절함 
11:00 중식(류명국 해장국: 부대찌게): 희원이가 결혼 감사 답례로 쏨 
12:00 종료 
12:10 파리바게트(정홍 생일 선물로 케익 사줌): 만 6천원 
12:30 현대고 주차장(태훈형 차) 
13:00 귀가 
13:30 낮잠 
17:00 기상 
20:00 석식 
23:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.18(월) 작업 ■■■■■■■■■■■■■■
---> 06:30 ~ 20:40 --> EURO 2012(B조 독일, 포르투갈 8강 진출), P4 연결 장애 발생 

- IOSP(/oauth2) Prj
- return success(VO) 문제 
1. 통합OSP_AA_FAQ_20120615. doc 파일 > 5. 요청한 Accept와 실제로 서버에서 반환하는 response content-type이  
다르게 서비스하도록 구현된 비표준 구현 방식의 문제를 해결하는 방식 

1. return success("authenticate", jsonObject) ==> return success(responseValueVO) 
1) {"responseValueVO":{"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0}} 
==> {"username":null,"password":null,"userId":"01gg5uki5o","userauth_token":"QMTQnPvIn8", 
"access_token":null,"refresh_token":null,"token_type":null,"accessTokenExpiresIn":0,"expires_in":0,"refreshTokenExpiresIn":0} 
==============================================================================================================

- [톰캣실행에러] Starting Tomcat v6.0 Server at localhost' has encountered a problem 
1. 에러내용:  
Port 9080 required by Tomcat v6.0 Server at localhost is already in use. The server may already be running in  
another process, or a system process may be using the port. To start this server you will need to stop the other  
process or change the port number(s) 
2. 원인:  
톰캣 서버를 실행시킬 때 이와 같은 에러창이 뜨면서 톰캣 서버가 STOP되는 이유는 
다른 프로세스에서 서버가 이미 돌아가고 있기 때문입니다.  
포트번호가 충돌이 날 경우에 포트번호를 바꾸어주어도 해결이 되는 경우가 있습니다. 
 하지만 그래도 해결이 나지 않는 경우에는 톰캣 실행 프로세스를 죽이면 됩니다. 
3. 조치:  
 1) 작업 관리자 실행 (Ctrl + Alt + Del) 
 2) 작업 관리자-프로세스탭에서 실행중인 javaw.exe를 찾음 (javaw.exe : 톰캣 실행 프로세스) 
 3) javaw.exe가 2개 떠 있으면 둘다 오른쪽 버튼 누르고 '프로세스 종료' 누름 
 톰캣 실행 프로세스가 2개 떠 있었기 때문에 포트 충돌이 난 것임 
 4) 자동적으로 Eclipse도 종료됨 
 5) 다시 Eclipse를 실행시키고 톰캣 서버를 실행하면 OK.  
==============================================================================================================

- Tomcat v6.0 Server at localhost 환경 설정 
1. Open launch coofigration > Agruments > VM Aaruments 
-Dcatalina.base="C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2"  
-Dcatalina.home="C:\OSP2.5\server\apache-tomcat-6.0.35"  
-Dwtp.deploy="C:\OSP2.5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps"  
-Djava.endorsed.dirs="C:\OSP2.5\server\apache-tomcat-6.0.35\endorsed"  
-Dosp.home.dir="C:\OSP2.5\localhome" -Dcomponent.name="oauth2" -Dosp.server.type="local"  
-Dtangosol.coherence.cacheconfig="C:\coherence-putter-utility\osp2_cache_config.xml"  
-Dtangosol.coherence.clusteraddress="224.153.111.222"  
-Dtangosol.coherence.clusterport=2222 -Dtangosol.coherence.ttl=0 -Dosp.center.countrycode=US-U 
2. Web Modules 
Document base: oauth2-svc, Path: / 
3. 에러 내용: 
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener 
org.springframework.beans.factory.BeanInitializationException: Could not load properties; nested exception is java.io.FileNotFoundException:  
class path resource [config/${osp.server.type}/applicationSystemConfig.${osp.center.countrycode}.xml] cannot be opened because it does not exist 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.19(화) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 19:30 --> EURO 2012(C조 스페인, 이탈리아 8강 진출) 

- IOSP(/oauth2) Prj
- return success(VO) 문제  
/servlet-rest.xml 파일에서 
<!--/ / AA 팀에서 jsonView class가 com.samsungosp...이 정확 하다고 하여 수정 처리(표준 준수) //--> 
<bean id="jsonView" 
class="com.samsungosp.framework.web.servlet.view.json.MappingJacksonJsonView">   
<!-- class="org.springframework.web.servlet.view.json.MappingJacksonJsonView"> --> 
<property name="contentType" value="application/json;charset=UTF-8" /> 
</bean> 

결과: 
{"authenticate":{"userauth_token":"E6ZHyioyyH"}} ==> {"userauth_token":"E6ZHyioyyH"} 
-------------------------------------------------------------------------------------------------------- 

- json2.js 파일을 include 한다. (참고) 
1. JSON Object -> String ==> JSON.stringify(object); 
2. String -> JSON Object ==> JSON.parse(string); 
-------------------------------------------------------------------------------------------------------- 

- net.sf.json.JSONObject javadoc 
http://json-lib.sourceforge.net/apidocs/net/sf/json/package-summary.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.20(수) 작업 ■■■■■■■■■■■■■■■
---> 06:35 ~ 18:40 --> EURO 2012(D조 잉글랜드, 프랑스 8강 진출) 

- IOSP(/oauth2) Prj
- IOSP 이관시 OSP1.0 MB 테이블 DB 처리 문제 
1. 이관을 하면 OGG 연동으로 해결 한다고 함(Profile로 같은 문제 걸러 있는 테이블 존재) 
==============================================================================================================

- 최적화 app 
1. easy task killer, 클릭청소기 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.21(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 20:00 --> SF Interceptor 호출 방식 변경(stub call에서 Rest Template 방식으로 변경): 윤주영 과장 

- IOSP(/oauth2) Prj
- Test case 생성 
1. createUser 관련 
==============================================================================================================

- LG 강남Mobile 서비스센터 방문 
1. 옵티머스 빅(LG-LU6800) 게임중 멈추는 문제 상담 
 1) RAM 부족으로 나는 현상으로 추정(2일에 한번써 휴대폰 재시작할 것) 
 2) 게임중 멈추면 밧데를 뺏다 끼우는 방법 밖에 없다고 함 
-------------------------------------------------------------------------------------------------------- 

- LG 서비스센터(휴대폰) 
1. 강남Mobile 서비스센터(1544[1588]-0) 
 1) 주소: 서울 강남구 역삼동 820-9 글라스타워빌딩 16층 
 2) 영업시간: 평일(10:00 ~ 19:00), 토요일(10:00 ~ 14:00) 
2. LG 반포 서비스센터(1544[1588]-0) 
 1) 주소: 서울특별시 서초구 잠원동 75-13번지 반포쇼핑타운 제2동 2층 LG best센터 
 2) 영업시간: 평일(09:00 ~ 18:00), 토요일(09:00 ~ 13:00) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.22(금) 작업 ■■■■■■■■■■■■■■■
---> 06:25 ~ 20:40 --> EURO 2012([8강] 체코 0 vs 1 포르투갈) 

- IOSP(/oauth2) Prj
- target_package 제거(/AccessTokenVO.java) 
package com.samsungosp.auth.oauth2.inner.vo;에서 ==> package com.samsungosp.auth.oauth2.vo;로 변경 
-------------------------------------------------------------------------------------------------------- 

/auth-lib/pom.xml 파일에서(sf-client.jar 추가 ==> 향후 제거 할 것) 
<!--// sf-client.jar 호출(/auth2) //-->    
<dependency> 
  <groupId>com.samsungosp.profile</groupId> 
  <artifactId>sf-client</artifactId> 
  <version>1.2</version> 
</dependency> 
==============================================================================================================

- IOSP에서 SFClient 사용하지 않도록 수정 
1. 사용중인 SFClient 기능 @@@@@@@@@ 
1. 약관 validate 
UserTncResultVO userTncResultVO = client.validateTNC(userTncRequestVO); ==> 
userTNCResultVO2 = authenticateValidatorBiz.validateTNC(partyIdentificationBizVO);  // SF 1.0 직접 호출 
2. Email ID로 사용자 인증 
userAuthResultVO = client.authenticateUserByEmailId(userAuthRequestVO); ==> 
userAuthResultVO = authenticateValidatorBiz.authenticateUser(partyIdentificationBizVO);  // SF 1.0 직접 호출 
3. Email ID로 사용자 Accoun validate ==> IDM에서 사용됨(사용 안함) 
userAccountAuthResultVO = client.validateUserAccountByEmailId(userAccountAuthRequestVO.getLoginID(), userAccountAuthRequestVO); 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.23(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:00 

▦조기축구
05:00 기상 
05:00 EURO 2012([8강] 독일 2 vs  0 그리스(03:45)) 
06:00 집출발 
06:10 신봉천 주유소(태훈이형 차(차번호: 26나 5439)) 
06:30 신구초등학교 
06:40 조기축구(3:3 무): 20분 골기퍼 봄  
07:30 종료 
08:20 조식(화정식당: 상설이형이 쏨) 
10:00 종료 
11:00 귀가  
12:30 집 출발  
12:40 다빈치 치과 방문(신경치료5 ==> 진료 완료) 
13:00 종료 
13:10 461번 버스 
13:50 안(스): 민수(프로, 스킨쉽) 
15:00 종료 
15:10 중식(백반) 
16:20 3100번 광역버스(우성아파트) 
17:20 안산 상록수역앞 
17:30 가원 안산 사무실(안산시 상록구 본오동 874/11 삼우빌딩 501호 가원커플) => 최실장님 
19:00 안산 정모(개업식 음식 나눠 먹음) ==> 웬티하(베트남 통역)와 상담(다음달 초에 베트남 가기로 잠정 합의) 
21:00 식당(보쌈): 최실장님이 쏨 
22:40 종료(개업식 떡 얻어 옴) 
23:20 안산 상록수역(사당행 막차 탐) 
24:00 사당역 
24:05 낙성대역행 전철 탐 
24:10 낙성대 ==> 2012.06.24(월) 
24:20 귀가 
01:00 취침 
03:00 다리에 쥐가 나서 잠 깸 
05:00 기상 
05:00 EURO 2012([8강] 스페인 2 vs  0 프랑스(03:45)) 
06:00 취침 
10:00 기상 
11:00 국제결혼 남성 준비서류 작성 및 재확인 
12:20 중식 
20:20 석식 
01:20 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.25(월) 작업 ■■■■■■■■■■■■■■■
---> 06:25 ~ 19:45 --> EURO 2012([8강] 잉글랜드 0 <PK 2 vs 4> 0  이탈리아(03:45)), 채용건강진단서 신청 

- 통합OSP(/oauth2 Prj
- target_package 제거(/AccessTokenVO.java) 
package com.samsungosp.auth.oauth2.inner.vo;에서 ==> package com.samsungosp.auth.oauth2.vo;로 변경 
-------------------------------------------------------------------------------------------------------- 

- auth-client, sf-client 제거 
<!--// auth-client.jar 호출(/auth2): 사용 안함(OSP에서 같은 auth를 client-stub 호출하지 않음) //-->    
<dependency> 
	<groupId>com.samsungosp</groupId> 
	<artifactId>auth-client</artifactId> 
	<version>1.3.1</version> 
</dependency> 

/auth-lib/pom.xml 파일에서(sf-client.jar 제거 할 것) ==> SFClientImpl.java 파일 삭제 처리 
<!--// sf-client.jar 호출(/auth2) //-->    
<dependency> 
	  <groupId>com.samsungosp.profile</groupId> 
	  <artifactId>sf-client</artifactId> 
	  <version>1.2</version> 
</dependency>   
==============================================================================================================

- stage1에서 에러 발생 
1. 현상: java.lang.NoClassDefFoundError: osp/sf/sso/AuthenticateServiceResourceClient 
2. 원인: /auth-lib/pom.xml 파일을 /auth-lib/pom_stg.xml와 똑같이 해줘야 함  
==============================================================================================================

- 현용 만남(내 생일) 
19:45 퇴근 
20:05 현용 만남 
20:10 짱구(횟집): 현용 쏨 
23:00 새우집: 내가 쏨 
24:00 장어집: 현용 쏨 ==> 2012.06.26(화) 
01:30 종료 
02:00 귀가 
02:10 취침 
==============================================================================================================

- 남성 준비서류 @@@@ 
1. 혼인관계증명서(동사무소 발급) ==> 처리 완료 
2. 가족관계증명서(동사무소 발급) ==> 처리 완료 
3. 기본증명서(동사무소 발급) ==> 처리 완료 
4. 영문등본(동사무소: 여권이름과 동일) ==> 처리 완료 
5. 한글등본(동사무소 발급) ==> 처리 완료 
6. 사진5장 ==> 처리 완료 
7. 여권복사 ==> 처리 완료 
8. 범죄경력증명서(경찰서 형사계(민원실 아님) 발급) ==> 처리 완료 
9. 신용정보조회서(전국은행연합회(www.credit4u.or.kr)에서 발급) ==> tamariio/s@jtm0339!# ==> 처리 완료 
10. 직업증명서류(재직증명서와 원천징수영수증(재직 회사) 급여 통장사본(SC은행) ==> 처리 완료 
 1) (주)아이엘포유: 서울시 서초구 양재동 67번지 혜인빌딩 4층(T: 571-0) 
 2) 급여내역서(1년치, 은행장 직인) --> 원천징수영수증 대체 
11. 재산증명서(등기부등본, 전세계약서(확정일자 받은 거)) ==> 처리 완료 
12. 채용건강진단서(증명사진 2장: 정신질환, 에이즈, 성병 필히 추가할 것)  
==> 병원급에서 사진이 붙여 있는 채용건강진단서를 발급 받을 것(다시 할 것) 
13. 국제결혼 안내 프로그램 신청(출입국관리소): 이수증 제출(접수증 제출) ==> 처리 완료 
 1) 국제결혼 안내 프로그램(http://www.hikorea.go.kr/pt/index.htm) ==> 전자민원 > 전자민원신청하기  
 > 신청가능한 민원 사무목록 list: 민원사무명(국제결혼 안내 프로그램)(클릭) > 신청서 작성 
 2)  교육 일정(서울출입국사무소(서울특별시 양천구 신정동 330-11호 한국이민재단 사회교육원)) 
   가. 매주 수(14:00~17:00), T) 2650-0 ==> 7월 11일(수) 14시 교육 신청함 
   나. 지하철 2호선 양천구청역 1번 출구-> 육교 건너편 
   http://cafe.naver.com/ArticleRead.nhn?clubid=16608696&page=1&inCafeSearch=true&searchBy=0&query=%B1%DE%BF%A 
-------------------------------------------------------------------------------------------------------- 

- 국제결혼 비용 @@@@ ==> 총 1,100만원 
1. 계약금 100만원 송금(2012.06.25(월))==> 500만원 송금(2012.06.25(월)) 
1) 국민은행(644201-01-0, 예금주: 김금숙(가원커플결혼) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.26(화) 작업 ■■■■■■■■■■■■■■■
---> 06:55 ~ 18:40 --> 국결 서류 준비(역삼1동 주민센터 방문, 국세청) 

- 통합OSP(/oauth2 Prj
- target_package 제거(/AccessTokenVO.java) 
1. package com.samsungosp.auth.oauth2.inner.vo;에서 ==> package com.samsungosp.auth.oauth2.vo;로 변경  
2. isValid() API Doc 수정 
http://stgdoc.iosp.com/docs/apispec/auth/com_samsungosp_auth_oauth2_service_AuthServiceResourceSC.xml#POSTuser/isvalid 

<?xml version="1.0" standalone="yes"?> 
<xs:schema version="1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"> 
  <xs:element name="ResultIsValidate" type="oauth2IsVaildUserVO"/> 
  <xs:complexType name="oauth2IsVaildUserVO">     
  <xs:sequence> 
      <xs:element name="ResponseValue" type="xs:boolean"/> 
      <xs:element name="UserID" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorCode" type="xs:string" minOccurs="0"/> 
      <xs:element name="ErrorDesc" type="xs:string" minOccurs="0"/> 
    </xs:sequence> 
  </xs:complexType> 
</xs:schema> 
==============================================================================================================
- local variable 에러 처리 
1. 에러 내용: The value of the local variable userTncResultVO is not used 
2. 처리: UserTncResultVO userTNCResultVO = null; ==> UserTncResultVO userTNCResultVO2 = null; 으로 변경 

- Null pointer access 에러 처리 
1. 에러 내용: Null pointer access: The variable partyIdentificationBizVO can only be null at this location 
2. 처리: PartyIdentificationBizVO partyIdentificationBizVO = null; ==> 
PartyIdentificationBizVO partyIdentificationBizVO = new PartyIdentificationBizVO();으로 변경 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.27(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 --> 이선미 과장 auth1.0 인수인계 논의 

- 통합OSP(/oauth2 Prj
- slim화 작업 
1. //OSP/IOSP/Co-work/1. IOSP 공식문서/1. Archtect/2.설계/AA/통합OSP_WAR_Slim화_가이드(v0.1)_AA.pptx 
2. Maven compile Deploy 시 배포되는 WAR 파일의 크기를 간소화(Slim)하여 deploy를 효율화한다. 
 1) compile: 컴파일 할 때 필요. 테스트 및 런타임에도 클래스 패스에 포함 
 2) provided: compile 과 매우 유사. 컴파일 시에 필요하지만, 실제 런타임 때에는 컨테이너 같은 것에서  
 제공되는 모듈. servlet, jsp api 등이 이에 해당. 배포 시 제외됨. 공통 모듈을 뺄 경우에도 사용 가능.  
-------------------------------------------------------------------------------------------------------- 

- 빌드 에러 
[ERROR] \OSP2.5\workspace\IOSP\Workspace\Account\Auth\trunk\auth-svc\src\main\java\com 
\samsungosp\auth\oauth2\service\AuthServiceResourceImpl.java:[89,2] cannot find symbol 
[ERROR] symbol  : class JSONObject 

/auth-lib/pom.xml 파일에서 
<dependency> 
<groupId>net.sf.json-lib</groupId> 
<artifactId>json-lib</artifactId> 
<version>2.4</version> 
<classifier>jdk15</classifier> 
<type>jar</type> 
<!-- <scope>provided</scope> -->  //===> 디폴트가 complile 임 
</dependency> 

<dependency> 
<groupId>javax.xml.bind</groupId> 
<artifactId>jaxb-api</artifactId> 
<version>2.2.2</version> 
<type>jar</type> 
<scope>provided</scope> <!--// slim화 //--> 
</dependency>  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.28(목) 작업 ■■■■■■■■■■■■■■■
---> 06:55 ~ 18:00 --> EURO 2012([4강] 스페인 0 <PK 4 vs 3> 0 포르투갈(03:45)), 국결 서류 준비2, 국결 회식 

- 통합OSP(/oauth2 Prj
- 구주 UesrID 테스트 방법 
1. stub-iosp-client로 createUser API 호출하여 SF Login ID(username) 생성 
/stub-iosp-client-sample/src/com/samsungosp/client/profile/ProfilePrf2Client.java 파일에서 @@@@  
public class ProfilePrf2Client {   
private static final String PRD_STG1_SERVER = "http://eu.auth.samsungosp.net/auth";   // STG1 서버 URL(Auth IOSP URL) 
private static UserServiceResourceClient profileClient  = new UserServiceResourceClient(PRD_STG1_SERVER);    //서버 세팅 

public static void main(String[] args) { 
System.setProperty("osp.consumer.type", "internal");//이게 없으면 This service requires a login. 에러발생 
try 
{      
//1.createUser 처음 createUser작업을 한후 response값중 userId와 loginId를 위의 변수에 직접 바인팅하시고 2번 작업을 하시면 됩니다. 
//이 API는 삼성에서 제공하는 서비스를 이용하기 위하여 Samsung Account를 생성한다.  
inicreateUser();  
} 
} 

/****************************************************************** 
* Profile2.0 createUser Trasaction 
*****************************************************************/ 
public static void inicreateUser() throws Exception {  
String l_osp_appId  = "t70f55z2q1";   //appId  ===> TEST 
String l_osp_userId = "z8oa0aj1dz";        
setProfileHeader(profileClient, l_osp_userId,l_osp_appId);  

UserCreateVO requestVo = new UserCreateVO();  
UserBaseVO  userBaseVO = new UserBaseVO();          

// 공통 코드 세팅 @@@@@@ 
userBaseVO.setUserName("Samsung Useral"); 
userBaseVO.setUserTypeCode("1"); 
userBaseVO.setUserStatusCode("1"); 
userBaseVO.setUserDisplayName("Sam"); 
userBaseVO.setUserLocalTimezoneCode("TZ0069"); 
userBaseVO.setLanguageCode("ENG"); 
userBaseVO.setCountryCode("USA"); //국가코드 

 userBaseVO.setUserBaseIndividualVO(userBaseIndividualVO);     

UserIdentificationVO userIdentificationVO = new UserIdentificationVO(); 
userIdentificationVO.setLoginID(randomLoginId());  //randomLoginId(userID) ===> 임의 수정 
userIdentificationVO.setLoginIDTypeCode("003"); 
userIdentificationVO.setUserPassword("osp123"); 

requestVo.setUserBaseVO(userBaseVO);  // User Base VO 처리 
requestVo.setUserIdentificationVO(userIdentificationVO);    // UserIdentity 생성(서비스별 회원정보 저장) VO 처리 

StringVO ret = profileClient.createUser(requestVo);  

createUserId = ret.getValue();  
new XStream().toXML(ret, System.out); 
System.out.println("\n==========response End======================================"); 

//전역변수 
setTempUserId(ret.getValue()); 
} 
} 
-------------------------------------------------------------------------------------------------------- 

결과: 
[/stub-iosp-client-sample] [main()] ==> [test] [profileClient]com.samsungosp.profile.user.service.UserServiceResourceClient@e5b723 
===========// 1. inicreateUser Flow  // @@@@@@@@@ //==============>  
[inicreateUser()] ===========// 1. createUser Flow  // @@@@@@@@@ //==============>  
[inicreateUser()] [ret]null 
[inicreateUser()] [createUserId]null[loginID(SF Login ID)]@mail.com 
==============================================================================================================
   
2. createAccessToken API 호출(결과값으로 나온 username=*@*.*를 넣음) 
http://eu.auth.samsungosp.com/auth/oauth2/authenticate 
grant_type=password&client_id=j5p7ll8g33&client_secret=5763D0052DC1462E13751F753384E9A9&username=*@*.*&password=osp123 
결과:  
{ 
"userauth_token": "wJ4tNUFTBa", 
"userId": "01gg5uki5o" 
} 

3. http://localhost:9080/auth/oauth2/authenticate은 구주(GC)의 LDAP값이 없으므로 Stg1 서버 URL인 
(http://eu.auth.samsungosp.com/auth/oauth2/authenticate)에서 테스트할 것 
==============================================================================================================

- facebook 
https://www.facebook.com ==> *@*.*/sspe**8*1* 
- twitter 
https://twitter.com ==> *@*.*/sspe**8*1* 
==============================================================================================================

- 국결행사 
11:30 중식 
11:50 SC은행(급여내역서(1년치, 은행장 직인)) 
12:20 메디스캔 의원(채용건강진단서 발급) ==> 병원에서 다시 받을 것 
12:25 서초21번(무지개아파트 후문하차 ==> 서초경찰서) 
12:45 범죄경력증명서 발급(서초경찰서 형사과) 
13:00 귀사 
18:10 퇴근 
18:50 가원커플 서울사무실(현대 하이엘 1109호(4호선 신용산역 5번 출구)) 
19:10 베트남 계약서 작성(총 1,110만원)  
        ==> 별도 경비(신부 쇼핑 100달러(11만원), 2차 교통비 100달러, 현지마담 소개 600달러) --> 약 백 5십만원 
2차 출국; 4개월후, 베트남 하롱베이 
19:40 석식(가원 사장님이 쏨): 삼겹살, 호프 ==> 베트남 결혼에서 대해 조언 들음(이발, 염색, 청바지, 티): 성격, 밝음 
21:50 맥주(현대 하이엘 1109호) 
22:50 종료 
23:50 귀가 
24:00 염색(얼굴에 뭍음) 
24:30 취침 
-------------------------------------------------------------------------------------------------------- 

- 가원 커플 연락처 
1. 인천사무실 대표 김금숙(셀프가이드, 010-8959-0, @naver.com) 
==> 인천시 부평구 십정동 293-10(1호선 동암역)  
2. 안산사무실 대표 최은영 실장님(밍키인천, 010-6321-0,  @naver.com) 
==> 안산시 상록구 본오동 874/11 삼우빌딩 501호(4호선 상록수역 2번 출구)  
3. 서울사무실 대표 윤영훈(게스트인천, 016-309-0, @naver.com) 
==> 서울시 용산구 한강로2가 2-37 현대 하이엘 1109호(4호선 신용산역 5번 출구) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.06.29(금) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 16:00 --> EURO 2012([4강] 독일 1 vs 2 이탈리아(03:45)), 출국 준비(여권) 

- IOSP(/oauth2) Prj
- oauth2 소스 분석 
1. 2차 Merge 작업대비 소스 최적화 
==============================================================================================================

- 국결행사 출국 준비 
1. 500만원 송금 ==> 국민은행(644201-01-0, 예금주: 김금숙(가원커플결혼): 송금 완료 
2. 200만원 환전(SC은행): 완료 
 1) 외국통화: 1,705, 통화: 1,172.66(US) ==> 원화금액: 1,999,385원 
 2) 200만원 ==> 100달러: 17장, 5불: 1장 + 710원 
3. 비행기 시간 
 1) 출국: 서울 06.30(토) 10:03 ==> 하노이 13:00[베트남 항공] --> 8시에 인천국제공항 3층 C게이트에서 만날 예정 
 2) 입국: 하노이 07.04(수) 22:00 ==> 서울 07.05(목) 05:50[베트남 항공](약 5시간) 
4. 여행 준비물 
 1) 청바지, 티, 센달, 운동화 , 세면도구, 휴대폰 밧데리(충전기), 우산, 수영복, 카메라, 모자 
 2) 양복(넥타이), Y셔츠, 구두 
5. 기타 
 1) 회사 사진 찍어서 집에 가서 사장님에게 메일로 전송할 것(20시까지): 완료 
 2) 가는 지역: 베트남 하롱베이(하노이에서 3시간 소요) ==> 인도차이나(영화) 
-------------------------------------------------------------------------------------------------------- 

- 공항버스(http://www.airport.kr/airport/traffic/bus/busList.iia?flag=K) 
1. 서울대 - 인천공항(6003)(리무진 일반, 9,000원) ==> 1층 6A,12B(첫차, 04:40, 막차 20:00, 배차간격 20분): 1시간 30분 소요 
2. 서울대 - 인천공항(6017)(리무진 고급, 15,000원) ==> 1층 6B/13A(첫차, 05:00, 막차 20:40, 배차간격 50분) 
3. 인천공항 - 테헤란로(6020)(리무진 고급, 15,000원) ==> 1층 5A,11B(첫차, 05:00, 막차 20:40, 배차간격 10~150분)  
==============================================================================================================

- SC은행 급여 통장 개설 
1. 내지갑 통장: 220-20-030608 
2. (주)아이엘포유 이찬우 대리(010-7303-000, @il4u.co.kr)에서 메일로 급여 통장 변경 요청 

- SC은행 신용카드 신청(다음 주에 전화 오면 강남점에 내방하여 찾아올 것) 
1. 타임 신용카드(연회비: 2천원, S-Oil 리터당 60원, 편의점 10%할인, 이동통신요금 5% 할인) 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■