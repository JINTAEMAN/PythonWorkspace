

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------// Memo(2018.11) //----------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2018.11.01(목) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 20:00 ==> 

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 이메일 발송 이력 저장
1. 이메일 발송 이력 저장(for 루프를 돌면서 각각 발송된 이메일 정보 저장)
/SY_MailAction.java 파일에서 에러 발생
public void Send_03(BusinessContext ctx) throws Exception{
	System.out.println("[/SY_MailAction.java] [Send_03()] ==> [메일 발송 처리] [TEST_01]" ); 
	
	DataSet dsMail = (DataSet)ctx.getInputObject("ds_mail");		  // 조회조건 DataSet(전송될 이메일 정보 Ds)
	
	if(dsMail != null && dsMail.getRowCount() > 0) 
	{
		for(int i = 0; i < dsMail.getRowCount(); i++)
		{ 
			iExcCnt = service.executeByRow("cm:CM_SendEmailLog_I01", dsMail, i, false, false); 		
			// 메일 발송 이력 저장[sql 요청 객체] 호출(CM_SendEmailLog_I01: 이메일 발송 이력 저장 호출) ==> 에러: 2개 데이타면
			같은 데이타가 2번 저장됨.			
		}
	}
}
============================================================================================================== 

- dash 보드 메뉴창에서 창닫기를 하면 에러 뜸
1. 원인: 화면ID(SCR_ID)를 잘못 입력함.(RP::RP_GenDashBoard.xfdl ==> RP_GenDashBoard로 수정)
/***********************************************************************
 * 함수명  	: fn_loginAfter
 * 설명 		: 로그인 ID 저장 후, 화면 닫기 
***********************************************************************/
this.fn_loginAfter = function()
{ 
	// gfn_chkOpenMenu("RP-06-010", "RP::RP_GenDashBoard.xfdl", application.gds_menu)
	gfn_chkOpenMenu("RP-06-010", "RP_GenDashBoard", application.gds_menu); 		// 신규 윈도우 화면을 생성하고 open 시키는 함수 호출 

	this.close(true);
}
============================================================================================================== 

- 메일 자동 발송 프로그램 개발 요청
1. 아침 6시에 자동으로 메일 발송할 수 있게 처리.(이상탁 차장)
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.02(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), (주)지아이데이타 전체 회식(19시, 선릉역 근처): 불참

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 이메일 발송 이력 저장 
1. 이메일 발송 이력 저장(/SY_MailAction.java)에서 executeBatch 함수 에러가 나서 FSP서버 정재훈 대리가 원격 지원해 줘서 겨우 해결
public void Send_03(BusinessContext ctx) throws Exception{
	System.out.println("[/SY_MailAction.java] [Send_03()] ==> [메일 발송 처리(로컬 TEST용)] [TEST_01]" ); 
  
	String sQueryId = "cm:CM_SendEmailLog_I01";		// Query ID[메일 발송 이력 저장(CM_SendEmailLog_I01: 이메일 발송 이력 저장 Query 호출)   
	int iExcCnt = 0;
	
	DataSet dsMail = (DataSet)ctx.getInputObject("ds_mail");		  // 조회조건 DataSet(전송될 이메일 정보 Ds)
	
	if(dsMail != null && dsMail.getRowCount() > 0) 
	{
		for(int i = 0; i < dsMail.getRowCount(); i++)
		{   
			System.out.println("[/SY_MailAction.java] [Send_03()] ==> [메일 발송 완료] [TEST_80][메일 발송 이력 저장 결과_iExcCnt]"+ iExcCnt +"[i_번째]"+ i );  
		}   
		
		iExcCnt = service.executeBatch(sQueryId, dsMail); 		// 메일 발송 이력 저장[sql 요청 객체] 호출(CM_SendEmailLog_I01: 이메일 발송 이력 저장 호출)   
		System.out.println("[/SY_MailAction.java] [Send_03()] ==> [메일 발송 이력 저장] [TEST_92]" );
	} 
} 

- /AqqmsCommonNexacroService.java 파일에서
public int executeBatch(String sQqueryId, DataSet ds_List) throws Exception { 
 
	int iRtnRst = 0;
	int cnt = 0;
	
	SqlExecutor sqlExecutor = SqlMapFactoryHelper.makeSqlExecutor(getConnection(), SqlMapFactoryHelper.NEXACRO);		// SqlExecutor 생성 
	DataSetSqlRequest sqlRequest = SqlMapFactoryHelper.makeDataSetSqlRequest(sQqueryId, SqlMapFactoryHelper.NEXACRO);	// DataSetSqlRequest 생성 
 
	ds_List.setName("ds_mail");  	// 추가[ds_List 추가(FSP에서 추가하라고 함), 변경일: 2018.11.02, by 진태만]
	sqlRequest.addParamObject("ds_mail", ds_List);		// 파라미터 바인딩

	cnt = 0;

	for(int i=0; i<ds_List.getRowCount(); i++)
	{			  
		sqlRequest.setRowIndex(i);		// row를 이동하면서 실행.
	 
		if(cnt == 0)
		{ 
			sqlExecutor.startBatch(sqlRequest);		// 배치 시작
			System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_11][배치 시작][i_번째]"+ i );
		}
		else
		{ 
			sqlExecutor.addBatch(sqlRequest);		// 배치 추가
			System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_12][배치 실행][i_번째]"+ i );
		}
		cnt++;
	}
	 
	if(cnt > 0)
	{ 
		iRtnRst = 1;
		sqlExecutor.executeBatch();		// 배치 실행
		System.out.println("[/AqqmsCommonNexacroService.java] [executeBatch()] ==> [TEST_77][배치 실행]" );
	}
	
	return iRtnRst;
}	 
============================================================================================================== 

- 보안 취약점 점검 결과
1. 웹 취약점 대상 정보 요청 건[이상탁 차장한테 메일 받음] ==> 웹 어플리케이션 취약점 점검 보고서(웹 어플리케이션 취약점 점검 보고서.pdf)
 1) 점검결과입니다. 추측할수 있는 디렉토리명 사용인데  이거는 큰 위험이 아니므로 조치하면 좋지만 안해도 프로젝 종료에는 
문제없습니다.
 2) 파일 및 디렉토리 이름 추측(Prefix) 1건
 ==> 변조 url: /APQM/frame
  가. 조치할 내역: frame --> frameNx70,  common --> commonNx70,  -- popup --> popupNx70
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.03(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 69.1kg

- 주말
06:20 기상
06:30 조식
07:20 집출발
07:20 도림천로 도보
08:20 목동교 도착
08:30 휴식(억새구장 벤치: 20분)
08:50 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
09:20 귀가
12:00 중식
12:30 집출발(자전거)
13:00 보라매 공원(수종) ==> 수종 퀵보드 자전거에 싣고 감. 도보 한 시간.
16:20 종료
16:30 다이소 대림 2호점(빼빼로 2개, 훌라후프, 장난감 구입: 수종), 문풍지 구경(5M: 천원)
17:00 종료
17:20 귀가(루옌 귀가) 
17:30 석식
18:10 집출발(자전거): 문영A -> 도림천 -> 신림역 -> 서울대입구역 -> 사당역(50분 걸림)
19:00 장안 족발 도착 ==> 호수 도착, 내가 족발 안 먹는다고 나옴.
19:20 태용 도착
19:30 경촌 해물찜, 아구찜 탕 전문점(해물탕: 호수, 태용): 호수가 쏨
		==> 호수 신도림 우성 아파트 구입해서 10억 가까이 벌었다고 함(대출 3억), 태용이는 진주에 아파트 구입해서 4천 손해
			봤다고 함. 호수 팀장 달았다고 함.
20:00 석식 식후 혈당 측정(205mg/dl 나옴): 무리하게 운동, 귤(2개), 붕어빵(3개) 먹음
21:30 종료
20:30 리당구장(3층) ==> 내가 꼴찌해서 돈 냄(2만 천원)
23:00 종료
23:00 사당역 출발(자전거): 서울대입구역 -> 신림역 -> 도림천 -> 문영A(40분 걸림)
23:50 귀가
20:20 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.11.04(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 67.4kg

▦ 축구
07:20 기상(피곤함, 수종이가 깨움)
07:30 아침 식전 혈당 측정(105mg/dl 나옴) 
07:30 조식
08:20 집출발
08:30 도림천로 도보
09:20 목동교 도착
09:45 휴식(억새구장 벤치: 20분)
10:30 근력 운동(대림역 도림천로 운동 기구)
		 ==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
11:00 귀가
11:50 중식
12:30 계단 오르기(아파트 18층 계단 2번 오르 내림) 
14:00 점심 식후 혈당 측정(88mg/dl 나옴)
14:10 인터넷 서핑(루옌, 수종 외식하러 감)
15:30 집출발
15:50 대림운동장
16:00 축구 게임(은혜교회팀: 어울림팀) ==> 4쿼터 뜀: 몸 상태가 괜찮음.(약간 무리)
18:00 종료
18:20 신한은행 출금(80만원: 루옌 아랫니 임플란트 비용)
18:30 귀가
18:40 석식 
19:50 집출발
19:10 신한은행 출금(80만원: 루옌 왼쪽 아랫니 임프란트 비용) 
19:20 귀가
19:30 샤워
19:50 집출발
20:00 대림역 7호선 마을버스 정류장(탑승)
20:20 영등포역 도착
20:40 영등포역 화장실에서 저녁 식후 혈당 측정(115mg/dl 나옴)
20:49 예산행(20:49 ~ 22:36, 영등포역 -> 삽교역) 탑승  ==> 영화 '안시성' 시청.
22:45 삽교역 도착
23:10 귀가
23:10 TV 시청
23:20 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.05(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 21:30 ==> 이상탁 차장 울산 근무

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 산출물 작성
1. S-18-0829-05-사용자매뉴얼 작성
============================================================================================================== 

- 보안 취약점 점검 조치
1. 파일 및 디렉토리 이름 추측(Prefix) 1건 
 1) 조치할 내역: frame --> frameNx70
============================================================================================================== 

- 현대제철 AP QMS 시스템 TESET 구축
1. D:\QMS\APQMS_51\01. 현대제철 Prj_eclipse.exe
2. Eclipse 설치
Eclipse Java EE IDE for Web Developers.
Version: Kepler Release
Build id: 20130614-0229
Eclipse Kepler ==>  http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/kepler/SR2/eclipse-jee-kepler-SR2-win32-x86_64.zip
http://www.eclipse.org/downloads/packages/release/kepler/sr2
============================================================================================================== 

- 톰갯 서버명 변경(Eclipse에서)
1. Server Name: Tomcat v7.0 Server at localhost ==> APQMS_51
============================================================================================================== 

- /context.xml 파일에서  @@@
<Context reloadable="true">  
	<!--// 01. Hyundai Steel AP QMS Prj MESJNDI Setting(tibero DEV DB) //-->
  	<Resource name="MESJNDI" auth="Container"                                                    
   		type="javax.sql.DataSource" driverClassName="com.tmax.tibero.jdbc.TbDriver"
   		url="jdbc:tibero:thin:@10.10.180.175:8639:HSMESDEV"
		username="QMSMGR" password="QMSMGR" maxActive="3" maxIdle="3"
		maxWait="-1"  factory="org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory" /> 
</Context>
-------------------------------------------------------------------------------------------------- 

- 개발 DB 서버
jdbc:tibero:thin:@10.10.180.175:8639:HSMESDEV  --> QMSMGR, QMSMGR
- 운영 DB 서버
jdbc:tibero:thin:@10.10.111.17:8629:RWMESPRD  --> QMSMGR, QMSMGR
==============================================================================================================
 
- Maria DB
0. https://mariadb.com/kb/ko/basic-sql-statements/
1. MariaDB 10.3.10 Stable(2018-10-04), mariadb-10.3.10-win32.msi 다운로드 ==> https://downloads.mariadb.org/mariadb/10.3.10/
 1) root pwd: 1212, port: 3306
============================================================================================================== 

1. [Admin][MariaDB] DB 생성 과 테이블 조작(DDL, DML) ==> http://estenpark.tistory.com/358
============================================================================================================== 

- 지출결의서_진태만(2018.07 ~ 09) 금액 입금
1. 2018.07 ~ 09 지출 결의 합계 금액: 524,900원 신한은행 통장에 입금 완료
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.06(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:30 ==> 김동학 차장이 화나서 월간보고회때 프로그램 시연 동영상 제작하라고 함, 파일 업로드 시 특수 문자 포함된
								파일은 업로드 안되고 에러 뜸(황부장 프로그램).

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 산출물 작성
1. S-18-0829-05-사용자매뉴얼(S-18-0829-05-사용자매뉴얼-AP품질관리시스템_00.시스템운영자_v1.0.pptx) 작성 
============================================================================================================== 

- 업로드 파일 운영 프로그램 변경이력
1. D:\QMS\APQMS\workspace\APQMS\upload\img\apqms\20181106 폴더에 있는 파일 수정
==> 파일업로드된 파일명 특수문자(#) 제거
============================================================================================================== 

- MariaDB Driver Info  ==> 51. APQMS_로컬[MariaDB]
1. Driver Name: MariaDB, 	2. Driver Type: MySQL
3. Class Name: org.mariadb.jdbc.Driver
4. URL Template: jdbc:mariadb://{host}[:{port}]/[{database}] ==> jdbc:mariadb://localhost:3306/qmsmgr
5. Default Port: 3306 ==> [test Database] User name: root, pwd: 1212 --> [qmsmgr Database] User name: apqms, pwd: apqms12
6. Description: MySQL standard driver  ==> mariadb-java-client-1.5.5.jar
7. MariaDB(MariaDB 10.3.7 Stable) 다운로드 ==> https://downloads.mariadb.org/mariadb/10.3.7/
--------------------------------------------------------------------------------------------------

- MySQL Driver Info  ==> 91. Nexacro14 신규템플릿[MySQL]
1. Driver Name: MySQL, 	2. Driver Type: MySQL
3. Class Name: com.mysql.jdbc.Driver
4. URL Template: jdbc:mysql://{host}[:{port}]/[{database}] ==> jdbc:mysql://localhost:3306/MySQL
5. Default Port: 3306 ==> [qmsmgr Database] User name: root, pwd: 1212 
6. Description: MySQL standard driver  ==> myslq-connector-java-5.1.44.jar
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.07(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:30 ==> 비 조금 옴. 주간보고서 작성, 오이사 방문(14:00 ~ 15:30: 더케이 12월 2째주 투입 예정, 저축연합회 수주 실패, 이상탁
								요구 사항: 배치로 메일 발송, 파일 업로드 시 프로그래스 바 생성 ==> 안 해주면 잔금(30% 안 준다고 함)
								, 김도현 대리, 황부장 동원에 투입될 예정), 여상무가 프로그램 동영상 녹음한다고 일찍 퇴근하라고 함(19:30)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 운영 서버 반영 에러 발생
1. lib_Comm.xjs 파일에서 보안 취약점 점검 조치에 따른 frame 폴더 변경이 개발 서버에 적용되어 있는 걸 김대리가 운영 서버에 반영 처리함.
objNewWin.set_formurl("frame::frmWork.xfdl");  	// 이전
==> objNewWin.set_formurl("frameNx70::frmWork.xfdl");	// 수정[검보안 취약점 점검 조치에 따른 frame 폴더명 변경, 변경일: 2018.11.02, by 진태만] 
============================================================================================================== 

- java MySQL 연결을 위한 MySQL Connector 설치방법
http://blog.naver.com/PostView.nhn?blogId=50after&logNo=220912861796&categoryNo=0&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=1&from=postView
1. mysql-connector-java-5.1.47.zip 파일 다운로드하여 압축 풀기 ==> mysql-connector-java-5.1.47-bin.jar를 복사
2. D:\QMS\APQMS\apache-tomcat-7.0.86\lib폴더에 붙여넣기(mariadb-java-client-1.5.5.jar)
3. eclipse에 설치
 1) 이클립스 기준으로 프로젝트 Properties에서 ava Build Path 항목의 Libraries - Add External JARs를 통해 추가
============================================================================================================== 

- MySQL DB에서 TO_CHAR 에러
1. 현상:
SQL Error [1305] [42000]: FUNCTION qmsmgr.TO_CHAR does not exist
FUNCTION qmsmgr.TO_CHAR does not exist

2. 조치: DATE_FORMAT 함수 사용
DATE_FORMAT(now(), '%Y-%m-%d') // 2011-06-14
2.DATE_FORMAT(now(), '%Y-%M-%D') // 2011-June-14th
3.DATE_FORMAT(now(), '%H:%i:%s')  // 22:26:11  ( 24시간 표현 )
4.DATE_FORMAT(now(), '%h:%i:%s')  // 10:26:11 ( 12시간 표현 )

3. 예제:
/* LOGIN 시도 제한 여부 정보 조회 ==> [cm:CM_LoginTryCnt_S01.xml] [2018.11.07, by 진태만] ==> MySQL*/ 
SELECT (CASE WHEN ((LOGIN_TRY_LMT_YN IS NOT NULL AND LOGIN_TRY_LMT_YN = 'Y') AND TO_CHAR(TO_DATE(LATEST_LOGIN_DT), 'YYYYMMDDHH24MI') 
						   <  TO_CHAR(TO_DATE(SYSDATE - (1 / 24 / 60 * 60)), 'YYYYMMDDHH24MI') ) THEN 'N' 		-- (N: 로그인 시도 제한 여부 Y이고, 60분 경과 여부)
					  WHEN LOGIN_TRY_LMT_YN IS NULL OR LOGIN_TRY_LMT_YN = 'N' THEN 'N' 		-- (N: 로그인 시도 제한 여부 N)
					  ELSE 'Y' END) AS LOGIN_TRY_LMT_YN		  -- 41. 로그인 시도 제한 여부 
			, DATE_FORMAT(now(), '%Y%m%d%H%i%s') as NOW_DATE_01, now() as NOW_DATE  
	, A.*
FROM HSSCU100 A		-- 사용자등록 정보 TB
WHERE 1 = 1  
	AND A.USER_ID = '1519927'		-- 사용자ID
;
--------------------------------------------------------------------------------------------------------------------------------

- 이클립스(eclipse)에서 배포 위치
D:\QMS\APQMS_51\workspace\.metadata\.plugins\org.eclipse.wst.server.core
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.11.08(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:00 ==> 비 옴(우산 쓰고 출근),  월간보고회(15:00 ~ 16:00): 이차장 팀장이 소스 변경 내용 기록하라고 지시.
								, 중식, 석식 후 공장에서 도보(12:20 ~ 12:50, 18:20 ~ 19:30): 저녁 식후 혈당 201mg/dl 나옴.
								, 비, 바람이 심해서 허민준 대리 차로 퇴근.

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 산출물 작성
1. S-18-0829-05-사용자매뉴얼(S-18-0829-05-사용자매뉴얼-AP품질관리시스템_00.시스템운영자_v1.0.pptx) 작성 
============================================================================================================== 
	
- FSP sqlmap 설정(91. 현대제철 APQMS_51) ==> MySQL로 조호 가능함.(완성)
1. web.xml 파일(D:\QMS\APQMS_51\workspace\APQMS\WebContent\WEB-INF)
<filter>
	<filter-name>FSP_Filter</filter-name>
	<filter-class>com.sz.ui.ServiceLoaderFilter</filter-class>
	<init-param>
		<param-name>servicePath</param-name>
		<!-- <param-value>D:/wasapps/edu/WEB-INF/fsp/conf/service.xml</param-value>  -->
		<param-value>D:/QMS/APQMS/workspace/APQMS_51/WebContent/WEB-INF/fsp/conf/service.xml</param-value>	
		<!--// 수정[servicePath 변경]: 2018.04.19, by 진태만 //-->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml</param-value>	
		<!--// 수정[ APQMS_51일 경우]: 2018.11.0, by 진태만 //-->
	</init-param>
	<init-param>
		<param-name>workingRootDirPath</param-name>
		<!-- <param-value>D:/wasapps/edu/WEB-INF/fsp/</param-value>  -->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/</param-value>	
		<!--// 수정[workingRootDirPath 변경]: 2018.04.19, by 진태만 //-->
		<param-value>D:/QMS/APQMS_51/workspace/APQMS/WebContent/WEB-INF/fsp/</param-value>	
		<!--// 수정[ APQMS_51일 경우]: 2018.11.0, by 진태만 //-->
	</init-param> 
</filter>
--------------------------------------------------------------------------------------------------------------------------------
 
- 91. 현대제철 APQMS_51일 경우
D:/QMS/APQMS/workspace/APQMS/WebContent/WEB-INF/fsp/conf/service.xml
==> D:\QMS\APQMS_51\workspace\APQMS/WebContent/WEB-INF/fsp/conf/service.xml
-------------------------------------------------------------------------------------------------------------------------------- 
 
- MariaDB Driver 에러(eclipse에서) 
- /APQMS/WebContent/META-INF/context.xml 파일에서
<Resource name="MESJNDI" auth="Container"       
	type="javax.sql.DataSource" driverClassName="org.mariadb.jdbc.Driver"  ==> org.mariadb.jdbc.Driver 에러 남.
	url="jdbc:mariadb://localhost:3306/qmsmgr"
	username="apqms" password="apqms12" maxActive="3" maxIdle="3"
	maxWait="-1"  factory="org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory" />  
-----------------------------------------------------------------------------------------------------------------

- MariaDB 사용법
1. 마리아 DB 사용법 모아놓은 블로그 - Jaejin's blog ==> http://blog.naver.com/PostView.nhn?blogId=hmkuak&logNo=220583392375
2. MariaDB 설치 (for Windows) ==> http://sqlmvp.kr/220325416253
3. [MariaDB] Oracle 함수를 MariaDB 함수로 변경 ==> http://blog.naver.com/PostView.nhn?blogId=sensate1024&logNo=220439813849&parentCategoryNo=55&categoryNo=&viewDate=&isShowPopularPosts=true&from=search
============================================================================================================== 

- MariaDB 수정
1. TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') ==> DATE_FORMAT(now(), '%Y%m%d%H%i%s')		-- 수정일자
2. DECODE ==> CASE문
/*	SELECT  DECODE(BIZ_GP
	, 'QI', 1   	-- 품질검사(QI)
	, 'VQ', 2   	-- 협력사품질검사(VQ)
	, 'NC', 3  	-- 신차개발(NC)
	, 'UM', 4  	-- 변경관리(UM)
	, 'DS', 5    	-- 표준류관리(DS)
	, 'VD', 6    	-- 협력사표준류관리(VD)
	, 'TL', 7     	-- TOOL관리(TL)
	, 'RP', 8		-- 종합분석(RP)
	, 'CM', 9		-- 기준정보(CM)
	, 'SY', 10		-- 시스템관리(SY)
) AS MENU_SEQ_90,*/
SELECT (CASE BIZ_GP	
	WHEN 'QI' THEN 1 		 -- 품질검사(QI)
	WHEN 'VQ' THEN 2   	-- 협력사품질검사(VQ) 
	ELSE  10 	-- 시스템관리(SY)
	end)  AS MENU_SEQ,
============================================================================================================== 

- MariaDB 에러
1. 현상:
Reason:
SQL Error [1064] [42000]: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB 
server version for the right syntax to use near ') 
 			VALUES ('','100','','1','','20160429111100','1515533','','A00','AP PRODU' at line 2
2. 원인: TREE_YN, )  ==> TREE_YN)로 수정
-- 부서명 정보 TB 결과값 @@@@@@@ ==> 2건   
INSERT INTO HSHRA200( ACC_DEPT, BS_CD, BUD_DEPT, BUD_YN, CC_CD, CDT, CID, DEPT_BC, DEPT_CD, DEPT_ENM, DEPT_KD, DEPT_NM, 
	DIV_CD, FLD_YN, FR_DT, GRP1_BC, GRP2_BC, GRP3_BC, GRP_CD, HEAD_EMP, MDT, MID, OLD_DEPT, PRT_SQ, RMKS, RT_BC, RT_KD,
	 TO_DT, TO_YN, TREE_YN, ) 
 			VALUES ('','100','','1','','20160429111100','1515533','','A00','AP PRODUCT DIVISION','','AP생산실','','','20180529','','','','',''
			,'20180529160516','1515533','',0,'현대제철(주)','','','','',''); 
============================================================================================================== 

- MariaDB 계층형 테이블 및 쿼리
/* 메뉴  관리 정보 조회(로그인 후 처리) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.05.25, by 진태만] */   
SELECT  M.MENU_SEP,
				M.MENU_SEQ,  
				M.SEQ,   -- 순번
FROM (			
	SELECT  MENU_SEP,
				 MENU_SEQ,
				 SEQ,   -- 순번
				LEVEL-1 AS LVL_NO,
	FROM HSSCM100			-- 메뉴 정보 TB
	WHERE USE_YN = 'Y'
	START WITH UP_MENU_ID IS NULL    	-- oracle의 START WITH CONNECT BY 구문
	CONNECT BY PRIOR MENU_ID = UP_MENU_ID
	ORDER SIBLINGS BY SORT_SEQ, SUBSTR(MENU_ID,1,5)) X ) M
	)
;
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.09(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:40 ==> 여상무 휴가(토요일 아들 결혼), 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 산출물 작성 ==> 완료 @@@
1. S-18-0829-05-사용자매뉴얼(S-18-0829-05-사용자매뉴얼-AP품질관리시스템_00.시스템운영자_v1.0.pptx) 작성 
============================================================================================================== 

- 브라우저별 자체 기능으로 마우스 우클릭 해제 하는 방법
1. https://mastmanban.tistory.com/877
============================================================================================================== 
 
- MariaDB 계층형 테이블 및 쿼리
1. [MSSQL] WITH / CTE ==> http://developerking.tistory.com/48 
/* 메뉴  관리 정보 조회(로그인 후 처리) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.05.25, by 진태만] */   
WITH RECURSIVE empCTE(MENU_ID_02, UP_MENU_ID, level)
AS
(
	SELECT    MENU_ID, 
				 UP_MENU_ID,  
          	  0   
	FROM HSSCM100			-- 메뉴 정보 TB
	WHERE 1=1
		 AND SUBSTRING(MENU_ID,4,9) = '00-000' 	-- 최상위 메뉴 
	UNION all 
	SELECT A.MENU_ID, 
           		 A.UP_MENU_ID, 
	         	-- 	SUBSTRING(A.MENU_ID,4,9) AS MENU_PID,  
		           B.level+1  
	FROM HSSCM100 AS A 
	INNER JOIN empCTE AS B
		ON A.UP_MENU_ID = B.MENU_ID_02
		  AND SUBSTRING(A.MENU_ID, 1, 5) = 'CM-01' 	-- 메뉴  
)
SELECT MENU_ID_02 as MENU_ID , UP_MENU_ID, level AS LVL_NO
FROM empCTE 
ORDER BY level
;
-------------------------------------------------------------------------------------------

WITH RECURSIVE empCTE 
AS
(
	SELECT   
           		BIZ_GP AS MENU_SEP,
           		MENU_ID, 
				-- UP_MENU_ID,  
          	  0 AS LVL_NO
	FROM HSSCM100			-- 메뉴 정보 TB
	WHERE 1=1
		 AND SUBSTRING(MENU_ID,4,9) = '00-000' 	-- 최상위 메뉴 
	UNION all 
	SELECT A.BIZ_GP AS MENU_SEP,
				A.MENU_ID, 
           			-- A.UP_MENU_ID, 
	         	-- 	SUBSTRING(A.MENU_ID,4,9) AS MENU_PID,  
		           B.level+1 AS LVL_NO
	FROM HSSCM100 AS A 
	INNER JOIN empCTE AS B
		ON A.UP_MENU_ID = B.MENU_ID
)
SELECT MENU_SEP, MENU_ID, LVL_NO
FROM empCTE 
ORDER BY LVL_NO, LVL_NO
;
-------------------------------------------------------------------------------------------

SELECT @RNUM := @RNUM + 1 AS ROWNUM, t.*
FROM
( 
	 WITH RECURSIVE empCTE(empName, mgrName, dept, level)
	AS
	(
		SELECT emp, manager, department , 0
		FROM empTbl
		WHERE manager IS NULL 	-- 최상위 메뉴 
		UNION all 
		SELECT AA.emp, AA.manager, AA.department, BB.level+1
		FROM empTbl AS AA INNER JOIN empCTE AS BB
		ON AA.manager = BB.empName
	)
	SELECT   level AS "레벨", empName, LPAD(empName , level+4, ' ㄴ') AS "직원이름"
			 , mgrName "상관이름", dept "직원부서"	
	-- SELECT level AS "레벨", LPAD(empName  ,level, ' ㄴ') AS "직원이름", dept "직원부서"
	FROM empCTE ORDER BY dept, level
) t,
( SELECT @RNUM := 0 ) R
 ORDER BY ROWNUM DESC
;
-------------------------------------------------------------------------------------------

 WITH RECURSIVE empCTE(empName, mgrName, dept, level)
AS
(
	SELECT emp, manager, department , 0
	FROM empTbl
	WHERE manager IS NULL	 -- 최상위 메뉴 
	UNION all 
	SELECT AA.emp, AA.manager, AA.department, BB.level+1
	FROM empTbl AS AA INNER JOIN empCTE AS BB
	ON AA.manager = BB.empName
)
	SELECT   level AS "레벨", empName, LPAD(empName , level+4, ' ㄴ') AS "직원이름"
				 , mgrName "상관이름", dept "직원부서"	
-- SELECT level AS "레벨", LPAD(empName  ,level, ' ㄴ') AS "직원이름", dept "직원부서"
FROM empCTE ORDER BY dept, level
;
============================================================================================================== 

- 소프트잼 김용호 대표에게 메일 보냄
1. 이상탁 차장이 소프트잼 김용호 대표에게 전화해서 SP 서버 이메일 배치 보내기 문의
2. 김용호 대표가 ervice.xml 파일 만 수정하면 된다고 함.
 1) FSP 서버 이메일 배치 보내기 ==> service.xml 파일 첨부해서 보냄
  가. 스케쥴러(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.10(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 66.3kg

- 주말
06:20 기상
06:30 조식
07:40 집출발
07:20 도림천로 도보
08:20 목동교 도착
08:50 휴식(억새구장 벤치: 20분)
09:50 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
10:06 귀가
10:50 인터넷 서핑 ==> FSP 서버 스케쥴러(scheduler) 분석
12:00 중식
12:30 집출발(자전거)
13:00 보라매 공원(수종) ==> 수종 퀵보드 자전거에 싣고 감. 도보 한 시간.
13:30 솜사탕(수종, 2천원): 보라매공원 노점 ==> 태용이와 통화(황현용 부친상, 내일 17시에 대구 파티마 병원에서 만남 약속)
16:00 감자 튀김(수종, 2천원): 보라매공원 노점
16:50 종료
17:30 석식(치즈돈까스, 비빕밥, 고기만두): 수종 --> 수종이가 조금 먹어서 다 처리 한다고 약간 과식.
18:00 구로리 공원(수종) ==> 도보 한 시간.
19:00 종료
19:10 (주)다이소 대림2호점 ==> 현대 문풍지(중, 15mm*5m, 5P, 5천원), 줄자(5M*19mm, 2천원)
19:40 귀가(루옌 귀가)
20:50 거실 창문, 작은방 창문에 문풍지 붙이기 ==> 서재와 출입문에 더 붙일 것.
21:10 종료
21:40 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.11.11(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==>  

- 주말2
06:20 기상
06:30 조식
07:40 집출발
07:20 도림천로 도보
09:40 목동교 도착
09:00 휴식(억새구장 벤치: 20분)
09:50 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
10:20 귀가
10:50 (주)다이소 대림2호점 ==> 현대 문풍지(중, 15mm*5m, 3P, 3천원),  현대 문풍지(대, 2P, 3천원)
11:00 귀가 
11:10 보일러실 창문, 출입문, 서재 창문에 문풍지 붙이기
11:30 종료
11:50 중식
12:20 집출발
12:40 대림역 7호선 버스 정류장(탑승)
13:20 강남 고속터미널 도착
13:35 강남 고속터미널 야외 대합실에서 점심 식후 혈당 측정(138mg/dl 나옴)
13:40 강남 고속터미널 출발: 고속버스(서울 -> 동대구, 13:40, 일반고속) ==> 독서(환자 혁명: 조한경 저)
16:40 칠곡물류 IC 가는 중 앞에서 차 사고 남 ==> 다행히 경미한 사고라 빨리 처리됨.
17:20 동대구터미널 도착 ==> 신축 건물 처음 봄(신세계 백화점, 동대구역 광장도 멋있음)
17:45 동대구 파티마 병원 연안실 1층 도착 ==> 태용, 상환, 호수, 일남 만남
17:50 동대구 파티마 병원 연안실 3층(301호) 도착 ==> 문상(현용, 현용 가족): 부의금 5만원 전달.
17:55 석식 ==> 다음주 화요일 철상(의성에 매장: 상환이와 광석이가 따라 간다고 함)
19:00 종료
19:20 커피?(태용, 상환, 일남, 승본: 녹차 라떼): 태용이가 쏨 ==> 저녁 식후 혈당 측정(195mg/dl 나옴)
20:10 종료
20:20 동대구터미널 도착
20:35 KTX(동대구역 -> 천안아산역, 20:35) ==> 독서(환자 혁명: 조한경 저)
21:40 천안아산역 도착
21:50 아산역 도착
22:04 예산행 기차(20:19, 영등포역 -> 삽교역, 무궁화호): 아산역 환승 ==> 독서(환자 혁명: 조한경 저)
22:45 삽교역 도착
23:00 귀가
23:20 샤위
23:55 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.12(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:00 ==> 오이사에게 전화(스케쥴러 사용하여 Email 전송: FSP 지원 요청), SK 한국 시리즈 우승(두산에 승, SK 4승 2패)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler
1) FSP 서버 김용호 대표에게 batch.zip 파일 메일로 받음
/ServiceControl.java
/SendMailScheduleTaskService.java
/nexacro17-xapi-1.0.jar
============================================================================================================== 

- MariaDB 계단식 쿼리
/* 메뉴  관리 정보 조회(로그인 후 처리) ==> [/sy:SY_MenuLstInq_S02.xml] [2018.11.12, by 진태만] ==> MySQL*/ 
SELECT @RNUM := @RNUM + 1 AS SEQ,  		-- 순번  
		M.SCR_ID,
		M.PATH_NM, 
		M.MENU_ID, 
		(CASE M.SCR_ID	
						WHEN '' THEN NULL 		 -- 품질검사(QI) 
						ELSE (CASE M.MENU_ID	
												WHEN '' THEN NULL 		  -- null 이면
												WHEN 'SY-08-010' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- 파일 업로드(fsp_fileUpload)
												WHEN 'SY-08-020' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- 팝업 샘플(popUp_sample)
												WHEN 'SY-08-030' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- 엑셀 Export 샘플(excelExport_sample)
												WHEN 'SY-08-040' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- Paging 조회 샘플(paging_sample)
												WHEN 'SY-08-050' THEN CONCAT('sample_fsp::', M.SCR_ID, '.xfdl')  -- Paging 조회 샘플_02(paging_samplr)
												ELSE CONCAT(M.PATH_NM, '::', M.SCR_ID, '.xfdl')
										END)
					END) AS MENU_URL,
			(CASE M.SCR_ID	
							WHEN '' THEN NULL 		 -- null 이면
							ELSE CONCAT(M.PATH_NM, '::', M.SCR_ID, '.xfdl')
					END) AS MENU_URL_90,
				M.BIZ_GP AS MENU_SEP,		
				M.MENU_SEQ,		
				SUBSTR(M.MENU_ID, 4, 9) AS MENU_PID,
				M.MENU_ID, 
				M.SCR_ID,  				-- 화면ID
				M.SCR_ID AS UI_ID,		-- 화면ID_2
				M.MENU_NM,
				M.LVL_NO,
				M.PATH_NM, 
				'100' AS ACL_GRP_CD,	-- 권한그룹코드
				'Y' AS AUTH_INQ,			-- 메뉴 조회 권한 
				'Y' AS  AUTH_REG,	 		-- 메뉴 신규 권한
				'Y' AS AUTH_MOD,			-- 메뉴 저장 권한
				'Y' AS AUTH_DEL,			-- 메뉴 삭제 권한
				'Y' AS  AUTH_PRT,			-- 메뉴 인쇄 권한
				'Y' AS  DISP_YN		 	-- 메뉴 숨김 
	FROM (  
		WITH RECURSIVE empCTE(MENU_ID_02, UP_MENU_ID, BIZ_GP, SCR_ID, MENU_ID, MENU_NM,
												PATH_NM, level)
		AS
		(
			SELECT  MENU_ID, 
						 UP_MENU_ID, 
						 BIZ_GP,	
						 SCR_ID,
						 MENU_ID,
						 MENU_NM,
						 PATH_NM, 
		          	  0   
			FROM HSSCM100			-- 메뉴 정보 TB
			WHERE 1=1
				 AND SUBSTRING(MENU_ID, 4, 9) = '00-000' 		-- 최상위 메뉴 
			UNION all 
			SELECT A.MENU_ID, 
		           		 A.UP_MENU_ID,
			         	 A.BIZ_GP,
			         	 A.SCR_ID,
			         	 A.MENU_ID,
			         	 A.MENU_NM,
			         	 A.PATH_NM,
				         B.level+1
			FROM HSSCM100 AS A 
			INNER JOIN empCTE AS B
				ON A.UP_MENU_ID = B.MENU_ID_02
				 -- AND SUBSTRING(A.MENU_ID, 1, 5) = 'CM-01' 	-- 메뉴  
		)
		SELECT MENU_ID_02 as MENU_ID , UP_MENU_ID, BIZ_GP
					, (CASE BIZ_GP	
		    		 		WHEN 'QI' THEN 1 		 -- 품질검사(QI)
		    		 		WHEN 'VQ' THEN 2   	-- 협력사품질검사(VQ) 
		    		 		WHEN 'NC' THEN 3  	-- 신차개발(NC) 
							WHEN 'UM' THEN 4  	-- 변경관리(UM)
		    		 		WHEN 'DS' THEN 5    	-- 표준류관리(DS)
		    		 		WHEN 'VD' THEN 6    	-- 협력사표준류관리(VD)
							WHEN 'TL' THEN 7     	-- TOOL관리(TL)
							WHEN 'RP' THEN 8		-- 종합분석(RP)
		    		 		WHEN 'CM' THEN 9		-- 기준정보(CM) 
		      				ELSE  10 					-- 시스템관리(SY)
		  			END)  AS MENU_SEQ
		  			, SCR_ID
		  			, MENU_NM
		  			, PATH_NM
		  			, level AS LVL_NO 
		FROM empCTE 
		ORDER BY MENU_ID_02
	) M, 
	( SELECT @RNUM := 0 ) R
	WHERE 1=1 
	  -- AND M.BIZ_GP = 'SY' 		-- 비즈 그룹
	 ORDER BY  M.MENU_SEQ, M.MENU_ID
;
==============================================================================================================

- MariaDB 문법(syntax 에러)
1. SUBSTR ==> SUBSTRTING
2. DECODE 문 ==> CASE 문
SELECT
	-- DECODE(BIZ_GP 
								, 'SY', 10		-- 시스템관리(SY)
		) AS MENU_SEQ_90,*/
	, (CASE BIZ_GP	
				WHEN 'QI' THEN 1 		 -- 품질검사(QI) 
				ELSE  10 					-- 시스템관리(SY)
		END)  AS MENU_SEQ
FROM HSSCM100			-- 메뉴 정보 TB AS MENU_SEQ
				
3. JOIN 문법 에러
4. ||  ==> CONCAT
 1)  ('01. TEST' || '.xfdl')  AS MENU_URL_20,  ==> CONCAT(  '01. TEST', '.xfdl')  AS MENU_URL_20,  
--------------------------------------------------------------------------------------------------------------------------------

-- Mysql 테이블 ENGINE TYPE 확인하는방법
SELECT TABLE_SCHEMA,TABLE_NAME,ENGINE FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_SCHEMA='MYSQL'; 
==============================================================================================================

- 원격 접속 관리 시스템(접근 통제시스템) 로그인 불가
1. https://10.10.111.232/, 로그인: 1519927, /asas3333 접속 안됨
 1) 개발, 운영 서버 접속 불가 ==> 이상탁 차장에게 문의
============================================================================================================== 
 
- 유치원 교원 능력 개발 평가 ==> 완료 @@@
1. 대동 초교 병설유 치원 사용자 모드 접속 에러 ==> http://eoehd1111.eduk01.kr, p153 / hptn*16*1@
 1) 이동희 선생님(교육 과정 교사), 담당명: 아름반
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.13(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:00 ==> 

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러(scheduler) ==> https://softzam.atlassian.net/wiki/spaces/svrdoc/pages/15007963/scheduler 
============================================================================================================== 
 
- MySQL mysqldump를 이용해서 export하고 ,dump 파일 Import 하기
1. https://java.ihoney.pe.kr/215
------------------------------------------------------------------------------------------------------

- [MySQL] dump와 import
1. http://dev-smc.tistory.com/12
------------------------------------------------------------------------------------------------------

- mysql function 생성하기
1. http://choija.tistory.com/26
============================================================================================================== 

- MariaDB syntax 에러
1. 현상:
SQL Error [1064] [42000]: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server 
version for the right syntax to use near 'LIMIT 0, 200' at line 10
2. 원인:   --- 로그인ID  ==>   -- 로그인ID로 수정할 것
SELECT   A.* 
FROM HSSCU100 A
WHERE 1=1
	AND A.USER_ID = '1519929'     -- 로그인ID 
;
============================================================================================================== 

- 구글 크롬 오른쪽 마우스 클릭 해제 (불펌방지 해제) 하기 피그 툴박스
1. https://boogong.tistory.com/41

- 펌 방지 해제 C Browser(씨 브라우저) 3.3 포터블 다운로드[IE 대체]
1. http://ksutil.uu.gl/121  ==> http://chyoti235.tistory.com/entry/MySQL-coalesce-ifnull-함수
==============================================================================================================

- eclipse 에러(숙소 노트북)
1. 현상:
An internal error occurred during: "Building workspace". GC overhead limit exceeded
 1) 해당 에러 는 The "java.lang.OutOfMemoryError: GC overhead limit exceeded" 메시지는 어떤 이유로 인해 garbage collector 가 
과도한 시간을 소비하고 있음을 의미한다. 
2. 조치: http://geekstar.tistory.com/191
 1) eclipse > 상단 탭에서 Project > Properties 를 열어 왼쪽 메뉴 중 Builders > JavaScript Validator의 체크 해제
--------------------------------------------------------------------------------------------------------------------------------
  
- javax.servlet.http.HttpServletRequest cannot be resolved 에러
1. 현상:
import javax.servlet.http.HttpServletRequest
2. 조치: 
http://blueray21.tistory.com/58
============================================================================================================== 

- 은혜 교회 축구부 회비 납부  ==> 완료 @@
1. 2018.08 ~ 12월 회비 5만원 ==> KEB 하나은행 김옥희(이영만형 형수님) 통장으로 송금
==============================================================================================================
 
- 신사 조기회 안상요 형한테 전화 옴.
1. 조기회 회장(병규형) 내년에 교체되니 다시 조기회 나오라고 함. ==> 알았다고 만 함.
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.11.14(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:00 ==> 주간보고서 작성

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러 설정(매일 8시에 자동 이메일 전송)
2. JAVA단에서 이메일 발송 모듈 개발
============================================================================================================== 
 
-- MariaDB에서 DB 테이블 정보 조회 @@@
-- 전체 테이블 목록 보기 @@@ 
SHOW TABLES
;

-- 테이블 목록 보기 @@@ 
SELECT A.TABLE_NAME as "테이블명(물리적)", A.TABLE_COMMENT as "테이블명(논리적)", A.TABLE_ROWS as  "테이블 row"
			-- , A.* 
FROM INFORMATION_SCHEMA.TABLES A 
WHERE 1=1
	AND A.TABLE_SCHEMA = 'qmsmgr' -- 테이블 스키마
	AND A.TABLE_NAME = UPPER('hsbca200') 	 -- 테이블명(물리적)
ORDER BY A.TABLE_NAME
; 
-- -------------------------------------------------------- COMMIT,    ROLLBACK

-- 테이블 칼럼 보기 @@@ 
SELECT TABLE_NAME, COLUMN_NAME, COLUMN_COMMENT 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE 1=1
	AND TABLE_SCHEMA = 'qmsmgr'		-- 테이블 스키마
	-- AND TABLE_NAME = 'hsbca200'   	-- 테이블명(물리적)
	AND TABLE_NAME = UPPER('hsbca200') 	 -- 테이블명(물리적)
ORDER BY COLUMN_NAME
; 
-- ============================================================================================================== 

- 숙소 회사 노트북에 현대제철 APQMS 셋팅 완료
1. eclipse 64비트 ==> MariaDB로 연결(테이블 생성, 로그인, 강관 수입검사 조회 가능)
 1) null 연결 성공
============================================================================================================== 
  
■■■■■■■■■■■■■■■■■■ 2018.11.15(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:00 ==> 중식(쌈밥 정식[박정자 식당], 개발팀, 김동학 차장이 쏨): 중식 후 걸어서 사업장 복귀

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러 설정(매일 8시에 자동 이메일 전송) ==> 소프잼에 원격 지원 요청(오후에 연락 준다고 함): 연락 안 옴.
 1) /service.xml
2. JAVA단에서 이메일 발송 모듈 개발 ==> 완료 @@@
 1) /SendMailScheduleTaskService.java
============================================================================================================== 

- MySQL mysqldump를 이용해서 export하고,dump 파일 Import 하기
1. https://java.ihoney.pe.kr/215
------------------------------------------------------------------------------------------------------

- [MySQL] dump와 import
1. http://dev-smc.tistory.com/12
------------------------------------------------------------------------------------------------------

- mysql function 생성하기
1. http://choija.tistory.com/26
============================================================================================================== 

- Dump database(DBeaver에서: 숙소 노트북에서 처리)
1. DBeaver에서 > 상단 메뉴 > Database > Tools > Dump database: 클릭 
==> dump-qmsmgr-201811152214.sql 파일 생성
============================================================================================================== 

- 케어센스N 혈당시험지 주문
1. 인터파크 케어센스N 혈당시험지 500매(10통), 란셋100개(2,500원), 가격: 126,540원(개당: 248원)
==> http://shopping.interpark.com/product/productInfo.do?prdNo=5535621826&dispNo=016001&utm_medium=affiliate&utm_source=enuri&utm_campaign=shop_p11713_p00335&utm_content=main
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.11.16(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 19:40 ==> 서울행(20:12 ~ 22:07, 삽교역 -> 영등포역), 여상무 휴가(건강 검진)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러 설정(매일 8시에 자동 이메일 전송) ==>  
 1) /service.xml
2. JAVA단에서 이메일 발송 모듈 개발 ==> 완료 @@@
 1) /SendMailScheduleTaskService.java
============================================================================================================== 

- 인수인계 대상(15시, 이상탁 차장)
1. 암호화 로직(비번 체크 로직)
2. 로그인 로직
3. 세션 관리 로직(1시간 자동로그아웃 로직)
4. 화면 사용이력 로직
============================================================================================================== 

- 2018.04.16_현대제철 apqms_OffLine_11.20 정리(OffLine)
1. OffLine 처리 
/***********************************************************************
 * 함수명  	: fn_MainSearch
 * 설명 		: 강관 수입검사 Main 조회 
***********************************************************************/
this.fn_MainSearch = function()
{
	// 77. OffLine 처리 @@@ ===>  
// 	this.fn_afterSearchMarster(		// fn_afterSearchMarster
// 		0, 				// nErrorCode
// 		"succ"	// sErrorMsg 
// 	); 
	
	// 77. OffLine 처리 @@@ ===>  
	this.fn_callback_OffLine(		// fn_callback_OffLine
		0, 				// nErrorCode
		"succ", 		// sErrorMsg
		"sid_find" 		// 서비스 요청 아이디(콜백 함수에서 사용 가능)
	); 
} 

/***********************************************************************
 * 함수명  	: fn_callback_OffLine
 * 설명 		: 콜백 함수(오프 라인) 
***********************************************************************/  
this.fn_callback_OffLine = function(nErrorCode, sErrorMsg, sid)
{
	trace("[/QI_SteelPipeImpInsp.xfdl][fn_callback_OffLine()]==> [콜백][TEST_01][sid]"+ sid 
		+"[nErrorCode]"+ nErrorCode +"[sErrorMsg]"+ sErrorMsg ); 
    
	switch(sid)
	{
		case "sid_find" :   	// 조회 이면  
		
			// 77. OffLine 처리 @@@ ===>  
			this.ds_list.clearData();
			this.ds_list.copyData(this.ds_list_DBServer, true);		
			// ds_list_DBServer Ds에서 복사(ds_list_DBServer Ds가 DB 서버 역할 수행)
			trace("[/QI_SteelPipeImpInsp.xfdl][fn_callback_OffLine()]==> 
				[TEST_21][ds_list.CNT]"+ this.ds_list.getRowCount() +"[ds_list.saveXML()] \n"+ this.ds_list.saveXML() );    
	}
}
2. 이메일 보내기
============================================================================================================== 

- 현대제철 보안 프로그램 실행
1. DiskPhySerial_Win.exe
============================================================================================================== 

■■■■■■■■■■■■■■■■■■ 2018.11.17(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 65.8kg[과체중에서 정상 체중으로 전환됨), 포항행

- 주말
07:00 기상
07:30 조식
08:00 집출발
08:20 도림천로 도보
08:20 목동교 도착
09:00 휴식(억새구장 벤치: 20분)
09:50 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
10:20 귀가
10:25 큰누나한테 카톡 옴(시어머니 별세) 
10:30 이발(스카이 미용실: 8천원)
11:10 귀가
11:20 염색(루옌이 해줌)
11:40 중식
12:00 집출발
12:10 7호선 대림역 정류장(6411번 버스 탑승): 수종 ==> 40분 소요 
12:50 강남 터미널 도착
13:20 강남 터미널 출발(수종): 우등 고속버스 편함.
13:40 중석식 식후 혈당 측정(206mg/dl 나옴): 무리하게 운동
17:20 포항 터미널 도착 ==> 4시간 걸림(상주 영천 고속도록 생겨서 빨라짐)
17:30 포항 터미널 버스 정류장(101번 버스 탑승)
17:50 포항집 도착 ==> 커피 가지고 감. 휴대폰 충전기 감.
18:10 석식
18:30 다이소포항 두호점(지퍼 넥타이(블랙): 장례식장용, 클래식 기차 놀이[수종] 구입)
19:10 포항집 출발
19:20 택시(두호동 포항집 -> 경주전문장례식장: 3만 5천원 달라고 함): 큰누나 시어머니 상
20:00 경주전문장례식장 도착
20:10 문상 ==> 어머니 돈(20만원)으로 내 이름 적고 부의금 냄.
20:20 다과 ==> 령경이, 령경이 사촌이 수종이 무척 좋아함. 조카는 노무사 합격 했다고 함.
21:00 종료
21:10 경주전문장례식장 출발(큰누나 차) ==> 수종 누나한테 5만원 받음
21:40 포항집 도착 
22:00 취침
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2018.11.18(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 포항 묘사

- 주말2
07:00 기상
07:30 조식
08:20 집출발
08:30 영일대 해수욕장 -> 환여 버스 종점 -> 포항 여객 터미널 -> 등대 -> 귀가: 도보 길이 잘 되어 있음.(동해안 길)
10:40 귀가 ==> 작은 엄마 오셔서 음식 준비하고 있음.
10:50 축문 작성
11:30 일생이 아제 방문 ==> 축문 써 가고 옴.
11:40 작은 아버지, 대규, 병호 아제(숙모), 중욱 아제, 재원이 고모(재경),  동욱이 고모부
12:10 묘사 ==> 일생이 아제 써온 축문 읽음. 회비 6만원 냄.
		==> 내년 부터 고성 산소에 가서 묘사 지내기로 함.(일생이, 종욱이 아제 부정적)
		==> 수종 재하, 작은 숙모, 대규, 병일, 병호 아제한테 만원씩 받음
12:40 종료
12:45 병호 아제(숙모) 늦게 옴
12:50 식사
13:20 재하 도착 ==> 리 플러스(과자, 시리얼 많이 사옴)
		==> 재하 용흥동에 거주(베트남 호치민 공장 근무 희망)
15:00 친척들 다 귀가 함. ==> 수종 할머니한테 5만원 받음
15:20 포항집 출발(수종: 도보) ==> 가방 무거움, 재하가 사온 과자 많음.
		==> 이어폰, 휴대폰 충전기 가지고 옴.
15:50 수종 대변(우창동 주민센터 근처 건물)
16:00 유성여고 버스 정류장(107번 버스 탑승)
16:15 포항역 도착
16:25 포항역 출발 ==> 자리 하나면 구입을 해서 매우 좁았음.
18:55 서울역 도착(수종)
19:10 서울역 1호선
19:40 대림역 도착 ==> 루옌에게 가방, 수종 맡김(수조이가 받음 용돈 16만원 전달)
							==> 중목 양말(10 켤레): 대림역 구내
20:10 영등포역 도착 
20:49 예산행 기차(20:19, 영등포역 -> 삽교역, 무궁화호)
22:40 삽교역 도착
23:00 귀가
23:20 샤위
23:55 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.19(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:30 ==> 이상탁 차장 울산 근무

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러 설정(매일 8시에 자동 이메일 전송) ==>  
 1) /service.xml
2. JAVA단에서 이메일 발송 모듈 개발 ==> 완료 @@@
 1) /SendMailScheduleTaskService.java 
 2) /SendMailScheduleTaskService_02.java 
============================================================================================================== 
 
- 오이사에게 긴급 전화
1.  2018.11.21(수) 19시 회식 후 철수
2. 날짜 주기로 동작하는 스케줄러 안됨 ==> 소프잼에 원격 지원 요청  ==> 소프잼에 대표가 전화 안 받는다고 함.
============================================================================================================== 
 
- 현대제철_테이블 정보 db script 작업 ==> 완료 @@@
1. HSSCF100_화면정보 ==> 기본 데이타 필요 @@@  ==> 완료 @@@
============================================================================================================== 
 
- MySQL 테이블 및 데이타베이스 이름 대소문자 구분 설정(/my.ini)
0. show variables like 'lower_case_table_names'; 			
--  값이 2이면 윈도우에서 테이블명 대소문자를 구분, 0이면 대소문자 구분, 1이면 대소문자 구분 없음

1. /my.ini 파일에서) C:\Program Files\MariaDB 10.3\data)
[mysqld]
datadir=C:/Program Files/MariaDB 10.3/data
port=3306
innodb_buffer_pool_size=407M
character-set-server=utf8 
lower_case_table_names = 2	# 윈도우즈에서 대소문자를 구분하여 테이블명을 만듬.
 
- 0 : 테이블명 대소문자 구분 (Linux)
- 1 : 입력값에 관계없이 무조건 소문자로 인식하여 대소문자 구분없이 출력가능 (Windows)
- 2 : 윈도우에서 테이블명 대소문자를 구분 (Mac)
 
2. MySQL 서버 재시작
 1) Window 작업 관리자(새창) > 서비스(Tab): MySQL: 서비스 중지(S): 클릭 ==> 서비스 시작(S): 클릭
============================================================================================================== 
 
■■■■■■■■■■■■■■■■■■ 2018.11.20(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:40 ==> 이상탁 차장 울산 근무

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송
1. 스케쥴러 설정(매일 8시에 자동 이메일 전송) ==>  완료 @@@
 1) /service.xml
2. 이상탁 차장이 준 소스(/fsp스케쥴설정.sql)를 분석해서 수정 처리 함.
3. 발송된 메일 내용 수정 요청
 1) HTML 변경(table 형태)
============================================================================================================== 

-  91. 현대제철 APQMS_51(MariaDB 버전)에서 FN_QI_SEQ_GEN 함수 에러
1. INSERT INTO HSBCD100() 가능, RETURN 값 못 가지고 옴.(Function 함수 직접 호출)
/* 검사번호 자동 채번 ==> [/qi/QI_SteelPipeImpInsp_S07.xml] [2018.11.13, by 진태만] ==> MySQL*/
SELECT FN_QI_SEQ_GEN('QM49014') IQC_NO FROM DUAL;

set V_RET_CODE = CONCAT(V_BASE_DATE, V_STEP, LPAD(V_SEQ, 4, 0));
RETURN V_RET_CODE;	 /* 이 프로시저를 실행할 경우 select된 result 값이 리턴된다. */
============================================================================================================== 

-  91. 현대제철 APQMS_51(MariaDB 버전) 수정
1. DECLARE 에러  ==> 사용 안함.
 1) 에러 내용: 
 You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the 
right syntax to use near 'DECLARE v_nCount  INT; 
  2) 소스
	/* 검사번호 자동 채번 ==> [/qi/QI_SteelPipeImpInsp_S07_02.xml] [2018.11.13, by 진태만] ==> MySQL*/ 	   
	BEGIN 
	
		DECLARE v_nCount  INT; 
	 
				SELECT COUNT(*) INTO v_nCount 
				FROM QMSMGR.HSBCD100	 	-- 시퀀스 채번 정보 TB
     			WHERE 1=1
            		AND SEQ_CODE = 'QM49014'		-- 시퀀스 업무 구분
           			AND SEQ_DATE = DATE_FORMAT(now(), '%Y%m%d'); 		 -- 기본 날짜(오늘 날짜)
           			 
	            IF v_nCount  = 0 THEN
			       INSERT INTO HSBCD100   	-- 시퀀스 채번 정보 TB
			       ( 
						SEQ_CODE, 
						SEQ_DATE, 
						LAST_SEQ, 		-- 마지막순번
						SEQ_NAME, 		-- 시퀀스업무명
						CID, 
						CDT, 
						MID, 
						MDT
					)
					VALUES
					(
					  'QM49014',			-- 시퀀스 업무 구분
					   DATE_FORMAT(now(), '%Y%m%d') ,					-- 시퀀스일자
					   v_nCount +1,													-- 마지막순번
					   '강관 수입검사',													-- 시퀀스업무명 
					   'SYSTEM',														-- 등록자ID
						DATE_FORMAT(now(), '%Y%m%d%H%i%s'), 		-- 등록일자
					  	'SYSTEM',														-- 수정자ID
					 	DATE_FORMAT(now(), '%Y%m%d%H%i%s') 		-- 수정일자
					);
		         END IF;
		         
	             IF v_nCount  = 1 THEN 
					UPDATE	  HSBCD100	-- 시퀀스 채번 정보 TB
					SET LAST_SEQ = v_nCount, 													-- 마지막순번
							MDT = DATE_FORMAT(now(), '%Y%m%d%H%i%s') 		-- 수정일자
             		WHERE 1=1
                 		AND SEQ_CODE = 'QM49014'		-- 시퀀스 업무 구분
           				AND SEQ_DATE = DATE_FORMAT(now(), '%Y%m%d'); 		 -- 기본 날짜(오늘 날짜)
				END IF;		 
		END;
============================================================================================================== 
  
-- 사업장 PC MariaDB 테이블 목록 보기 @@@   ===> 165건
SELECT A.TABLE_NAME as "테이블명(물리적)", A.TABLE_COMMENT as "테이블명(논리적)", A.TABLE_ROWS as "테이블 row"
			-- , A.* 
FROM INFORMATION_SCHEMA.TABLES A 
WHERE 1=1
	AND A.TABLE_SCHEMA = 'qmsmgr' -- 테이블 스키마
-- AND A.TABLE_NAME = 'hssch900'  -- 테이블명(물리적)

   --   AND A.TABLE_NAME = UPPER('HSBCA200') 	 -- 테이블명(물리적)  ==> HSBCA100, HSBCA200
ORDER BY A.TABLE_NAME
; 
============================================================================================================== 
  
- mysql 프로시저 디버깅 툴(30일 무료 버전)
1. dbForge Studio Express for MySQL(무료) 설치 ==> https://download.cnet.com/dbForge-Studio-Express-for-MySQL/3001-10254_4-10128038.html
3. dbForge Studio for MySQL, v8.0 Professional Trial ==> https://www.devart.com/dbforge/mysql/studio/download.html#anchorDowload 
============================================================================================================== 

- .NET Framework 4.5.2 이상 설치
1. .NET Framework 4.5.2 다운로드 및 설치 ==>  https://www.deploymaster.com/dotnetfx.html
============================================================================================================== 
   
■■■■■■■■■■■■■■■■■■ 2018.11.21(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 20:30 ==> 여상무 휴가(부인 다리 진료), 비 조금 옴(중식 후 비 맞으며 도보, 석식 후 공장에서 도보)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송 
1. 발송된 메일 내용 수정 ==> 완료 @@@
 1) HTML 변경(소계 rowspan 처리)
============================================================================================================== 

- JSP ROWSPAN 합치기 
1. 테이블로 값을 보여줄때 1행과 2행의 첫번째 열의 값의 내용이 같을때 rowspan으로 묶어주고자 할때 
------------------> -------------------
| AAA | 홍길동 |.. ->|         | 홍길동    |..
|---------------- ->| AAA  |------------
| AAA | 홍두깨 | . ->|         | 홍두깨    |..
----------------- ->-------------------
<%
 
	if(infoArray.length > 0) // 조회한 데이터가 1개 이상일 경우
	{
		int iRowSpanCnt = 0;		// RowSpan 수
		boolean bRowspanYN = false;		// RowSpan 여부

		for(int i=0 ; i < infoArray.length; i++)
		{ 
	%>
		<TR>
	<% 
			if( iRowSpanCnt == 0 )		// RowSpan 수가 0 이면
			{ 
			   iRowSpanCnt += 1; 	// iRowSpanCnt값에 1을 더함 
			   
				for(int j = i+1; j < infoArray.length; j++ )
			   { 
					bRowspanYN = true; 	// 첫째행이 rowspan값 있든 없든 해당셀은 그려줘야 하므로 

					//같은 이름이 다음 row에 또 나오는지를 체크
					if( infoArray[i].getTitle().equals( infoArray[j].getTitle() ) )
					{  
						iRowSpanCnt++; // iRowSpanCnt값 증가 
					}else{ 
						break; 
					}	//end if  
				}	// end of for() ==> J 
			}//end if

			if( bRowspanYN ){	// rowspan을 설정
			%>
				  <TD rowspan="<%=iRowSpanCnt%>" align="left" width="190"><%=infoArray[i].getTitle()%>  </TD>
			<%
				}//end if
				
				bRowspanYN = false; 	// rowspan을 설정했다고 가정하고 다음 row에서는 해당셀을 그리지 않도록

				// iRowSpanCnt 값이 0이면 해당 row병합이 끝났으므로 초기화    
				if( --iRowSpanCnt == 0 )
				{ 
					bRowspanYN = true; 
				}	//end if
			%>
				<TD align="left" width="310"><%=infoArray[i].getKpiNm()%></TD> 
		%>
		</TR>
	<% 
		}		 // end of for() ==> I
	}	//end if	
%>  
==============================================================================================================
   
■■■■■■■■■■■■■■■■■■ 2018.11.22(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 18:00 ==> 철수(18시), 회식(19:00 ~ 21:00)

- 현대제철 AP 품질관리 시스템 구축 Prj [★]
- 스케쥴러 사용하여 Email 전송 
1. 발송된 메일 내용 수정 ==> 완료 @@@
 1) HTML 변경(2번째 소계 colsapn='2' 처리)
============================================================================================================== 

- 인수 인계 정리
1. 자료 확인 
--------------------------------------------------------------------------------------------------------------------------------

- 패스워드 3개월 설정
1. 로그인 화면(/commLogin.xfdl])에서
 /* 사용자 정보 가져오기 ==> [sy:SY_UserInfoInq_S01.xml] [2018.06.18 by 진태만] */ 
 SELECT M.USER_ID    				-- 사용자ID 
				, M.PWD_NEXT_CHG_YN           		-- 비밀번호 다음 변경 여부 
				, (CASE WHEN (M.PWD_NEXT_CHG_YN IS NULL AND M.PWD_CHG_DT IS NOT NULL 
				AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD')
								<![CDATA[<]]> TO_CHAR(SYSDATE - 90, 'YYYYMMDD')) THEN 'Y' 		
								-- 비밀번호 다음 변경 NULL, 비밀번호 변경일이 오늘 날짜 - 90일 보다 적으면 
							WHEN (M.PWD_NEXT_CHG_YN IS NOT NULL AND M.PWD_CHG_DT IS NOT NULL 
							AND TO_CHAR(TO_DATE(M.PWD_CHG_DT), 'YYYYMMDD') 
								<![CDATA[<]]> TO_CHAR(SYSDATE - 30, 'YYYYMMDD')) THEN 'U' 		
								-- 비밀번호 다음 변경 NOT NULL, 비밀번호 변경일이 오늘 날짜 - 30일 보다 적으면("다음에 변경") 
							ELSE 'N' END) AS PWD_CHG_DT_ELAP_YN	 	
							-- 비밀번호 변경일 경과 여부
				, (CASE WHEN (M.LOGIN_DT IS NOT NULL AND TO_CHAR(TO_DATE(M.LOGIN_DT), 'YYYYMMDD') 
								<![CDATA[<]]> TO_CHAR(SYSDATE - 30, 'YYYYMMDD')) THEN 'Y' 
							ELSE 'N' END) AS LOGIN_DT_ELAP_YN    			
							-- 로그인 시도일 경과 여부(미접속 3개월 이상 사용자 계정은 접속권한 회수)  
FROM
FROM HSSCU100 A 	 -- 사용자등록 정보 TB 

2. gds_session에 저장
<Dataset id="gds_session" useclientlayout="false">
	<Column id="PWD_CHG_DT_ELAP_YN" type="STRING" size="256" description="비밀번호 변경일 경과 여부"/>
<ColumnInfo>

3. APQMS.xadl 파일에서 셋팅
/***********************************************************************
 * 함수명  	: afn_popup_callback
 * 설명 		: 로그인 콜백 함수 
***********************************************************************/
this.afn_popup_callback = function(sid, rtn)
{
	trace("[/APQMS.xadl][afn_popup_callback()]==> [로그인 콜백 함수][TEST_01][sid]"+ sid +"[rtn]"+ rtn ); 

	if(rtn) 
	{  	
		this.gfn_setPopPropile();		// 비밀번호 변경 팝업 처리
	}
}	

4. /lib_Util.x 파일에서
/*****************************************************************************************
* 함  수  명 : gfn_setPopPropile()
* 설   명    : 비밀번호 변경 팝업 처리 
*****************************************************************************************/    
this.gfn_setPopPropile = function()
{   
	if(application.gds_session.getRowCount() > 0)
	{ 
		if(application.gds_session.getColumn(0,"PWD_CHG_DT_ELAP_YN") == "Y"   
		// 비밀번호 변경일 경과 여부가 '비밀번호 주기 변경일(90일)'이 지났으면
		==> 비밀번호 변경 화면으로 이동
			|| application.gds_session.getColumn(0,"PWD_CHG_DT_ELAP_YN") == "U") 
		// 비밀번호 변경일 경과 여부가 '다음에 변경'이고 비밀번호 주기 변경일(30일)이 지났으면 
		==> 비밀번호 변경 화면으로 이동
		{ 
			//trace("[/lib_Util.xjs][gfn_setPopPropile()]==> [TEST_81]");
			application.av_topFrame.form.fn_popChgPwd();		// 프로파일 팝업 호출
		}
	}
}

/***********************************************************************
 * 함수명  	: fn_popChgPwd
 * 설명 		: 비밀번호 변경 팝업 이벤트 
***********************************************************************/ 
this.fn_popChgPwd = function()
{  
	var sOption = "popupType=modal";		// 팝업 타입
		sOption += ", showtitlebar=false";		// 타이틀바 상단 보이기 여부(showtitlebar) 
		sOption += ", resizable=false";		// 팝업 리사이즈 가능 여부 
		sOption += ", width=430";			// 팝업 넓이(width=800, width=1200) ==> top, left
		sOption += ", height=303";			// 팝업 높이(height=500, height=900)  
 
	var sPopupUrl = "popup::pop_chgPwd.xfdl";		// 팝업 Url(pop_chgPwd.xfdl:비밀번호 변경 팝업 화면)
 
	this.gfn_openPopup("frmTop", sPopupUrl, params, sOption, "fn_openpopCallback");   
}

4. 비밀번호 변경 팝업(/pop_chgPwd.xfdl)) 화면에서 비밀번호 변경 
/* 사용자 정보 수정 ==> [cm:CM_UsrtMngm_U02.xml] [2018.08.30, by 진태만] */ 
UPDATE HSSCU100
SET EMAIL= #EMAIL# 			-- 이메일  
		<isNotNull col="NEW_PWD"> 
			, PWD  = TRIM(#NEW_PWD#) 		-- 암호(새로운 암호)
			, PWD_CHG_DT = TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') 			-- 비밀번호 변경일 
		</isNotNull>  
		, PWD_NEXT_CHG_YN = #PWD_NEXT_CHG_YN#				-- 비밀번호 다음 변경 여부 
		, PHONE = #PHONE# 				-- 핸드폰
		, SIGN_SEQ = #SIGN_SEQ# 		-- 사인 SEQ
		, MID = #MID#						-- 수정자ID
		, MDT= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS') 		-- 수정일
WHERE USER_ID  = #USER_ID#		-- 사용자ID  
==============================================================================================================

- 현대제철 Prj 철수(17시)
1. 철수 확인서 작성(이상탁 차장)
2. 모니터, PC 반납(최은석 과장)
3. 개인 모니터 박싱
4. 임시 출입증(방문증) 반납 후 주민증 찾기(경비실)
==============================================================================================================

- 현대제철 Prj 철수
05:00 기상
05:20 샤워
05:30 짐정리(침낭, 매트, 베게)
06:20 속소 출발
07:00 출근(심원개발 1공장)
07:05 조식
07:30 발송된 메일 내용 수정 ==> HTML 변경(2번째 소계 colsapn='2' 처리)
12:00 중식
12:20 도보 
12:40 종료 
13:30 발송된 메일 내용 수정 ==> HTML 변경(2번째 소계 colsapn='2' 처리)
15:00 이상탁 차장이패스워드 3개월 설정 설명 해달라고 해서 화냄.
16:30 오이사, 구종식 부장 도착
17:00 발 발송된 메일 내용 수정 완료, 개발 서버, 운영 서버에 적용
17:30 종료
17:40 짐정리(모니터)
18:00 고기집(살찐 진수네): 개발팀, 이상탁 차장, 부장 참석
19:10 숙소에 가서 짐정리
20:10 예산 출발 ==> 오이사(운전), 구종식 부장
20:40 예산 고속도로 근처에서 차 오른쪽 바퀴 근처 범퍼 조각이 걸려서 빼냄(사고 날 뻔 함)
20:55 사과 구입(오이사가 쏨: 2만 5천원: 한 상자 선물 받음)
21:20 매송 휴가소(음료수: 녹차)
22:00 문영A 도착
22:10 도림천(야간 도보)
23:00 귀가
23:20 취침
==============================================================================================================

- 철수시 이삿짐
1. 철수일에 가지고 갈 것
 1) 옷(셔츠, 양말, 속옷: 숙소)
 2) 이불(침낭, 매트, 베게: 숙소) 
 3) 와이파이 공유기(숙소)
 4) 노트북(숙소)
 5) 잡다한 물건(숙소, 사업장[가방에 넣을 것])
 6) 접이식 의자(숙소)
 7) 델 모니터(사업장) 
---------------------------------------------------------------------------------------------------------------------------

- 철수시 이삿짐 @@@
1. 여행용 캐리어(28인치, 스위스 밀리터리)
 1) 이불(침낭, 매트, 베게)  
 2) 세탁 세제 
---------------------------------------------------------------------------------

2. 가방
 1) 옷(셔츠, 양말, 속옷)
---------------------------------------------------------------------------------

3. 백팩(hp)
 1) 노트북
 2) 잡다한 물건(숙소, 사업장) 
---------------------------------------------------------------------------------

4. 기타
 1) 접이식 의자(숙소)
 2) 델 모니터(사업장) ==> 오이사 차에 실음(다음주 회사에 갖다 준다고 함)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.23(금) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 64.6kg(정상 체중)  

- 휴가
07:00 기상
07:30 조식
08:30 집출발(자전거): 수종
08:35 대동초 유치원: 수종
08:45 귀가
08:50 집출발
09:00 도림천로 도보
09:40 목동교 도착
10:10 휴식(억새구장 벤치: 20분)
10:50 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
11:00 귀가
12:00 중식
14:00 중식 후 식후 혈당 측정(1612mg/dl 나옴)
14:05 집출발(자전거)
14:25 김안과 도착
14:30 예약 확인(1층 안내 데스크)
14:40 6층 안내 데스크(접수) ==> 기초 안과 검사 ==> 혈압: 114/74㎜Hg, 맥박수: 105bpm		
15:20 진료(백승국 원장, 6층 61호) ==> 총 병원비: 63,800원 나옴(실비 보험 증명서 비용: 2만원 포함됨)
		--> 다음주부터 2주 동안 레이져 수술 하자고 함.  시력: 0.4, 0.5 안경 착용 권유(안 좋아 진다고 함)
15:30 종료
16:00 대동초 유치원: 수종 데리고 옴,
16:30 귀가(물, 장난감 가지고 옴)
16:40 집출발(자전거)
17:00 서울가정의학과의원 방문(수종 코 감기)
17:10 조제(수종 목감기약: 래미안나나약국)  
17:20 구로 공원(수종)
18:20 종료  
18:30 석식(치즈돈까스, 비빕밥): 수종
19:00 귀가
20:40 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.24(토) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 첫 눈, 체중: 66.6kg(과 체중)

- 주말
07:00 기상
07:30 조식
08:00 집출발: 수종
08:20 도림천로(수종이과 눈사람 만듬)
08:50 귀가
09:00 휴식
12:00 중식
13:00 집추발
13:10 보라매 공원(수종) 
13:40 도보
16:30 종료  
17:00 치킨(맛닭고): 갈릭 베이크(포장)
18:30 귀가 
18:50 석식(치킨) 
19:20 계단 오르기(아파트 18층 계단 오르 내림) 
20:20 취침
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2018.11.25(일) 작업 ■■■■■■■■■■■■■■■■■■
---> 06:20 ~ 23:00 ==> 체중: 67kg(과 체중)

- 주말2
06:00 기상
06:30 조식
07:00 인터넷 서핑
08:00 집출발
08:10 도림천로 도보
09:00 목동교 도착
09:30 휴식(억새구장 벤치: 20분)
10:00 근력 운동(대림역 도림천로 운동 기구)
		==> 풀웨이트(TM12-01): 어깨 운동 , 레그 프레스(TM12-05): 허벅지 운동
10:20 귀가   
12:00 중식
12:30 인터넷 서핑
14:00 계단 오르기(아파트 18층 계단 오르 내림) 
14:30 집출발
14:50 대림운동장
15:10 축구 게임(은혜교회팀: 어울림팀) ==> 5쿼터 뜀: 컨디션 약간 괜찮음. 약간 피곤
18:00 종료
18:25 귀가 
18:30 석식
18:50 샤워 
19:20 계단 오르기(아파트 18층 계단 오르 내림) 
19:45 인터넷 서핑
23:00 취침 
==============================================================================================================
 
- 44. 혈당관리 수첩_2018.11.xlsx 파일에서 서식 설정(엑셀 서식 설정)
A. 홈 > 조건부 서식 > 규칙관리(R) > 조건부 서식 규칙 관리자(새창)
1. 새 규칙(N): 수식을 사용하여 서식을 지정할 셀 결정: 클릭
 1) 다음 수식이 참인 값의 서식 지정(O): =$C9>120 
   --> 서식(F): 배경색 설정 ==> 확인: 클릭
 2) 적용 대상 ==> =$C$9:$C$91
------------------------------------------------------------------------------

B. 홈 > 조건부 서식 > 규칙관리(R) > 조건부 서식 규칙 관리자(새창) 
1. 새 규칙(N): 다음을 포함하는 셀만 서식 지정: 클릭
 1) 다음을 포함하는 셀만 서식 지정(O): 셀값: 선택 >==120
서식(F): 배경색 설정
   --> 서식(F): 배경색 설정 ==> 확인: 클릭
 2) 적용 대상 ==> =$C$9:$C$91
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.26(월) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 09:10 ~ 15:30 ==> 본사 복귀

- 본사 대기[★]
- 스케쥴러 사용하여 Email 전송 
1. 프린터 연결[(주)지아이데이타 본사] 
============================================================================================================== 

- 2018년 10 ~ 11월 지출결의서 작성(13시, 회사)
1. 2018.10 ~ 11지출 결의 합계 금액:  202,100원
2. 출력해서 경리(김유진 대리)에게 전달할것	
============================================================================================================== 

- 삼성 디지털 시티 회원 가입
1. https://www.sdigitalcity.com ==> tamario2/hptnwhd160 	
2. 회원 가입
 1) 업체명: 비에네스 소프트, 1208602209, 박상호
3. 삼성 디지털 시티 방문 예약 ==> 비에네스 소프트에서 한다고 함.
==============================================================================================================

- 인슐린 펌프 문의 전화(T: 1544-8454)
1. 치료비: 220만원(입원비 포함 300만원 예상)
2. 입원: 2주
3. 추가 비용: 한 달에 4 ~ 5만원 소요
----------------------------------------------------------------------------------------------------------------------

- 최수봉 교수 진료 예약(13:00, 충주 건대병원) 
1. 일시: 2018년 11월 27일(화) 13시
2. 기본 검사 ==> 진료
==============================================================================================================

- 휴가
09:10 출근
11:30 중식(이석부 사장이 쏨, 구종식 부장, 오태범 이사)
12:00 도보(선릉, 정릉)
13:00 귀사
15:30 퇴근
16:00 선릉역 버스 정류장 ==> 6411번 탑승
17:30 귀가
17:35 집출발(자전거)
17:45 대동초 유치원: 수종 데리고 옴. 
18:00 서울가정의학과의원 방문(수종 코 감기)
18:10 조제(수종 목감기약: 래미안나나약국)  
18:20 구로 공원(수종)
19:00 종료  
19:10 석식(치즈돈까스, 비빕밥): 수종
19:30 귀가
20:40 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.27(화) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 09:10 ~ 15:30 ==> 

- 충주 진료
06:00 기상
06:30 조식
07:00 집출발
07:20 도보(신도림역 2번 출구) 
08:00 귀가   
08:45 집출발
08:56 대림역 정류장(6411번 버스 탑승)
09:50 강남터미널
10:00 충주행 고속버스 탑승
11:50 충주 터미널 도착 
12:10 석식(CU 편의점, 고기 듬뿍 김치 제육2 도시락, 가격: 3,800원)
12:30 충주 건국대학교 병원 도착
13:00 2층 접수처 ==> 13시 예약이 안되어 있다고 함.
13:10 내분비과 ==> 기초 검사(피 검사, 요즘 검사)
16:10 최수봉 교수 진료 ==> 당뇨 망막병증은 수술 안 해도 된다고 함(인슐린 펌프 치료를 하면 눈이 좋아 진다고 함)
		==> 다음주 월요일(12/3) 입원하기로 결정.		==> 당뇨 혈색소: 5.7% 나옴.(희망적)
16:20 조제(대학병원, 2주치 약, 인슐린), 검사 결과지 증명 발급(수수료 2천원)
16:30 종료 ==> 충주호 당내과에서 전화 옴(다음주 월요일 충주 터미널로 태우러 온다고 함)
16:35 도보
16:55 충주 터미널 도착 
17:05 충주 출발
19:02 강남터미널 도착
20:10 귀가
20:15 석식
23:00 취침 
==============================================================================================================
 
- 인슐린 펌프 치료 기관
1. 충주 건국대학교 병원
? 전화 : 043-845-2129
? 주소: 충북 충주시 국원대로 82

2. 충주호 당내과(구. 건국대 충주 당뇨센터)
? 전화 : 043-853-0995
? 주소: 충북 충주시 목벌길 342 

3. 서울 양재 최의원
? 전화 : 02-575-8222
? 주소: 서울특별시 강남구 남부순환로 2725 
==============================================================================================================    
 
- Maria DB 다운로드 및 설치
1. MariaDB 10.3.11 Stable(2018-10-04), mariadb-10.3.11-winx64.msi 다운로드 ==> https://downloads.mariadb.org/mariadb/10.3.11/
 1) root pwd: 1212, port: 3306
 2) Use UTF8 as default server's character set: 체크 
 3) Install as service ==> Service Name: MySQL
 4) nable networking ==> TCP port: 3306
============================================================================================================== 

- MariaDB, Mysql DB Dump export & import 방법
1. mysql/mariaDB 전체 데이터베이스 백업하기
$ mysqldump -uroot -p -A > [File Name].sql  

Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation. All rights reserved.
C:\Users\Administrator> cd C:\Program Files\MariaDB 10.3\bin 
C:\Program Files\MariaDB 10.3\bin> mysqldump -uapqms -papqms12 -A > 00_backup_testDB.sql
==>  C:\Program Files\MariaDB 10.3\bin\00_backup_testDB.sql 파일이 생성됨.
------------------------------------------------------------------------------------------------

5. mysql/mariaDB 백업파일 복구하기 
$ mysql -uroot -p < backup_testDB.sql

C:\Users\Administrator> mysql -uapqms -papqms12  -data QMSMGR< 00_backup_testDB.sql
==>  C:\Program Files\MariaDB 10.3\bin\00_backup_testDB.sql 파일이 database QMSMGR에 생성됨.
-- ======================================================================================================

■■■■■■■■■■■■■■■■■■ 2018.11.28(수) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 09:00 ~ 21:00 ==> 삼성전자 WatchQ Prj 첫 출근(09:00): 구종식 부장 만남, (주)비에네스  김환영 상무 만남

- RMA 이상점 센싱 및 통계적 Localization Tool 구축 Prj[★] 
- 출퇴근 정보(지하철 이용시) ==> 삼성SDS 생활가전 연구1동
1. 문영A -> 대림역(4-2) > 신도림역(8-1) > 수원역(4-4) > 망포역(5번 출구) -> 2단지 연구1동(생활가전 사업부) 
==> 1,850원[1시간 20분 예상] --> 사업장: 수원사업장 생활가전 연구1동 3층 지원팀
==============================================================================================================    

- Watch Q 설명
1. 송주환 수석(BS Net 프리, 설계자)
 1) java, DB(매피스: PostgreSQL[포스트 그레스] DB 오라클 DB 호환 툴): Mybatis
 2) SN 이력 조회(4개 Tab) ==> Data Display: 고객이 이번주까지 완료 요청
==============================================================================================================    

- 회의(10:00 ~ 10:30)
1. SDS 박경수 수석(PM), SDS 김정윤 책임(운영 책임자)
2. Data 가공 문제
 1) 재설치 Data 가공 난해
  가. inventory --> log --> SN 파악 가능[추적 관리 어려움]
 2) 초기 설치, RMA
-----------------------------------------------------------------------------------------------------------------------------

3. 삼성전자 고객
 1) 정홍모 차장, 홍린아 프로
==============================================================================================================    

- 노트북, 모니터 반입 확인증
1. 노트북 ==> 노트북 포트 봉인 해제(철수할 때 반출증에 포트 봉인 해제 사유 작성할 것: 전산 반출증 제시)
 1) 시리얼 번호(S/N): NKN850HJY007B00572
 2) 제조번호: GIGABYTE SABRE 15  
---------------------------------------------------------------------------------
2. 모니터
 1) 시리얼 번호(S/N): CN-0NJRO1-QDC00-7CP-4KAU-AO2 
============================================================================================================== 

- 삼성전자 Prj IP 주소 설정(IP 설정) @@@@
1. IP 주소: 10.240.229.248
2. S/M: 255.255.255.0
3. GW: 10.240.229.1
4. 기본 DNS: 10.32.192.11, 보조 DNS: 10.32.193.11 
---------------------------------------------------------------------------------

-네트워크 연결
1. \\10.240.151.89\Watchq_2018이상점센싱, SEC / dlfdltka!23
-네트워크 연결2
1, \\10.240.151.89\Watchq_인수인계, SEC / dlfdltka!23
==============================================================================================================    
 
- 업무용 소프트웨어 다운로드 ==> http://165.213.118.100:5055/
1. [64bit] ESCORT 설치파일
 1) ESCORT_v5.17(64bit)_SEC_Suwon-2018.10.30.0.exe 
2. [64bit] NASCA SD 설치파일
 1) NASCA+SD_SEC_Suwon_5.00_2017091404_64.exe 
3. [ 일반 / 프록시(Proxy) ]
 1) DigitalCity 프록시 설정 파일 (인증서자동설치)
4. 개별설치용 / SecuPrint(문서실명제) ] 
 1) secuprint_client3264_653_2017-08-17_SAMSUNGELEC.exe  ==> 문서 패스워드: tjdghkdi!021[성화야@021]
5. [ 일반 / 백신 ] 
 1) [PC용]백신 V3 9.0 설치파일
==============================================================================================================    
 
- WatchQ  개발 환경 세팅
II. 로컬 개발 환경 설치
1. JDK 설치
 1) 80-windows-i586.exe
2. STS(Eclipse Integrated Development Environment) 설치
 1) STS 다운로드 ==> http://sdp.sec.samsung.net
3. TOMCAT 설치
 1) Tomcat 7이상 다운로드 ==> http://tomcat.apache.org/download-60.cgi
4. SVN 설치
 1) 다운로드 ==> https://tortoisesvn.net/downloads.html
 2) SVN 설치
     TortoiseSVN-1.X.X.X-XXX.exe
     LanguagePack_1.X.X.X-XXX-ko.exe
5. Dbeaver 설치
 1) 다운로드==> https://dbeaver.jkiss.org/    
 
II. 로컬 개발 환경 설정
1. Eclipse 설정하기   
 1.1 Eclipse 구동
  1.1.1 D:\SDP-3.0.0\eclipse-4.3.2\eclipse.exe를 실행해 Eclipse를 시작
 1.2 프로젝트 check out
  1.2.1. check out wizard 창을 실행한다. 
  1.2.2. SVN Url 지정 후 check out 을 진행 ==> https://10.240.151.89/svn/WatchQ/trunk, 
  1.2.3. SVN Repositories 에 생성된 Project 를 로컬로 check out 한다.
  1.2.4 로컬 workspace 에 WatchQ 프로젝트가 생성됨을 확인한다.
 1.3. JDK 설정
   1.3.1. 로컬에  설치된 Java Complier 버전을 설정한다. 
 1.4 Server 설정
  1.4.1. Preference wizard 창을 실행한다. 
  1.4.2. 설치된 Tomcat 버전을 선택한다.
  1.4.3. Tomcat directory 설정 후, Tomcat server가 추가됨을 확인 ==> D:\SDP-3.0.0\apache-tomcat-7.0.81
 1.5 Server 실행
  1.5.1. Server 추가 wizard를 실행한다.
  1.5.2. 추가된 Server 에,  WatchQ 프로젝트를 배포할 수 있도록 설정한다
  1.5.3. Servers View에 Server가 생성됨을 확인한 후,  더블 클릭하여 Timeouts 에서 start 시간 설정한다. 
  1.5.4. Servers View에 Server가 생성됨을 확인한 후,  더블 클릭하여 Timeouts 에서 start 시간 설정한다. 
  1.5.5. Servers View 에서 Start버튼을 클릭해 서버 기동됨을 확인한다.   
2. 로컬 화면 확인
  1) Web Browser 주소창에 [http://localhost:8080/Watchq]를 입력하면 아래와 같이 Watch-Q Main 화면을 볼 수 있다.
----------------------------------------------------------------------------------------------------------------------
 
3. DBeaver 설정하기
  3.1 DBeaver 구동[개발 서버]: DB 정보
Host : 10.40.86.185/5447
Database : WatchQDEV
User : watchq/watchq#12345
===================================================================================================    

- org.eclipse.jdt.core.prefs 파일에서
org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6
==> org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.7
===================================================================================================    

- WatchQ eclipse셋팅
1. C:\WatchQ
 1) C:\WatchQ\eclipse-4.3.2
 2) C:\WatchQ\workspac
 3) C:\WatchQ\apache-tomcat-7.0.81
===================================================================================================    

■■■■■■■■■■■■■■■■■■ 2018.11.29(목) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==> 노트북 시건 장치, 마우스 밧데리(4개) 집에서 가져옴.

- RMA 이상점 센싱 및 통계적 Localization Tool 구축 Prj[★] 
- WatchQ 소스 분석
System.out.println("[/ti10300Controller.java] [selectTiBlSave()] ==> [TEST]" ); 
out.println("[/ti10300Controller.java] [selectTiBlSave()] ==> [TEST]" ); 

1. RMA List 화면 호출
http://localhost:8080/Watchq/Watchq/rma/rma/rmaList.do?_menuId=AVFyHyh6AD0oVkKX&_menuF=true

2. /RmaController.java 파일에서
@RequestMapping("/Watchq/rma/rma/rmaList.do")
public String WatchqRmaList(@ModelAttribute("search") RmaCommon searchVO, Model model, HttpServletRequest request) throws Exception {
	
	Calendar cal = Calendar.getInstance();
	Date endDate = cal.getTime();
	cal.add(cal.MONTH, -1);
	Date startDate = cal.getTime();
	SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	
	if(CommonUtil.isEmpty(searchVO.getStartDate()) || CommonUtil.isEmpty(searchVO.getEndDate())){
		searchVO.setStartDate(fmt.format(startDate));
		searchVO.setEndDate(fmt.format(endDate));
	}
	
	List<WatchqCommon> period = WatchqCommonService.getPeriodList();
	
	String userId = Identity.currentUser().getUserId();				//현재사용자 ID							
	String compCode = Identity.currentUser().getCompCode();			//현재사용자 회사코드
	String currentLocale = languageService.getCurrentLanguage();	//현재언어
	 
	String actionType = WatchqCommonService.checkRole(userId, new String[]{"SYSTEM_ADMIN", "R_EXTERNAL"}) ? "ALL" :"REP";	//수리부서 권한
		
	searchVO.setUserId(userId);									
	searchVO.setCompCode(compCode);								
	searchVO.setCurrentLocale(currentLocale);	
	searchVO.setActionType(actionType);
	
	List<CommCode> pageSize = commonCodeService.codeListByLang("PAGESIZE");					//페이지 사이즈 목록
	List<CommCode> rmaStList = commonCodeService.codeListByLang("R01");						//RMA Status 코드
	List<CommCode> rmaDtList = commonCodeService.codeListByLang("R08");						//RMA Status 날짜 목록
	List<WatchqCommon> repVndrList = WatchqCommonService.getAuthRepairVendorList(searchVO);	//권한별 수리업체 목록
	
	List<CommCode> countryList = WatchqCommonService.getAuthCountryList(searchVO);			//국가코드
	List<WatchqCommon> customerList = new ArrayList<WatchqCommon>();
	if(null != countryList && countryList.size() > 0){
		if(null == searchVO.getNationCode()){
			searchVO.setNationCode(countryList.get(0).getCode());
		}
		
		customerList = WatchqCommonService.getAuthCustomerList(searchVO);
	}
	if(null == searchVO.getCustCode() && null != customerList && customerList.size() > 0){
		searchVO.setCustCode(customerList.get(0).getCustCode());
	}
	
	List<SdpBoardCommu> boardCommus = sdpBoardCommuService.getPopupList();

	model.addAttribute("boardCommus", boardCommus);
	model.addAttribute("languageService", languageService);
	
	//Product Category 목록 설정
	setProdCategoryList(searchVO, model);
		
	model.addAttribute("pageSize", pageSize);
	model.addAttribute("rmaStList", rmaStList);
	model.addAttribute("rmaDtList", rmaDtList);
	model.addAttribute("period", period);
	model.addAttribute("repVndrList", repVndrList);
	model.addAttribute("countryList", countryList);
	model.addAttribute("customerList", customerList);
	model.addAttribute("search", searchVO);
	
	return "Watchq/rma/rma/rmaList"; 
}

3. /rmaList.jsp 파일에서  ==> S/N: S2L3208977로 조회 @@@
<script type="text/javascript">
/**
* RMA 목록 신규 조회시 Paging 초기화
*/
function initSearch(searchType){
	if($("#rmaForm input[name='pageIndex']").length > 0){
		$("#rmaForm input[name='pageIndex']").val("1");
	}
	searchRma(searchType);
}

/**
* RMA 목록 조회
*/
function searchRma(searchType){

	var url = contextPath + "/Watchq/rma/rma/getRmaList.do?_jsp=true";  	// RMA 목록 조회
	$.ajax({ 
		type: "POST", 
		url: url,
		data: searchData,
		dataType: "html",
		success: function(data){
			$("#listBody").html(getExprAjaxData(data));
		} ,
		error:function (request, err, ex) { 
		}
	});
}
</script>

[퀵 조회 버튼]<a href="javascript:initSearch('Q');">
<img src="${contextPath}/images/button/btn_quicksearch.png" style="margin" width="100" height="21" /></a>

4. /RmaController.java 파일에서
@RequestMapping("/Watchq/rma/rma/getRmaList.do")
public String getRmaList(@ModelAttribute("search") RmaCommon search, Model model) throws Exception {
	
	search.setUserId(Identity.currentUser().getUserId());		// 현재사용자 ID
	search.setCompCode(Identity.currentUser().getCompCode());			/ /현재사용자 회사코드
	search.setCurrentLocale(languageService.getCurrentLanguage());		// 현재언어
	
	if("Q".equals(search.getSearchType())) {		// Quick Search의 경우 권한내 Customer RMA 전체 조회 (2018-01-11 ldh7262.lee) 
		RmaCommon quickSearch = new RmaCommon();
		quickSearch.setUserId(Identity.currentUser().getUserId());
		quickSearch.setCurrentLocale(languageService.getCurrentLanguage());
		
		List<WatchqCommon> customerList = WatchqCommonService.getAuthCustomerList(quickSearch);		// RMA 목록 조회
		String[] chks = new String[customerList.size()];
		
		for(int i=0 ; i < customerList.size() ; i++ ) {
			chks[i] = customerList.get(i).getCustCode();
		} // end for
		
		search.setChks(chks); 
	}
	
	List<RmaCommon> rmaList = rmaService.getRmaList(search);	// RMA 목록
	
	model.addAttribute("rmaList", rmaList);
	model.addAttribute("size", rmaList == null ? "0" : rmaList.size());
	
	return "Watchq/rma/rma/rmaListAjax";
}

5. /mapper-mybatis-WatchqCommon.xml 파일에서
<select id="selectAuthCustomerList" parameterType="WatchqCommon" resultMap="customerListResult">
	/* RMA 목록 조회 ==> [selectAuthCustomerList/mapper-mybatis-WatchqCommon.xml] [2018.11.29, by 진태만] */ 
	SELECT *
	  FROM (
			SELECT C.CUST_CD, C.${currentLocale}_NM CUST_NAME, C.NAT_CD, CD.${currentLocale}_LABEL NATION_NM,
				   DECODE(CD.CODE, 'KR' , '#01', 'US' , '#02', 'JP' , '#03', 'IN' , '#04', 'GB' , '#05', 'RU' , '#06', CD.${currentLocale}_LABEL) NAT_ORD,
				   DECODE(C.CUST_CD, 'SKT', '#01', 'KT', '#02', 'LGT', '#03', C.${currentLocale}_NM) CUST_ORD
			FROM TN_CM_CUST C, TC_CF_COMM_CODE CD, TN_CM_USER_CUST_AUTH A
			<trim prefix="WHERE" prefixOverrides="AND|OR">
				AND C.NAT_CD = CD.CODE
				AND C.USE_YN = 'Y'
				AND CD.COMM_CODE_TYPE_CODE = '08'
				AND CD.DELETE_YN = 0
				AND C.CUST_CD = A.CUST_CD	
				AND A.USE_YN = 'Y'
				<if test="@SDPComparator@isNotEmpty(nationCode)">
					AND C.NAT_CD = #{nationCode}
				</if>
				<if test="@SDPComparator@isNotEmpty(custName)">
					AND LOWER(C.${currentLocale}_NM) LIKE '%'||LOWER(#{custName})||'%'
				</if>
				<if test="@SDPComparator@isNotEmpty(userId)">
					AND A.USER_ID = #{userId}
				</if>
			</trim>
		  )
	ORDER BY NAT_ORD, CUST_ORD
</select>

==============================================================================================================    

- 70. WatchQ[로컬]
1. localhost:8080/Watchq/identity/anonymous/loginPage.do?_frameF=true, tamario2/samsung123
 1) http://localhost:8080/Watchq, tamario2/samsung123
 
- 71. WatchQ[개발S]
1. 10.40.86.210:8240/Watchq/identity/anonymous/loginPage.do?_frameF=true, tamario2/samsung123
 1) 10.40.86.210:8240/Watchq, tamario2/samsung123
==============================================================================================================    

-- PostgreSQL DB에서 테이블/컬럼 정보 조회
-- 테이블 COMMENT 조회 @@@
SELECT UPPER(PS.RELNAME) AS "테이블명(PHYSICAL)", PD.DESCRIPTION AS "테이블명(LOGICAL)"
FROM PG_STAT_USER_TABLES PS, PG_DESCRIPTION PD
WHERE LOWER(PS.RELNAME) = LOWER('TN_CM_CUST') 	 -- 테이블명
	AND PS.RELID = PD.OBJOID
	AND PD.OBJSUBID = 0
; 
----------------------------------------------------------------------------------------- 

-- 테이블, 칼럼 COMMENT 조회 @@@
SELECT UPPER(PS.RELNAME) AS "테이블명(PHYSICAL)"
			, (SELECT PD.DESCRIPTION AS "테이블명(LOGICAL)"
				FROM PG_STAT_USER_TABLES PS, PG_DESCRIPTION PD
				WHERE LOWER(PS.RELNAME) = LOWER('TN_CM_CUST') 	 -- 테이블명
					AND PS.RELID = PD.OBJOID
					AND PD.OBJSUBID = 0
					AND ROWNUM < 2
					)  AS "테이블명(PHYSICAL)" 
			, PA.ATTNAME AS "칼럼명(PHYSICAL)", PD.DESCRIPTION AS "칼럼명(LOGICAL)"
FROM PG_STAT_ALL_TABLES PS, PG_DESCRIPTION PD, PG_ATTRIBUTE PA
WHERE PS.SCHEMANAME = (SELECT SCHEMANAME
												FROM PG_STAT_USER_TABLES
												WHERE LOWER(RELNAME) = LOWER('TN_CM_CUST') -- 테이블명
											)	  
	AND LOWER(PS.RELNAME)  = LOWER('TN_CM_CUST') 	 -- 테이블
	AND PS.RELID = PD.OBJOID
	AND PD.OBJSUBID <> 0
	AND PD.OBJOID = PA.ATTRELID
	AND PD.OBJSUBID = PA.ATTNUM
ORDER BY PS.RELNAME, PD.OBJSUBID
; 
==============================================================================================================

- 표준화된 SQL문을 생성하는 방법 (SQL Formatter)
http://www.gurubee.net/lecture/2728 
A. SQL Formatter 설정
1. Standard Formatting
 1) Indent: \t						2) Indent Width: 4
 3) Max Width: 999			
 4) Statement  Breaks:2		
 5) Clause  Breaks: 1
2. Expand Comma Lists: 체크  --> 아래 4, 5번 이외의 다른 항목은 모두 체크 안 함.
 1) Space After Comma: 체크
4. Uppercase Keyword: 체크[대문자 설정]
5. Enable Coloringd: 체크[글자 색 설정]
==============================================================================================================
  
- KNOX Portal 설치 및 회원 가입
1. www.samsung.net/portal/default.jsp?mode=logout, taeman.jin[싱글 아이디] /h*수*1601@
 1) 고유코드: C60BB591, TAEMAN JIN
 2) KNOX 메신저 설치
-----------------------------------------------------------------------------------------------------------------------------

- 파트너사 협업 Portal System 회원 가입
1. https://www.smart-together.com:2016/srm/, tamario2/h*수*1601@
==============================================================================================================
    
- 파트너사 가입 및 이력서 등록
1. 네이버에서 스마트투게더라고 검색
2. https://www.smart-together.com:2016/srm/
============================================================================================================== 
 
/* TopMenu 조회 ==> [selectUsedMenuInfo/mapper-mybatis-menu.xml] [2018.11.29, by 진태만] */ 
SELECT A.MENU_ID, A.KO_LABEL, A.EN_LABEL, A.LABEL, A.MENU_URL 
			, A.MENU_SEQUENCE, A.USE_YN, B.UPPER_SYS_RESOURCE_ID 
			, B.SYS_ID, B.SYS_RESOURCE_TYPE_CODE_ID 
			, B.DESCRIPTION, A.MENU_IMAGE_URL, A.POPUP_VERTICAL_LENGTH, A.POPUP_WIDTH_LENGTH 
			, A.MENU_LEVEL, A.MENU_TYPE_CODE_ID
			, A.MENU_USE_PERIOD_CODE, A.ONCLICK, A.MENU_KEY, A.LAYOUT 
FROM TN_CF_MENU A INNER JOIN TN_CF_SYS_RESOURCE B 
	ON A.MENU_ID = B.SYS_RESOURCE_ID 
WHERE A.MENU_LEVEL = 1 AND A.USE_YN = true AND (A.DELETE_YN IS NULL OR 
	A.DELETE_YN != true) 
ORDER BY A.MENU_SEQUENCE ASC
; 
==============================================================================================================

- 70. SN 이력조회 개발
1. http://localhost:8080/watchq/watchq/report/rmaInfo/rmaInfoInitList.do?_menuId=AWYZzTn6JH4oVtyM&_menuF=true
  1) rmaInfo.jsp ==> 4개의 탭
   가. Basic Info 조회
   나. T_01. 공정/출하이력, T_02. 설치/운용이력, T_03. RMA 이력, T_04. 운용 이력
==============================================================================================================    

-- 페이지 정보 조회 @@@  ==>
SELECT  P.* 
FROM TN_CF_PAGE P     -- 페이지 정보 TB
WHERE 1 = 1
	AND (P.PAGE_URL LIKE '/watchq/rma/rma/getRmaList.do' || '%')		-- 페이지URL ==> 데이타 존재
	AND (P.PAGE_URL LIKE '/watchq/rma/rma/getSNHistInfo.do' || '%')		-- 페이지URL ==> 데이타 미 존재
; 
-- ==============================================================================================================    

■■■■■■■■■■■■■■■■■■ 2018.11.30(금) 작업 ■■■■■■■■■■■■■■■■■■ 
---> 08:00 ~ 21:00 ==> 당뇨 입원 연기(12월 3일(월) --> 12월 17일(월), 송수석이 요청) 

- RMA 이상점 센싱 및 통계적 Localization Tool 구축 Prj[★] 
- 70. SN 이력조회 개발
1. http://localhost:8080/watchq/watchq/report/rmaInfo/rmaInfoInitList.do?_menuId=AWYZzTn6JH4oVtyM&_menuF=true
  1) rmaInfo.jsp ==> 4개의 탭
   가. Basic Info 조회
   나. T_01. 공정/출하이력, T_02. 설치/운용이력, T_03. RMA 이력(개발 완료), T_04. 운용 이력
==============================================================================================================    

- Menu Mgmt 화면에서 페이지 등록
1. http://10.40.86.210:8240/watchq/commMenu/menuList.do?_menuId=1IBjUR8utii_GAAD&_menuF=true]
  1) 페이지: /watchq/report/rmaInfo/searchSnList.do ==> 조회
==============================================================================================================    

- PC 사용자 변경 요청 이메일 발송
1. 수신자: 수원PC보안
2. 개인 노트북 사용자 변경: 송수호 -> 진태만(taeman.jin: 싱글 아이디]
==============================================================================================================     
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
+----------------------------------------------------// End //----------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
