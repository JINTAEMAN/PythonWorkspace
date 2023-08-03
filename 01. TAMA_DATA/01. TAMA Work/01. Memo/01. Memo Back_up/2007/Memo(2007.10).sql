

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2007.10) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2007.10.01(월) 작업 ■■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:30 --> 풋살(승원) 

- WPMS System
- WPMS DB 서버 설정 
http://192.168.0.17/wpms/wpms.htm 
http://59.25.178.81/wpms/wpms.htm 
/home/wpms/conf 에서 db.properties 파일 수정 
==============================================================================================================

- WPMS DB 파일 
de002j1s01.odi, ta001j1s01.odi, ta002j1t01.odi  
==============================================================================================================

- CVS 세팅 
IP: 192.168.0.6 
- 쿨메신저 세팅 
IP: 192.168.0.2 tamario/tamario 
==============================================================================================================

- U-FPMS 인수인계(전병옥 대리) 
U-FPMS(Ubiquitous senser network Fire Prevention Management System) 
A. U-FPMS Eclipse 세팅 
B. 대구소방 방문 
대구 소방 서버 
1. 감시서버(UWATSVR) 
2. SMS서버(USMSSVR) 
2007년 5월 이후로 작동이 멈춘 상태 
3. 응용서버(UAPPSVR) 
4. DB서버(UDBSVR) 
5. STORAGE서버 
오즈 서버 --> 100.101.1.60 
id/pwd: winitech1/fpms2006, winitec2h/fpms2006, 상황실/119 
평상시: 10분 마다 데이타 받아옴 긴급시: 3초 마다 데이타 받아옴 
할로겐 불꽃은 9시부터 10시까지 감시를 무시함(형광등 불빛) 
==============================================================================================================

 - ORACLE AS 서버 세팅(웹서버) 
USN/ .. WEB_INF/lib --> fpms_monoitor.jar, fpms_monoitor_db.jar를 넣어 둠 
     /monitor -> jsp 파일이 존재 
 C. 대신 소방파출소 방문(서문시장내) 
 D. 동신상가 4층 방문(서문시장내): G.W 2대, 서버 2대 확인(USN 데이타 모음) 
==============================================================================================================

 - 위니텍 WPMS 서버 사용법 
 1. 톰켓 서버(리눅스) 
59.25.178.81(192.168.0.17) root/fire119 wpms/wpms**(hrs/hrs00) 
http://59.25.178.81/wpms/hrs.htm  
 2. Apachectl 실행 
]# wpms/wpms**     --> (192.168.0.17) 
]# su - 
]# fire119 
]# cd home/apache-tomcat-5.5.12/conf 
[DEV2:/home/apache-tomcat-5.5.12/conf]# server.xml ===> wpms 오즈 컨테이너 설정 
/home/wpms/WEB-INF/classes]# ozserver.properties ===> wpms 오즈 컨테이너 설정  
- 파일 삭제(유닉스에서) 
] rm -rf wpms*.* 
--------------------------------------------------------- 
프로젝트 정보 PJ001 
프로젝트시스템 정보 PJ002 
기본Task 정보 PJ009 
Task일정 정보 TA001 
개인Task TA002 
공수 정보 TA003 
공수상세 정보 TA004 
 IP: 192.168.0.17 SID: DEV2DB cmmi/cmmi00 ====> 위니텍 OZ DB 서버 
 IP: 192.168.0.106 SID: DEV2DB winitech/winitech00    ====> 위니텍 OZ DB 서버(이전 서버) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.02(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:20 ~ 20:00 

- WPMS System
- WPMS System 메인 화면 개발  
개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main) 
==============================================================================================================

-- Task 정보 조회 @@@@@ 
SELECT  A.UPSchSN AS  상위일정일련번호, A.SORT AS 순서,  
A.TASKTYPE, C.PJNAME, A.TaskSchName AS TASK_SCH_NAME , A.TaskSN  AS TASK_SN 
FROM TA001 A, PJ001 C 
WHERE A.PjSN = C.PjSN(+) --  프로젝트번호 
ORDER BY A.UPSchSN DESC, A.UPSchSN, A.TaskSN DESC  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.03(수) 작업 ■■■■■■■■■■■■■■■■
---> 10:30 ~ 23:00 --> 개천절(스피드북 종료)

- WPMS System
- WPMS System 메인 화면 개발  
개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)  
UDS 파일: dt101_t --> org.dws.uds.gas.dt101l2t52  
----------------------------------------------------------------------------------- 

//Task 일정 등록 @@@@@ --> 트리 메뉴(ta002j1t01.odi) 
string sql;  
sql = "INSERT INTO TA002(TaskType, SchSN, "; //Task구분,  일정일련번호  
sql = sql + " EmpSN, "; //사원번호  
sql = sql + " Sort, "; //순서  
sql = sql + " InStartDate, "; //투입시작일자  
sql = sql + " InEndDate)"; //투입종료일자 
sql = sql + "VALUES"; 
sql = sql + " ("; 
sql = sql + " '#OZParam.p_TaskType#',#OZParam.p_SchSN#,  ";   //Task구분,  일정일련번호  
sql = sql + " '#OZParam.p_EmpSN#',  "; //사원번호  
sql = sql + " '#OZParam.p_Sort#',  "; //순서  
sql = sql + " '#OZParam.p_InStartDate#',  "; //투입시작일자  
sql = sql + " '#OZParam.p_InEndDate#' "; //투입종료일자  
sql = sql + " )"; 
setQueryString(sql); 
--------------------------------------------------------- 
  
//Task 일정 등록 @@@@@ --> 트리 메뉴(ta002j1t01.odi) 
string sql;  
sql = "INSERT INTO TA002(TaskType, SchSN, "; //Task구분,  일정일련번호  
sql = sql + " EmpSN, "; //사원번호  
sql = sql + " EmpSN, "; //순서  
sql = sql + " InStartDate, "; //시작일자  
sql = sql + " InEndDate)"; //종료일자 
sql = sql + "VALUES"; 
sql = sql + " ("; 
sql = sql + " 'P', 30,  "; //Task구분,  일정일련번호  --> PK/FK1 
sql = sql + " 'Htec-128',  "; //사원번호  --> PK/FK1 
sql = sql + " 1  "; //Sort  
sql = sql + " '20071001',  "; //시작일자 
sql = sql + " '20071007' "; //종료일자  
sql = sql + " )"; 
setQueryString(sql);  
========================================================================================================= 

-- 개인 Task 관리 조회@@@@@ --> 리스트 박스(ta001j1s04.odi) 
SELECT A.TASKTYPE, C.PJNAME, 
B.TASKSCHNAME AS TASK_SCH_NAME, B.TASKSN,  
D.EmpSN, A.InStartDate, A.InEndDate, A.CmpDate, A.Sort, D.Name AS ChgEmp 
FROM TA002 A, TA001 B, PJ001 C, DE002 D 
WHERE A.SchSN = B.SchSN -- 일정일련번호  
AND B.PjSN = C.PjSN(+) --  프로젝트번호 
AND B.ChgEmpSN = D.EmpSN(+)  -- 사원번호 
AND B.ChgEmpSN = 'Htec-024'    -- 사원번호  
--; 
--------------------------------------------------------------------------- 

-- 개인 Task 관리 조회@@@@@ --> 리스트 박스(ta001j1s04.odi) 
SELECT A.TASKTYPE, C.PJNAME, 
B.TASKSCHNAME AS TASK_SCH_NAME, B.TASKSN,  
D.EmpSN, A.InStartDate, A.InEndDate, A.CmpDate, A.Sort, D.Name AS ChgEmp 
FROM TA002 A, TA001 B, PJ001 C, DE002 D 
WHERE A.SchSN = B.SchSN -- 일정일련번호  
AND B.PjSN = C.PjSN(+) --  프로젝트번호 
AND B.ChgEmpSN = D.EmpSN(+)  -- 사원번호 
AND B.ChgEmpSN = '#OZParam.p_EmpSN#'  -- 사원번호  
--;  
========================================================================================================= 

- 저녁 식사 주문 
청룡반점: 621-1196(626-3448) 
신성반점: 628-7908 
김밥천국(대명계대점): 629-2433 
클우동(대명계대점): 625-9700 
날마다꿀갈비(계대대명점): 652-8900 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.04(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 19:10  --> 풋살(캐논FC: C조 1승 1패: 2위 --> A조(4:3 승), B조(1:3 패) 

- WPMS System
 - WPMS System 메인 화면 개발  
개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)  
----------------------------------------------------------------------------------- 

var SelectedIndexs = new Array(); 
ListBox1.GetSelectedIndexes(SelectedIndexs); 
for(i=0;i<SelectedIndexs.length;i++) { 
_MessageBox(ListBox1.GetItemObject(SelectedIndexs[i]).Text); 
} 
==============================================================================================================

 - Oracle AS 설치 
사용자: admin으로 로그인 함 
C:\product\10.1.3\OracleAS_3\opmn\bin\opmnctl.exe startall  ---> 시작 
C:\product\10.1.3\OracleAS_3\opmn\bin\opmnctl.exe status  ---> 상태 확인 

인스턴스이름(M): FPMS   암호: fpms2006 
Oracle AS 메인 페이지: http://127.0.0.1 
관리자 페이지: http://127.0.0.1/em 
home --> 응용프로그램 
아카이브 위치: D:\fpms.war 
아카이브 유형 웹 모듈(WAR 파일) 
아카이브 위치 D:\fpms.war 
응용 프로그램 이름: mnt 
웹 모듈: fpms.war 컨텍스트 루트: fpms 
----------------------------------------- 
배치 경로: D:\product\10.1.3\OracleAS_2\j2ee\home\applications\mnt\fpms\monitor\U-FPMS.jsp 
설치시 유의 사항: 사용자 로그인이 만드시 영문일 것 
- VPN Secuway2000 설치 
vpn 서버 = 210.204.85.251 fpms2006/fpms200600  
http://100.101.1.60 --> 대구 소방청(한 번에 한 사람만 로그인 가능) 
==============================================================================================================

- 새마을금고 예금 만기  
- 새마을 금고 예금(우대예탁금) ==> 생계형 저축(진덕근)  
만기: 2007-09-29    입금: 20,000,000원 만기지급액: 21,040,000원 ==> 순이자(비과세): 1,040,000원(년 5.2%)  
만기: 2007-10-04    입금: 10,000,000원 만기지급액: 19,988,000원 ==> 순이자(세금우대): 1,040,000원(년 4.9%)  
만기: 2007-10-04    입금: 5,000,000원 만기지급액: 1,052,000원 ==> 순이자(세금우대): 1,040,000원(년 4.9%) 
==> 총금액: 35,000,000원(만기지급액 --> 36,789,575원) 
----------------------------------------------------------------------------------- 
- 새마을금고 재예금  
1. 생계형 저축(진덕근)   
만기: 2008-10-04    입금: 30,000,000원 만기지급액: 31,597,722원 ==> 순이자(세금우대): 1,040,000원(년 5.325%) 
2. 세금우대 저축(진태만)   
만기: 2008-10-04    입금: 6,789,575원 만기지급액: 7,151,170원 ==> 순이자(세금우대): 1,040,000원(년 5.325%) 
==> 총금액: 36,789,575원(만기지급액 --> 38,748,892원) 
--------------------------------------------------------------------------------------------------- 
2007-09-30(122,926,485원): 펀드가 많이 오름(911,917원) 
====> 124,702,538원(새마을금고 예금 만기) ====> 127,012,638원(PAY 받은 후)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.05(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 16:00 

- WPMS System
- WPMS System 메인 화면 개발  
개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main) 
-------------------------------------------------------------------------------- 

- odi 파일 디자인 모드 변경 
파일(F) --> 옵션...(P) --> 쿼리 디자이너 옵션 설정 
디자인 모드: 메뉴얼 -> 설정 
- odi 파일 데이타 셋 추가 
데이타베이스이름(ta001j1s03): 마우스 오른쪽 클릭 --> 데이타 셋 추가...(I) 
데이타 셋 이름: search_dbClick 
맨위 창에서: 쿼리(Q) --> 매뉴얼(M): 쿼리문 작성 
==============================================================================================================

- 창립 10주년 기념행사 
일시: 2007.10.05(금) 17:00 
장소: DIP센타 1층 대강당 --> 리셉션(1층 도서관 야외) 
약도: http://www.dip.or.kr/Sub_Introduction/introduction0502.php?mnu_name=MNU_02 
주소: 대구시 남구 대명3동 2139-12 DIP 센터 본관 1층 (주)위니텍(우.705-033) 
전화: 745-2556  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.07(일) 작업 ■■■■■■■■■■■■■■■■
---> 11:20 ~ 16:00 --> 정택 아제 문병(경대병원: 5만원 드림(엄마 3만원)) 

- WPMS System
- WPMS System 메인 화면 개발  
개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main) 
-------------------------------------------------------------------------------- 

- 일정일련번호 자르기 
var p_TaskNam_real = p_TaskName.substring(0,8); //일정일련번호   
if (p_TaskNam_real == "[공통Task]") { //Task구분이 공통Task   
p_TaskType = "C"; 
} else if (p_TaskNam_real == "[부서Task]"){ //Task구분이 부서Task   
p_TaskType = "D"; 
} else { 
p_TaskType = "P"; 
}   
-------------------------------------------------------------------------------- 

-- 개인 Task 관리  조회 @@@ 
SELECT * FROM TA002 A  
WHERE A.TaskType = 'C' -- Task구분 
AND A.SchSN = 71 -- 일정일련번호   
AND A.EmpSN = 'Htec-128' -- 사원번호 
--;  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.08(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:00 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)  
refresh_data(); // 데이타 초기화 
-------------------------------------------------------------------------------- 

- 저장 실패 
에러내용: setQueryString(sql);] Error in compiling this script.: No connection established to rollback & close 
원인: 문법 에러  
-------------------------------------------------------------------------------- 

- 저장 모드(오즈) 
DataAction[0] = DataSet.MakeDefaultDataAction();  
DataAction[0].DataActionType = DataActionTypeConst.Insert; /저장 선택(삽입)  
DataAction[0].DataActionType = DataActionTypeConst.RowUpdate; //저장 선택(수정) 
DataAction[0].DataActionType = DataActionTypeConst.Delete; //저장 선택(삭제) 
DataModule.QueueActionObjects( DataAction ); //Queue에 쌓음 
var result = DataModule.CommitQueuedActions(); //Commit 
DataModule.RefreshAllDataSet(); 
==============================================================================================================

- 단계 조회 
select lpad(' ',(level -1) *3, ' ')  taskschname taskname, level lvl 
from ta001 
connect by prior schsn = upschsn 
start with upschsn is null 
--------------------------------- 
--;  
- 쿼리 분석 
select level, id, sort 
connect by prior id = sort  ... (2) 
start with id = 1  ... (1) 
트리검색이라는 것인데... 
(1) id 값이 1인 자료를 찾아서 출력하고 
(2) 출력된 id 값과 같은 sort 값을 갖는 자료를 찾아 출력하는 것을 반복하게 됩니다. 
이와같이 level 을 같이 출력해 주면 각 자료의 깊이를 알 수가 있는데 
같은 level 에 위치하는 자료가 id 값으로 정렬되진 않을 것 같네요. 
-------------------------------------------------------------------------------- 

-- Task 일정 관리 조회@@@@@ --> 트리 메뉴(ta001j1s02.odi)   ===> 단계 표현 
SELECT A.TASKTYPE, A.SCHSN, A.TASKSN, A.TASKSCHNAME AS TASK_SCH_NAME,  
  (SELECT TASKSCHNAME  FROM TA001 WHERE TASKTYPE = 'P' AND SchSN =A.UPSCHSN) AS 상위일정명,  
   A.UPTASKTYPE, A.UPSCHSN, C.PJNAME, A.SORT, LEVEL AS 단계 
FROM TA001 A, PJ001 C 
WHERE A.TASKTYPE = 'P' -- Task구분 
AND A.PjSN = C.PjSN(+) -- 프로젝트번호  
CONNECT BY PRIOR A.SCHSN = A.UPSCHSN 
START WITH A.UPSCHSN IS NULL 
ORDER BY A.SCHSN 
--;  
-------------------------------------------------------------------------------- 

-- Task 일정 관리 조회@@@@@ --> 트리 메뉴(ta001j1s02.odi)   ===> 단계명 표현 
select rownum no, tasktype, schsn, uptasktype, upschsn, lpad(' ',(level -1) *3, ' ')  taskschname taskname, level lvl, 
sys_connect_by_path(taskschname,',') path, sys_connect_by_path(taskschname,' --> ') path 
from ta001 
connect by prior schsn = upschsn 
start with upschsn is null 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.09(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:30 

- WPMS System
 - 공수입력(WD-WAR-005): LBR_100_A010.oza 
(oza/LBR/LBR_100/LBR_100_A010.oza/Main)  
  
공수관리[工數管理]--> 용어 정의 
공장에서 기계나 작업자의 능력과 실제의 작업량을 조정하는 관리. 
제품 1단위당의 공수(工數)를 계산하여 이를 근거로 전 제품의 공수를 산출하고 인원·기계 등의 필요량을 계산. 
----------------------------------------------------------------------------------------------------------------------- 
  
DEV2DB  winitech/winitech00 --> CM006 테이블 
DEV2DB  cmmi/cmmi00 --> DE005 테이블   
==============================================================================================================

- Grid 쓰기 기능 
Grid --> GridCellLabel: EditComponent 에서 TextBox 로 설정 
- Grid 콤보박스로 전환 
grd_List.GetCell(i, 0).EditComponent = CellEditComponentTypeConst.ComboBox;   
--------------------------------------------------------------- 
- Grid 합병 
Grid1.SelectCellRange(0,4,1,5); 
Grid1.MergeCellInRange(); 
----------------------------------------  
var rows = 20; 
Grid1.AddRow(rows); 
Grid1.SelectCellRange(2,5,rows+1,18); 
Grid1.SelectCellRange(0, 2, 4, 4); //0~4까지의 Row 2~4까지의 Column에 해당되는 Cell들을 선택한다.   
--------------------------------------------------------------- 

- 자리수 알아내기 
var value=  "10828.20";  
var num_str = value.indexOf('.') ;   //앞에서 부터 .점까지의 자리수 
_MessageBox("[lib_Menu: OnPostInitalize]==> [num_str]"+ num_str);   --> 결과 5  
- 잘라내기 
grd_List.GetCell(i, 2).Text = lf_GetFixTitleAccName(DataSet.GetStringData(i, "TITLEACCNAME")); 
function lf_GetFixTitleAccName(name) { 
name = name.replace(/`/g, ","); 
name = name.substr(1); 
while(name.substr(name.length-1) == ",") { 
name = name.substr(0, name.length-1); 
} 
return name; 
} 
--------------------------------------------------------------- 

- 날짜(디폴트 설정) 
Main.GetChild("dtpStart_dt").Value = _GetSystemTime().GetDate(); //시작일 
Main.GetChild("dtpEnd_dt").Value = ozf_calDate(_GetSystemTime().GetDate(), +7);  //종료일  
---------------------------------------------------------------  
select * from winitech.pj009   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.10(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 23:00 

- WPMS System
- 공수입력(WD-WAR-005): LBR_100_A010.oza 
(oza/LBR/LBR_100/LBR_100_A010.oza/Main)   
oza/WIS/WIS_520_A010.oza   --> GRID 수정 
oza/EXT/EXT_130_A010.oza  --> GRID 수정 
mi206l2s02.odi   -->  MIS_220_A010.oza   
==============================================================================================================

- Grid 체크박스로 전환 
grd_List.SelectCellRange(-1, 1, -1, 1); 
grd_List.ChangeCellTypeInRange(CellComponentTypeConst.CheckBox); 
grd_List.ChangeEditorTypeInRange(CellEditComponentTypeConst.CheckBox); 
grd_List.SetPropertyInRange(PropertyNameConst.CheckAlign, "MiddleCenter"); 
grd_List.SetPropertyInRange(PropertyNameConst.Enabled, "False");  
grd_List.GetCell(gridIndex, 1).Checked = (DataSet.GetStringData(i, "USETYPE") == "N") ? true : false;  
==============================================================================================================

- Grid 콤보에 콤보를 결합 
1. cmb_TaskTypeGrid: OnPostInitalize 콤보 생성됨  ==========> 
var p_TaskNam_real; var TaskType; 
This.RemoveAllItem(); 
  
for(j=0; j<3; j++) {    
if (j == 0) { //Task구분이 프로젝트 이면 
p_TaskNam_real = "[프로젝트Task]"; 
TaskType = "P"; 
} else if (j == 1) { //Task구분이 공통 이면 
p_TaskNam_real = "[공통Task]"; 
TaskType = "C"; 
} else { 
p_TaskNam_real = "[부서Task]"; 
TaskType = "D";  
}   
This.AddItem(p_TaskNam_real, TaskType); // 콤보 세팅(Task명, 일정일련번호)  
} 
------------------------------------------------------------------------- 

2. grd_List: OnCellEdit 생성된 콤보에 Grid 콤보를 결합  ==========> 
var editor = This.GetCurrentEditor(); 
var temp = editor.SelectedText;  //클릭할 때 마다 다시 데이타를 지우고 채우므로 
var col  = This.GetFocusColumnIndex(); 

editor.RemoveAllItem(); 
editor.DropDownStyle = ComboBoxStyleConst.DropDownList; 
//_MessageBox("[grd_List:OnCellEdit]==>[cmb_TaskTypeGrid.GetItemCount()]"+ cmb_TaskTypeGrid.GetItemCount()); 
  
//콤보박스만듬 
for(var i = 0 ; i < cmb_TaskTypeGrid.GetItemCount(); i++){ 
cmb_TaskTypeGrid.SelectedIndex = i; 
var itemObj = editor.AddItem(cmb_TaskTypeGrid.Value); //생성된 콤보에 Grid 콤보를 결합 
itemObj.ItemValue = cmb_TaskTypeGrid.GetItemObject(cmb_TaskTypeGrid.SelectedIndex).ItemValue; 
}   
editor.Value = temp; //셋팅   
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.11(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 23:00 

- WPMS System
- 공수입력(WD-WAR-005): LBR_100_A010.oza 
(oza/LBR/LBR_100/LBR_100_A010.oza/Main)  

oza/WIS/WIS_520_A010.oza   --> GRID 수정    
- GRID 리셋 
grd_List.RemoveRow(0,grd_List.GetRowCount()); //GRID 리셋 
==============================================================================================================

- 대구공대 풋살 월회비 자동이체 신청(11월 20일부터)  
농협 244-01-031924   예금주: 류현숙 --> HSBC 
팀장 김점태 053)561-8488   *(*) 
==============================================================================================================

2007-10-10 --> 127,693,474원  
새말금고 적금 만기(이자: 1,789,575원), 펀드가 많이 오름(577,314원)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.12(금) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 19:30  --> 풋살, 대규집(선희 누나, 대규와 맥주) 

- WPMS System
 - 공수입력(WD-WAR-005): LBR_100_A010.oza 
(oza/LBR/LBR_100/LBR_100_A010.oza/Main)   
oza/WIS/WIS_520_A010.oza   --> GRID 수정    
위험관제시스템(u-RCS:Ubiquitous Risk Control System)    
==============================================================================================================

-- 공수 정보 조회 @@@ 
SELECT * FROM TA003 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--; 

-- 공수 정보 삭제 @@@ 
-- DELETE FROM TA003 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--;    
----------------------------------------------------------- 

-- 공수상세 정보 조회 @@@ 
SELECT * FROM TA004 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--; 

-- 공수상세 정보 삭제 @@@ 
-- DELETE FROM TA004 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--; 
----------------------------------------------------------------------------------------- 
  
-- 개인Task 정보 조회 @@@ 
SELECT * FROM TA002 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--; 

-- 개인Task 정보 삭제 @@@ 
-- DELETE FROM TA002 A  
WHERE A.EmpSN ='Htec-128'   -- 사원번호 
--;   
==============================================================================================================

 - CMMI 교육  
  교육명 : 니텍 프로세스개선 보고 및 검토회 
  일시 : 2007년 10월 12일(금) 오후 2시 ~ 6시 30분 
  장소 : DIP별관 4층 대회의실 (구 계명전문대학 건물) 

  식순  
  1. CMMI이란?             - TQMS 남성욱수석 (30분)  
  2. 7개 프로세스 절차설명 - 이창재차장 (20분)  
  3. Break Time  
  4. 각 PA(Process Area)별 절차 및 양식 설명 
    PP (프로젝트 계획)    - 이창재차장 (10분) 
    Q&A 
    PMC (프로젝트 수행)   - 이창재차장 (10분) 
    Q&A 
    REQM (요구사항관리)   - 유동주대리 (10분) 
    Q&A 
    CM (형상관리)         - 유동주대리 (10분) 
    Q&A  
  5. Break Time  
  6. 각 PA(Process Area)별 절차 및 양식 설명 
    PPQA (품질보증)       - 조웅희부장 (10분) 
    Q&A 
    MA (측정 및 분석)     - 조웅희부장 (10분) 
    Q&A 
    SAM (협력업체관리)    - 박한철부장 (10분) 
    Q&A  
  7. WPMS 사용             - 주선미과장 (10분) 
    Q&A   
  8. 기타사항 
    성과관리              - 조웅희부장 (5분) 
    원가관리              - 백두현과장 (5분) 
    커리어패스 및 로드맵  - 박한철부장 (5분)  
  9. 사장님 말씀           - 강은희 (10분)  
==============================================================================================================

 - PMP자격 대비반 교육 
- 프로젝트관리 교육(한국생산성 본부 교육일정) 
http://www.kpc.or.kr/education/education_caregory01.asp?Cate_Code=31  
- 프로젝트관리 교육(주말반: 한국생산성본부) 
http://www.kpc.or.kr/PDS/ProposalFile/1103_PMP-weekend.pdf 
- 프로젝트관리 교육(주말반: 한국생산성본부 대구경북지부 T) 601-5161) 
http://www.kpc.or.kr/PDS/ProposalFile/1006_PMP-weekend_DAEGU.pdf   
- TQMS(경영컨설팅) 
http://www.tqms.co.kr 
==============================================================================================================

- 대신 소방파출소(서문 시장내) 전화 
PDP TV 벽걸이 문제(벽걸이(20만원) --> 천정걸이(60만원)) 
소방장 윤종수: 15일(월) 사장님 오시면 보고 드릴 것(*) 
대신 소방파출소 T)255-0029 
LG XCANVAS 42PC1D 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.13(토) 작업 ■■■■■■■■■■■■■■■■
---> 15:00 ~ 20:00  --> 백두현 팀장 결혼 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)   
==============================================================================================================

- 대구공대 버스 노선 
1. 609번 
대구디지털산업진흥원앞(계전앞) -> 남부교육청건너(대구공대 근처) 
대구디지털산업진흥건너 -> 동대구고속터미널 
2. 651번 
대구디지털산업진흥건너-> 동대구고속터미널(막차: 22:30) 
청구그린맨션2차앞(대구공대 큰길) -> 동대구고속터미널(막차: 22:30)  
3. 106번 
대구디지털산업진흥건너-> 동대구고속터미널(막차: 22:30) 
4. 518번 
청구그린맨션2차앞(대구공대 큰길) -> 대구디지털산업진흥건너-> 우방메트로팔레스(동부정류장 근처) 
==============================================================================================================

- 백두현 팀장 결혼  
10:00 기상 
12:30 뉴영남호텔 3층 
13:30 점심 식사 
15:00 회사출근(서정호 대리 차)  
20:40 귀가  
----------------------------------------------------- 
일시: 2007년 10월 13일(토) 오후 1시 
장소: 뉴영남호텔 3층 
==============================================================================================================


- [주간업무 07_10 2째주]  
★ 금주 업무 실적  
1. WPMS System 개발 
 가. 메인화면(dwsMain.oza): 왼쪽 메뉴바 생성 
 나. 개인Task관리(TSK_100_A040.oza) 
  - 협의와 수정 필요(주선미 과장) 
 다. 공수입력(LBR_100_A010.oza) 
  - 협의와 수정 필요(주선미 과장) 
2. CMMI회의 
일시 : 2007년 10월 12일(금) 오후 2시 ~ 5시  
장소 : DIP별관 4층 대회의실(구 계명전문대학 건물) 
---------------------------------------------------------- 

★ 차주 업무 계획 
 1. WPMS System 개발 
 가. 개인Task관리(TSK_100_A040.oza) 수정(10.15(월) ~ 16일(화)) 
 나. 공수입력(LBR_100_A010.oza) 수정(10.17(수) ~ 18일(목)) 
 다. 주간업무보고(RPT_110_A010.oza) 붙이기 --> 기존 HRS에서 가져옴(10.19일(금))  
==============================================================================================================

- J's 커피숍(2007.10.14(일))  
10:00 기상 
13:20 J's 호텔 커피숍(냉커피 만 천원) 
13:30 이용주씨(HP) *) 
14:30 놀부 보쌈(보쌈 중: 3만원) 
13:30 행복주유소(4만원) 
13:50 대구월드컵 경기장(대구FC 1: 0 FC서울) 
16:50 동대구역  
17:10 귀가  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.15(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 22:30 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)   

var datamanager = _GetDataManager(); 
var dmodule = datamanager.GetDataModule("region1"); 
var ds = dmodule.GetDataSet("chart"); 

var fieldNameArray = new Array(); 
fieldNameArray[0] = "cdate"; 
fieldNameArray[1] = "time";  
==============================================================================================================

- 위니텍 WPMS 서버 사용법 
1. 톰켓 서버(리눅스) 
59.25.178.81(192.168.0.17) su/rootroot** 
http://59.25.178.81/wpms/wpms.htm 
2. Apachectl 실행 
]# wpms/wpms** 
]# su -   
]# rootroot** 
]# cd /usr/local/apache-tomcat-5.5.12/bin 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# ./catalina.sh start  --> 톰켓(오즈) 시작 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# ./catalina.sh stop  --> 톰켓(오즈) 멈춤 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# ps -ef  grep admin 
root      5246  5204  0 09:21 pts/3    00:00:00 grep admin --> 톰켓(오즈) 서버가 제대로 시작되고 있음 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# ps -ef grep java 
-------------------------------------------------------------------------------------------- 
 3. 오즈 서버 상태 확인 
http://59.25.178.81/hrs/server(http://192.168.0.17/wpms/server) 
HTTP Status 404 - /oz35/server 
--> 404는 이미 친숙해진 것처럼 HTTP 서버가 UA의 요청(the Request-URI)에 맞는 어떠한 것도  
찾지 못하였을 때 내보내는 에러 코드 
http://59.25.178.81/hrs/server(http://192.168.0.17/wpms/server) 
OZ Server FrameWork Servlet 3.5.0101.20060424 10:25.102 --> 이 내용이 뜨면 서버는 정상 

[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# sync; 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# sync; 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# sync; 
[DEV2:/usr/local/apache-tomcat-5.5.12/bin]# reboot -Fr    =====> 재부팅(reboo -n) 
==============================================================================================================

- 문자 찾기(Unix용) 
[DEV2:/bin]# ps -ef  grep apache-tomcat 
==============================================================================================================

- 키카 카니발2 풋살화(47,300원) --> 49,000원(공대풋살매장) 
http://itempage.auction.co.kr/detailview.aspx?itemno=A088397422 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.16(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 23:30  --> 풋살(새벽 축구(07:00 ~08:10) 대구공대 2: 1 웨드FC) 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)   

//var p_EmpSN = _GetGlobal("g_uid");  //Global 사원번호 --> TEST 
var p_EmpSN = "Htec-128";  //Global 사원번호 --> TEST 
- 2차원 배열(Array) 
var fieldNameArray = new Array();    
------------------------------------------------------------------- 
   
grd_List.SetFocusCell(0, 9);   //Grid Focus 설정   
var grd_List = _GetBoard("Main").GetChild("grd_List");  
var row = grd_List.GetFocusRowIndex();  //Grid 줄 가져옴 
 -------------------------------------------------------------------- 

- 선택된 Cell들을 Parameter로 가져오고 가져온 Cell들의 개수를 가져옴 
var cells = new Array(); 
var selCount = Comp.GetSelectedCells(cells); 
for(var I = 0; i < selCount; i++){ 
     _MessageBox(cells[i].Value, ""); 
} 
==============================================================================================================

- 대구공대 풋살(조기 축구) 
05:30 기상 
06:30 대구공대 
07:00 축구시합(대구공대 2: 1 웨드FC): 레프트윙 
07:50 9:9 미니 게임(하프 게임) 
08:10 종료, 샤워 
08:20 대구공대 출발 
08:40 출근 
==============================================================================================================

1.저장 클릭  
  : 개인Task에 추가되거나 삭제된 리스트의 모든 항목이 저장됨 
    (현재는 개인Task의 목록을 선택된 항목만 저장되는 것같음) 
2.-> 클릭 
  :개인Task 리스트에서 삭제만 하는 것으로 DB에 저장되는 것이 아님 
  (따라서 지금과 같은 메세지 박스가 필요없음) 
3. <- 클릭 
  : 개인Task 리스트에 추가만 되는 것으로 DB에 저장되는 것이 아님 
  (오른쪽 Task 트리의 더블클릭과 같은 효과) 
4.시작일, 종료일은 콤보박스 아닌 Label로  
  시작일은 공수가 처음 입력된 날 
  종료일은 공수입력 화면에서 완료버튼을 클릭한 날 
5.담당자가 지정되지 않았으면 담당자 란에 Empty, 담당자지정 Check 해제 
  담당자지정 클릭하면 본인 이름 담당자란에 담당자지정 Check 
  담당자지정이 이미되어있으면 담당자란에 담당자명, 담당자지정 Check->(본인이면 Enable, 아니면 disable)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.17(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 23:30 

- WPMS System
- 공수입력(WD-WAR-005): LBR_100_A010.oza 
(oza/LBR/LBR_100/LBR_100_A010.oza/Main) 
-------------------------------------------------------------------- 
     
//var p_EmpSN = _GetGlobal("g_uid");  //Global 사원번호 
var p_EmpSN = "Htec-128";  //Global 사원번호 --> TEST  
_MessageBox("[Document:GlobalFuntion:: lf_subsyslist_load()]=>[p_EmpSN_Global 사원번호]"+ p_EmpSN +"[p_ChgEmpSN]=>"+ p_ChgEmpSN); 
   
grd_List.SetFocusCell(0,11); //Grid 0번째 줄 Focus 설정 
var grd_List = _GetBoard("Main").GetChild("grd_List");  
var p_row = grd_List.GetFocusRowIndex();  //Grid 줄 가져옴 
_MessageBox("[Document:GlobalFuntion:: lf_subsyslist_load()]=>[p_row]"+ p_row); 
  
var SelectedIndexs = new Array();  
lib_Menu.GetSelectedIndexes(SelectedIndexs);   //리스트 박스 줄 가져옴  
 lib_Menu.RemoveAllItem(); //리스트 박스 삭제 
==============================================================================================================

- 위니텍 프린터  ---------  
- 프린터 설정(HP color LaserJet 3700 --> 드라이버: HP color LaserJet 3700)  --> 디자인팀 전용  
프린터 추가 --> 프린터 추가 마법사 
이 프린터에 연결된 로컬 프린터(L) 체크  --> 새포트 만들기(C) 포트종류: Standard TCP/IP Port 
프린터 또는 IP주소: 192.168.0.140  --> 완료(192.168.0.153)  
http://h50177.www5.hp.com/support/Q7546A/more_info_soar_ds-39887-3.html 
http://192.168.0.140  
\\192.168.0.153  --> 정대리 컴 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2007.10.18(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 23:40 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)    
-------------------------------------------------------------------- 

//var p_EmpSN = _GetGlobal("g_uid");  //Global 사원번호 
var p_EmpSN = "Htec-128";  //Global 사원번호 --> TEST  
_MessageBox("[Document:GlobalFuntion:: lf_subsyslist_load()]=>[p_EmpSN_Global 사원번호]"+ p_EmpSN +"[p_ChgEmpSN]=>"+ p_ChgEmpSN); 
   
grd_List.SetFocusCell(0,11); //Grid 0번째 줄 Focus 설정 
var grd_List = _GetBoard("Main").GetChild("grd_List");  
var p_row = grd_List.GetFocusRowIndex();  //Grid 줄 가져옴 
_MessageBox("[Document:GlobalFuntion:: lf_subsyslist_load()]=>[p_row]"+ p_row); 
  
var SelectedIndexs = new Array();  
lib_Menu.GetSelectedIndexes(SelectedIndexs);   //리스트 박스 줄 가져옴  
lib_Menu.RemoveAllItem(); //리스트 박스 삭제 
==============================================================================================================

-- 월요일 기준(날짜 함수): 요일 구하기 
SELECT TO_CHAR(SYSDATE,'yyyymmdd') AS NOW_DT 
, TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')  ,'yyyymmdd') mon 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+1,'yyyymmdd') tue 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+2,'yyyymmdd') wed 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+3,'yyyymmdd') thu 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+4,'yyyymmdd') fri 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+5,'yyyymmdd') sat 
   , TO_CHAR(TRUNC(TO_DATE(TO_CHAR(SYSDATE,'yyyymmdd'),'yyyymmdd'),'iw')+6,'yyyymmdd') sun 
FROM dual 
==============================================================================================================

- 기차표 예매 
동대구 -> 김천역 도착 
21(일) 12:17 ~ 13:11 무궁화호 
[KTX 패밀리 체크 카드] 카드번호: 0550566830/0**9 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.19(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:10  --> 풋살(술자리: 차호진) 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main)     
==============================================================================================================

- [CMMI 교육2]
교육명 : CMMI와 프로세스 개선활동 개요 
일시 : 2007년 10월 19일 오후 2시 30분 ~ 4시 
장소 : DIP별관 5층 대회의실 
내용 : 윈니텍 업무 프로세스 개선(CMMI 개요): 남수석 
---------------------------------------------------------- 
교육명 : 위니텍 KMS 구축 프로젝트 강의: (주)이시스 
일시 : 2007년 10월 19일 오후 2시 ~  2시 30분 
==============================================================================================================

- i3shop SMS 전송 에러 
원인: 보내기 전소에서 로그를 기록하는 
frmLog 에 RichTextBox를 지원하는 RICHED32.DLL, RICHTX32.OCX  
파일이 제대로 안 먹어서 에러가 나는 것으로 추정 됨  
해결책1:  Install Factory 로 OCX 파일 만들 때 꼭 서버 등록을 할 것 
해결책2: VB 6.0 프로그램 설치 후 삭제를 함  
==============================================================================================================

- [주간업무 2007년 10월 3째주]  
★ 금주 업무 실적  
1. WPMS System 개발 
 가. 개인Task관리(TSK_100_A040.oza) 수정 물 
 나. 공수입력(LBR_100_A010.oza) 수정 완료 
2. CMMI 교육 
일시 : 2007년 10월 19일(금) 오후 2시 ~ 4시 30분 
장소 : DIP별관 5층 대회의(구 계명전문대학 건물) 
내용: CMMI 개요(남수석) 
---------------------------------------------------------- 

★ 차주 업무 계획
1. WPMS System 개발 
 가. 개인Task관리(TSK_100_A040.oza) 데이타 작업 
 나. 공수입력(LBR_100_A010.oza) 데이타 작업 
 다. 위험물관리(DAN_110_A010.oza) 데이타 작업 
 라. 주간업무보고(RPT_110_A010.oza) 붙이기 --> 기존 HRS에서 가져옴  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.20(토) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 20:50 

- WPMS System
- 개인Task관리(WD-WAR-004): TSK_100_A040.oza 
(oza/TSK/TSK_100/TSK_100_A040.oza/Main) 
==============================================================================================================

- My Profile 작성, 칼라 출력 
==============================================================================================================

 - 김천 직지사(2007.10.21(일))
10:00 기상 
11:00 이발  
12:17 동대구역 
13:11 김천역(이용주씨 2번째 만남, My Profile 자료 선물) 
14:20 점심(정식: 직지사 입구) 
13:00 직지사(입장료: 5000원(2매: 내가 냄)) 
13:00 차(직지사)  
17:13 김천역 
18:11 귀가 
==============================================================================================================

- 10월 t.t.c 축구대회 ==> 불참  
일시: 2007년 10월 21일(일) 오후 6시 
장소: 대구공전 축구장 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.22(월) 작업 ■■■■■■■■■■■■■■■■
---> 05:50 ~ 22:30 

- WPMS System
- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main) 
==============================================================================================================

- USN 자료 작성(U-FPMS) 
1. 감지센서 구성 
2. 자료 협조(주) 아트시스템(USN 협력 업체) 
담당연구원 : 이재신 * *@*.* 
053) 958-6604 
RF 기능 모듈 --> RF회로도? 
화재감지센서 USN 단말기  --> ? 
==============================================================================================================

- 부서명 변경(HRS 시스템) 
비즈컨설팅부, 경영관리팀, H/W개발부 
-- 프로젝트,팀 구분 정보 조회 @@@@@@@@@@@@@ 
SELECT * FROM PJ009 A 
-- WHERE A.PROJ_TM_NM LIKE '비즈컨설팅부%' 
ORDER BY UP_DT 
--; 
------------------------------------------------------ 

-- 프로젝트,팀 구분 정보 수정 @@@ 
 UPDATE  PJ009 A 
SET  A.PROJ_TM_NM = '비즈컨설팅부', UP_ID = 'tamario',  
UP_DT =SYSDATE, ETC = '2007년 10월 01일부로 부서명 변경(구:해외사업팀)' 
WHERE A.PROJ_TM_NM LIKE '비즈컨설팅부%' 
--; 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.23(화) 작업 ■■■■■■■■■■■■■■■■ \
---> 08:50 ~ 22:30  --> 풋살(새벽 축구(07:00 ~08:20) 대구공대 0: 1 웨드FC) 

- WPMS System
- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main)  
인력 조회 화면(EmpSearch) --> dws_WorkerSrchPopup.ozc로 만듬, 등록 
==============================================================================================================

- 지진재해대응시스템 구축 2차 사업 확정 발표 
주관: 소방방재청 
시행사: 삼성 SDS 컨소시엄 
개발일정: 2007.11 ~ 2008.06(8개월) 
==============================================================================================================

- VB설치 프로그램 오류 --> 해결(실행 파일 다시 만들어 현정씨 노트북에 설치) 
msadodc.ocx 구성요소나 종속성이 정확하게 등록되지 않았다는데요 
일이 누락되었거나 잘못되었다고 하네요 
==============================================================================================================

- 성서 고등학교 
521번(동대구고속 터미널 --> 성서보성타운2차앞) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.24(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:30 

- WPMS System
- 개인Task관리(TSK_100_A040.oza) 수정 
개인Task 테이블(TA002) 변경 
- 공수입력(LBR_100_A010.oza) 수정 
완료여부 수정, 종료일자(Task일의 마지막 일자) 
==============================================================================================================

- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.25(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 22:30 

- WPMS System
- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main)  
pj010j1t01.odi 파일에서 p_PjSN_2 필드타입 무조건 VARCHAR로 할 것(NUMERIC로 하면 에러가 남) 
------------------------------------------------------------------------------------------- 

// 위험관리 정보 조회 @@@@@ --> Grid조회(pj010j1t01.odi)   ===> search     
string sql; 
sql=" SELECT A.PjSN, B.PjName, A.DangerSN, A.DangerName, A.DangerOrder, A.DangerDesc, ";  
sql = sql + " A.Detector, DECODE(DetectDate, NULL, '') AS DetectDate,    "; 
sql = sql + " A.CopePlan, A.Maker, A.MakeDate, C.MeasuresDate, C.PersonChg  "; 
sql = sql + "FROM PJ010 A, PJ001 B, PJ011 C "; 
sql = sql + "WHERE A.PjSN = B.PjSN "; //프로젝트번호  
sql = sql + " AND A.PjSN = C.PjSN(+)  "; 
sql = sql + " AND A.DangerSN = C.DangerSN(+) "; //위험물관리번호  
sql = sql + " AND (A.PjSN IS NULL OR A.PjSN ='"+ #OZParam.p_PjSN_2#+"') ";//프로젝트번호(타입: VARCHAR로) 
if(#OZParam.p_Proj_DoneYN# == "Y") { //프로젝트완료상태가 완료이면 
sql = sql + "  AND B.EndDate IS NOT NULL ";  
} 
if(#OZParam.p_ManageYN# == "Y") {   //조치 상태가 조치이면 
sql = sql + "  AND C.MeasuresDate IS NOT NULL "; 
}  
setQueryString(sql);  
------------------------------------------------------------------------------------------- 

- Grid 줄 가져옴  
var p_row =  grd_List.GetFocusRowIndex();  //Grid 줄 가져옴   
//_MessageBox("[grd_List:OnDoubleClick)]=>[p_row]"+ p_row);  
p_PjSN = grd_List.GetCell(p_row, 11).Text; //프로젝트번호 
txt_PjSN.Text = p_PjSN;  
==============================================================================================================

- U-FPMS 인수인계(전병옥 대리) 
http://127.0.0.1/fpms/monitor/U-FPMS.jsp  

- ORALCE AS 웹서버에 jar파일 넣기 
D:\product\10.1.3\OracleAS_2\j2ee\home\applications\mnt\fpms\WEB-INF\lib 
fpms_monitor.jar(소스 관련) fpms_monitor_db.jar(DB관련) 
D:\product\10.1.3\OracleAS_2\j2ee\home\applications\mnt\fpms\monitor  --> JSP 파일 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.26(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:30 --> 풋살(문경 약돌 돼지(성호, 병진, 호진): 내가 냄(74,000원)) 

- WPMS System
- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main)  
==============================================================================================================

- 형전환(String --> Int, Float) 
i_Trans_24 = i_Trans_24 + parseInt(grd_List.GetCell(i, 5).Value); //공수의 합1 
i_Trans_24hr_1 = i_Trans_24hr_1 + parseFloat(grd_List.GetCell(i, 5).Value); //공수의 합1   
- 선택한 데이타 리스트 박스에 설정 
cmb_DangerOrder.SelectedIndex = cmb_DangerOrder.FindItemValue(grd_List.GetCell(p_row, 1).Text); //우선순위  
==============================================================================================================

 - 공수입력(LBR_100_A010.oza) 수정   
Task 공수 일자: 전체 24.....소수점 등록 가능, 정렬  
==============================================================================================================

- SMS 문의  
1. 세아테크에서 개발한 프로그램 사용  
의무 유지보수 우리 회사에서 지불 -> 2년간(2008.11까지)   
기본요금: 만원, 월별 건당 500건 무료(이양순 과장이 내고 있음) 
세아테크 기술영업 변승용 *   
2. SMS서버(USMSSVR) 
2007년 5월 이후로 작동이 멈춘 상태 
--> 김승진씨가 SMS 서버에 연계 프로그램을 깔다가 OFF 그 이후로 계속 사용 안함 
==> SMS 서버 오늘날짜로 다시 시작 함(조준형 대리 처리)  
SMS_MSG 테이블에서 SEND_YN, SEND_RESULT, SEND_TIME 업데이트 함 
전병옥 * 
==============================================================================================================

- 지진재해대응시스템 구축 2차 사업 관련 내부 회의 
참석자: 조부장, 주과장, 유대리, 신진호 과장  
개발일정: 2007.11 ~ 2008.06(8개월) 
11월 초에 서울 상주 예상 
==============================================================================================================

- [주간업무 2007년 10월 4째주] 
★ 금주 업무 실적
1. WPMS System 개발 
 가. 개인Task관리(TSK_100_A040.oza) 수정 
 나. 공수입력(LBR_100_A010.oza) 수정 
 다. 위험물관리(DAN_110_A010.oza) 검색, 등록만 완료 
 라. U-FPMS 인수인계(전병옥 대리) 
 Eclipse설치, DB 세팅, 소스 분석 
---------------------------------------------------------- 

★ 차주 업무 계획
1. WPMS System 개발 
 가. 위험물관리(DAN_110_A010.oza) 완료 
 나. WPMS 추가 요구 사항 수정 
 나. U-FPMS 소스 분석  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.27(토) 작업 ■■■■■■■■■■■■■■■■
---> 10:00 ~ 19:30 -->  전재일 과장 결혼(오페라웨딩), 후남 만남(고속터미널) 

- WPMS System
- 위험요소관리(WD-PMS-021): DAN_110_A010.oza 
(oza/DAN/DAN_100/DAN_110_A010.oza/Main)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.29(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 24:00 

- WPMS System
- 개인Task관리(TSK_100_A040.oza) 수정 
 툴팁, 지난주, 금주, 차주 수정 
libobj.AddSele(ction(0); //첫번재 줄 선택(포커스)  
trev_Menu.ScrollPageUp(10,true); //Vertical Scroll 을 10 page 만큼 위로 스크롤한다. 
  
 - 툴팁 사용법 
btn_GetInduTaskPrev.ToolTipText = "지난주로 이동";  
<툴팁구현> 
1. 툴바에서 툴팁을 클릭하면 Invisibles탭에 ToolTip이 추가됩니다. 
(컴포넌트 --> Document --> Invisibles탭) 
2. ToolTip의 속성창에서 색상, 폰트, 지속 시간 등을 설정합니다. 
3. 툴팁을 보여줄 컴포넌트(예. 라벨)의 속성창에서 ToolTip 속성에는 툴팁이름, ToolTipText 속성에는  
툴팁에 보여줄 텍스트를 입력합니다. 
<툴팁속성> 
- 툴팁이 보여지는 시간 : AutoPopDelay - 50000 -> 5초  
- 마우스 커서가 올라가고 나서 툴팁이 뜨기 까지의 시간 : InitialDelay - 500 -> 0.5초 
- 툴팁의 최대 넓이 : MaxTipWidth - 500 -> 픽셀 단위로 지정함. 이 너비보다 툴팁텍스트의 내용이 작으면  
텍스트영역만 툴팁이 그려짐 
==============================================================================================================

- WPMS System 이미지 작업 요청 
 http://192.168.0.17/wpms/wpms.htm 
1. 초기 화면 
bg01.jpg 상단 이미지 
2. 메인 화면 
메인상단 화면 새로 생성 
3. 버튼 
btn_04.gif, btn_04_o.gif   --> ("종 료" ==> "로그아웃"로 변경) 
4. 버튼(행정통합) 
tab01_select.gif, tab01_disable.gif--> ("행정통합" ==> "시스템메뉴"로 변경)    
==============================================================================================================    

 - DB 데이터를 array에 담기 
var arrStr = new Array(); 
arrStr[0] = new Array(); 
arrStr[1] = new Array(); 
arrStr[0][0] = "aaa"; 
arrStr[1][0] = "bbbbb"; 
_TRACELN("arrStr[0][0] = "+arrStr[0][0]+"   arrStr[1][0] = "+arrStr[1][0]); 
==============================================================================================================    

■■■■■■■■■■■■■■■■■■ 2007.10.30(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:30 ~ 23:30 

- WPMS System
- 개인Task관리(TSK_100_A040.oza) 수정 
지난주, 금주, 차주 수정  
-------------------------------------------------------------------------- 

- Grid 색깔 설정 
if (grd_List.GetRowCount > 0) {  //Grid 데이타가 존재하면 
grd_List.AddRow(1);    
for(var i = 0; i < grd_List.GetRowCount(); i++) {  
p_int = i + 1;  
if (p_int>= grd_List.GetRowCount()) {  //마지막 줄이면   
grd_List.SelectCellRange(i, 5, i, 11); 
grd_List.SetPropertyInRange(PropertyNameConst.BackColor, "215, 255, 200"); //공수입력란 칼럼 색깔 설정 
grd_List.SelectCellRange(i, 12, i, 13); 
grd_List.SetPropertyInRange(PropertyNameConst.BackColor, "195,119,135");  //완료여부, 삭제 칼럼 색깔 설정  
grd_List.SelectCellRange(i, 5, i, 13); //Task_Dt2 ~ 삭제를 ReadOnly로 설정 
grd_List.ChangeEditorTypeInRange(CellEditComponentTypeConst.None);  
} 
} //end of for -->   
}  //end of if --> Grid 데이타가 존재하면 
==============================================================================================================

- 공수입력(LBR_100_A010.oza) 수정  
해당 시작일자(Task일의 첫번째 일자), 해당 종료일자(Task일의 마지막 일자) --> 공수정보(TA003)   
------------------------------------------------------------------------------------------------ 
Grid색상 변경, Grid합계 줄 추가 
- Task 단계코드 조회(코드값으로 조회) 
SELECT * FROM CD002 
WHERE CD1 = '03'    --1단계코드  
==============================================================================================================

- 제목 : 죄송합니다. 리스트박스 아이템은 폰트처리가 불가능합니다.  
http://www.oztn.net/kb/board-read.do?boardId=qnaapp&boardNo=119365085007803&command=READ&page=1&categoryId=-1  
==============================================================================================================

- 부서명 추가(HRS 시스템) 
개발사업1부, 개발사업2부, SM사업부 추가 
-- 프로젝트,팀 구분 정보 조회  @@@  
SELECT A.PROJ_TM_CD, A.PROJ_TM_NM, A.PROJ_TM_CD_SORT  
FROM PJ009 A 
--WHERE A.PROJ_TM_CD = '107004'  --프로젝트_팀CD  
ORDER BY A.PROJ_TM_CD_SORT, A.PROJ_TM_CD 
--;  
==============================================================================================================

- FTP 연결 
서버이름: [03] HRS(실서버) 
URL: http://192.168.0.17/hrs/server  
admin/admin, winidev/wini00 
==============================================================================================================

- (주)위니텍 사업자 번호 
504-81-25346(5048125346) 
업종: 소프트웨어 개발,  업태: 사업 서비스 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2007.10.31(수) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 23:30  --> 풋살(새벽 축구(07:00 ~08:10) 대구공대 2: 0 웨드FC, 첫골) 

- WPMS System
- 공수입력(LBR_100_A010.oza) 수정  
해당 시작일자(Task일의 첫번째 일자), 해당 종료일자(완료버튼 클릭: Task일의 마지막 일자) --> 공수정보(TA003)   
------------------------------------------------------------------------------------------- 

 - 콤보박스 텍스트(Text, Value) 
var objItem = This.GetItemObject(This.SelectedIndex);  
var p_SchSN = objItem.ItemValue; //일정일련번호   
var p_TaskType_NM =  This.GetItemObject(This.SelectedIndex).Text;  //Task명 
==============================================================================================================

- [주행거리]     
  A. 동대구 기준 시내 지역    
1. 동대구역 --> 신천교 --> 동인네거리 --> 경대병원 --> 반월당 --> 서문시장역 --> 계명네거리  
    --> 대명동 계대: 7km 
2. 동대구역 --> 신천교 --> 청구네거리 --> 수성시장 --> 대봉교 --> 건들바위 --> 명덕네거리  
    --> 계명네거리 --> 대명동 계대: 7.4km  
3. 대명동 계대 --> 성당시장 --> 서부정류장 --> 명덕네거리 --> 대구공전: 4.6km     
4. 동대구역 --> 신천교 --> 대구역 --> 반월당 --> 반고개네거리 --> 감삼역 --> 대구공전: 11.3km    
   동대구역 --> 신천동로 --> 앞산공원 --> 대구공전:  15.5km 
5. 동대구역 --> 신천대로 --> 성서 계대: 19km    
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■