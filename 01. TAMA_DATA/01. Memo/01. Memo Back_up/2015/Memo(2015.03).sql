 

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2015.03) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2015.03.01(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==> 삼일정(공휴일)

▦ 조기축구
06:00 기상
06:30 지하철(대림역 -> 양원역)
07:30 동원중학교(서울시 중량구)
08:00 게임(동원FC)
10:20 게임 ==> 김밥 2줄 반 먹음
11:00 게임
11:30 종료
11:50 정홍이 차
12:30 호균이형 중국집(구반포 아파트 상가)
13:10 중국(탕수육, 짜장면, 짬뽕) ==> 구창원 회장님이 쏨
14:10 종료
14:20 정홍이 차
14:40 사당역
15:00 귀가
16:00 거실 마닥에 물 새는 것(누수) 확인(사진 촬영): 내일 주인에게 이야기할 것
19:00 석식
00:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.02(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00 ==>

- Oracle 11g 설치 
 C:\Users\TAMA>sqlplus / as sysdba     ==> 정상 설치 여부 확인  
SQL*Plus: Release 11.2.0.1.0 Production on 월 3월 2 09:23:40 2015 
다음에 접속됨:
Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
-----------------------------------------------------------------------------------------------

1) DB 재시작 확인 
C:\> sqlplus /nolog 
SQL> conn / as sysdba
연결되었습니다.
SQL> shutdown
데이터베이스가 닫혔습니다.
데이터베이스가 마운트 해제되었습니다.
ORACLE 인스턴스가 종료되었습니다. 
SQL> startup
ORACLE 인스턴스가 시작되었습니다.

Total System Global Area 6831239168 bytes
Fixed Size                  2188728 bytes
Variable Size            3539995208 bytes
Database Buffers         3271557120 bytes
Redo Buffers               17498112 bytes
데이터베이스가 마운트되었습니다.
데이터베이스가 열렸습니다.

- 리스너 상태 확인
C:\> lsnrctl start
C:\> lsnrctl stop
C:\> lsnrctl status
C:\> lsnrctl services---> 리스너 정보 확인

1) SID 확인 
C:\> sqlplus /nolog
SQL> show parameter db_name;
SQL> select name from TamaDB;

C:\> tnsping  tamadb
C:\> tnsping  orcl

C:\> sqlplus system/tama3390A#@TamaDB
C:\> sqlplus tamario/tama339@TamaDB
==============================================================================================================

- DB 에러
1. ORA-12514: TNS:리스너가 현재 접속 기술자에 요청된 서비스를 알지 못함. 테스트를 실패했습니다.
 1) 원인: 리스너를 못 찾음
 2) 조치: listener.ora에서 리스너 추가하고 리스터 재시작 
C:\> lsnrctl start
C:\> lsnrctl stop
C:\> lsnrctl services

2. ORA-28547: 서버에 대한 접속을 실패했습니다. Oracle Net 관리자 오류일 수 있습니다. 테스트를 실패했습니다.
 1) 원인: 서버의 아이피가 유동 IP
 2) 조치: hosts에서 내 컴퓨터 이름 설정
  가. 192.168.0.18		tama_pc2
  나. listener.ora에서 내 컴퓨터 이름 설정으로 수정
  LISTENER =
  (DESCRIPTION_LIST =
    (DESCRIPTION =
      (ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC1521))
      (ADDRESS = (PROTOCOL = TCP)(HOST = tama_pc2)(PORT = 1521))
    )
  ) 
==============================================================================================================

- TOAD cannot find oci dll(oci.dll 오류시)
1. TOAD 10g 를 설치하셨으니 Oracle client 64비트가 아니고  client x86 버젼(win32_11gR2_client) 설치
==============================================================================================================

- 테이블 스페이스 생성
1. 테이블스페이스 생성하기 
SQL> CREATE TABLESPACE TAMADBTBS
DATAFILE 'D:\app\TAMA\oradata\TamaDB\TAMADBTBS.dbs' SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED 
UNIFORM SIZE 10M; 
create tablespace 테이블스페이스이름
datafile '데이터파일이 위치하는 경로 및 데이터파일이름'
size 데이터파일크기
autoextend on next 10M maxsize unlimited
uniform size 1M ; 
- autoextend : 초기 크기 공간을 모두 사용하는 경우 자동으로 파일의 크기가 커지는 기능을
                     활성화(on)/비활성화(off, default) 를 설정한다.
- next : 데이터 파일이 증가하는 단위를 명시 한다
- maxsize : 데이터파일이 최대로 커질수 있는 크기를 지정 한다.
                 기본값은 unlimited 이다
- uniform size : extent 하나의 크기를 설정 한다.
                      uniform size 1M --> 세그먼트 생성시 공간을 1M씩 할당 한다.   
==============================================================================================================

- 오라클 JDBC연결, DBCP이용 연결방법
http://igoto.x-y.net/xe/245
C:\Program Files\Java\jdk1.6.0_45\jre\lib\ext폴더에 ojdbc14.jar 파일이 있다면
'Class.forName("oracle.jdbc.driver.OracleDriver");'  로 드라이버를 로딩할 수 있다.
==============================================================================================================

- XPlatform 개발
1. jsp로 DB 연결 성공
2. DataURL 변경
DataURL ==> http://172.10.14.3:8080/edu/xp/
DataURL ==> http://localhost:8080/ 
==============================================================================================================

- Oracle 11g R2 서버 재설치 ==> 집에 있는 PC에서
1. Oracle 11g R2 서버 설치 실패
 1) 기존 삭제할 때 Oracle 관련 파일 삭제 됨
==> OS(WIN 7) 다시 설치할 것
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.03(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 ==>

- XPlatform 개발(세종대 소스 분석)
1. 로그 처리
alert("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()]==> [e.row]"+ e.row ); 
trace("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()]==> [e.row]"+ e.row ); 
2. 분석 작업
/Notice.xfdl, /CoaCommonCodeReg.xfdl, /CobMenuReg.xfdl, /comsvc_script.xjs
Add MyMenu
gds_MyMenuPu
--------------------------------------------------------------------------------------------------------
 
- JSP 연결
1. URL 수정
//var serviceTarget = "SvnNexcoreCO::standard.xpl";// URL  
var serviceTarget = "SvnNexcoreCO::standard.jsp";// URL(수정)
==> TypeDefinition(더블 클릭) > Edit TypeDefinition(새창): Services(Tab) 
--> prefixid: SvnNexcoreCO, type: jsp, url: http://127.0.0.1:8080/JSP/, cashelevel: none
2. 웹에서(eclipse 에서)
http://127.0.0.1:8080/JSP/standard.jsp
==============================================================================================================

- Oracle 11g R2 서버 재설치(삭제 후 재 설치) ==> 회사 PC에서(\\192.168.0.2)
1. Oracle 11g R2 서버 설치 ==> D:\app\TAMA2\product\11.2.0\dbhome_1
2. 설치 후 각종 구성
 1) Database Configuration Assistant로 데이터베이스 구성 ==> 생성
 2) Net Configuration Assistant Net Configuration Assistant 구성 ==> 생성 
 3) Net Manager 구성  ==> 생성
==============================================================================================================

- Load에 실패
uxs (3292): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (ExtCommon)
uxs (3292): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XecureAdp) 

1. 조치: 해당 파일들을 컴포넌트 폴더 경로(C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1)에 복사하신 후 
프로젝트를 재시작 하시면 정상적으로 load가 되실겁니다. 

- Load에 추가 실패((주)트비소프트에 원격지원 요청)
(3900): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XWrapComp)
(3900): Error: 클래스(WebBrowser) 생성을 실패하였습니다.
TypeDefinition 부분에 WebBrowser가 추가 되어있는지 체크해 보시기 바랍니다. 
TypeDefinition > Edit > Objects 탭 > 

*************** 추가안내 **************************
XWrapComp.dll 이 없어서 나는 에러이기에 설치해 드렸습니다. 
==> 원인: C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1에 넣은 XWrapComp.dll 파일이 XPLATFORM
9.2.1 버전과 안 맞음(파일 버전이 2105.2.24.1 이여야 함)
==============================================================================================================

- 근로 계약서 작성[(주)지아이데이타]
1. 총연봉: 5천 백(월: 3,920,000원) ==> 정규직(1년 후 퇴직금 지급)
2. 급여일: 25일
3. 현금영수증 카드 수령[(주)지아이데이타 김보정 사원에게 받음]
 1) 식대 현금 지급 후 카드로 현금영수증 처리해서 회사에 제출할 것(카드 번호: 1544 2020 9200 759741)
==============================================================================================================

- 거실 마닥에 누수 응급 공사
1. 물새는 거실 보일러 배관만 교체하고 시멘트 발라 놓음(응급 조치만 했다고 함)
 1) 원인: 보일러 배관이 낡아서 그런 거라고 함
 2) 전체 방의 보일러 배관 교체 공사를 하면 일이 커진다고 함
 3) 보일러 오후부터 계속 틀어 놓음(24도 유지) ==> 시멘트 말라야 함
4. 주인이 64만원 들여서 도시가스 보일러 구입 
 1) 린나이 R321-25KF(64만원): 주인이 구입함 ==> 최저가: 559,420원 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A697926283&frm3=V2 \
==============================================================================================================
 
- 도시가스 검침(19시)(2015년)[대림 문영 아파트 101동 1806호] 
1. 3월 3일(화): 5496
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.04(수) 작업 ■■■■■■■■■■■■■■■
---> 07:30 ~ 19:00 ==>

- XPlatform 개발(세종대 소스 분석)
1. 로그 처리
alert("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()]==> [e.row]"+ e.row ); 
trace("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()]==> [e.row]"+ e.row ); 
2. 분석 작업
/Notice.xfdl, /CoaCommonCodeReg.xfdl[공통코드등록], /CobMenuReg.xfdl[메뉴등록], 
/\CobProgramErrorAcceptPop.xfdl[결함목록], /comsvc_script.xjs[메뉴등록]
--------------------------------------------------------------------------------------------------------

- JSP 연결
1. URL 수정
//var serviceTarget = "SvnNexcoreCO::standard.xpl";// URL  
var serviceTarget = "SvnNexcoreCO::standard.jsp";// URL(수정)
==> TypeDefinition(더블 클릭) > Edit TypeDefinition(새창): Services(Tab) 
--> prefixid: SvnNexcoreCO, type: jsp, url: http://127.0.0.1:8080/JSP/, cashelevel: none
2. 웹에서(eclipse 에서)
http://127.0.0.1:8080/JSP/standard.jsp
==============================================================================================================

- Mplatform에서 ExtCommonApi Load Library에 실패[PID 3.3.0 Unicode Build 2014.7.21.1에서]
1. 현상: sampleEx (12036): -2085617663:Load Library에 실패하였습니다. 해당 dll이 존재하는지 확인하십시요.
[ExtCommonApi]
2. 조치: 
 가. ExtCommonApiU.dll 파일을 다운받아서
C:\Users\TAMA\AppData\Local\TOBESOFT\MiPlatform330U에 복사
 나. PID에서 API 모듈을 등록한다. (자세한 사항은 PID Developer's Guide V3.1.doc 의 6.1 EXTAPI 관련항목 참조)   
ExtCommonApiU
버전 : 330 (ExtCommonApiU.dll)
파일버전 : 2014.12.3.1  
 조치2: 현재 PID를 삭제하고 2014.12.3.1 버전으로 설치할 것  
 ==> MiPlatform_SetupDeveloper330U_20150126_1634.exe[2015.1.27.1 => 상위 버전] 설치함
 ==> PID 버전 체크 방법 ==> Help > About PID(클릭) > About PID(새창): PID 3.3.0 Unicode Build 2015.1.27.1[확인] 
--------------------------------------------------------------------------------------------------------

- Script 확인
1. PID 3.3.0 Unicode Build 2014.12.3.1에서
 1) Base URL: D:\tama_project\sampleEx\Base\==> .\Base
 2) Script URL: D:\tama_project\sampleEx\scriptLib\==> .\scriptLib\
  
2. PID 3.3.0 Unicode Build 2015.1.27.1에서
.\DefApp\Win32\
.\DefApp\Script\ 
 1) Base URL: D:\tama_project\sampleEx\DefApp\Win32\
 2) Script URL: D:\tama_project\sampleEx\DefApp\Script\
==============================================================================================================

- Script 확인  ===> 회사 PC에서[Education ==> C:\Education\Education_ci_main_Win32.xml]
1. PID 3.3.0 Unicode Build 2014.7.14.1에서
 1) Application Groups(새창)
 가. Basic Info ==> Prefix: Base, Type: form
 나. Script
 1) Base URL: .\Base\
 2) Script URL: .\Base\  

2. PID 3.3.0 Unicode Build 2015.1.27.1에서 [Education ==> C:\Education\Education_ci_main_Win32.xml]
 1) Application Groups(새창)
 가. Basic Info ==> Prefix: Base, Type: form
 나. Script
 1) Base URL: .\Base\
 2) Script URL: .\Base\  
-----------------------------------------------------------------------------------

- Script 확인  ===> 집 PC에서
1. PID 3.3.0 Unicode Build 2014.7.14.1에서[Education ==> C:\Education\Education_ci_main_Win32.xml]
 1) Application Groups(새창)
 가. Basic Info ==> Prefix: DefApp, Type: form
 나. Script
 1) Base URL: .\Base\
 2) Script URL: .\Base\  
 ==> C:\Users\TAMA\AppData\Local\TOBESOFT\MiPlatform330U\Component에 ExtCommonApi.dll 파일이
 없어도 에러가 안남
==============================================================================================================

- XPlatform 소스 분석
1. XP9.2 Runtime 셀프스터디 최종본
2. 'XPLATFORM Pattern300' 소스와 문서
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03..05(목) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 명함 나옴((주)지아이데이타), 남형철 과장 철수해서 본사 복귀(울진)

- XPlatform 개발
1. lgDisplayPrj 프로젝트 설정 
==============================================================================================================

- 회사에 개발 서버(GIDATA-SERVER03: \\192.168.0.2) 포맷 후 OS 다시 설치 
1. Win 2008 R2 서버 포맷
2. WIN 7 Ultimate 설치
 1) 설치 후 네트워크 안 잡힘(장치관리자에서 미리 드라이버 정보 알아 놓았어야 함: 반성)
 2) 개발 서버 메인 보드 정보 ==> Tyan S5515 
http://www.tyan.com/support_download_drivers.aspx?model=S.S5515 
* Intel Core i3/ i5/ i7 series processors 
* LGA 1155/ (1)
* Unbuffered Non-ECC DDR3 / 1333/1066
* Up to 32GB
==============================================================================================================

- Oracle 11g R2 서버 재설치 ==> 회사에 있는 PC에서 
0. JDK 설치 및 설정
1. Oracle 11g R2 서버 설치 ==> D:\app\TAMA2\product\11.2.0\dbhome_1
2. 설치 후 각종 구성
 1) Database Configuration Assistant로 데이터베이스 구성 ==> 생성
 2) Net Configuration Assistant Net Configuration Assistant 구성 ==> 생성
  가. 접속 중...ORA-12514: TNS:리스너가 현재 접속 기술자에 요청된 서비스를 알지 못함 테스트를 실패했습니다.
   ==> 해결 함
 3) Net Manager 구성  ==> 생성
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.06(금) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> LG Display Prj 취소 통보

- XPlatform 개발
1. giDataPrj 프로젝트 설정

1. 로그 처리
alert("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()] ==> [e.row]"+ e.row ); 
trace("[/Notice.xfdl][divMyMenu_grdMyMenu_oncellclick()] ==> [e.row]"+ e.row );  
==============================================================================================================
 
PCOA00100: 이력정보
PCOA00101: 다국어사전등록
PCOA00102: 공통코드등록==> CoCoaCommonCodeReg.xadl  ==> 이력정보
pv_menuId = "PCOA00102"; // TEST ==> @@@
pv_menuTitle = "공통코드등록";// TEST ==> @@@ 
==============================================================================================================

- ERwin 테이블 생성 스크립트, 코멘트 추가(query 불러오기)
1. ERwin 화면 > Physical로 변환 
2. Tools > Forward Engineer > Schema Generation > Forward Engineer Schema Generation[새창] 
1) Option Set:  Default Schema Generation : Save(향후 Open해서 사용) 
2) Options: Sehema 
3) Table Filter: 36/36  ===> Preview(DB 무관 가능) or Generation(DB 연결 되어야 만 됨) 
-----------------------------------------------------------------------------------------  

- ERwin 테이블 생성 스크립트, 코멘트 추가(참조) 
1. Database > Pre & Post Scripts > Model-Level을 선택한다.  
New 로 생성후 Code 탭에서 아래 스크립트 입력  
2. 테이블과 제약조건 , 인덱스는 Tools의 첫번째 메뉴에서 생성 하고,  
코멘트 스크립트는 Tools > alter Script/Schema Generation :  Option  Comment 확인 후 생성 
3. Reverse 로 한 모델에 Properties 가져오려면 논리명을 설정한 comment 를 통해서 할 수 있음.  
Database > Pre&Post Scripts > Table-Level 
Domains Default 에서 NameInherited by Attribute > %ColumnComment 정의로 처리 
-----------------------------------------------------------------------------------------  

- 행정 정보 용어 사전 
1. http://lugenzhe.blog.me/90185306361 
==============================================================================================================

- MiPlatform 분석
1. JSP, DB 연결
D:\01. TAMA_DATA\43. Mplatform\설명 교재 메뉴얼\ecilpse Jsp Project\miplatForm\WebContent\WEB-INF
/web.xml 
D:\01. TAMA_DATA\43. Mplatform\설명 교재 메뉴얼\ecilpse Jsp Project\miplatForm\WebContent\info
/jsp 파일
D:\01. TAMA_DATA\43. Mplatform\설명 교재 메뉴얼\ecilpse Jsp Project\miplatForm\WebContent\WEB-INF\classes\miplatForm\sqlMap
/SqlMapConfig.xml 파일
==============================================================================================================
 
- ERwin R9 출시
1. 버전: ERwin R9 .5
==============================================================================================================

- 연봉 예상 실 수령액 계산하기
http://www.career.co.kr/tools/salary_calculator.asp
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.07(토) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 책 반납(조원 도서관), 거실 장판 누수 공사 완료(바닥 붙이기: 10시에 인부 2명 방문)

- Window 7 ultimate K x64 설치 ==> 집에서
- Oracle 11g R2 서버 재설치 ==> 집에서
1. Oracle 11g R2 서버 설치 ==> D:\app\TAMA2\product\11.2.0\dbhome_1
2. 설치 후 각종 구성
 1) Database Configuration Assistant로 데이터베이스 구성 ==> 생성
 2) Net Configuration Assistant Net Configuration Assistant 구성 ==> 생성
 3) Net Manager 구성 
- Oracle client 32비트 설치
==============================================================================================================
 
- TNS Listener 시작 안됨
1. 현상: 윈도우 서비스에서도 시작 시 
"로컬 컴퓨터에서 OracleOraDb11g_home1TNSListener 서비스를 시작하지 못했습니다. 
오류 3: 지정된 경로를 찾을 수 없습니다"
2. 원인: 내 컴퓨터 이름과 오라클에서 지정되있는 호스트네임이 달라서 나타는 현상
3. 조치: /tnsnames.ora 파일에서
HOST = tama_host  ==> HOST = TAMA-PC로 변경
==> 조치 후 TNS Listener 시작되고 에러가 나면 다시 돌려 놓을 것 ==>  /tnsnames.ora 파일에서
HOST = TAMA-PC  ==> HOST = tama_host로 변경 
==============================================================================================================
 
- 크롬(Crome) 비번번호 변경
1. taemario@gmail.com / hp태*1*1*
==============================================================================================================

- Xplatform 개발
1. giDataPrj 설정 에러
 1) 현상: 클래스 (ExportObject) 를 찾을 수 없습니다.
==============================================================================================================

- 노트북 인터넷 속도 체크
1. 노트북 무선으로 연결하면 10분 이상 지나야 연결됨
업로드 속도: 10Mb
다운로드 속도: 100Mb
==============================================================================================================
 
- 거실 바닥 누수(대림 문영 아파트 
1. 물새는 거실 보일러 배관만 교체하고 시멘트 발라 놓음(응급 조치만 했다고 함)
 1) 원인: 보일러 배관이 낡아서 그런 거라고 함
 2) 전체 방의 보일러 배관 교체 공사를 하면 일이 커진다고 함
 3) 보일러 오후부터 계속 틀어 놓음(24도 유지) ==> 시멘트 말라야 함
4. 주인이 64만원 들여서 도시가스 보일러 구입 
 1) 린나이 R321-25KF(64만원): 주인이 구입함 ==> 최저가: 559,420원 
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=A697926283&frm3=V2
5. 누수 원인
 1. 거실 베란다 확장 공사한다고 보일러 배관 추가 연결하는 과정에서 제대로 공사를 안해서 누수가 났다고 함.. 
6. 거실 장판 누수 공사 완료[015.03.07(토)
 1) 바닥 붙이기(10시에 인부 2명 방문)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.08(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

▦ 조기축구
06:30 기상
06:50 지하철(대림역 <-> 신사역)
07:50 신구초등학교 
08:20 숏게임
08:50 게임
10:00 게임(미드필드) ==> 2골 넣음
11:10 종료
11:30 중식(설렁탕: 뚝심한우): 오세림 고문님이 쏨 
        ==> 승렬이형이 남권이형 3천만원 채권 양도증명서로 해결 해준다고 함 --> 내일 전화할 것
12:30 종료 
12:40 상도역
13:20 귀가
19:00 석식
21:00 포항집 전화(아버지 혼자 일어나서 화장실 갈수 있다고 함 ==> 많이 호전됨)
01:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.09(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==>

- Xplatform 개발
1. Oracle SQL Developer 설치
2. 우편번호 조회 팝업(CoaZipCodePop.xfdl)
 1) 우편번호 정보 Oracle DB에 넣기
==============================================================================================================

1. 우편번호 정보
 1) 도로명 주소: (150-625)) 서울특별시 영등포구 도림천로 391 (대림동, 문영아파트) 101동 1806호 
 2) 지번 주소: (150-825)) 서울 영등포구 대림동 1061 문영칸타빌레아파트 101동 1806호 

- 우편번호 정보 조회
SELECT COUNT(*) FROM TB_ZIPCODE
--;  

- 우편번호 정보 테이블 생성
CREATE TABLE TB_ZIPCODE  (
   SEQ                  NUMBER(10)  NOT NULL,// 데이터 순서                     
   ZIPCODE              VARCHAR2(50),//우편번호
   SIDO                 VARCHAR2(50),// 광역 시도
   GUGUN                VARCHAR2(50),// 시, 군, 구
   DONG                 VARCHAR2(50),//읍, 면, 동
   BUNJI                VARCHAR2(50),// 번지(아파트 동, 호수)
   CONSTRAINT PK_ZIPCODE PRIMARY KEY (SEQ)
) 
==============================================================================================================

- Debugging 기능(Xplatform에서)
F5: Project 전체를 Debug 모드로 실행합니다.==> 중요 @@@
F6: 화면을 Debug 모드로 실행합니다.==> 중요 @@@
F9: Break Point를 설정합니다. 
F10: 다음 라인으로 진행합니다.==> 중요 @@@
F11: Function안으로 진입합니다. 
Shift+F11: Function 밖으로 나갑니다.
F5(라인 추적 중에): 다음 Break Point까지 진행합니다.
Shift+F5: Debug 모드를 종료합니다.  
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.10(화) 작업 ■■■■■■■■■■■■■■■
---> 07:40 ~ 19:00 ==> 중식(뚝불: 사장님이 사줌)

- Xplatform 개발
1.  우편번호 등록(CoaZipCodePop.xfdl)
 1) 개발자 정의 함수 
lfn_onload// 공통 스크립트 함수(Library)
rfn_ReportInit();   // 리포트    
 2) 저장 처리 ==>   
  가. 오라클 DB에서 저장시 SEQ 처리
SQL = "INSERT INTO TB_ZIPCODE (SEQ, ZIPCODE, SIDO, GUGUN, DONG, BUNJI) VALUES ( " + 
"  (SELECT NVL(MAX(SEQ),0)+1 FROM TB_ZIPCODE) as SEQ,  " +  // 순서 
"'" + dsGet(ds,i,"ZIPCODE" ) + "'," + // 우편번호
"'" + dsGet(ds,i,"SIDO"   ) + "'," +  // 광역 시도
"'" + dsGet(ds,i,"GUGUN" ) + "'," +// 시, 군, 구 
"'" + dsGet(ds,i,"BUNJI") + "' )";// 읍, 면, 동 
 3) 수정 처리 ==> 성공 
 4) 삭제 처리 ==> 성공 
 
- transaction 처리
this.transaction( "trSave"// 01. tr 구별 ID
, "http://www.xplatform.co.kr:8080/edu/nexacro/employees_save.jsp?full_name="// 02. 트랜잭션을 요청할 주소
//, "DataURL::employees_save.jsp?full_name="
, "in_ds=ds_emp:u"// 03. 트랜잭션을 요청할 때 입력값으로 보낼 데이터셋의 ID[등록, 수정, 삭제시]("in_ds=ds_emp in_ds2=ds_aa")
, "ds_emp=ds_employees"// 04. 트랜잭션 처리 결과를 받을 데이터셋의 ID("ds_emp=ds_employees ds_dept=ds_aa") 
, "sVall=AA"// 05. 트랜잭션을 위한 인자("sVall=AA sVall2=BB"), ( "sVall='"+ sName +"' ==> "sVall="+ nexacro.wrapQuote(sName) +")
, "fn_callback");   // 06. 트랜잭션의 결과를 돌려줄 함수의 이름(fn_callback)
//, "bAsync";   // 07. 비동기 여부를 지정(bAsync => Default : true )
//, "nDataType";   // 08. 전송할 형태를 지정(fn_callback) Default : 0 => 0(XML 타입),1(Binary 타입), 2(SSV 타입)
//, "bCompress");   // 09. 통신시 PostData를 압축할지 여부를 지정(bCompress)=> Default : false) 
==============================================================================================================

- substring 메서드 정의
public String  substring(int beginIndex, int endIndex)
1. beginIndex - 개시 인덱스 (이 값을 포함한다)
2. endIndex - 종료 인덱스 (이 값을 포함하지 않는다) 
"hamburger". substring(4, 8) returns "urge" 
"smiles". substring(1, 5) returns "mile" 

String str = "안녕하세요";
String result = str.substring(str.length()-2, str.length());    // str.substring(3, 5) 가 되겠져 
결과: 결과 : 세요  // str 문자열의 3번째 부터 5번째 전까지 가져와라.  

- Xplatform에서 substring() 사용
expr 구문에서 substring()을 사용하기 위해서는 toString으로 Column의 값을 String형태로 형변환을 해주셔야 합니다.
ex) expr:Column0.toString().substring(0,4) +'-'+Column0.toString().substring(4,6)+'/'+Column1
 
expr:ZIPCODE.toString().substring(0,3)
expr:ZIPCODE.toString().substring(4,7)
==============================================================================================================

- expr를 사용한  fn_code() 함수 처리 @@@
expr:fn_code(ZIPCODE, 1)
function fn_code(strZipcode, strNo)
	{ 
	var strZipcodeNew = "" 
	var strZipcode_2 = wrapQuote(strZipcode); 
	strZipcodeNew = "152";
	 
	if(strNo == "1") { 
	strZipcodeNew = strZipcode_2.substring(1,4);
	trace("[/CoaZipCodeReg.xfdl][fn_code()_01_1]==> [strZipcode_2]"+ strZipcode_2 +"[strZipcodeNew_90]"+ strZipcodeNew );
	}
	else { 
	strZipcodeNew = strZipcode_2.substring(5,8);
	trace("[/CoaZipCodeReg.xfdl][fn_code()_01_1]==> [strZipcode_2]"+ strZipcode_2 +"[strZipcodeNew_90]"+ strZipcodeNew );
	}  

	return strZipcodeNew;
}
==============================================================================================================

- 집 난방[문영APT 1806호, 린나이 R321-25KF](2015.03.10)
1. 외출 ==> 온돌난방(물의 온도를 감지) 설정
2. 온수: 저 ==> 씻을 때(목욕)
--------------------------------------------------------------------------------------------
- 경동 나비엔 보일러 배관 구조[순서: 오른쪽에서 왼쪽으로]
1. 현재 사용
2. 침실3(태만방)  ==> 밸브 1/3 만 오픈
3. 거실1
4. 거실2
5. 침실1(안방)
6. 침실1(안방)
7. 침실2(수종방) ==> 밸브 1/2 만 오픈 
========================================================================================================= 

- 집 난방[문영APT 1806호, 린나이 R321-25KF]  ==> 겨울철 일 경우
1. 난방온도: 20도 ==> 실온난방(방안의 온도을 감지) 설정
2. 온수: 저 ==> 씻을 때(목욕)
--------------------------------------------------------------------------------------------

- 경동 나비엔 보일러 배관 구조[순서: 오른쪽에서 왼쪽으로]
1. 현재 사용] 
2. 침실3(태만방)  ==> 밸브 1/3 만 오픈
3. 거실1
4. 거실2
5. 침실1(안방)
6. 침실1(안방)
7. 침실2(수종방) ==> 밸브 1/2 만 오픈 
========================================================================================================= 
 
- 실온난방: 실내온도센서로 방안의 온도을 감지하여 실내온도를 조절하는 방식(방안의 온도을 감지)
- 온돌난방: 보일러에서 나오는 물의 온도를 감지하여 방바닥의 온도를 조절하는 방식(물의 온도를 감지)
==============================================================================================================

- 최신 우편번호 DB자료
http://www.epost.go.kr/search/zipcode/newAddressDown.jsp 
==============================================================================================================

- 공인증서 복사[PC OS 재설치(SC은행)]
1. 공인인증센터> 스마트폰(브리즈) 인증서 복사
https://open.standardchartered.co.kr/service/cert/CtBreezeExport03?langCode=KR  
==> 인증번호: 3577-4204
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.11(수) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 ==>  

- Xplatform 개발
1. 우편번호 등록(CoaZipCodePop.xfdl)   
 1) 저장 처리 ==> 성공    
 2) 수정 처리 ==> 성공 
 3) 삭제 처리 ==> 성공
==============================================================================================================

- default_typedef 파일 로딩 에러
1. 현상: Version of the file is not available in UXStudio9.2 [C:\eduPrj\work\eduPrj\Web\giDataPrj\default_typedef.xml]
2. 조치: default_typedef.xml 파일 수정
==============================================================================================================

- MSI 노트북 내장 터치패드 사용 안함 설정
http://hajunggu.blog.me/150161969625
http://blog.naver.com/PostList.nhn?blogId=tamario&from=postList&categoryNo=41  
1. 드라이버 다운로드 및 설치 ==> 개인 노트북
http://drivers.synaptics.com/Synaptics_v17_0_19_C_XP32_Vista32_Win7-32_XP64_Vista64_Win7-64_Acme_Inc.zip
2. Fn+ F3: 터치패드 사용 안함 설정 ==> 개인 업무용 노트북
3. Fn+ F10: 인터넷 무선 연결(에러 내용: 무선 기능이 꺼져있습니다) 
==============================================================================================================

- ORA-00054 에러
1. 현상: ORA-00054: 리소스가 사용 중이어서 NOWAIT가 지정되었거나 시간 초과가 만료된 상태로 획득합니다.  
00054. 00000 - "resource busy and acquire with NOWAIT specified"
2 조치: SESSION KILL 처리(system / gidata1107A#로 로그인할 것)
--# SESSION KILL 
SELECT A.SESSION_ID AS SESSION_ID, B.SERIAL# AS SERIAL_NO,  
            A.OS_USER_NAME AS OS_USER_NAME, A.ORACLE_USERNAME AS ORACLE_USERNAME, B.STATUS AS STATUS 
FROM V$LOCKED_OBJECT A, V$SESSION B 
WHERE A.SESSION_ID = B.SID
--;

ALTER SYSTEM KILL SESSION '7, 439'   --// 'SESSION_ID, SERIAL_NO'
--;
==============================================================================================================

- 메뉴 등록 방법
1. /globalvars.xml 파일에 등록
<Row>
<Col id="ADMIN_FLAG">N</Col>
<Col id="MENU_LEVEL1_CD">FA</Col>
<Col id="UP_MENU_CD">FAB001</Col>
<Col id="MENU_NM">이력정보</Col>
<Col id="FULL_PATH_NM">>취업정보>이력>이력>이력마스터</Col>
<Col id="PGM_PATH_NM">fa_gab_psnr</Col>
<Col id="MENU_LEVEL">4</Col>
<Col id="MULTI_IMPL_YN"/>
<Col id="PGM_VAR_NM">FAB001001</Col>
<Col id="PGM_FILE_NM">FabPsnMstReg.xfdl</Col>
<Col id="HELP_PATH_NM"/>
<Col id="MENU_CD">PFAB00101</Col>
<Col id="PERSONAL_INFO_INCL_FLAG">Y</Col>
<Col id="MULTI_ABB_NM">이력정보등록</Col>
<Col id="RESP_DEV_PSN_NM">진태만</Col>
</Row>  

 1) MyMenu 등록
<Dataset id="gds_MyMenu2">
    <ColumnInfo>
      <Column id="MENU_NM" type="STRING" size="255"/>
      <Column id="MENU_CD" type="STRING" size="255"/>
    </ColumnInfo>
    <Rows>
<Row>
        <Col id="MENU_NM">이력정보</Col>
        <Col id="MENU_CD">PFAB00101</Col>
      </Row>
</Dataset>
2, URL 등록   
<Service prefixid="DataURL_FA" type="JSP" url="http://127.0.0.1:8080/" version="0" communicationversion="0" cachelevel="none"/> 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.12(목) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 18:30 ==> EUFA 챔스리그 16강 2차전(04:45 => 첼시 3: 3 파리생제르망) ==> 연장, 첼시 탈락

- Xplatform 개발
1. 이력정보(PFAB00101,  /FabPsnMstReg.xfdl(fa_fab_psnr)  ==> /career_sel.jsp
2. 공통코드등록(PCOA00102,  /CoaCommonCodeReg.xfdl(co_coa_code)
2. 인사마스터(GAB003002,  /GabPsnMstReg.xfdl(ga_gab_psnr)
==============================================================================================================

- giData Prj DB 스키마
- 사원 정보 
- 학력 정보 
- 자격증 정보 
- 주소 정보 
- 회사 정보
- 교육 정보
- 보유기술 정보
- 프로젝트 정보
==============================================================================================================

- 오라클 내장함수 INSTR()  
--형식 : INSTR(문자열1, 문자열2, 숫자1, 숫자2) 
--뜻    : 문자열1에서 문자열2가 숫자1인덱스(마이너스일때는 문자열1의 뒤에서부터 인덱싱)에서 숫자2번째  
--        나타났을때의 인덱스 값 반환  

SELECT INSTR('010-1111-0898', '-', 1, 1)  FROM DUAL     --//  '-' 이 위치한 첫번째 자리수를 리턴  ==> 4
--;  
SELECT INSTR('-''010-1111-0898', '-',1, 2)  FROM DUAL         
--// 문자열1('-010-1111-0898)에서 '-' 이 위치한 2번째 자리수를 리턴합니다.   ==> 5
--; 
SELECT INSTR('010-1111-0898', '-',1, 2)  FROM DUAL 
--// 문자열1('010-1111-0898)에서 '-' 이 위치한 2번째  자리수를 리턴합니다.   ==> 9
--; 
SELECT INSTR('-''010-1111-0898', '-',1 ,3)  FROM DUAL        
--// 문자열1('-010-1111-0898)에서 '-' 이 위치한 3번째  자리수를 리턴합니다.   ==> 5
--;  
SELECT TRIM(SUBSTR('010-1111-0898',  1, 
INSTR('010-1111-0898''-','-',1,1) -INSTR('-' '010-1111-0898','-',1,1)))  FROM DUAL    
--// 문자열1('010-1111-0898)에서 첫번째 위치부터 3글자를 잘라 리턴  ==> 010
--;  
SELECT TRIM(SUBSTR('010-1111-0898',  INSTR('-''010-1111-0898','-',1,2),  
INSTR('010-1111-0898''-','-',1,2) -INSTR('-' '010-1111-0898','-',1,2)))  FROM DUAL   
--// 문자열1('010-1111-0898)에서 4번째 위치부터 4글자를 잘라 리턴  ==> 1111
--;  
SELECT TRIM(SUBSTR('010-1111-0898',  INSTR('-''010-1111-0898','-',1,3), 
INSTR('010-1111-0898''-','-',1,3) -INSTR('-' '010-1111-0898','-',1,3)))  FROM DUAL   
--// 문자열1('010-1111-0898)에서 4번째 위치부터 4글자를 잘라 리턴  ==> 0898
--; 
----------------------------------------------------------------------------------------------------

- 오라클 내장함수 SUBSTR()
SELECT SUBSTR('010-1111-0898', 5, 4) FROM DUAL     --// 문자열('010-1111-0898)에서 5번째 위치부터 4글자를 잘라 리턴  ==> 1111
--;  

-- 01. 사원  정보 조회 @@@@@@@@@@@@@  
SELECT  '' as CHK, RESNO, SUBSTR(RESNO, 0, 6) as RESNO_1, SUBSTR(RESNO, 7, 14) as RESNO_2
   , NM, BLNG_CO, INCO_DATE, MLSR, EMAIL
            , HP, TRIM(SUBSTR(HP,  1,  INSTR(HP'-','-',1,1) -INSTR('-' HP,'-',1,1))) as HP_1
            , TRIM(SUBSTR(HP,  INSTR('-'HP,'-',1,2),  INSTR(HP'-','-',1,2) -INSTR('-' HP,'-',1,2))) as HP_2
            , TRIM(SUBSTR(HP,  INSTR('-'HP,'-',1,3),  INSTR(HP'-','-',1,3) -INSTR('-' HP,'-',1,3)))  as HP_3
            , TEL, TRIM(SUBSTR(TEL,  1,  INSTR(TEL'-','-',1,1) -INSTR('-' TEL,'-',1,1))) as TEL_1
            , TRIM(SUBSTR(TEL,  INSTR('-'TEL,'-',1,2),  INSTR(TEL'-','-',1,2) -INSTR('-' TEL,'-',1,2))) as TEL_2
            , TRIM(SUBSTR(TEL,  INSTR('-'TEL,'-',1,3),  INSTR(TEL'-','-',1,3) -INSTR('-' TEL,'-',1,3)))  as TEL_3
            , POST_NO, SUBSTR(POST_NO, 0, 3) as POST_NO_1, SUBSTR(POST_NO, 4, 8) as POST_NO_2
             , ADDR, ADDR_2
FROM TB_EMP_INFO
WHERE 1 = 1 
--;  
==============================================================================================================

- TOAD] 오라클 토드 단축키
1. Ctrl+Shift+F : 쿼리문을 보기좋게 정렬  
==============================================================================================================

- fiddler 사용법
1. http://dsiol.blog.me/120177646288 에서 다운로드 받음
2. Fiddler는 Web Debugging 툴입, 웹에서 어떤 오류가 나왔을시 원인 파악을 하는 툴. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.13(금) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 중식(굴국밥: 사장님이 사줌)

- Xplatform 개발
1. 이력정보(PFAB00101,  /FabPsnMstReg.xfdl(fa_fab_psnr)  ==> /career_sel.jsp
 1) 등록, 수정, 삭제 처리 
==============================================================================================================

- 다중 삼항식
getRowType(currow) == 2 ? 'combo' : ( pbsh_day != null && pbsh_day != "") 
 ( pbsh_stte_code == '244001'  pbsh_stte_code == '244002') ? 'none' : 'combo' 
컬럼명.toString().length==6?'####-##':컬럼명.toString().length==8?'####-##-##':''
이와 같이 삼항연산 이중조건으로 처리하시길 바랍니다.
==============================================================================================================

- Grid에서 checkbox(네모)가 체크 안됨
1. 원인: 조회에서 CHK 필드를 조회 안 해옴
2. 조치: CHK 필드 추가
String SQL="SELECT '' as CHK, EMP_SEQ, RESNO ";    
SQL = SQL +", ADDR, ADDR_2 "  ;  
SQL = SQL +" FROM TB_EMP_INFO "  ;  
rs = stmt.executeQuery(SQL);

/********* Dataset **********/ 
DataSet ds = new DataSet("DS_EMP_INFO");
ds.addColumn("CHK"   ,DataTypes.STRING  ,(short)7   );// CHK
 
while(rs.next())
{
int row = ds.newRow(); 
ds.set(row ,"CHK"    , "0"  );// CHK
}
==============================================================================================================

- 프린터 연결[(주)지아이데이타 본사]
1. HP Officejet Pro 8660 ==> http://[fe80::a22b:b8ff:fe6d:627e]/
http://support.hp.com/kr-ko/drivers/selfservice/hp-officejet-pro-8660-e-all-in-one-printer-series/5398139/model/5387678
==============================================================================================================

- 물건 받기(12시, 선릉역 6번 출구)
1. (주)지아이데이타 직원 요청(구종식 부장: 010-9701-0107)
2. 12시에 선릉역 6번 출구에 가서 11만원 주고 가방만 받아옴(010-5904-7997)
==============================================================================================================

- 전체 회식((주)지아이데이타, 19시)
1. 일시 :  2015-03-13(금) 오후7시
2. 장소 : 
 1) 1차: 유쿡(보쌈감자탕족발[강남구 역삼동 702-25]: 02-567-5006)==> 참석: 사장님, 김이사님, 구종식 부장
           , 안상현 부장(010-8294-1969)
 2) 2차: 술집
 3) 3차; 포장 마차  ==> 종료(12:30)
 4) 12:45: 역삼역
 5) 01:00: 서울대입구역(걷기)
 6) 02:30: 귀가
 7) 02:40: 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.14(토) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 

- 면접
09:00 기상
10:00 KT 인터넷 고장 신고로 기사 방문 ==> 인터넷은 문제 없다고 함. 네트워크 카드 문제로 추정
10:20 종료
13:50 중식(라면) 
14:45 집출발
15:30 김포공항역 도착
16:00 면접
16:30 종료
17:30 귀가
18:00 장보기(남구로시장)
19:00 석식
00:00 취침
==============================================================================================================

- KT 인터넷 고장(9시) 
1. 현상
 1) 노트북을 켜면 인터넷은 되는데 제어판\네트워크 및 인터넷\네트워크 및 공유 센터가
 안 열리고 IE가 안 열림(Crome)은 됨
 2. 조치
  1) 기사가 오전에 방문: 인터넷 된다고 철수함
  2) 네트워크 드라이브 다운 받아서 다시 설치
   가. MSI GE60_2OE ==> http://www.msi.com/support/nb/GE60-2OE.html#down-driver&Win7 64
---------------------------------------------------------------------------------------------------------

- 인터넷 체크
C:\Users\TAMA> ipconfig 
Windows IP 구성
무선 LAN 어댑터 무선 네트워크 연결: 
   연결별 DNS 접미사. . . . :
   링크-로컬 IPv6 주소 . . . . : fe80::ed44:9094:60d4:6c9e%20
   IPv4 주소 . . . . . . . . . : 192.168.0.15
   서브넷 마스크 . . . . . . . : 255.255.255.0
   기본 게이트웨이 . . . . . . : 192.168.0.1

C:\Users\TAMA> ping 192.168.0.15 -t  
Ping 192.168.0.15 32바이트 데이터 사용:
192.168.0.15의 응답: 바이트=32 시간<1ms TTL=128
192.168.0.15의 응답: 바이트=32 시간<1ms TTL=128 
==============================================================================================================

- 면접(16시) @@@
1. 인천공항 항공기 관제시스템 면접
 1) 장소: 김포공항 엔제리너스 커피숍 
 2) 일시: 3월14일 16시
 3) 기타: 장경진 차장: 010-2352-0980, 강병 규PM: 010-9489-2537
 4) 내용
  가. 12월까지 인천공항 근처에서 개발
  나. Xplatform 난이도가 높은 개발
  다. 면접 합격하면 4월 1일 부터 근무 예상
---------------------------------------------------------------------------------------------------------

- 김포공항 면접
1. 대림역(7-4) => 영등포구청역(5호선 환승) => 김포공항역(403, 1번 출구) => 엔제리너스 김포공항 1층점
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.0315(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

▦ 조기축구
06:00 기상
07:00 지하철(대림역(7호선) -> 장한평역)
        ==> 대림역(7호선, 5-2) -> 군자역(5호선, 4-3) -> 장한평역(3번 출구) -> 장평중학교(1시간 14분, 25,5km, 13,500원) 
08:10 도착
08:30 게임(장평FC, 3게임함) ==> 김밥 1줄 반 먹음(5줄 사가지고 옴: 태훈이형이 사가라고 함) 
11:30 종료 
12:10 중식(삼겹살) ==> 조기회에서 쏨(결제 금액이 40만원씩이나 나왔다고 함)
13:30 종료
13:40 영희형 차
14:00 당구장(신사역 근처) ==> 병규형, 영석이형하고 30 놓고 쳐서 1등함
16:00 종료
16:20 영태형 차(신구초교 인조 잔디 운동장 설치 진행중(1달 소요), 서울FC에서 계속 추진, 평일에 축구 못함)
17:30 귀가
17:30 석식
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.16(월) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> 김문경씨와 면담(9시)

- Xplatform 개발
1. 이력정보(PFAB00101,  /FabPsnMstReg.xfdl(fa_fab_psnr)  ==> /career_trl.jsp
 1) 파일 처리 
==============================================================================================================

- Oracle 11g R2 Client 설치(32bit)
\\192.168.0.14\GIDATA_FileServer\Programs\03_Database\Oracle\win32_11gR2_client.zip 설치할 것 
http://blog.naver.com/sensate1024/40161604732
==============================================================================================================
 
-  BLOB is deprecated
1. The method getBinaryOutputStream() from the type BLOB is deprecated 
getBinaryOutputStream  ==> setBinaryStream(long pos)
 
public java.io.OutputStream setBinaryStream(long pos)
                                     throws java.sql.SQLException 
JDBC 3.0 Retrieves a stream that can be used to write to the BLOB value that this Blob object represents.
The stream begins at position pos.Specified by:setBinaryStream in interface java.sql.BlobParameters:
pos - the position in the BLOB value at which to start writing 
-------------------------------------------------------------------------------------------------------

- deprecated 선언 
1. The method setBackgroundDrawable(Drawable) from the type View is deprecated 
와 같은 경고와 함께 취소선이 난다면  그것은 바로 얼마 지나지 않아 메소드를 삭제할 거라는 뜻  
대표적인 안드로이드 deprecated 속성으로는 fill_parent 가 있다 이 fill_parent는 언젠가 사라질 것이므로 
match_parent를 사용하도록 하자  
2. Deprecated가 표시된 메소드가 더 이상 사용되지 말아야 함을 가리킨다. 컴파일러는 프로그램이 
비추천(deprecated) 메소드나 클래스 혹은 변수를 사용할 때마다 경고를 발생시킨다.  
==============================================================================================================

- JAVA BLOB
http://blog.naver.com/jihoon8912/220239715415
https://docs.oracle.com/cd/E18283_01/appdev.112/e13995/overview-summary.html
http://dalki0126.blog.me/220075569999
==============================================================================================================

-- 테이블 유저(USER) 검색  ===> SQL PLUS에서 실행할 것 @@@
SELECT OWNER, OBJECT_NAME 
FROM DBA_OBJECTS  
WHERE OBJECT_TYPE='TABLE' 
    AND OWNER='GIDATA' 
--; 

-- 자신이 소유한 테이블만 검색  
SELECT * FROM TAB
--;  
-----------------------------------------------------------------------------------------------------

--  1. 테이블 조회 권한 주기 [SELECT]    ===> SQL PLUS에서 실행할 것 @@@
GRANT SELECT ON TB_EMP_INFO TO TAMARIO    ---// 권한 줄 테이블명 TO 권한 받을 사용자계정;  
--;   

--2. 테이블 입력이나 수정 삭제의 권한을 부여 [INSERT , UPDATE , DELETE ] 
GRANT  SELECT, INSERT , UPDATE , DELETE  ON TB_EMP_INFO TO TAMARIO
--; 

3. FUNCTION 실행 권한 주기 [execute]  
GRANT EXECUTE ON 권한 줄 함수명 TO 권한 받을 사용자계정;

-- 권한 해제 
REVOKE SELECT ON EMP FROM USER01--EMP테이블에 설정된 USER01의 SELECT권한 해제
--; 

SELECT * FROM USER_TAB_PRIVS_MADE-- USER01의 권한 확인
--; 
http://blog.naver.com/seotaji/80199974453 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.17(화) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

- 루옌, 수종 입국
08:00 기상
09:10 집출발(자전거) ==> 대림역 --> 신도림역 --> 영등포역 --> 서울교 --> 여의도 --> 마포대교
       --> 원효대교 남단(자전거로 계단, 육교로 지나감) --> 용산 전자랜드 --> MSI 노트북 서비스센터
       (서울 용산구 청파로 112 나진상가 15동[선린프리자 21동 맞은 편], T: 1644-4038)
10:20 MSI 노트븍 수리 요청 ==> 네트워크 드라이브가 잘못 설치됨(OS를 다시 설치하라고 함)
11:30 종료
13:40 귀가
13:50 중식(라면)
14:10 집 청소
14:50 종료
14:55 집출발(유모차 가지고 감)
15:10 대림역(3-2) --> 홍대입구역(1-1) --> 인천공항역
16:30 인천공항 도착(입국: C)
14:40 SK 텔레콤 서비스 센터 직원과 상담 ==> 루옌 휴대폰 중지 한달3,850원) 요금에 대해 싸움
      ==> 2월 9일 ~ 3월 17일은 한달 사이에 끼여서 기본 요금이 부과 된다고 함
17:45 장모님, 루옌, 수종 도착(4시 30분 도착 예정: 1시간 15분 연착됨)
      ==> 비행기 여독에 모두 피곤해 함, 수종 더 건강해짐
18:12 6003번 공항버스(짐이 많이서 버스 탐) ==> 카드 요금: 8,800원
19:45 대림역 도착  ==> 짐이 너무 많아서 유모차에 싣고 옴
20:00 귀가
21:00 석식(라면)
21:10 응아 네 도착(베트남에서 가져온 옷, 짐 찾아 감) 
22:30 취침
==============================================================================================================
 
- MSI 노트븍 수리(10시, 용산 전자상가) 
1. 현상
 1) 노트북을 켜면 인터넷은 되는데 제어판\네트워크 및 인터넷\네트워크 및 공유 센터가
 안 열리고 IE가 안 열림(Crome은 열림)  ==> 20분 정도 걸리면 열림
 2. 원인: 네트워크 드라이브가 잘못 설치됨
 3. 조치: 
  1) A/S 기사가 테스트로 노트북에 다른 하드 붙여서 OS와 네크워크 드라이브를 잡음 ==> 문제 없음 
  2) OS를 다시 설치하라고 함 ==> 네트워크 드라이브 설치시 꼭 재시작할 것
  3) A/S 기사가 노트븍 드라이브를 D 드라이브에 복사해 줌
  4) MSI GE60_2OE(참고) ==> http://www.msi.com/support/nb/GE60-2OE.html#down-driver&Win7 64
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.18(수) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> OS 재설치(21시, 집에서)
 
- Xplatform 개발
1. gidata 프로젝트 메뉴얼 작성
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.19(목) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> 
 
- XConverter 개발
1. Mi -> Xp로 변환 해주는 Converter 툴( (주)예스커뮤니케이션에서 개발)
2. (주)예스커뮤니케이션: 교육(강경민 부장[중식(육계장) 사줌]: 010-3295-8004, puzzlej@yesc.co.kr)
3. 이석부 사장님과 9시 반에 만나서 같이 사무실에 들어감
4. 오태범 사장이 과거 케이티원에서 같이 근무 함(철산 집들이, 최동준씨)
---------------------------------------------------------------------------------------------------------

- Mi -> Xp 변환시 에러
1. case default:  ==>  default:
2. File is Not found ERROR
 1) 현상: grid::common.js  --> File is Not found
 2) 원인: Mi 소스에서 #include를 설정했는데 파일이 존재하지 낳는 경우 
 #include "grid::common.js";
 3) 조치: Mi에서 파일 찾아 보고 없으면 무시할 것
3. AllWindows
 1) 현상: var objForms = /*  AllWindows은 지원되지 않는 메서드입니다.*/ AllWindows(Formid);
 2) 조치: var arrFramelist = application.mainframe.VFrameSet0.all; //프레임 구조에 따라 변경하시면 됩니다.
var childframe = arrFramelist[0]; 
4. /* Window 객체를 지원하지 않습니다. Title은 지원되지 않는 메서드입니다.*/ //Window.Title = "xdtdssf";
 1) 현상: var objForms = /*  AllWindows은 지원 X .*/ AllWindows(Formid);
 2) 조치: 폼 타이틀 작성  
function Admin_Category_OnLoadCompleted(obj:Form, e:LoadEventInfo)
{ 
obj.titletext = "Admin_Category_3";   // 폼 타이틀 작성
}
5. Domain 객체를 지원하지 않습니다.
1) 현상: Transaction("Select","ServerDB::tobe_localdb_download.asp","","ds_category=ds_category 
ds_category_program=ds_category_program ds_program_join=ds_program_join 
ds_programlist=ds_programlist","","fn_callback");
  2) 조치: Xplatform 조회 방식으로 변경하면 될 것 같음
  function fn_getPlaceDivCodes()
{
    var trID = "GABPSNR_pSearchPlaceDiv";
    var cmdGrpCd = 'GAB002';
gfn_Transaction("PALACE_DIV_CODE_SEARCH"
,serviceFaTarget
,""
,"DS_PLACEDIV_LIST=RS_PLACEDIV"
,"ncTrId=" + trID + " CMN_GROUP_CD=" + cmdGrpCd
,"fn_resultCodes");      
}

6. /* Window 객체를 지원하지 않습니다. Title은 지원되지 않는 메서드입니다.*/ //Window.Title = "xdtdssf";
 1) 현상: var objForms = /*  AllWindows은 지원 X .*/ AllWindows(Formid);
 2) 조치: 폼 타이틀 작성  
function Admin_Category_OnLoadCompleted(obj:Form, e:LoadEventInfo)
{ 
	obj.titletext = "Admin_Category_3";   // 폼 타이틀 작성
}

7. ImageID
 1) 현상: if(/*  ImageID은 지원되지 않는 속성입니다.*/ ToLower(Image2.ImageID)=="left_icon2") 
 2) 조치: Image2.ImageID
//Image2.ImageID = "http://~~~/***.jpg"+"?a="+timem();
==============================================================================================================

- Xplatform 재설치
1. UXStudio92 설치
- MiPlatform 재설치
1. PID V3.2.0 Unicode 설치
==============================================================================================================

- AIG 생명 Proj 공통 투입(9시, 시청)
1. XConverter 툴 교육
 1) (주)예스커뮤니케이션: 교육(강경민 부장: 010-3295-8004, puzzlej@yesc.co.kr)
 2) (주)예스커뮤니케이션[오태범 사장: 서울 마포구 상암동 1622 종소기업 DMC타워 807호]: 
   디지털미디어시티역 8번 출구 ==> http://www.jobkorea.co.kr/Recruit/Co_Read/C/yesteam?Oem_Code=C1
 3) AIG 생명 프로젝트 사무실: 시청역 9번 출구 ==> 부영 빌딩 앞(장영민 영업대표: 010-5201-9403)
  가. 대림역 -> 시청역(150번 버스)
==============================================================================================================

- 비밀번호 관리
1. 라스트패스(LastPass)[무료] ==> 설치 --> https://lastpass.com/misc_download2.php
C:\Users\Administrator\AppData\LocalLow\LastPass\iehome2.html
1) LassPass ==> taemario@gmail.com / s*j*m3**0A 
https://lastpass.com/?&ac=1&lpnorefresh=1&fromwebsite=1&newvault=1&nk=1 ==> taemario@gmail.com / s*j*m3**0A

2. 로보롬(Roboform)[유료]   
==============================================================================================================
 
- 고용보험; https://www.ei.go.kr/ei/eih/cm/hm/main.do  ==> tamario12 / hpxo**1*!@
==============================================================================================================

3. 구글(크롬[crome])
https://www.google.com ==> taemario@gmail.com / hp수*1*1*
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.20(금) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> DB 재설치(22시, 집에서), 베트남 커피 사장님에게 선물
 
- XConverter 개발
1. XConverter 프로젝트에서 공통의 역할
 1) Frame 설정
 2) 프로그램이 돌아가게 해야 함 ==> 로그인 DB 연결할 것
 3) 에러나는 공통 xjs 파일 수정
==============================================================================================================

- Frame 설정 연습 ==> OK 
==============================================================================================================

- 로그인 DB 연결할 것 ==> OK
==============================================================================================================

- 주말 공부
1. Xplatform Frame 소스 분석
2. Xplatform 배포 동영상 시청
3. MiPlatform 동영상 시청
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.21(토) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00 ==> 프엉씨 딸 돌잔치

- 주말
08:00 기상
08:20 이발, 염색
09:10 종료
09:20 집출발(루옌, 수종, 장모님)
10:20 대림역 ==> 가산디지털단지역(환승) ==> 오산역
12:00 오산 컨벤션웨딩홀 부페 3층 도착
12:20 프엉씨, 종현씨 만남 ==> 부주 10만원 함(손님 많이 안 옴)
12:30 중식(부페)
12:50 응아 부부 도착
13:10 돌잔치 행사 ==> 프엉 애기(공지유) 판사 봉을 잡음
14:30 프엉씨 언니 병규형에게 중매 서기로 함(부모님 동의, 사진 받음)
14:40 종료
15:00 오산역 ==> 가산디지털단지역(환승) ==> 대림역
17:00 귀가
17:20 오라클 설치 후 네트워크가 20분 후에 열리는 문제 원인 파악 ==> OS 다시 설치해야 함
20:30 장인 어른 마중(대림역 4번 출구)
20:50 기저귀 구입 ==> 하기스 매직 팬티 5단계 남아용(27매): 기흥M ==> 19,500원(비쌈)
21:00 귀가
23:00 취침
==============================================================================================================

01. 분유 구입  ==> 완료
1. 홈플러스온라인몰 남양 임페리얼 드림 XO World Class 4단계 800g 남양유업, 가격: 56,750원(갠당 18,970원): 옥션
https://ssl.auction.co.kr/common/OrderConfirm.aspx?PayNo=820184288&type=C
2. 하기스 보송보송 팬티 5단계((31px3팩), 가격: 32,490원(개당 363원): G마켓
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=540178381
==============================================================================================================

- 오라클 설치 후 네트워크가 20분 후에 열리는 문제 
1. 현상
 1) 노트북을 켜면 인터넷은 되는데 제어판\네트워크 및 인터넷\네트워크 및 공유 센터가
 안 열리고 IE가 안 열림(Crome)은 됨
2. 원인
  1) 디스크 관리에서 물리 디스크를 강제적으로 논리 디스크를 만듬
3. 조치
  1) 디스크 관리에서 물리 디스크를 논리 디스크로 다시 바꿈
  ==> 오라클 DB를 D 드라이브에 깔았는데 논리 디스크를 변경되면서 F 드라이브에 깔린 것으로 나옴
    (오라클 삭제하거나 OS 다시 설치해야 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.22(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

▦ 조기축구
06:30 기상
06:50 지하철(대림역 <-> 신사역)
07:50 신구초등학교  ==> 병규형에게 프엉씨 언니 소개 시켜 준다고 이야기 함(기뻐함)
08:20 숏게임
08:50 게임 ==> 컨디션 안 좋음==> 축구 용품 재활용 쓰레기통에 넣어서 창원이형 옛날 가게 밑에 보관함
11:10 종료
11:30 중식(국밥: 뚝심한우, 만두): 병규형이 쏨  
12:50 종료 
13:10 상도역
14:20 귀가
14:50 낮잠 ==>장인 어른 공장으로 감
17:50 기상
18:20 택배 보내기 ==> CU 대림점
18:40 장보기(루옌)
19:30 석식
01:00 취침
============================================================================================================== 

- 택배 보내기 (CU 대림점)
1. 허우(의정부) 옷: 2015030000006  ==> 선불: 4,600원
2. 타오(광주, 사촌) 옷: 2015030000007  ==> 선불: 3,800원
3. 박혜림(김해, 친척) 옷: 2015030000008   ==> 착불: 4,300원
---------------------------------------------------------------------------------------------------------

- CU 편의점 택배
1. POST BOX 택배(회원 500원 할인) 예약
http://www.cvsnet.co.kr/_ver2/board/ctod_status_new.jsp?pageNum=3&subNum=1&ssNum=0 ==> tamario / 0**8
1) 핸드폰 번호: 010-3072-0898, 비밀번호: 05*8 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.23(월) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 20:00 ==> AIG 생명 투입, 석식(청구할 것)

- AIG 생명 투입
1. PM 면담 ==> 변환된 것이 거의 없다고 함(600본 9월말까지 완성)
 1) 사장님에게 막장이라고 보고함 ==> 저녁 식대 지원 요청
2. 1주일 후 로그인 아이디 발급 된다고 함
3. XConverter 개발자(방규식 차장[010-4027-0681]), 퍼블러셔(김유진 과장[010-2326-8919])은 2주 후에 철수 예정
==============================================================================================================

- AIG손해보험 계획
1. AIG손해보험 UI 공통 투입 기간
1) 3월 23(월) ~ 4월 22일(수)
1. AIG손해보험 전체 개발 기간
1) 4월 1(월) ~9월 30일
==============================================================================================================

- AIG손해보험 개발
1. 소스 분석
43. AIG_ASIS_CS
43. AIG_ASIS_TM
44. AIG_TOBE_CS
44. AIG_TOBE_TM
=========================================================================================================

- XConverter 소스 분석
1. 김형태 차장 노트북으로 작업
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.24(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 20:00 ==> 석식(청구할 것)

- AIG손해보험 개발
1. 로그인 소스 분석
2. Frame 분석
3. DB 연결 분석
==============================================================================================================

- 오라클 DB 서비스 상태 확인[개인 업무용 노트북]
1. OracleOraDb11g_home1TNSListener  ==> 시작됨[중요]
2. OracleServiceTAMADB ==> 시작됨[중요]
3. OracleServiceORCL   ==> 시작됨--> 중지, 수동으로 변경
4. OracleMTSRecoveryService  ==> 시작됨--> 중지, 수동으로 변경
==============================================================================================================

- Div.Tab0에서 에러가 남
uxs (4176): Error: 식별자가 필요합니다. (행: 1388)
uxs (4176): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (4176): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (4176): [/COMCM1_M002.xadl] ==> [test_01]
==============================================================================================================

uxs (2028): [/start_dev.xadl] ==> [test_01]
uxs (2028): Error: 식별자가 필요합니다. (행: 1388)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 식별자가 필요합니다. (행: 1388)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 식별자가 필요합니다. (행: 1388)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 식별자가 필요합니다. (행: 1388)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 식별자가 필요합니다. (행: 1388)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
uxs (2028): Error: 스크립트 파일을 포함할 수 없습니다. (행 : 14)
==============================================================================================================

- AIG손해보험 MiPlatform 분석
1. start_dev.xml 파일에서
<connectGroup SessionURL="sys_common::login.xml" title="흥국화재고객상담센터">
	<DockBars>
		<DockBar Align="left" Border="false" Bottom="750" Fixed="true" ID="LeftBar" InitURL="com_cm1::COMCM1_M002.xml" Left="0" REdge="3" Right="193" Text="메뉴영역" Top="300" Visible="true"/>
		<DockBar Align="top" Border="false" Bottom="102" Fixed="true" ID="TopBar" InitURL="com_cm1::COMCM1_M001.xml" Left="0" Right="1280" Text="상단영역" Top="0" Visible="true"/>
		<DockBar Align="bottom" Border="false" Bottom="50" Fixed="true" ID="BottomBar" InitURL="com_cm1::COMCM1_M003.xml" Left="0" Right="1280" Text="하단영역" Top="0" Visible="true"/>
	</DockBars>
</connectGroup>

1. COMCM1_M001.xml 파일에서 
//==============================================================================
// 설명 : 페이지 온로드시 실행
// 변경내역 :
//==============================================================================
function BtmFrame_OnLoadCompleted(obj)
{
	var l_row = 0; 
	formid = "CRSCS1_M001";
	page = "crs_cs1::CRSCS1_M001.xml";   //고객상담메인

	f_newNavigationWindow(formid, page, "고객상담메인","고객상담메인");
	ds_window.addrow();
	ds_window.setcolumn(global.TopBar.ds_window.row,"formid",formid);
	ds_window.setcolumn(global.TopBar.ds_window.row,"formtitle","고객상담메인");

	addTab(l_row,formid,"고객상담메인");  
	object(ds_window.getcolumn(0,"formid")).setfocus();	//고객상담메인으로 포커스이동.
}
==============================================================================================================
 
- titletext명 표시
1. UXSTUDIO의 Tools메뉴 > Options: 클릭 > Environment > Project Explorer 항목: 선택  
FDL Parsing(project open) : All 선택
Show Title : at Project Explorer 선택 
==============================================================================================================

- 파일 업로드 업포넌트 에러
/*  File Upload 버튼클릭 ==> /Comp_FileUpDown_UpDown.xfdl  */
function btn_input0_onclick(obj:Button,  e:ClickEventInfo)
{
	trace("[/Comp_FileUpDown_UpDown.xfdl][btn_input0_onclick()]==> [TEST_01]" );

	var objFileList = fdl_input.open("File Upload", FileDialog.MULTILOAD, "%MYDOCUMENT%");
	trace("[/Comp_FileUpDown_UpDown.xfdl][btn_input0_onclick()]==> [objFileList]]"+ objFileList );
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.25(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 ==> 석식(청구할 것), (주)예스커뮤니케이션: 교육(강경민 부장) 방문, 회의(점심 얻어 먹음)

- AIG손해보험 개발
1. 로그인 소스 분석
==============================================================================================================

- 동적 생성 분석
==============================================================================================================

- /COMCM1_M001.xfdl 파일에서
var objCTI = object("global.TopBar.div_topBar_callSys");		// 에러 발생 ===> @@@

function COMCM1_M001_OnLoadCompleted(obj:Form, e:LoadEventInfo)
{  
	var objCTI = gv_TopFrame.form.div_topBar_callSys;  // Top Frame 시스템 로그인 div 화면 설정 
}
==============================================================================================================

- /login.xfdl 파일에서 ==> AxMSIE0 다시 Convert하면 해결됨
var objDocument		= AxMSIE0.Document,
	objDocumentAll	= objDocument.All(),    // 에러 발생 ===> @@@
	loginId 		= objDocumentAll.item("loginId"),
	loginPwd 		= objDocumentAll.item("loginPwd"),
	loginButton 	= objDocumentAll.item("loginButton");
==============================================================================================================

- lib_XForm.xjs 파일에서
/*====================================================================
= 기능 : debugmode에서 trace기능
=====================================================================*/
function dTrace(msg)
{
	var callerStr;
	var calleeStr;

	if(arguments.length > 0) {
		trace(msg);
		return;
	}
	trace(functionName(arguments.callee.caller.caller) + " -> " + functionName(arguments.callee.caller));
}
==============================================================================================================

- 주석 처리 표준
1. Form 주석
/************************************************************************
 1. 프로그램명 : AIG 생명 차세대 통합정보시스템
 2. 기       능 : 로그인 처리
 3. 파 일    명 : LOGIN.xfdl
 4. 이       력 :  
---------------------------------------------------------------------
작성일자   작성자  내용
---------------------------------------------------------------------
2015.03.25	진태만	로그인 처리 최초 작성
--------------------------------------------------------------------- 
 5. 상세 내용 :  
  1) ds_passwordlist : 비밀번호 리스트 정보
************************************************************************/

/****************************** include ********************************/ 
include "import::lib_XConvert.xjs";
include "script::com.xjs";
  
/*************************** 전역변수 *********************************/   
var t_ID		= "";
var t_service   = "";			 
var t_in    	= "";
var t_out    	= "";
var t_sql       = "";
var t_param     = "";
var t_CallBack  = ""; 
var PASS_INIT_YN = "N";
var id  = "";
var pwd = "";
/***********************************************************************/
/***********************************************************************/ 
==============================================================================================================

2. JavaScript 파일 주석 
/************************************************************************
 1. 프로그램명 : AIG 생명 차세대 통합정보시스템
 2. 기       능 : 통신(Transaction) 및 form 공통  관련 함수
 3. 파 일    명 : comsvc_script.xjs 
 4. 이       력 :  
---------------------------------------------------------------------
작성일자   작성자  내용
---------------------------------------------------------------------
2015.03.25	진태만	로그인 처리 최초 작성
--------------------------------------------------------------------- 
 5. 상세 내용 : 
  1) 통신(Transaction) 및 form 공통  관련 함수
* gfn_FormSetEnv : 화면의 위치 set
* gfn_Transaction           : 공통 트랜잭션 함수 
* gfn_CallBack        : 공통 Callback 함수
* gfn_SetCommSeach : 공통코드 조회 form onload 시 수행 
************************************************************************/

/****************************** include ********************************/ 


/*************************** 전역변수 *********************************/ 
var m_output; 
var pv_menuMultiYn;
var ncMsgId;
var ncMsg;
/***********************************************************************/
/***********************************************************************/

3. function 주석
/*****************************************************************************************
* 함  수  명 : gfn_FormSetEnv()
* 설   명   :  공통메세지에 정의된 메세지를 confirm box로 보여준 후 리턴한다. 
* 파라미터 : sMsgId - msg_com에 정의된 메세지 코드    
*           sParamArray - @에 setting되는 파라미터들
* Return값 : String - id에의해 가져온 메시지 값
* 작성자   : 진태만
* 작성일   : 2015.03.25       
 *****************************************************************************************/ 
function gfn_FormSetEnv(obj,oriX,oriY, strResizeYn,strResizeArg) 
{ 
	if(gfn_isNull(strResizeYn)) strResizeYn = true;

	if(strResizeYn == true)
	{ 
		//Resizing 함수 호출  2012/08 w.s.jeong 신규
		gfn_SetInitRszForm(obj, strResizeYn, strResizeArg);
	}
	
	gfn_SetCommSeach(obj); //공통코드조회
	gfn_LoadMuli(obj); //다국어조회
	gfn_SetUsrBtn(obj); //버튼제어조회
}
==============================================================================================================

- 메인 화면 에러
uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]DataSet[strCompName]ds_temp[strAttrib]undefined[strPersistData]undefined[objContainer]undefined
uxs (480): Error: [C:/eduPrj/work/eduPrj/Web/AIG_TOBE_CS/import/lib_XForm.xjs][line:93] 클래스 (DataSet) 를 찾을 수 없습니다.

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_commcode_cmb_gyst[strAttrib]undefined[strPersistData]undefined[objContainer]undefined

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]DataSet[strCompName]ds_temp[strAttrib]undefined[strPersistData]undefined[objContainer]undefined
uxs (480): Error: [C:/eduPrj/work/eduPrj/Web/AIG_TOBE_CS/import/lib_XForm.xjs][line:93] 클래스 (DataSet) 를 찾을 수 없습니다.
uxs (480): Error: 구문 오류입니다. (행: 363)

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_commcode_cmb_TBLG010_FND_USE_ITN[strAttrib]undefined[strPersistData]undefined[objContainer]undefined

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_commcode_cmb_INT_PRE_TYPE[strAttrib]undefined[strPersistData]undefined[objContainer]undefined

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_commcode_cmb_TBLG010_SAL_PATH[strAttrib]undefined[strPersistData]undefined[objContainer]undefined

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_CODE_APPROVAL[strAttrib]undefined[strPersistData]undefined[objContainer]undefined
uxs (480): Error: 해당 ID(ds_CODE_APPROVAL)를 갖는 Object 가 존재합니다.

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]Dataset[strCompName]ds_CODE_LON028[strAttrib]undefined[strPersistData]undefined[objContainer]undefined
uxs (480): Error: 해당 ID(ds_CODE_LON028)를 갖는 Object 가 존재합니다.

uxs (480): [/com.xjs] [create()] [TEST_01]
uxs (480): [/com.xjs] [create()] [strCompID]DataSet[strCompName]ds_temp[strAttrib]undefined[strPersistData]undefined[objContainer]undefined
uxs (480): Error: [C:/eduPrj/work/eduPrj/Web/AIG_TOBE_CS/import/lib_XForm.xjs][line:93] 클래스 (DataSet) 를 찾을 수 없습니다.
==============================================================================================================

- 연결 에러
1. 해당하는 폼 약자가 없습니다.  ==> 통신(DB) 연결이 안되서 나는 에러
2. lif_lf1::LIFLF1_M001_D01.xfdl 파일에서
==> URL: lif_lf1::LIFLF1_M001_D01.xfdl  제거
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.26(목) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 21:00 ==> 김밥 1줄(천원, 대림역), 노트북 포맷(AIG손해보험 보안 프로그램 설치)

- AIG손해보험 개발
1. 로그인 소스 분석
==============================================================================================================

- 동적 생성 분석
1. 
==============================================================================================================

- 파일 동적 생성 에러
1. //login.xfdl 파일에서
function loginForm_OnLoadCompleted(obj:Form, e:LoadEventInfo)
{ 
	var logFilePath = AliasToRealPath("%USERAPP%");
	var subPath = "TOBESOFT\\MiPlatform320U\\";
	var logFileName = "traceLog_MiPlatform.txt"; 
	File0.FileName = logFilePath+subPath+logFileName ;  
	trace("[/login.xfdl] [loginForm_OnLoadCompleted()] ==> [File0.FileName]"+ File0.FileName ); 

	trace("[/login.xfdl] [loginForm_OnLoadCompleted()] ==> [TEST_create 처리 전]" ); 
	create("File", "traceLog");   // 동적 Component 생성
	var traceLogFile = eval("traceLog");
	trace("[/login.xfdl] [loginForm_OnLoadCompleted()] ==> [TEST_create 처리 후]" ); 
}

2. /lib_XForm.xfdl 파일에서
//********************************************************************
//동적으로 지정한 Component를 생성할때 사용되는 Form API 
//********************************************************************
function create(strCompID, strCompName, strAttrib, strPersistData, objContainer)
{    
	var xml = '<ObjectTemplate id="template" objecttype="' + strCompID + '" ' + nvl(strAttrib, "") + '/>';
	var objTemplate = new ObjectTemplate(xml);
	trace("[/lib_XForm.xjs] [create()] ==> [xml]"+ xml);

	if(isNull(objContainer)) objContainer = this; 
	trace("[/lib_XForm.xjs] [create()] ==> [objContainer]"+ objContainer +"[strCompName]"+ strCompName ); 
	
	var idx = objTemplate.createAndAddTo(objContainer, strCompName);   // ===> 에러 발생
	trace("[/lib_XForm.xjs] [create()] ==> [idx]"+ idx );
	
	if(idx == -1) return false;
}
-----------------------------------------------------------------------------------------------------

- trace 로그
uxs (1636): [/login.xfdl] [loginForm_OnLoadCompleted()] ==> [File0.FileName]C:\Users\TAMA\AppData\LocalLow\TOBESOFT\MiPlatform320U\traceLog_MiPlatform.txt
uxs (1636): [/login.xfdl] [loginForm_OnLoadCompleted()] ==> [TEST_create 처리 전] 
uxs (1636): [/lib_XForm.xjs] [create()] ==> [strCompID]File[strCompName]traceLog[strAttrib][strPersistData]undefined[objContainer]undefined
uxs (1636): [/lib_XForm.xjs] [create()] ==> [xml]<ObjectTemplate id="template" objecttype="File" />
uxs (1636): [/lib_XForm.xjs] [create()] ==> [objContainer][object Form][strCompName]traceLog
uxs (1636): Error: [C:/eduPrj/work/eduPrj/Web/AIG_TOBE_CS/import/lib_XForm.xjs][line:117] 클래스 (File) 를 찾을 수 없습니다.
==============================================================================================================

- trace 로그2
uxs (2884): [/lib_XForm.xjs] [create()] ==> [TEST_01]
uxs (2884): [/lib_XForm.xjs] [create()] ==> [strCompID]Dataset[strCompName]ds_commcode_cmb_INT_PRE_TYPE[strAttrib][strPersistData]undefined[objContainer]undefined
uxs (2884): [/lib_XForm.xjs] [create()] ==> [xml]<ObjectTemplate id="template" objecttype="Dataset" />
uxs (2884): [/lib_XForm.xjs] [create()] ==> [objContainer][object Tabpage][strCompName]ds_commcode_cmb_INT_PRE_TYPE
uxs (2884): [/lib_XForm.xjs] [create()] ==> [idx]13
 
uxs (2884): [/lib_XForm.xjs] [create()] ==> [TEST_01]
uxs (2884): [/lib_XForm.xjs] [create()] ==> [strCompID]Dataset[strCompName]ds_commcode_cmb_TBLG010_SAL_PATH[strAttrib][strPersistData]undefined[objContainer]undefined
uxs (2884): [/lib_XForm.xjs] [create()] ==> [xml]<ObjectTemplate id="template" objecttype="Dataset" />
uxs (2884): [/lib_XForm.xjs] [create()] ==> [objContainer][object Tabpage][strCompName]ds_commcode_cmb_TBLG010_SAL_PATH
uxs (2884): [/lib_XForm.xjs] [create()] ==> [idx]14
 
uxs (2884): [/lib_XForm.xjs] [create()] ==> [TEST_01]
uxs (2884): [/lib_XForm.xjs] [create()] ==> [strCompID]Dataset[strCompName]ds_CODE_APPROVAL[strAttrib][strPersistData]undefined[objContainer]undefined
uxs (2884): [/lib_XForm.xjs] [create()] ==> [xml]<ObjectTemplate id="template" objecttype="Dataset" />
uxs (2884): [/lib_XForm.xjs] [create()] ==> [objContainer][object Tabpage][strCompName]ds_CODE_APPROVAL
uxs (2884): Error: 해당 ID(ds_CODE_APPROVAL)를 갖는 Object 가 존재합니다.
uxs (2884): [/lib_XForm.xjs] [create()] ==> [idx]-1
==============================================================================================================
 
- AIG손해보험 Convert 프로젝트 관련 보고 메일 발송
1. 이석부 사장에게 메일 발송
2. (주)투비소프트 장대표에게 전화 옴(편하게 일하라고 함)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.27(금) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 21:00 ==> 대규 만남(19시, 종각역 맘모스 부페, 더치 페이, 35,800원[대규가 만 5천원 줌])

- AIG손해보험 개발
1. 네트워크 연결(PMS ID발급)
 1) AIG\P00003026/ aha-0099
 2) 노트북 ==> XIUATTMJ / aha-0987
2. 노트북 포맷 후 환경 설정
3. AIG손해보험 프로그램 설치
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.28(토) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 

- 주말
08:30 기상
09:00 집출발 
09:20 명소아청소년과의원(수종 건강 검진 월요일 14시로 예약만 하고 옴)
09:30 쇼핑(과일, 남구로시장)
09:45 구로구 다문화 가족지원 센터 방문(이마트 구로점 근처)
10:30 귀가
11:40 중식
12:00 오라클 DB 셋팅 ==> XPlatform 소스 DB 조회 가능
15:00 2014년 프로야구 개막전 시청
19:00 석식
00:00 취침
==============================================================================================================

- 수종 건강 검진(10시): 국민건강보험공단(무료)
A. 영유아 건강 검진(명소아청소년과의원) ==> 18개월(2015.03.24 ~ 10..23) 
B. 영유아 구강 검진(수플러스 치과) ==> 18개월(2015.03.24 ~ 2016.03..23)
==============================================================================================================

- MiPlatform 전송 패킷 설정  ==> XPlatform에서는 불가능
1. 전송한 Http 패킷의 헤더를 기록하는 Property ==> alert(global.http.SendHttpStr):  
2. 수신받은 Http 패킷의 헤더를 기록하는 Propert ==> alert(global.http.RecvHttpStr): 
==============================================================================================================

- 다문화 센터
1. 구로구 다문화 가족지원 센터 ==> http://map.naver.com/local/siteview.nhn?code=20690921
2. 영등포구 다문화가 족지원 센터 ==> http://map.naver.com/local/siteview.nhn?code=20489413
==============================================================================================================
 
- transaction 경우
this.transaction( "trSave"				// 01. tr 구별 ID
			, "http://www.xplatform.co.kr:8080/edu/nexacro/employees_save.jsp?full_name="	// 02. 서버에서 결과를 보내주는 URL
			//, "DataURL::employees_save.jsp?full_name="	
			, "in_ds=ds_emp:u"		// 03. 서버쪽으로 전송할 데이타 셋 ID[등록, 수정, 삭제시]("in_ds=ds_emp in_ds2=ds_aa")
			, "ds_emp=ds_employees"	// 04. 서버단에서 받아온 데이타 셋 ID를 내 화면에서의 데이타 셋 ID에 넣기("ds_emp=ds_employees ds_dept=ds_aa") 
			, "sVall=AA"			// 05. 서버쪽으로 전송할 인자("sVall=AA sVall2=BB"), ("sVall='"+ sName +"' ==> "sVall="+ nexacro.wrapQuote(sName) +")
			, "fn_callback");   		// 06. 서버에 대한 응담을 받을 함수(fn_callback)
			//, true;   				// 07. 비동기 여부를 지정합니다(bAsync => Default : true )
			//,0;   				// 08. 전송할 형태를 지정(nDataType) Default : 0 => 0(XML 타입),1(Binary 타입), 2(SSV 타입)
			//, true);   				// 09. 통신시 PostData를 압축할지 여부를 지정(bCompress)=> Default : false)
} 
==============================================================================================================

- eclipse(이클립스) 설정
1. eclipse 줄번호 설정  
 1) Window[상단 메뉴] > Preferences[새창] 에서, General > Editors > Text Editors에서 "Show line numbers"를 체크  
2. eclipse font 설정  
 1) Window[상단 메뉴] > Preferences[새창] 에서, General > Appearence > Color and Fonf > Basic  
> Tet Font ==> Edit > 글꼴[새창]: "돋움", "10"(설정)  
3. Debug 모두 배경색 변경
  1) Window > Preferences[새창] 에서, Run/Debug > Console(클릭): Background color: 배경색(녹색: 86, 78, 194)  
==============================================================================================================

- FILE_UpDown TEST(http://zero-gravity.tistory.com/168)
/fileUpload_download.xadl 파일에서
1. 파일 경로: C:\eduPrj\mid\file
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.03.29(일) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 18:00 ==>

▦ 조기축구
06:30 기상
06:50 지하철(대림역 <-> 신사역)
07:50 신구초등학교 
08:30 게임
09:10 게임 ==> 밥 내기 게임(7:6으로 승리) : 한 골 넣음
11:15 종료 
11:40 중식(국밥: 뚝심한우, 만두): 오세림 고문님이 쏨
       ==> 총무(병규형)와 감독(병춘이형)이 의견 충돌 있었다고 함
12:50 종료 
13:10 상도역
14:20 귀가
14:50 낮잠
14:50 기상
19:30 석식
01:00 취침
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2015.03.30(월) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>  

- AIG손해보험 개발
1. Frame 수정(Left 메뉴)
==============================================================================================================

- 아파트 관리비 자동이체 처리
1. 대림 문영 아파트 ==> 4월달부터 신한은행 이체
 1) 인터넷으로 자동이체 해지 가능
==============================================================================================================

- SC은행 적금 만기 해약
1. 월 10만원 적립 ==> 원금: 12만원, 실수령액: 1,350,648원
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.03.31(화) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 21:00 ==>  

- AIG손해보험 개발
1. Frame 수정(Left 메뉴)
==============================================================================================================

- component 존재여부 체크
if(this.components["Static0"] == null)  // tatic0_components이 이미 존재하지 않으면
{
	var objStatic = new Static("Static0", 100, 100, 200, 200);
	// Add Object to Parent Form  
	this.addChild("Static0", objStatic);   // 버튼 컴포넌트 생성
 
	// Show Object  
	objStatic.show(); 
	
	objStatic.text = "Static_sample"; 
	trace("[/start_dev.xadl] [btn_Create_onclick()] ==> [Static_생성 완료]" );  
}
else
{
	trace("[/start_dev.xadl] [btn_Create_onclick()] ==> [Static0_components이 이미 존재합니다.]" );  
} 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■