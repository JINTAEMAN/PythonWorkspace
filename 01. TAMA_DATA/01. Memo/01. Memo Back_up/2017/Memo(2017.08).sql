

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2017.08) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2017.08.01(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- MiPlatform 소스 분석
1. MiPlatform Basic API 함수 정리
==============================================================================================================

- MiPlatform include 파일
#include "Script::Global_Script.js"
#include "Script::comm_Websquare.js"
#include "Script::LongTerm_Script.js"
==============================================================================================================

- 장기보험 시스템 서버(AIS-IS, MP) 서버 셋팅 실패
1. 정보시스템부에서 JEUS(WAS) 서버에서 문제가 일으켜서 서버 셋팅 포기함 ==> 기존처럼 개발서버에
붙여서 작업 해야 함(로그 확인)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.02(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 주간보고서 작성(10시)

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- MiPlatform 소스 분석
1. MiPlatform Basic API 함수 정리
==============================================================================================================

- PMS-F 주간실적 입력 교육
1. http:10.1.9.200, tamario@pms-field.om / tama339@
==============================================================================================================

- 오사장 면담(16시, 1층 커피 shop)
1. 오사장한테 주간보고 회의 절대로 못 들어간다고 함 ==> UI 공통에 집중하고 회의에 들어 가지 말라고 함
 1) 매주 수요일 오전 10시까지 주간보고서만 작성할 것
==============================================================================================================

- 링크드 Datalist 테스트 할 것....
1. gridView_select_linkedDatalist.xml
==============================================================================================================

- MariaDB 설치 과정
1. mariadb-10.2.7-winx64  ==> http://shyoung.tistory.com/6
==============================================================================================================

- CSS 공부
1. 실전 HTML5 & CSS3 동영상강좌 1강 Web 과 HTML  --> https://www.youtube.com/watch?v=6KoBEYBjki4
==============================================================================================================

- 메이븐 설정   
1. mybatis + mariaDB 연동 --> http://elkaly.tistory.com/6
2. mybatis + mariaDB 연동 --> https://m.blog.naver.com/PostView.nhn?blogId=ddraemon1&logNo=220444202520&proxyReferer
=&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
 1) Convert to Maven Project
 2) Ant > Maven > Gradle(향후) 
==============================================================================================================

- 카카오 뱅크에서 계좌 생성 
1. 0**90* / 03*9
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.03(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
-  MiPlatform Basic API 함수 정리  
1. 공백 제거
// 55. trim: 입력된 문자열의 좌우측 공백을 제거한 문자열을 구하는 Basic API
var strString3 = trim("   a b   ");
var nRstCnt = replace(strString3, " ", "");
trace("[/login.xfdl] [lfn_BasicAPI()] ==> [55. trim, strString3]"+ strString3 +"[TO_BE_결과값]"+ nRstCnt) ; 
==============================================================================================================

- 이슈사항
1. 인터페이스 파라미터를 해쉬 Map에서 VO로 변경하라고 함
 1) insware에서 해쉬 Map에서 VO로 변하여 다음주에 방문 한다고 함(수정해도 개발자가 일일히 VO 추가
 작업을 해야 한다고 함)
2. 인터페이스 모듈 협의
 1) 성병무 대리가 AnyLink(WsClient) 샘플 보여줌 ==> 인터페이스정의서만 만들고 상세 정의서는 안 만들어도 됨
 2) 인터페이스 명세서만 보고 인터페이스 모듈명 대로 input 칼럼 보내고 ouput 칼럼 받으면 됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.04(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- MiPlatform Basic API 함수 정리
1. 1차 완료, MiPlatform Basic API 함수 정의.xlsx 문서 작성 ==> 송성구 차장에게 검토 요청
==============================================================================================================

- WsClient 분석 및 로컬 서버(TamaErp)에 설정
1. 성병무 대리가 제공해줌
==============================================================================================================

- 서버 프레인워크 아답터 연동 분석
1. Websquare5 사용자 가이드.pdf파일 참조
 1) Websquare에서 XML이나 JSON으로 데이타 보냄
 2) Websquare Adaptor(/Websquare.java)에서 XML이나 JSON을 받아서 Hash Map이나 VO로 Convert 함
  가. 기존 WS5_SAMPLE에는  Hash Map으로 Convert 되어 있음
 3) JAVA에서 OUTPUT 값으로 XML이나 JSON으로 데이타 보냄 
==============================================================================================================

- MariaDB 날짜 함수
http://blog.iotinfra.net/?p=1262
==============================================================================================================

- Sybase 기본 문법
http://crosstheline.tistory.com/m/55
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.05(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  휴가  

- 주말
06:00 기상 
06:20 MiPlatform Basic API 함수 정의 작업
07:30 종료
07:50 집출발 
08:10 대림역 --> 상봉역 --> 청평역
10:20 청평역 도착
11:20 응아 가족 만남(청평역): 종민씨 차
12:10 청평 여율펜션 도착: 경기도 가평군 설악면 유명로 1943-138  ==> http://ywps.kr/contents/main.html
12:20 개울에서 물놀이
12:30 프엉 가족 도착(차 많이 막힌다고 함)
13:00 여율펜션 입실(1층, 방 1개, 거실 엄청 넓음)
13:10 중식(라면) 
13:30 낮잠
16:00 물놀이(수영장)
18:00 종료
18:30 석식(숯불 고기) ==> 종민씨가 고기 굶음
21:00 종료
21:30 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.06(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>  휴가  

▦ 조기축구
08:00 기상
09:10 조식
10:00 물놀이(수영장)
11:00 종료 
11:10 샤워 
11:20 수박 
11:50 청평 여율펜션 출발 ==> 프엉 남편 차(운전 실력이 초보 같음)
12:00 청평역 도착
12:30 청평역 --> 상봉역 --> 대림역
14:00 대림역 도착
14:20 귀가
15:00 낮잠
19:00 수종 놀이터, 장보기
20:00 귀가
20:20 석식(짜장면, 3그릇): 왕짜장 포장
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.07(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
==============================================================================================================

- 메인 셋팅 처리(메인 셋팅 TB)]
select 
	A. FAVORITE_STORAGE,. 
	A.MAIN_LAYOULPAGE_CODE, 	-- 메인 레이아웃 메이지코드(W: 윈도우 컨트롤러. T: 탭 컨트롤러) 
	, A.* 
from 
	BM_MAIN_SETTING A 	-- 메인 셋팅 TB 
where 1 =1 
	and EMP_CD = ’100001’ 	-- 사원코드 
==============================================================================================================

- 2개의 eclipse(WS5_SAMPLE, TamaERP) 차례로 실행시 오류 발생
1. 현상 
Error occurred dUring initialization of VM 
Could not reserve enough space for object heap
2. 조치 
/eclipse.ini 파일에서 32 -Xms256m 
-Xmx256m 	---> Xms512m에서 Xms256m로 수정@@@ 
==============================================================================================================

 설계단계 산출물 작성 및 변경관리 절차 교육(13:30, 회의실) 
1. 품질 박세경 과장이 교육 
==============================================================================================================

- HYPERLINK 함수(엑셀에서) 
=HYPERLlNK("#bm_code_grpIA 1 , 8M_CODE_GRP ) 
==============================================================================================================

- Tab(메뉴, 즐겨찾기)에서 클릭시 탭 변경관리 
1. switch 자체에서 onSelectedIndexChange() 기능 수행(onSelectedIndexChange 함수 추가하면 안됨) 
<xf:group style='''' id="after_as_tab ’ class= "aside_tab"> 
	<xf:switch caseClass=" style="" id="swh_lnbbox" class="Inb"> 
		<xf:case style="" id="case1" class="">
		</xf:case> 
		<xf:case id="case2" style="" class="">
		</xf:case> 
	</xf:switch> 
</xf: group>
 
<script type="text/javascript"><! [CDATA [ 
 /* scwin.swh_lnbbox_onSelectedlndexChange = functionO {		// 주석 처리 @@@ 
	console.log( [/side xml) [swh_lnbbox-onSelectedlndexChange() ) ==> [선택된 Tab INDEX]"+ this .getSelectedlD()  );
  };  */ 
 ] ] )</script> 
==============================================================================================================

- 신한은형 간편 결제 등록
1. 하루 100만원 이체 무료(공인인증서 없이 이체): 0**90*  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.08(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
==============================================================================================================
 
 - FilaKoreaERP에 서 js 파일 
D: ￦FilaKoreaERP￦workspace￦FilaKoreaERP￦FllaKoreaERP. web-resources￦src￦main￦webapp￦resources￦j
==============================================================================================================

- 공통 외부 js 모듈 셋팅(/config.xml 파일에서) 
<!--// 공통 외부 js 모듈을 읽어 들인다. //--> 
<engine> 
	<module src= "cm/js/common.js"/> 
	<module src= "cm/js/val_lib.js"/> 
</engine> 
==============================================================================================================

- 전환 툴(w-craft) 인력(1명) 투입 
1. (주)지아이데이타 이경일 부장(XPlatform 경험자) ==> Websquare 할 줄 모름(추후 개 발자 role) 
==============================================================================================================

- maria DB excel export, import 
1. export(bm_menu_201708080943.csv), import(테이블 생성 후 import할 것) 
   ==> dbeaver(DB관리툴)에서 해당 테이블을 export(bm_menu_201708110732.sql) 한 후 해당 insert 쿼리를 실행해서 데이타 만듬 
==============================================================================================================

- mana DB에서 Table COMMENT  
-- 메뉴관리 TB 생성 @@@@  
CREATE TABLE BM_MENU (
	MENU_CD VARCHAR(10) COMMENT '메뉴코드',
	MENU_NM VARCHAR(100) COMMENT '메뉴명',
	PARENT_MENU_CD VARCHAR(10) COMMENT '최상위 메뉴코드',
	MENU_LEVEL INT COMMENT '메뉴레벨',
	SORT_ORDER INT COMMENT '정렬 수위',
	SRC_PATH VARCHAR(200) COMMENT '메뉴URL',
	IS_USE CHAR(1) COMMENT '사용여부',
	NOTE VARCHAR(500) COMMENT '비고',
	CREATED_DATE DATE COMMENT '생성일자',
    UPDATED_DATE DATE COMMENT '수정일자',
    UPDATED_ID VARCHAR(30) COMMENT '수정자 아이디',
    UPDATED_IP VARCHAR(30) COMMENT '수정자 아이피',
	primary key (MENU_CD)
) ENGINE=innoDB default CHARSET=utf8 COMMENT '메뉴관리'
;  
==============================================================================================================

- mariadb-10.2.7-winx64.msi 설치
1. New root password: tam*33*@
2. Use UTF-8: 체크 안함
3. Service Name: MySQL
4. 3307 포트 사용(3306 포트 사용 중)
==============================================================================================================

Enter password: ********
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.2.7-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use mysql
Database changed
MariaDB [mysql]> show databases;

MariaDB [mysql]> create database TamaERP;
Query OK, 1 row affected (0.00 sec)
 
-- User를 생성하고 권한을 부여 
MariaDB [orademo]> create user 'tamario'@'localhost' identified by 'tamario';
Query OK, 0 rows affected (0.00 sec)
 
-- 혹시라도 외부에서 접속하려면 localhost가 아닌 '%'로 추가  ==> 보류 @@@
MariaDB [orademo]> grant all privileges on orademo.* to tamario@localhost;
Query OK, 0 rows affected (0.00 sec)
 
-- 확인합니다.
MariaDB [orademo]> flush privileges;
Query OK, 0 rows affected (0.00 sec)
 
MariaDB [orademo]> exit  
==============================================================================================================
 
MariaDB [mysql]> select host, user, password from user;
+-------------+------+----------+
| host        | user | password |
+-------------+------+----------+
| localhost   | root |          |
| sys4u.co.kr | root |          |
| 127.0.0.1   | root |          |
| ::1         | root |          |
| localhost   |      |          |
| sys4u.co.kr |      |          |
+-------------+------+----------+
6 rows in set (0.00 sec)
 
MariaDB [mysql]> grant all privileges on *.* to 'root'@'%' identified by 'xxxx';
Query OK, 0 rows affected (0.01 sec)
 
MariaDB [mysql]> select host, user, password from user;
+-----------+---------+-------------------------------------------+
| host      | user    | password                                  |
+-----------+---------+-------------------------------------------+
| localhost | root    | *EBBD14BDECD90629F42FD55DB7442F1D05742980 |
| tama\_pc  | root    | *EBBD14BDECD90629F42FD55DB7442F1D05742980 |
| 127.0.0.1 | root    | *EBBD14BDECD90629F42FD55DB7442F1D05742980 |
| ::1       | root    | *EBBD14BDECD90629F42FD55DB7442F1D05742980 |
| localhost | tamario | *96D50F8504B260FB61BD5157CF866C39386818A5 |
+-----------+---------+-------------------------------------------+
7 rows in set (0.00 sec)   
==============================================================================================================

- 비밀번호 변경
MariaDB [(none>]> use mysql;
Database changed
MariaDB [mysql]> update mysql.user set password=password(‘tama339‘) where user='tamario' AND Host='localhost';  
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1 Changed: 0 Warnings: 0

MariaDB [mysql]> flush privileges;
Query OK, 0 rows affected (0.00 sec)
==============================================================================================================

- 박미리 대리 요청 
1. 음력을 앙력으로 전환하는 함수(직접 만들어야 함) 
toLunar( solar ): 양력을 음력으로 전환 
var lunar = Websquare.date. toLunar(120111225");  
2. 몇 주차 인지 구하는 함수 
var strRst = util.cetWeekNum(strStrinc);  	// 몇 주차 인지 구하는 함수 호훌 
3. 월의 마지막날이 몇일인지 구해오는 합수 
var strRst = util.cetLastDay(strStrinc);  // 마지막날이 몇일인지 구해오는 함수 호훌 
==============================================================================================================

- 국민은행 든든간편인증 등록
1. 하루 100만원 이체 무료(공인인증서 없이 이체): 05*8*4
- 루옌 공인인증: luen19*4!
==============================================================================================================

- /crudSample.xml 조회 연동 방법 
1번 방법: 01. Client에서 JSON으로 전환하여 서버로 전송 -> ([02. 서버에서 XML로 전환 --> 03. wsclient 처 리(DB 연동) 
--> 04. 서버에서 과값 JSON으로 전환하여 전송)) -> 05. Client에서 JSON으로 받음 
2번 방법(간소화): 01. Client에서 XML로 전환하여 서버로 전송 --> ([02. wsclient 처리(DB 연동) -> 03. 서버 에서 
결과값 XML 전송)) --> 04. Client에서 XML로 받음 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.09(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 주간보고서 작성

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석
==============================================================================================================
 
 - PMS-F 주간실적 입력
1. http://10.1.9.200, tamario@pms-field.lgcns.com / tama339@ 
2. PMS-Field 화연(http://1 0.1.9.200/pbf/system/navigation/intro.dev) 
1) 프로젝트 관리 >실행 및 통제 > 공정관리 >주간적업 실적 등록 
==============================================================================================================
 
- MariaDB 재 생성
1. MariaDB 10.2) ==> 용량: 590MB(C:\Program Files\MariaDB 10.2)
==============================================================================================================

- 출입국관리소 직원 방문(08시, 집) 
1. 장인 실제 거주 여부 확인(외국인등록종 검사, 장모 제외) => 루엔한테 전화 옴 
==============================================================================================================

- 해피머니 등록
1. https://www.happymoney.co.kr, tamario / hp수종16*01@
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.10(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 중식(삼계탕: 송차장, 심차장, 최차장): 오사장이 쏨

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석
==============================================================================================================

- 오사장 면담(12시, 커피 shop) 
1. 전환 후 va 처리(OUTPUT은 va 처리 안 하게 요청) 
2. PC 속도 너무 느림 => 개선 요청 
3. 8월 14일(월) 휴가 요청 => 분산해서 가라고 함 ->9월 29일(금) 휴가 가기로 결정 함
4. 인력 투입 계획 
 1) 8월 16일(수) : 퍼블려서 투입 
 2) 8월 21일(월) : 구종식 부장 투입 
 3) 9월 1일(금) : 개발자 2명(신규: 1명, 전환: 1명) 루입 예정 --> 총 개발자 => 신규: 3명,
	전환:4명(구부장, 이부장, 진부장, 추가 개발자) 
==============================================================================================================

- 목요 세미나(18:10 ~ 20:30) 
1. 장소: 다락방 구구(주소: 서울시 종로구 가회동 206번지 2층)
2. 참석인원: 전환팀 김운은 부장, 구종식 부장(8월 21일 투입 예정), 이경일 부장, 오태범 사장
3. 전환툴 교육(w-craft) 교육
 1) AT: 소스 분석(JSON 형식 파일) 
 2) SC: script converter(Node.js): js -> AST(추상 구조툴) -> rule file -> Websquare 소스 
   가. SKT 시스댐 전환 프로젝트에 처음 사용(Site 의존성 존재) 
 3) UC: 비 converter(java로 구성): Dome 구조 -> rule file -> UI 소스 
  가. Component 분석 미약 
  나. Miplatform: 절대 좌표 -> 상대좌표(TO-BE 져|품) 
  다. Websquare는 전체 소스가 Group으로 구성 
  라. Tab, Div 안에 있는 URL 인식 못함 
  마. Miplatform은 에러가 있어도 프로그램 실행 된다고 함(개발자가 아무렇게 코딩해도 돌아감) 
  
- 석식(20:50 -22:00, 삼겹실) ==> 오사장이 쏨 
1. 전환팀(w-craft) 김운은 부장, 오태범 사장, 이경일 부장 
 1) 전환팀 개발 본수가 하루에 2본 정도 예상하고 있음(내보고 UI공통 같이 하면서 개발하라고 함) 
==============================================================================================================

- Maria DB 로그 찍기
1. log4sql로 안됨 ==> log4jdbc로 설정해야 됨(maven 사용)
==============================================================================================================
 
- 자바스크립트 프라미스 소개
https://developers.google.com/web/fundamentals/getting-started/primers/promises?hl=ko
==============================================================================================================

- 엑셀 만년달력만들기(캘린더, 일정관리)
http://exceltong.tistory.com/m/entry/%EC%97%91%EC%85%80-%EB%A7%8C%EB%85%84%EB%8B%AC%EB%A0%A5%EB%
A7%8C%EB%93%A4%EA%B8%B0%EC%BA%98%EB%A6%B0%EB%8D%94-%EC%9D%BC%EC%A0%95%EA%B4%80%EB%A6%AC
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.11(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.12(토) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>    

- 주말
09:00 기상 
10:20 자전거(문영APT -> SKT 신도림대리점(난곡사거리, 문 잠겨 있음: 위크샵) > 
11:50 SK텔레콤 공식인증대리점(구로디지털단지점) 방문(이마트 구로점 근처, 문 잠겨 있음: 위크샵) 
12:20 이마트(쇼핑)
12:30 중식(육삼 냉면): 루옌, 수종
13:00 귀가 
14:00 낮잠
17:20 기상
19:30 석식
21:00 취침 
==============================================================================================================

- 원노트 설치
1. MS OFFICE 로그인 ==> tamario@naver.com / tam*3*9@
==============================================================================================================

- Maria DB로그 찍기
1. log4sql로 안됨 ==> log4jdbc로 설정해야 됨 
==============================================================================================================

- 카카오 페이에서 카드 간편결제 등록
1. 결제 비밀번호: 0**90*
==============================================================================================================

- 서울시 2017년 08월 주민세(개인균등분)정기분 납부
1. 납세번호: 5607102-10104001-2017081-0066565
 1) 주민세(개인균등분): 6,000원 
 2) 카카오 페이에서 카드 간편결제로 납부
==============================================================================================================

- 크롬 확장 프로그램 관리에서 IE Tab Seamless 설치
https://www.youtube.com/watch?v=23s8F9ydOxo
1. IE Tab multi 설치 방법 확인할 것 --> 현재 IE Tab Seamless가 설치되어 있음 
 1) 확장 프로그램 관리(chrome://extensions/?id=dncepekefegjiljlfbihljgogephdhph)에서 IE Tab Seamless 설치 확인
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.13(일) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==>   

▦ 조기축구
06:00 기상 
06:20 자전거(문영APT -> 대림운동장) 
06:30 대림운동장(형근이형, 응수, 수도와 같이 창고 가서 짐 나름) ==> 최선형 휴가감
07:20 숏게임 
08:00 게임 ==> 4게임함(신오 조기회)
		--> 곽영택 형님 축구하다가 공 밟고 넘어지면서 바닥에 머리 부딪침 
11:30 종료
12:00 중식(김치찌게: 황금어장): 회에서 쏨[237,500원 나옴: 최선형에게 영수증 문자로 보냄)
		--> 민주당 입당원서 작성 요청(유광상 시의원 부탁, 2장): 자동이체 원 천원(내년 5월까지)
13:30 종료
13:50 당구장(6명) ==> 지경이형, 경수 조가 1등함
16:00 종료
16:30 귀가(루옌 친구 만나러 감)
18:00 루옌 귀가
20:00 석식 
22:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.14(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00  ==> 석식(알밥: 순대국집) : 청구할 것

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
1 사고접수(/CAC00433000s.xm) ==> 일반보상 > 사고접수(cla_adt > CAC00433000s) 
==============================================================================================================

- Websquare에서 사고접수(/CAC00433000s.xm) 에러 1 현상 
18:47:22.086 00002 000982 /] WebSquare.ModelUtil.executeSubmission : sbm_lnitCont 
18:47:22.087 00001 000983/] Event error [sbm_lnitCont, ev:xforms-submit] : undefined is not a function 
18:47:22.088 00001 000984 /] /main/init.do 
2 원인: sbm_lnitCont이 정의 되지 않아서 나는 현상(Submission)OI 아님 ..... 전체 소스 중에서 어러가 생기연 발생 
/index_windowContainer.xml 파일에서 화면 초기 로딩 호출 후 다시 호출 안 해도 될 
==============================================================================================================

- SmarThru 4 설치
1. 01. 삼성 칼러 복합기(CLX-3175K) [문영A 1806호]\Setup.exe 설치하면 프린터와 같이 설치됨
==============================================================================================================

 - 스캔 사용 방법  ==) 삼성 칼러 복합기(CLX-3175K>
0. http://sajahwa1.blog.me/220280731329
1. SmarThru Office2 실행
2. 가운데 상단 > 스캔(이미지 클릭) > 스캔 설정(새창) 
 1) 미리보기(클릭): 스캔을 해놓은 이미지 보임 > 스캔(클릭)
==> C:\Users\TAMA\Documents\41. 스캔 폴더에 이미지 만들어짐
-------------------------------------------------------------------------------------------------------------------------------

- 스캔 사용 방법  ==> 삼성 칼러 복합기(CLX-3175K)
0. SmarThru 4 실행
2. 스캔 보내기 > 응용프로그램 > [1] 미리보기 Tab > 미리보기((클릭)....실행
> 미리보기 보임: 계속(클릭) 
3. 스캔 보내기 > 응용프로그램 > [2] 스캔 Tab > 스캔 설정
 가. 이미지 유형: 트루 컬러 (24bit)
 나. 300dpi
 다. 스캔 영역: A4
스캔(클릭)....실행 
--> 다른 이미지를
스캔하시겠습니까?: 아니오(클릭) ==> 완료 
> 계속(클릭) 

3. 스캔 보내기 > [3] 폴더 선택 Tab > 파일 설정
 1) 위치: 01. 스캔
 2) 파일이름: Memo(2017.08)
 스캔보내기((클릭)....실행  

4. 스캔 보내기 > [2] OCR Tab > OCR 설정
 1) 언어: 한국어
 2) 위치: 01. 스캔
 3) 파일이름: Memo(2017.08)
스캔보내기((클릭)....실행  
-------------------------------------------------------------------------------------------------------------------------------

99. 스캔 보내기 > 설정
 1) 스캔 설정
  가. 기본 저장 위치: D:\91. So on\01. 스캔 
==============================================================================================================

- 출력물[Memo(2017.08)] 매주 금요일 1면에 1장, 양면 출력(.doc)로 할 것
1. 집에 와서 삼성 칼러 복합기(CLX-3175K)로 스캔 후 OCR 처리(타이핑 안 해도 됨)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.15(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 18:10 ==> 광복절, 비 많이 옴

▦ 조기축구
06:00 기상
06:10 Maven 분석 
07:30 자전거(문영APT -> 대림운동장) 
08:00 대림운동장(비 많이 옴)
08:30 숏게임 
08:00 게임 ==> 2게임함(도신 축구회)
09:55 종료
10:10 중식(부대찌개: 서울식당): 회에서 쏨
11:30 종료
11:40 귀가
12:00 삼성 SSD mSATA PM851 128G(2개) 판매 완료 ==> 2개 9만 5천원에 판매함(010-4369-0517)
12:20 귀가 
13:00 귀가(루옌 친구 만나러 감)
13:20 낮잠
16:30 기상 
17:00 루옌 귀가 
18:00  Maven 분석 
19:00 석식(짜장면(곱빼기, 2그릇): 만다린 배달
24:00 취침
==============================================================================================================

- draw.io
클라우드상에서 UML이나 마인드맵, 각종 차트들을 손쉽게 작성하고 공유할 수 있는 서비스
==> https:/www.draw.io
==============================================================================================================
 
- Maven 시작하기  
0. Maven 시작하기 --> https://www.youtube.com/watch?v=5dN1WTj222Y
0. 빌드 도구 설명, 메이븐 프로젝트 생성, 의존성 관리 --> https://www.youtube.com/watch?v=Eg1Ebl_KNFg
1. 코딩 다음의 모든 과정(빌드) 자동화
2. jar 파일 관리
3. 다양한 플로그인
4. pom.xml
5. 빌드 도구: Ant > Maven > gradle
6. Maven에서 조회
search.maven.org에서 unit 검색 --> http://search.maven.org/#artifactdetails%7Corg.robolectric%7Csupportv4%7C3.4.2%7Cjar
-------------------------------------------------------------------------------------------------------------------------------

- Convert to Maven Project
--> http://theeye.pe.kr/archives/1583
1. /Websquare5_SAMPLE: 마우스 우 클릭 > Configure > Convert to Maven Project > Create new POM(새창)
 1) Group Id: Websquare5_SAMPLE
 2) Artifact Id: Websquare5_SAMPLE
 3) Version: 0.0.1-SNAPSHOT
 4) Packaging: war
 5) Name: TamaERP
 6) Description: TamaERP Project
==> OK: 클릭
2. pom.xml 파일이 생성됨
 --> D:\TamaERP\workspace\Websquare5_SAMPLE\pom.xml   
<dependencies>
	<dependency>
		<groupId>org.mybatis</groupId> <!--// mybatis V 3.4.4 추가 //-->
		<artifactId>mybatis</artifactId>
		<version>3.4.4</version>
	</dependency> 

	<dependency>
		<groupId>com.github.marcosemiao.log4jdbc</groupId>	 <!--// log4jdbc V 0.2.0 추가 //-->
		<artifactId>log4jdbc</artifactId>
		<version>0.2.0</version>
	</dependency> 
</dependencies>
 
 1) search.maven.org에서 mybatis 검색 --> http://search.maven.org/#artifactdetails%7Corg.mybatis%7Cmybatis%7C3.4.4%7Cjar
-------------------------------------------------------------------------------------------------------------------------------

- 스프링에서 SQL 로그 사용하기(log4jdbc,log4sql)
1. --> http://bryan7.tistory.com/402
 1) maven 설정 파일(/pom.xml)
 2) Spring 설정 파일(/database-context.xml)
-------------------------------------------------------------------------------------------------------------------------------

- Maria DB 로그 찍기
1. log4sql로 안됨 ==> log4jdbc로 설정해야 됨(maven 사용)

- Spring 4.3.2 log4jdbc-log4j2 설정 방법 
http://sooin01.tistory.com/entry/Spring-432-log4jdbclog4j2-%EC%84%A4%EC%A0%95-%EB%B0%A9%EB%B2%95 
==============================================================================================================
 
■■■■■■■■■■■■■■■■  2017.08.16(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 주간보고서 작성, PMS-F 주간실적 입력 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
==============================================================================================================

- WebsQuare 소스 분석 
1. 사고접수(/CAC00433000s.xml) ==> 일반보상 > 사고접수(cla_adt > CAC00433000s) 
2. WebsQuare 콘솔(httpp://localhost:9080/websquarel/message/logMsg.htmI)에서 에러 발생 
 1) Event error ==> sbm_lnitCont: fnJjetlnitData();
 2) Event error ==> sbm_SearchCode: 
	scwin.init = function() { 
		console.log(" [/HM002M01.xml] [initO] ==> [초기화]" ); 
		
		var codeOptions = [ 
			{code:"01". compID:"sbιDuty"}, 				// 직책 정보 
			{code:"02", compID:"sb>cPostion"}. 		// 직위 정보 
			{code:"21". compID:"sb>cJoinClass"}, 	// 입사구분 정보 
			{code:"23". compID:"sb>cJobFamily'}, 	// 직군 정보 
			{code:"24", compID:"sbιJob"}, 				// 직무 정보 
			{code:"26"}] ; 
			
	common.setCommonCode(codeOptions. IsetCommonCodeCaliback");  // 공통메뉴 리스트 조회 
};			
==============================================================================================================

- TamaERP_02 설 치(Convert to Maven Project 테스트)
1. D:￦TamaERP_02￦workspace 
==> 02. TamaERP_02 ==> http://localhost:9081 
2. /pom.xml 
3. /database-context.xml ==> 인터넷이 안되면 설정이 안된다고 함 
==============================================================================================================
 
- 소스 추가, 수정, 삭제 주석 처리 
// 추가: 2017.08.16. by JTM 
// 제거(TEST): 2017.08.16. by JTM 	II @@@ ====> 
// 주석 처리(TEST): 2017.08.16. byJTM 	II@@@ ====> 
// TEST @@@ ===> 
==============================================================================================================
 
- inswave 기술 지원(15:30) 
1. WebSquare Adaptor(/WqAdapter.java) 에 서 XML/JSON을 받아서VO로 Convert 하도록 수정(기존 Hash) 
1) 신규 개발: INPUT. OUTPUT은 Hash MAP에서 VO 처리해야 합 -> 개발자가 INPUT. OUTPUT을 수동 처리 해야 함 
2) 전환 개발: 전환 후 VO 처리(OUTPUT은 VO 처리 안 하게 요청) -> 개발자가 INPUT을 수동 처리 해야 함 
==============================================================================================================

- promise 설정 
1. 비동기 프로그래밍 받식(callback과 유사) 
scwin.promise.lfn_btn_ContSearch_OnClick = function(e) { 
	var promise = Promise.resolve(); 
	 
	var sStartDate = ""; 	// AddDate(left(trim(cal....AcdDate. Value), 8), - 5); 
	var sEndDate = ""; 		// ddDate(left(trim(cal....AcdDate.Value), 8), + 5);  
	var sContTime = ."; 
	
	promise = promise.then(function(rtnVal) { 
		return ngmf.promise.dialog("cla...adt::CAC00433200s_P02.xml", "", 620, 288);  // 팝업 
	}); 
	
	promise = promise.then(function(result) { 
		result = result.rtnObj; 
		
		// 단체상해일경우 sms 체크 비송신으로  
		scvar.bChange = true; 
		edt_AcdNum .setValue (""); 
		Ds_AcdDetail. insertRow(); 
		Ds_Acd Detail.setCeIiData(Ds_Acd Detail.getRowPosition(), "sDmg Ki nd"’ "99"); 
		Ds_AcdDetail.setCeIiData(Ds_AcdDetail.getRowPosition(), "sDmgStat", "99"); 
	}); 
	
	promise = promise [lcatch"](function(retVal) { 
		return retVal; 
	}); 
	return promise; 
};
==============================================================================================================

- 일반 보종의 보종별 화면 링크 번호 선언(/gen_sPolicyKind_Link.js)  
function getGENLinkPageNo( sStcPolicyKind, sStr_sPolicyNo ) { 
	var sGENLinkPageNo = "'; 
	
	if ( gSystemType == "L" ) { 
		if ( sStr_PolicyKind == "1605" ) {  // 운전자 상세조회 
		// 특수예외 처리 
		gDs_LinkArg .AddColumn ("sKey"); 
		gDs_LinkArg.setColumn(O. "sKey". sStr_sPolicyNo); 
		}
	}
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.17(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 태용, 호수 만남(21:10 ~ 23:30, 미사키 참치집[이수역 12번 출구]) 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
==============================================================================================================

- 추석 열차승차권, 코레일 29~30일…SRT는 9월5일~6일 예매 
1. 경부선: 인터넷 6시 예매
http://m.news.naver.com/read.nhn?oid=003&aid=0008126972&sid1=102&mode=LSD
==============================================================================================================

- 아수스 VIVO(미니PC, 노트북 대용)
ASUS VivoMini VM65N-G078Z
http://m.danawa.com/product/product.html?code=4926817
==============================================================================================================
 
- MSI GE60_2OE 노트북 메모리 추가 검토(집에서 사용하는 노트북)  
1. RAM(메모리): 하이닉스 DDR3 PC3L 8 GB  메모리(슬롯 2개) 
==> 삼성전자 노트북 DDR3 8G PC3-12800 1.35V(양면램): 1,600MHZ이 클럭 스피드 
[쎈딜] 노트북/DDR3/8G PC3L-12800/RAM/저전력메모리 
==> http://shopping.interpark.com/product/productInfo.do?prdNo=4977364510&dispNo=016001
==============================================================================================================
 
- executeSubmission_dynamic 함수 호출시 ID 에러 
1. 현상
 1) 동적 Submission 조회 버튼 클릭(/Submission_dynamic.xml 파일에서)
scwin.btn_Search_onclick = function() {
	if(valLib.validateGroup(grp_search) === false) {
		return;
	}else{
		var searchCodeGrpOption = { id : "sbm_SelectTempDynamic",
							action : "/sample/tempSelect.do",
							   ref : "data:json,dma_Search",
							target : 'data:json,{"id":"dlt_temp","key":"dlt_temp"}',
				 submitDoneHandler : "scwin.sbm_SelectTemp_submitdone", isShowMeg : false };
				 
		common.executeSubmission_dynamic(searchCodeGrpOption);   	// 동적 Submission 함수 호출
	}
}; 
-------------------------------------------------------------------------------------------------------------------------------

2) Submission 실행(/common.js 파일에서)
 /**
 * 동적 Submission 실행 
 */
common.executeSubmission_dynamic = function(options, requestData , obj) {
    var submissionObj = $w.getSubmission(options.id);
	
    if (submissionObj === null) {
        common.createSubmission(options);		// Submission 객체 동적 생성 함수 호출
    } else {
       common.setSubmission(submissionObj, options);
    }
	
    common.executeSubmission(options.id, requestData, obj);	// 동적 Submission 실행 
};
-------------------------------------------------------------------------------------------------------------------------------

3) Submission 객체 동적 생성(/common.js 파일에서)
/**
* Submission 객체 동적 생성
*/
common.createSubmission = function(options) {
    var ref = options.ref || "";
    var target = options.target || "";
    var action = common.CONTEXT_PATH + common.SERVICE_URL + options.action; //ajax 요청주소
    var mode = options.mode || common.DEFAULT_OPTIONS_MODE; //asynchronous(default)/synchronous
    var mediatype = options.mediatype || common.DEFAULT_OPTIONS_MEDIATYPE; //application/x-www-form-urlencoded
    var method = (options.method || "post").toLowerCase(); //get/post/put/delete
    var processMsg = options.processMsg || "";
    var instance = options.instance || "none";
    var submitHandler = options.submitHandler || "";
    var submitDoneHandler = options.submitDoneHandler || "";
    var submitErrorHandler = options.submitErrorHandler || "";
    var isShowMeg = false;
    var resBody = null;

    if ((options.isProcessMsg === true) && (processMsg === "")) {
        processMsg = "해당 작업을 처리중입니다";
    }

    if (typeof options.isShowMeg !== "undefined") {
        isShowMeg = options.isShowMeg;
    }

    var submissionObj = {
        "id" : options.id, //submission 객체의 ID. 통신 모듈 실행 시 필요.
        "ref" : ref, //서버로 보낼(request) DataCollection의 조건 표현식.(조건에 때라 표현식이 복잡하다) 또는 Instance Data의 XPath.
        "target" : target, //서버로 응답(response) 받은 데이터가 위치 할 DataCollection의 조건 표현식. 또는 Instance Data의 XPath.
        "action" : action, //통신 할 서버 측 URI.(브라우저 보안 정책으로 crossDomain은 지원되지 않는다.)
        "method" : method, //[default: post, get, urlencoded-post] get:파라메타를 url에 붙이는 방식 (HTML과 동일).
                           // post:파라메타를 body 구간에 담는 방식 (HTML과 동일).  urlencoded-post:urlencoded-post.
        "mediatype" : mediatype, //application/json
        "encoding" : "UTF-8", //[default: utf-8, euc-kr, utf-16] 서버 측 encoding 타입 설정 (euc-kr/utf-16/utf-8)
        "mode" : mode, //[default: synchronous, synchronous] 서버와의 통신 방식.  asynchronous:비동기식.  synchronous:동기식
        "processMsg" : processMsg, //submission 통신 중 보여줄 메세지.
        "submitHandler" : submitHandler, //<script type="javascript" ev:event="xforms-submit"> 에 대응하는 함수.
        "submitDoneHandler" : function(e){
    		if(submitDoneHandler){
    			var callbackFn = eval(submitDoneHandler);
    			callbackFn(e.responseJSON);
    		}
        }, //<script type="javascript" ev:event="xforms-submit-done"> 에 대응하는 함수
        "submitErrorHandler" : submitErrorHandler //<script type="javascript" ev:event="xforms-submit-error">에 대응하는 함수
    };

    $w.createSubmission(submissionObj);		// Submission 객체 동적 생성
};
-------------------------------------------------------------------------------------------------------------------------------

4) Websquare 콘솔창(http://localhost:9080/websquare/message/logMsg.html)에서 로그 보기
23:38:15.001 00000 000000 /] WebSquare.ModelUtil.executeSubmission : sbm_SelectTempDynamic
23:38:15.001 00000 000387 /] Event error [sbm_SelectTempDynamic,ev:xforms-submit] : undefined is not a function    
---> sbm_SelectTempDynamic가 정의 되지 않다는 에러 발생 @@@@
23:38:15.003 00002 000389 /] /sample/tempSelect.do 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.18(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.19(토) 작업 ■■■■■■■■■■■■■■■■  
---> 07:40 ~ 18:10 ==>  

- 주말  
09:00 기상 
11:00 조식
12:00 집출발
12:30 SKT 공식대리점(이마트 구로점 근처) ==> 명의 변경 토요일에 안된다고 해서 짜증냄
12:50 쇼핑(수종 우유: 이마트 구로점)
13:20 바지 기장 수선: 남구로시장
13:50 귀가 
15:00 낮잠(밥도 안먹고 잠) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.20(일) 작업 ■■■■■■■■■■■■■■■■   
---> 07:00 ~ 18:00 ==> 비 많이 옴

▦ 조기축구
06:00 기상 
06:20 도보(비 많이 옴)
06:45 대림운동장(창고에서 물건 가지고 옴)
07:20 숏게임
08:00 게임(도신 축구회): 수중전 ==> 3게임함
10:00 종료ㄴㅇㄹㄴㅇㄹ
10:20 중식(부대찌개: 황금어장): 회에서 쏨
11:30 종료
11:50 강고문댁 지하 ==> 아이스크림 2개 먹음 
13:30 종료
14:10 귀가
14:20 낮잠
16:20 기상 
19:20 석식(황금올리브 치킨): BBQ 대림점 배달
01:00 취침 
==============================================================================================================

- 내 컴퓨터의 하드웨어 사양 체크
0. http://windwaker.net/501
1. AIDA64 Extreme(유료)
2. HWiNFO64(강추)
 1) Maximum Supported Memory Clock: 800.0 MHz
 2) Current Memory Clock: 799.1 MHz (8 : 1 ratio)
==============================================================================================================

- 미니PC(노트북): 송성구 차장 추천
1. ASUS VivoMini VM65N-G078Z (16GB, SSD 512GB), 가격: 1,095,460원
http://prod.danawa.com/info/?pcode=4926817 
==============================================================================================================

- Reimage Repair 악성 코드 제거하기
http://appfood.tistory.com/275
http://prod.danawa.com/info/?pcode=4926817 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.21(월) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:40 ~ 21:00  ==> 핸드폰 알람 고장, 구종식 부장(PL) 투입(10시), 중식(돈가스: 구부장, 오사장): 오사장이 쏨 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
1. 사고접수UCAC00433000s자nl) ==> 일반보상> 사고접수(c1a_adt > CAC00433000s) 
==============================================================================================================

- 할 일
1. 장인 주민세 팩스 보낼 것(건강보험증, 영수증): 02-2670-3623  ==> 완료?
2. 명의 변경 확인(대림3동 SK공인인증 대리점): 02-6396-2011  ==> 완료?
 1) 토요일 명의 변경 가능
 2) 가족관계증명서 출력
3. KT 휴대폰 갤 노트5 약정 만료일(2년 약정) ==> 알뜰폰 알아보기
4. 메모리 확인  --> MSI 서비스센터에 문의할 것
 1) Maximum Supported Memory Clock:  800.0 MHz
 2) Current Memory Clock: 799.1 MHz (8 : 1 ratio) 
==============================================================================================================

- 회의(13시, 커피 shop[커리 라 2층])
1. 참석: 오사장, 구부장, 전환툴 김운은 부장 
2. 내용 
1) 이번주까지 2차 전환 완료 한다고 함 ==> 전환툴 김운은 부장 절수할 예정 
2) 9월 초에 개발자 2명 투입될 예정 
3) 12월 초에 오픈할 1차 개발 본수(110본 예상) 
==============================================================================================================
 
- Miplatform에서 사용한 Filter Websquare 에서 사용 방법 
// 35. filter: Dataset에서 조건식에 해당하는 Record만 선택하여 줄력하는 Method 
사용예) DsWs_7005.Filter("’STM_FD’ == 0"); 
tracee(jlogin.xml] [lfn_BasicAPIOJ ==> [35. filter, ASJS] [TO_BE_결과값]" + getDateO ); 
사용예) Ds_GetAIiAuth.Filter("pos(sAuthName, ’" + trim(tabO.tab1.edit1.Text) + "’) > = 0"); 
----------------------------------------------------------------------------------------------

- Websquare 에서 사용 
// 35. setColumnFilter( filterOptions ): colIndex에 해당하는 컬 럼 에 filter를 적용한다 
DsWs_7005.setColumnFilter( (type:’row’, colIndex:’STM_FD’, key:"O", condition:’and’}); 
dataListl.setColumnFilter( (type:’regExp’, collndex:’dept’, key:/TI홍보/gi, condition:'and’}); 
DsWs_7005.setColumnFilter( (type:’regExp’, colIndex:’STM_FD’, key:/O/gi, condition:’and’}); 
DsWs_7005.setColumnFilter( (type:’regExp’, collndex:’STM_FD’, key://gi, condition:’and’});  	// ===> 사용 불가능 
// display 예시 ) GridView에 dept 컬럼이 IT"와 ”홍보”인 데이터만 보여진다. 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2017.08.22(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 석식(삼계텅 순대국집: 이부장 구부장): 구부장이 쏨 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
1. 사고접수UCAC00433000s자nl) ==> 일반보상> 사고접수(c1a_adt > CAC00433000s) 
==============================================================================================================

- 2차 전환 소스 확인 
1. 전환 안된게 너무 많음(심각) 
==============================================================================================================
 
- 기본APUist_20170819.xlsx 파일을 전환팀 김원은 부장에게 받음 
1. 수작업으로 수정하여 업그레이드 해야 함 
==============================================================================================================

- 매크로 작업(Notepad ++에서) 
1. 매크로 > 매크로 시작(5) 
2. Notepad ++에서 반복 작업 시작 
3. 매크로 > 매크로 중지(5) 
4. 매크로 > 실행(P) 
==============================================================================================================
 
- 구멍가게 코딩단(카페)
1. http://cafe.naver.com/gugucoding

- Spring, MyBatis 세팅 현재 시간 테스트 
https://www.youtube.com/watch?v=Uucf50Yn_0w

- Log4jdbc 세팅
https://www.youtube.com/watch?v=9qhpp_fhqx8
----------------------------------------------------------------------------------------

- root-context에서 설정
1. datasorce ==> database 연결
2. SQLsessionFactory  ==> Mabatis 띄우기
3. SQLsession  ==> SQL 실행
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2017.08.23(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- Websquare 소스 분석 
1. 사고접수UCAC00433000s자nl) ==> 일반보상> 사고접수(c1a_adt > CAC00433000s) 
==============================================================================================================

- 영업지원시스템(TO-BE) DBeaver 서버(개발계, Sybase DB 연결) 
01. Sybase[개 발계] 
1 JDBC URL: jdbc:jtds:sybase://10.1.1.131:4100 
2: userName: f5170065 
3. pw: pw: Pwf5170065_ 
------------------------------------------------------------------------------------------------------

- 영업지원시스템(TO-BE) DBeaver 서버(02. 검증계, Sybase DB 연결) ==> DB SAFER AGENT 실행 후 연결할 것 
02. Sybase[검증겨I] 
1. JDBC URL: jdbcJtds:sybase:ν10.1.1.129:4100 
2. userName: f5170065 
3 pw: pw: Pwf5170065_ 
4. DB 패스워드를 잘못 입력해서 잠긴 면 DBA 김영근 주임에게 조기화 요정 할 것
==============================================================================================================

- TheKStudio 설치 
1 전자정부 프레임워크(eGovFrame: TheKStudio) == > 용량:2.55GB 
2 eclipse LU NA(WS5_SAM PLE) == > 용량: 3.85GB(Maria DB 포함) 
3. TamaERP==> 용량: 1.9GB  
==============================================================================================================

- 인터페이스 샘플 
1. /ui/SAMPLE/interfaceSample.xml 
==============================================================================================================

- java 파일(/InterfaceSampleController.java) 수정 후 서버 반영이 안될 때 
1. pom.xml: 마우스 우 클 릭 > Run As > Maven install 
2 Tomcat 서버 재시작 
@Controller 
public class InterfaceSampleController { 
private 
static 
final 
Logger 
LOGGER 
 
LoggerF acto ry.g etLogge r이떼(In마1까te민rfaceSa m p I eController.c1 ass); 
@RequestMapping(value="/interfaceSample.do" , method = RequestMethod.POST) 
public @ResponseBody Map interfaceSample(@RequestBody Map param) throws Exception 
LOGGER.debug("￦n￦n 
[ηnterfaceSampleController .java] 
[interfaceSample()] 	== > 	[######################### 	interfaceSample 	처 리 	Staπ] 
#########################] "); 
Map data Map, resultMap; 
dataMap = (Map)param.get("mapSample"); 1102-1. Map(JSON)로 받음 
LOGGER.debug("[βnterfact.~ampleControlier .java] [interfaceSample()] [dataMap]"+ 
dataMap ); 

String xmlDOC = InterfaceUtiI.MapToXML(dataMap); 
II 02-2. Map을 XML 
으로 변환 
II String strXml2 = "<INPUT action=￦"selectLoanEdamtCrst￦"> <sCrNo value=￦"1￦"I> <ηNPUT>"; 
task=￦"co m. i nswave .Ion gte rm .10 n.ci n. tas k.J C H 2 20T as k￦” value=￦’'L22000001440￦"I> <sLoanRfndCd 
String resultXml = ''''; 
WsClientService wsclientService = new WsClientServiceJmplO; 
WsClient remote = wsclientService.getWsClientO; II ws client Service 실행 
resultXml = remote.perform(xmIDOC); 	II 02-3. 결과값을 XML으로 받 
아옴 
LOGGER.debug("[jInterfaceSampleControlier Java] [interfaceSample()] [INPUT 값]"+ 
xmlDOC ); 
	LOGG ER.debug(" [/InterfaceSampleContro Iler껴va] 	[interfaceSample()] 	[OUTPUT 값]"+ resultXml ); 
으로 변환1 
Map xmlMap = InterfaceUtiI.XmIToMap(resultXml); 1102-5. Map(JSON)으로 Cleint로 보냄 
II 02-4. Xml을 Map 
resultMap = new HashMapO; 
resultMap.put("dsTest", xmIMap); 
return resultMap;   
==============================================================================================================

- 회의(13시, 소회의실)
1 참석: 구부장, 송차장 
2 내용 
1) Service단 개발(신규: VO --> 기존 방식 전환: Map --> Controller를 하나씩 만들 예정) 
2) 전환 후 수정 화면(가입설계, 간편설계) ==> 화면 복잡 
3) 송차장 9월 1주 더 연장할 예정(10월달 이후 투입 권유 했다고 함)  
==============================================================================================================
 
- utiljs 파일 통합 
1. 송차장 것과 통합 
==============================================================================================================
 
- 영업지원시스템(TO-BE) 개발 서버 셋팅 
1. OS: Linux, WAS 서버: JEUS(티맥스 소프트), 웹 서버: WebtoB(티맥스 소프트) 
2. 전자정부프레임워크(eGovFrame 3.6.0), Websquare5(인스웨이브) 
1) SVN 정보: JinTaeMan / 11234 
3. DB: Sybase Central v6.0  
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2017.08.24(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 석식(짜장면, 메이차이나: 이부장, 송차장, 심차장, 구부장): 구부장이 쏨 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- filter 처리 
1. util.filter(dlt_Authority, conditions);   // TEST @@@ ===> 
Ds_Agent.fiIter("sCenter='5100001'’ && nCnt > 0 ");
DsWs_POLRECEIPT.fiIter( "sDocGubun == 'I' II (sDocGubun != 'I' && (sEndorseStat == '2' II 
sEndorseStat == ’7’) )"); 
Ds_CouponAmt.filter("CODE == 0 II CODE == 10000 II CODE == 20000 II CODE == 30000"); 
oItem.styleJ.fiIter += "progid:DXlmageTransform.Microsoft.AIpha(opacity=50, style=0)";
==============================================================================================================

- Fitlering TEST[코드관리(/BM001M01.xml) 파일에서]
1** 
* 공통 코드 그룹 리스트 조회 submitdoneOJ벤트 리스트 조회후 건수를 셋팅한다. 
*1 
scwin.sbm_CommonGroup_submitdone = function(e) { 
	console.log("(/BM001M01.xml] 	[sbm_CommonGroup_submitdoneO] 	== > 	[조회 결과 
	Callback] [common.getResultCode(e)]"+ common.getResultCode(e));
	 
	var rsCode = common.getResultCode(e); 
	if(rsCode == "S") { 
		spn_GrpCnt.setValue( dlt_CommonGrp.getRowCountO ); 		// 총 조회 건수 
	}
};	
==============================================================================================================
 
- 공통 함수 수정  
1. gfn_bEssentiaI 함수: 필수입력사항을 체크하는 함수
if(!gfn_bEssentiaI (edt_nSiteSeq/"구내 번호")) return false;  	// Miplatform 에서 
console.log("[/Iogin.xml] [lfn_APt020] == >[01.gfn_bEssential()]"+ gfn_bEssential('''', "아이 디") );  
------------------------------------------------------------------------------------------------------

3. setCompEnable 함수: Component 활성(true)1비활성(false) 처리하는 함수 
util.setCompEnable("btn_Login", false); 
// gfn_enable(TabO.tab1, false); // Miplatform 에서 
console.log("[/Iogin.xml] [lfn_APt02()]== > [03. setCompEnable, _setCompEnable]" );  
------------------------------------------------------------------------------------------------------

3. isNul1 함수: Null 체크용 함수 
if (util.isNull(getDBTaskMessage) == false) { 
// if (getDBTaskMessage < > "") { 	// Miplatform 에서 
==============================================================================================================

- inswave 기술 지원(13시, 송성구 차장) 
1. 메뉴가 이상하게 Display == > WebsquareS 버전 문제(2017.06.24 버전) -- > 버전 패치 예정 
2. common.executeSubmission_dynamic 조회 에러 문제
1) inswave 이승경 연구원이 해결해준다고 함 
==============================================================================================================
 
- 회의(21시, 프로젝트실) 
l 잡석: 구부장, 이부장, 송차장 
2 내용 
1) 전환 툴(w-craft)을 사용하여 callback와 Promise 중 어느 것을 사용할 것인지 내일 결정(전환팀  김운은 부장과 협의) 
2) 개발 분량 개인 할당 후 CaliService 호줄하여 Interface 개발할 것(이번주까지 구부장이 할당할 예정) 
3) wsclient Service에 예외 케이스 너무 많이 생김 == > interface 생성하는 데 다음주까지 작업이 필요하다고 함(송차장) 
==============================================================================================================
 
- 모니터 화면 분할
1. http://ansths.tistory.com/961
2. http://software.naver.com/review/detail.nhn?reviewId=NVR_SR_000097
==============================================================================================================
 
- TamaERP에서 eclipse 시작 에러
1. 현상
심각: Exception sending context initialized event to listener instance of class org.springframework.web.context.ContextLoaderListener
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'dataSource' 
defined in ServletContext resource [/WEB-INF/spring/appServlet/database-context.xml]: Error setting property 
values; nested exception is org.springframework.beans.PropertyBatchUpdateException; nested PropertyAccessExceptions (1) are:
PropertyAccessException 1: org.springframework.beans.MethodInvocationException: Property 'driverClassName
' threw exception; nested exception is java.lang.IllegalStateException:
2. 원인: driverClassName: 에러 발생: 인식 못 함 ==> Log4jdbc 세팅 에러(/database-context.xml에서)
<!-- 01. dataSource 설정(database 연결, 수정: JTM)-->
<bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
	<property name="driverClassName" value="net.sf.log4jdbc.sql.jdbcapi.DriverSpy"></property>   <!-- driverClassName: 에러 발생: 인식 못 함 -->
	<property name="url" value="jdbc:log4jdbc:mariadb://127.0.0.1:3307/tamaerp"></property> 
	<property name="username" value="${username}"></property>
   <property name="password" value="${password}"></property>
</bean>
 
3. Zerockcode에게 메일 보낼 것
1) Zerockcode's Note[구멍가게 코딩단] 블로그   ==> http://zerockcode.blogspot.kr/2015/08/mybatis-sql-log4jdbc-log4j2.html
2) https://www.youtube.com/channel/UCrqnjM3zPB4BedmAXkzWs2A
3) http://clairdelunes.tistory.com/11
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.25(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- USB로 프로그램 가지고 와서 파일서버에 올리기 요정 
1. 성병무 대리에게 요청 
1) 그룹공유/영업지원시스템 구죽/9999.임시폴더/20170825 업로드해놨습니다==> 비번1
2) TamaERP 소스에서 Maven 소스 못 가져옴(/.m2) 
3) mariadb-10.2.7-win32 실행 파일 아님 ==> 다시 확인하고 가져 올 것 
4) 모니터 화면 분할(WWinSplit-Revolution-v11.04) 프로로그램 가져옴(성공) 
==============================================================================================================
 
- LinkedDatalist 테스트 
1. /gridView_selec_inkedDatalist.xml 
==============================================================================================================

- 2차 전환 수행(w-craft 사용) 
1 1차 개 발 본수(110본 예 상) 
2. 전환 기본 함수를 인식 함(left --> wconv.left) 
==============================================================================================================

- 개인정보동의서심사(/0320.xml) 수정 ==> 개인별 개발 분량 할당 받음 
1 AS_IS URL == > 청약 > 인수심사 > 동의서 확인 New(/B120.xml) 
==============================================================================================================

- 세부 업무구분 
C~SO: 공동 CBSB: 영엽, CBSe: 계약, CBSR: 보상 
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2017.08.26(토) 작업 ■■■■■■■■■■■■■■■■  
---> 07:40 ~ 18:10 ==>  

- 주말  
09:00 기상
11:00 조식(콩국수 라면)
12:00 집출발
12:10 SKT 공식대리점(한류대리점, 대림역 8번 출구 근처)
	==> SKT 통신사 명의 변경(010-9331-0898 번호가 강아현으로 명의 변경 처리됨)
12:50 대림역 -> 잠심새내역(4번 출구): 수종
13:40 서울시 송파구 잠실동 192-9번지에 도착 --> 도네누라는 식당 건물 4층
	==> 갤럭시 S8 구입 조건 --> SK -> KT 번호 이동: 33만원, SK -> LG 번호 이동: 27만원 선납
		  59 요금제(무제한) 6개월 유지
14:00 종료
14:30 아시아 공원(수종): 분수에서 놈 
15:00 종료
15:10 종합운동장역 -> 대림역
16:10 중식(돈가스, 돌솥밥)
17:00 LG U+ 대리점 방문
	==> 갤럭시 S8 구입 조건 --> SK -> LG 번호 이동: 제휴 카드 월 30만원 사용(월 만 7천원 할인)
		 LTE62(6G) ==> 총 납부 금액: 62,050원
17:20 구로리공원(수종 친구인 정성은 만나서 신나게 놈)
18:10 종료
18:30 귀가 
19:00 낮잠(밥도 안먹고 잠)
==============================================================================================================

- SKT 통신사 명의 변경
1. 가족간 명의 변경 = 두 분 신분증 + 가족관계증명서 ==> 명의 받는 사람 반드시 참석해야 함
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.27(일) 작업 ■■■■■■■■■■■■■■■■   
---> 07:00 ~ 18:00 ==> 

▦ 조기축구
06:00 기상 
06:20 자전거(문영APT -> 대림운동장) 
06:30 대림운동장(최성형과 창고 가서 짐 나름) 
07:20 숏게임 
08:00 게임 ==> 3게임함(자체게임) 
09:55 종료
10:00 게임 ==> 2게임함(영등포 60대 대표와 시합) 
		--> 포드로 한 게임 뜀 --> 전체적으로 망신 당함(신사조기회 김성수 형님 만남)
12:20 중식(국밥: 서울식당): 회에서 쏨
	    --> 권투 시청(메이웨드 VS 맥거리그) --> 메이웨드 10회 TKO 승
14:30 종료
14:50 귀가 
15:20 미즈노 축구화 끊 줄이기(끊 풀고 끊고 불로 지지고 다시 묶은 후 검정 테이프로 감기) 
16:00 TV 시청
16:50 최선형 사무실에 포도 사러 감 --> 포도(5kg, 만원): 황홍기 형님 재배(영천)
17:50 귀가 
20:00 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.28(월) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- 개인정보동의서심사(/0320.xml) 수정   
1) 조직 찾기 Ucom_pop/0120.xml) 
1. AS-IS URL ==> 청약 > 인수심사 > 동의서 확인 New(/B120.xml) 
==============================================================================================================

- 회의(21시, 프로젝트실) 
1. 참석: 구부장, 이부장, 송차장 
2 내용 
1) promise, calback 결정(전환팀 김운은 부장과 협의)
2) 공통 함수 수정 == > wconv.js(전 환 공통 함수), util.js(공통 함수) 
==============================================================================================================

- eclipse 단축키 
1. eclipse 단축키 리스트 보기 : ctrl + shift + I 
==============================================================================================================

- XML 포맷 만들기 
1. /WebSquare.xml 파일 생성 
2. XML 문구 복사해서 붙여넣기 
<vector 	beforeEJBCal1 = "1503884781295" 	afterEJBCal1 ="1503884781305" 
result="l" > <data 
vectorkey="O" type="Document"> <ADMACOl> <sDepartCode value="5000014"1> <sDepartName 
value="장기 업무팀"I> <sLevel 	value="5"1> <sUpperCode 	value="4000103"1> <sOpenDate 
value="20090701"1> <sCloseDate 	value=''''I> <sCloseYN 	value="N"I> <sAcctUnit 
value="C01"1> <sDepartType value="03"1> </ADMAC01> </data> </Vector> 
3. /WebSquare.xml 파일에서 마우스 우 클릭: open With> XML Editor 
4. 전체 선택(shift + A) > ctrl + i ==> XML로 변환됨 
<vector beforeEJ BCall ="1503884781295" afterEJ BCal1 ="1503884781305" result="l" > 
	<data vectorkey="O" type="Document"> 
	<ADMACOl> 
	<sDepartCode value="50000l4" I> 
	<sDepaπName value="장기 업무팀" I> 
	<sLevel value="5" I> 
	<sUpperCode value="4000l03" I> 
	<sOpenDate value="20090701" I> 
	<sCloseDate value='''' I> 
	<sCloseYN value="N" I> 
	<sAcctUnit value="C01" I> 
	<sDepartType va, Je="03" I> 
	</ADMAC01> 
	</data> 
 </vector> 
==============================================================================================================

- 공통 함수 수정 
1. conv.js(전 환 공통 함수), util.js(공통 함수) 
==============================================================================================================

- 에스원 안심모바일 USIM요금제 가입 검토
1. http://www.s1mobile.co.kr/util/event/ingView.do?src=naver_br&kw=000A47&seq=645
2. 선택1(Medium): 월 6,500원 ==> 데이타 6G, 음성: 350분
==============================================================================================================

- TamaERP에서 eclipse 시작 에러
1. 현상
Maven 설정 삭제.... .m2에서 삭제하고 다시 받기
C:\Users\Administrator\.m2\repository\org\bgee\log4jdbc-log4j2\log4jdbc-log4j2-jdbc4\1.16\
log4jdbc-log4j2-jdbc4-1.16.jar

D:\TamaERP\workspace\WEBSQUARE5_SAMPLE\WebContent\WEB-INF\lib\
log4jdbc-log4j2-jdbc4-1.16.jar
==============================================================================================================

- [스프링]Error creating bean with name 'dataSource' PropertyBatchUpdateException 에러
https://m.blog.naver.com/PostView.nhn?blogId=allkanet72&logNo=220926784590&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.29(화) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 

- 더케이손해보험 영업지원시스템 구축 Prj[★] 
- 개인정보동의서심사(/0320.xml) 수정 
1. AS-IS URL ==> 청약 > 인수심사 > 동의서 확인 New(/B120.xml) 
1) 조직 찾기 (/com_pop/0120.xml) 
==============================================================================================================

- 신규 개발 인력(1명) 투입 
1. 프리 랜서 하영택 차장(Websquare 경 력자, SKT 경험자) 
==============================================================================================================

- 회의(10시, 프로젝트실) 
1. 참석: 구부장, 이부장, 송차장, 하영택 차장 
2. 내용 
1) promise로 가야만 한다고 함(프로세스 흐름 제어) 
가. promise는 소스가 복잡해지고 코드가 많아짐(기술 지원이 상주해야 한다고 함) ==> SKT 전용 브라우저(크롬과 유사) 
나. 전환에서는 calback는 안됨 
==============================================================================================================

- 개발 단계 교육(21시, 회의실) 
l 참석: 개발자, 품질(박과장) 
2 내용 
 1) 개발 일정 이번주까지 작성할 것 
 2) Smart Ochestra 사용 교육 ==> http://10.1.9.200:9080/orca, 진 태 만/1 
==============================================================================================================

- 추석 열차승차권, 코레일 29~30일…SRT는 9월5일~6일 예매 
1. 경부선: 인터넷 6시 예매
http://m.news.naver.com/read.nhn?oid=003&aid=0008126972&sid1=102&mode=LSD
2. 예약 실패 
 2) 예약 접속 대기자: 8,120명
--> IE, 크롬 동시에 코레일에 접속한 후 IE 접속 끊어져서 에약 접속 창 닫힘(다시 예약 접속 대기 번호 부여 
--------------------------------------------------------------------------------------------------------

서울 -> 포항, 10.3 10시
포항-> 서울 , 10.5 17시  
==> 6시 예약이면 5시 59분 58초에 조회를 누를 것 
==============================================================================================================

- 서버 시간 
1. 타임 시거 ==> http://timecker.com  ---> https://m.blog.naver.com/tamario/221085217001
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2017.08.30(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==>  

- 더케이손해보험 영업지원시스템 구축 Prj[★]   
1. 장기수납확정(/CBSC090M.xml, /7802.xml)[- 입금 > 수납] 수정 
1) 조회 데이타 요정 ==> 정진영 과장(2090037/ 현업) 
==============================================================================================================
   
- 로컬 개발 서버(TheKStudio) 셋팅 
1. SWA가 Websquare 엔진 패치하여 개발자들에게 2차 배포함 
==============================================================================================================
 
- Websquare 에서 에러 
l 현상 CBSC090M.xml 파일에서 script를 보두 지우고 저장(비정상 액선) 
An error has occurred. See error log for more details. null argument: 
2. 원인 
1) 해당 파일을 닫고 다시 열기 
3. 조치 
1) 해당 파일을 닫고 다시 열기 
2) eclise를 중지하고 다시 시작 
==============================================================================================================
  
- 구문 오류 
//if(errorCd < >) {}  	== > if(errorCd =!) {}로 수정해야 함 
==============================================================================================================
  
- Design 화면에서 css가 적용 안되어 보일 때 
1. Websquare 파일(/CBSC090M.xml)에서 stylesheet  확인  ===>
 == > 	<?xml-stylesheet href="/cm/css/all.css" type="text!css"?>    
2. eclipse> Websquare에서 처리 
가. cbs: 마우스 우 클릭 Properites > Properites for cbs(새창) ==> Websquare > Context Root(새창) 
== > Context Root: /cbs - > /로 변경 ==> Apply: OK 
 ==============================================================================================================
 
- CJ 헬로 모바일 가입(8시, 프로젝트실) 
1. 핸드폰으로 가입 
--------------------------------------------------------------------------------------------------------

- 롯데카드 발급 
1. 연회비: 만원 
2) CJ 헬로 모바일 통신비 할인 
가. 월 30만원: 만 천원 할인, 월 70 ~ 100만원: 만 5천원 할인, 월 100만원 이상: 만 7천원 할인
-------------------------------------------------------------------------------------- 

- 재직확인 
1. 이동은 사원에게 전화 ==> (주)지아이데이타 소속이 맞다고 함 
1) 전화: 02-527-3887 
2) 주소: 서울시 강남구 테헤란로 309, 2013호(역삼돔I 삼성제일빌딩) 
==============================================================================================================
 
- 스프링 배우기 - log4jdbc
http://devofhwb.tistory.com/20
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2017.08.31(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:00  ==> 월간보고(14시/7증 대회의실), 석식(보쌍 정식, 순대국집, 구부장/ 이부장 송성구 차장) ==> 구부장이 쏨

- 더케이손해보험 영업지원시스템 구축 Prj[★]   
1. 장기수납확정(/CBSC090M.xml, /7802.xml)[- 입금 > 수납] 수정 
1) 조회 데이타 요정 ==> 정진영 과장(2090037/ 현업) 
==============================================================================================================
 
- FaqMngmVo에서 에러 
1. 현상: Cannot find class: com.thek.cbs.contract.longterm.vo.FaqMngmVo 
2. 원인: faqMn 
< insert id ="registerFaq" parameterType= "com.thek.cbs.contract.longterm.vo.FaqMngmVo" > 
</insert> 
3. 조太I: faqMngm.xml 파일 삭제할 것 
==============================================================================================================

- eclipse svn 에 러 
1. 현상: 
Get all resources operation failed. 
svn: E155032: Pristine text not found 
Synchronize operation failed. 
svn: E155032: Pristine text not found 
2. 조치: 새로운 eclipse(TheKStudio: 구종식 부장꺼) 받음 
==============================================================================================================

- eclisep 시작 에러(라이센스 완료됨) 
1 라이센스 패치: 만기일(2017-12-31) 
ItSON OUZROOITOD N HVld U M Uc9P1ZFWEk= 
u30cAyXtL + /H9CFT78IIADONvknZfi4r+ kXLfZzcE02anSTQG2 U LH nIuCeEZ3t104ji pikS 
q m4Q DcE B lZ8 FEWI u KW7 a F r /IScQa8J4 = 
==============================================================================================================
 
- 루옌 이메일
1. 네이버 메일 ==> https://nid.naver.com/nidlogin.login, vnluyen@naver.com, vnluyen/ lulu339@ 
2. 구글 gmail ==>  https://accounts.google.com, vnluyen94@gmail.com / lulu339@ 
==============================================================================================================

- OCR 처리 후 수정 사항
°1부장 	--> 이부장
〉 		--> > 
l			--> / 
씀			--> 쏨
호|의	--> 회의
잠석		--> 참석
， 		--> , 
，			--> , 
’			--> '
= =		--> == 
U			--> (/
== > 	 --> ==>
============================================================================================================== 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


