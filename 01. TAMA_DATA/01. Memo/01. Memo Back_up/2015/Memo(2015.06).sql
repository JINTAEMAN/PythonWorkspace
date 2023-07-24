 

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2015.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2015.06.01(월) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 21:00 ==>  

- 포스로 야드관리시스템 Prj 
1. 닫기 수정(/WorkFrame.xfdl/btn_close_onclick()) 
==============================================================================================================

- 현재의 탭 idx 가져오기
function btn_MDI_WinIn_onclick(obj:Button,  e:ClickEventInfo)
{ 
var bSucc;
var WorkFrame = "WorkFrameSet";
var strFormURL = "Frame::WorkFramePopup.xfdl";
var oArg = {a:'aaa', b:'bbb'};
 
targetIdx = gv_TabFrame.form.div_Tab.getIndex(e.clientX, e.clientY);    // 현재의 탭 idx 가져오기 
trace("[/TabFrame.xfdl] [btn_MDI_WinIn_onclick()] ==> [TEST_01] [targetIdx]"+ targetIdx +"[WorkFrame]"+ WorkFrame +"[strFormURL]"+ strFormURL ); 

if(targetIdx < 0)
{
alert("[/TabFrame.xfdl] [btn_MDI_WinIn_onclick()] ==> [열려진 탭이 없습니다.]" ); 
} 
else
{
bSucc = application.open("modeless", strFormURL, WorkFrame, oArg, "showtitlebar=false showstatusbar=false", 0, 0, 1078, 762); 
}  
}

tabId = GetItem(div_Tab, i).name; 

trace("[/TabFrame.xfdl] [lfn_activeTabpage()] ==> [TEST_02]" ); 

div_Tab.components[naviCD].class = "btn_M
DI_S"; 
div_Tab.components[naviCD].setFocus();

ar objBtn = div_Tab.components[obj.name.toString().replace("__EX", "")];

var winId = obj.tabpages[e.postindex].name;
for (var i=0; i<this.tab_navi.getTabpageCount(); i++){
if (this.tab_navi.tabpages[i].name == winId){
this.tab_navi.set_tabindex(i);
}
    }

var winId = gv_TabFrame.form.tab_navi.tabpages[e.postindex].name;
==============================================================================================================

- 포스로 야드관리시스템 Prj  향후 작업
1. 마이메뉴
2. 설정
3. 메모
4. 배포모듈(자동배포,수동배포) 만들기
==============================================================================================================

function btn_MDI_Allclose_onclick(obj:Button,  e:ClickEventInfo)
{  
//trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_01] [gds_openMenu.rowcount]"+ gds_openMenu.rowcount +"[obj.userdata]"+ obj.userdata ); 
 
var tabId = "";
var div_Tab_TotCnt = div_Tab.getTabpageCount() - 1;

if(gds_openMenu.rowcount > 0 )
{     
lfn_TabFrameBtnVisF();
gfn_ArrangeWin(obj.userdata);
trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [div_Tab_TotCnt]"+ div_Tab_TotCnt 
+"[gds_openMenu.rowcount]"+ gds_openMenu.rowcount +"[div_Tab.getTabpageCount()]"+ div_Tab.getTabpageCount() +"[div_Tab_TotCnt]"+ div_Tab_TotCnt ) 
 
for(var i = div_Tab_TotCnt; i>=0; i--)
{
tabId = GetItem(div_Tab, i).name;  
//trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [i_번째]"+ i +"[tabId]"+ tabId ); 
 
div_Tab.removeTabpage(i);// div_Tab 탭 닫기
gfn_closeWindow(tabId);  // 화면 목록에서 화면 삭제 후 화면 닫기
}  
trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_02]");

gv_WorkFrame.WorkMain.visible = true;
} 

trace("[/TabFrame.xfdl] [btn_MDI_Allclose_onclick()] ==> [TEST_end]");
}
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.02(화) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 21:30 ==>  

- 포스로 야드관리시스템 Prj 
1. 소스 통합
2. 마이메뉴(/Left_MyMenu.xadl]) 개발
 1) 즐겨찾기(/COMC0106_P050.xfdl)
==============================================================================================================

-  상태바 메뉴를 클릭 이벤트
/*****************************************************************************************
* 함  수  명 : btn_titlebar_normal_onclick()
* 설      명 : itlebar_normal 클릭(일반 화면 복귀) 
*****************************************************************************************/   
function btn_titlebar_normal_onclick(obj:Button,  e:ClickEventInfo)
{
mainframe.openstatus = "normal";
//trace("[/TitlebarFrame.xfdl] [btn_titlebar_normal_onclick()] ==> [TEST_01]" ); 
 
btn_titlebar_normal.visible = false;
btn_titlebar_max.visible = true; 

//mainframe.openstatus = "minimize";
//mainframe.openstatus = "normal";===> btn_titlebar_normal_onclick
//mainframe.openstatus = "maximize";===> btn_titlebar_maximize_onclick
//exit();
}  
==============================================================================================================

- 파일서버
\\192.168.151.252\CheckIn\01.산출물\02. 최종 산출물, developer/ict1#
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.03(수) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 18:00 ==> 회식(아토스 전무가 와서 문덕 장고 고기집에서 회식함)

- 포스로 야드관리시스템 Prj 
1. 마이메뉴(/Left_MyMenu.xadl]) 개발
 1) 즐겨찾기(/COMC0106_P050.xfdl)
==============================================================================================================

- theme에 이미지 등록 후 사용
UXSTUDIO를 관리자 권한으로 실행 후 테마 파일을 열게 되면 
C:\Program Files (x86)\TOBESOFT\XPLATFORM\9.2.1\TEMPORARY\SUN.xtheme0\Img_com 
==============================================================================================================

- XPlatform license 기간 만료 에러(eclipse 에서)
1. 현상: Invalid license: jarResource=file:/C:/eduPrj/mid/apache-tomcat-7.0.53/wtpwebapps/eduPrj/WEB-INF/lib/XPLATFORM_Server_License.xml
com.tobesoft.xplatform.license.InvalidLicenseException: License has expired: expireDate=2015-06-01, currentDate=2015-06-03
2. 조치
 1) http://support.tobesoft.co.kr/Support/index.html ==> Downloads > 체험판: Products: XPlatform(선택) 다운로드
 2) XPLATFORM_Dev_License_20150601.zip파일 압축 풀어서 XPLATFORM_Server_License.xml 파일 복사
 3) C:\eduPrj\work\eduPrj\Web\WEB-INF\lib에 붙여넣기
==============================================================================================================
 
- MYSQL SYSDATE 문제 처리
1. SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  FROM DUAL 
 ==> SELECT date_format( now(), '%Y-%m-%d') DDDD  FROM TB_MENU 
 ==> SELECT date_format( now(), '%Y-%m-%d %h:%i:%s') DDDD  FROM TB_MENU 

select date_format(now(), '%Y-%m-%d');  
select date_format(now(), '%Y/%m/%d'); 
select date_format(now(), '%Y-%m-%d %h:%i:%s');  
select date_format(now(), '%W'); -- 오늘무슨요일
select date_format(now(), '%d');  -- 오늘몇일
select date_format(now(), '%D');  -- 영어표기 28th like that 
select date_format(now(), '%M'); -- 무슨달 / March 
--------------------------------------------------------------------------------------------

- 채번(순번)

- MySQL 시퀀스생성  
DROP TABLE IF EXISTS  TB_SEQ_FORUM ;
 
CREATE TABLE TB_SEQ_FORUM 
(
ID bigint(8) unsigned NOT NULL auto_increment,
PRIMARY KEY  (ID)
) ENGINE=MyISAM AUTO_INCREMENT=1000
;
 
SELECT MAX(SEQ_FORUM)+1 AS NEXTVAL FROM FORUM 
;

SELECT IFNULL(MEMO_ID, 1000) +1 AS MEMO_ID FROM TB_MEMOLIST 
; 
num int  AUTO_INCREMENT,
 
----------------------------------------------------------------------------------

문자연결 : concat('문자열1', '문자열2'[,'문자열3']) 
형변환 : cast(필드명 as char) 
NVL : COALESCE(필드명, 기본값), IFNULL(필드명, 기본값) 
=========================================================================================================

- MYSQL START WITH
1. Mysql 이라서 CONNECT BY 구문을 사용할 수 없습니다.
2. 해결책: VIEW를 이용(http://kakaodbe.blogspot.kr/2014/10/with.html) 
CREATE VIEW V_TB_MENU AS (SELECT PGM_ID,  
PGM_NM,
PGM_URL,
PGM_ORDER,
PARENT_PGM_ID,
POPUP_YN ,
FOLDER_YN,
LEV,
ENABLE,
USE_YN
FROM TB_MENU)
;   
 
SELECT V1.PGM_ID, V1.PGM_NM,
V1.PGM_URL,
V1.PGM_ORDER,
V1.PARENT_PGM_ID,
V1.POPUP_YN ,
V1.FOLDER_YN,
V1.LEV,
V1.ENABLE,
V1.USE_YN
FROM
 V_TB_MENU AS V1,
 V_TB_MENU AS V2
WHERE --V1.USE_YN = 'Y'
 AND V1.PGM_ID = V2.PGM_ID 
ORDER BY V1.PGM_ID
;   

-- DROP VIEW V_TB_MENU
;
==============================================================================================================
 
-- 오라클 계층구조 쿼리 @@@@
SELECT org_id
  FROM organization
 START WITH class2 IN (...)
 CONNECT BY PRIOR class2 = class1
;
--------------------------------------------------------------------------------

-- 오라클 11G 부터 새로 등장한 WITH 절을 사용한 재귀 쿼리
-- (타 DBMS 에서도 통용되는 방식) --
WITH t(org_id) AS
(
SELECT org_id
  FROM organization
 WHERE class2 IN (...)
 UNION ALL
SELECT o.org_id
  FROM organization o, t
 WHERE t.class2 = o.class1
)
SELECT * FROM t
;
==============================================================================================================

-- 계층구조 쿼리 @@@@
SELECT LEVEL
     , CATEGORY_ID
     , CATEGORY_NAME
FROM ITV_CATEGORY
WHERE LEVEL < 3
START WITH DEPTH = 1
CONNECT BY REF_CATEGORY_ID = PRIOR CATEGORY_ID
--// CATEGORY_ID(자식컬럼), REF_CATEGORY_ID(부모컬럼)
==============================================================================================================

- 배포 분석
1. 동영상 청취(22시 ~ 23시)
 1) 01. 배포 정보(XPlatform).txt  ==> [XP9.2]XPlatform 교육교재_20120320.pdf파일 179 페이지
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2015.06.04(목) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 21:30 ==> 중식(밀면, 최규만 차장님 내기에서 져셔 다 사줌)

- 포스로 야드관리시스템 Prj 
1. 마이메뉴(/Left_MyMenu.xadl]) 개발
 1) 즐겨찾기(/COMC0106_P050.xfdl)
 2) 프레임 재설정(/TitlebarFrame.xfdl) ==> (/COMC0106_P050.xfdl)
 3) 메모(/RightFrame.xadl)
==============================================================================================================

- memo 기능
1. 조회, 등록, 삭제, 공유
 1) 삭제(본인, 관리자)
 2) 조회 list
(진태만)ㅇㅇㅇㅇ
 3) 공유(새창 띄우기)
==============================================================================================================

<ColumnInfo>
  <Column id="Column0" type="STRING" size="256"/>
  <Column id="Column1" type="STRING" size="256"/>
  <Column id="Column2" type="STRING" size="256"/>
  <Column id="Column3" type="STRING" size="256"/>
</ColumnInfo>
<Rows>
  <Row>
    <Col id="Column0">0</Col>
    <Col id="Column1">메모타이틀 01</Col>
    <Col id="Column2">Guilldong,Hong</Col>
    <Col id="Column3">/ 16:54</Col>
  </Row>
  -----------------------------------------------------------------
 
--- 칼럼 추가[add column] ======> DB 칼럼 추가 
ALTER TABLE TB_MENU ADD ( 
    HOTKEY VARCHAR(4)    
)
--;
=========================================================================================================

- DS
gds_menu.saveXML();  // DS 로그 추적 
gfn_traceDS(gds_menu);  // DS 로그 추적
var nRow = objDs.findRow("PGM_ID", menuId);   // DS 칼럼 찾기
var nRow = gds_myMenu.insertRow(gds_myMenu.rowposition + 1);   //DS의 현재  줄
var nRow = gds_memoList.rowposition;  // 클릭한 현재 줄
==============================================================================================================

- mysql 백업
★★ 데이터를 텍스트 파일에 내보내기 - export ★★  
mysql> SELECT * INTO OUTFILE 'C:/data/out.csv' FILELDS TERMINATED
BY', ' FORM tab1; 

C:\Users\TAMA> TYPE  C:/data/out.csv'
-----------------------------------------------------------------------

★★ 데이터를 텍스트 파일에 가져오기 - import ★★  
mysql> LOAD DATA INFILE  'C:/data/in.csv' INTO TABLE tab1N FILELDS TERMINATED
BY', ' ;
==============================================================================================================

- 테이블 테이블 백업하기 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\eGovFrame-3.2\mysql-5.6.21\bin> mysql -u nexacro -p nexacro test TB_MENU > TB_MENU_back.sql 
mysqldump -u 계정명 -p 데이타베이스명 백업할테이블명 > 저장할 파일명.sql (엔터입력)

 - 테이블 데이타 복구하기 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin > mysql -u nexacro -p nexacro test < TB_MENU_back.sql 
mysql -u 계정명 -p 데이타베이스명 < 테이블백업파일명 (엔터입력) 
==============================================================================================================

- Mysql 접속방법
C:\Users\TAMA> cd C:\eGovFrame-3.2\mysql-5.6.21\bin 
C:\eGovFrame-3.2\mysql-5.6.21\bin> mysql -u nexacro -p test
Enter password:  nexacro   ---> 비밀번호 넣기
mysql>
==============================================================================================================

- SQL Developer 로 MySQL 접속하기
http://blog.naver.com/varkiry05/220029476727
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2015.06.05(금) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 20:30 ==> 비, 중식(밀면, 손효석 부장님 내기에서 져셔 다 사줌), 최규만 차장이랑 싸움

- 포스로 야드관리시스템 Prj 
1. 메모(/RightFrame.xadl)
==============================================================================================================

- 메뉴 바 조회 문제
변경 된 데이터가 바로 반영이 되지 않아 발생하는 현상이였으며 
menu item 에 바인딩 되어있는 gds_menu 데이터셋를 다시 바인딩하여 처리 하였습니다.
/left_frame.xfdl파일에서
function fn_CallBack(sSvcID, errorCode, errorMsg) 
{   
	if (sSvcID == "svc_menu") 
	{  
	trace("[/left_frame.xfdl] [fn_CallBack()] ==> [gds_menu DS] \n " + gds_menu.saveXML());// DS 로그 추적 

	gv_TopFrame.form.mu_topFrame.innerdataset = "";  
	gv_TopFrame.form.mu_topFrame.innerdataset = "gds_menu"; // inner dataset 재 설정 
	}
}
==============================================================================================================

- expr 사용 @@@
1. expr 일반 사용
expr="expr:META_NM_8==nullMETA_NM_8==''?'':META_NM_8"

2. expr를 사용한  fn_code() 함수 처리 
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
	else 
	{ 
	strZipcodeNew = strZipcode_2.substring(5,8);
	trace("[/CoaZipCodeReg.xfdl][fn_code()_01_1]==> [strZipcode_2]"+ strZipcode_2 +"[strZipcodeNew_90]"+ strZipcodeNew );
	}  

	return strZipcodeNew;
}
----------------------------------------------------------------------------------------------

<Cell colspan="3" style="align:left;" expr="expr:getRowCount() + " 건""/>
<Cell col="18" text="bind:META_NM_16" expr="expr:META_NM_16==nullMETA_NM_16==''?'':META_NM_16"/> 
<Cell row="1" col="2" displaytype="checkbox" edittype="checkbox" style="align:center middle;" text="bind:USE_BTN_1" expr="expr:USE_BTN_1 == 'Y'  USE_BTN_1 == '1' ? 1 : 0"/> 
==============================================================================================================
 
- [MSSQL/ORACLE/MYSQL] DATE 날짜 현시간 추출  SQL    
[MYSQL] 
DATE_FORMAT(NOW(), '%Y%m%d%h%i%s'), = 년월일 시분초 
DATE_FORMAT(NOW(), '%Y%m%d'), = 년월일 

[ORACLE] 
TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS'), = 년월일 시분초 
TO_CHAR(SYSDATE, 'YYYYMMDD'), = 년월일 

[MSSQL] 
CONVERT(VARCHAR, GETDATE(),120) = 년월일 시분초 
CONVERT(VARCHAR(10), GETDATE(),120) = 년월일 --> Convert(varchar(10),Getdate(),112)
==============================================================================================================

- memo 기능
1. 조회, 등록, 삭제, 공유
 1) 삭제(본인, 관리자)
 2) 조회 list
(진태만) TEST
 3) 공유(새창 띄우기)
==============================================================================================================

<!--// DataURL_PYMS ADD(2015.05.22) //-->
<Service prefixid="DataURL_PYMS" type="JSP" url="http://127.0.0.1:8080/PYMS/" version="0" communicationversion="0" cachelevel="none"/>

<!--// DataURL_PYMS_02 ADD(2015.06.05) //-->
<Service prefixid="DataURL_PYMS_02" type="JSP" url="http://127.0.0.1:9080/JSP_PYMS/" version="0" communicationversion="0" cachelevel="none"/>
==============================================================================================================
    
■■■■■■■■■■■■■■■■■■ 2015.06.06(토) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 20:40 ==> 주말 출근, 포항집

- 포스로 야드관리시스템 Prj 
1. glue 연결
1. COM_RightFrame.glue_uml_ad  ==> 완료
2. COM_LeftFrame.glue_uml_ad
2. COM_TitlebarFrame.glue_uml_ad
==============================================================================================================

- 포스로 야드관리시스템 Prj  
1. 메모(/RightFrame.xadl) 공유 기능
==============================================================================================================

- glue 사용법 
1. emptest.glue_uml_ad 에서(모델 설계 화면)  ==> 수정 후 Generate Service 해주고 서버 재시작할 것
 ==> D:\eclipse\workspace\PYMS\model
 ==> D:\eclipse\workspace\PYMS\src\query
 ==> D:\eclipse\workspace\PYMS\src\service   ==> 모델 설계 후 service xlml 반영됨

 1) 조회
pyms.common.XplatformSearchNamed
pyms_dao
ds_cond
ds_result
EMPTEST.SELECT
0  
==> find: 조회(EMPTEST.SELECT) ==> sql-key: EMPTEST.SELECT

2. /PYMS/src/query/emptest-query.glue_sql에서
ID: EMPTEST.SELECT
SELECT 0 ROWCHK,
       EMPNO,
        ENAME,
        JOB,
        MGR,
        HIREDATE,
        SAL,
        DEPTNO
  FROM EMP
 WHERE EMPNO LIKE ISNULL(:EMPNO, '%') + '%'
   AND ENAME LIKE ISNULL(:ENAME, '%') + '%'
ORDER BY 1

3./PYMS/src/service/emptest-service.xml에서
 <activity name="조회" class="pyms.common.XplatformSearchNamed">
        <transition name="success" value="end"/>
        <property name="out-ds" value="ds_result"/>
        <property name="sql-key" value="EMPTEST.SELECT"/>
        <property name="dao" value="pyms_dao"/>
        <property name="in-ds" value="ds_cond"/>
        <property name="param-count" value="0"/>
    </activity>
-----------------------------------------------------------------------------------------------------

1. 조회
pyms.common.XplatformSearchNamed
pyms_dao
ds_cond
ds_result
EMPTEST.SELECT
0 
==============================================================================================================

- /comSvc_script.xjs] [gfn_CallBack() 에러 로그
uxs (7888): [/comSvc_script.xjs] [gfn_CallBack()] ==> [svcID]find:fn_CallBack:::true:false[errorCode]-1[sErrorMsg]PreparedStatementCallback; SQL 
[-- 61. 메모 리스트 정보 조회 @@@    
SELECT M.MEMO_ID, M.MEMO_TITLE, M.MEMO_CNTN  
, M.MAKE_ID, M.MAKE_NM
, M.MAKE_DT, M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN = 'Y'                   
ORDER BY MAKE_DT DESC]; 개체 'TB_MEMOLIST', 데이터베이스 'PYMS', 스키마 'dbo'에 대한 SELECT 권한이 거부되었습니다.; 
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException: 개체 'TB_MEMOLIST', 데이터베이스 'PYMS', 스키마 'dbo'에 대한 SELECT 권한이 거부되었습니다.
uxs (7888): [/comSvc_script.xjs] [gfn_CallBack()] ==> [strExpr]fn_CallBack('find', -1, 'PreparedStatementCallback  SQL [-- 61. 메모 리스트 정보 조회 @@@    
SELECT M.MEMO_ID  M.MEMO_TITLE  M.MEMO_CNTN  
  M.MAKE_ID  M.MAKE_NM
  M.MAKE_DT  M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN =  Y                    
ORDER BY MAKE_DT DESC]  개체  TB_MEMOLIST   데이터베이스  PYMS   스키마  dbo 에 대한 SELECT 권한이 거부되었습니다. 
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException  개체  TB_MEMOLIST   데이터베이스  PYMS   
스키마  dbo 에 대한 SELECT 권한이 거부되었습니다.') ==> [arrSvcID[1]]fn_CallBack[arrSvcID[0]]find[errorCode]-1[errorMsg]PreparedStatementCallback  SQL
[-- 61. 메모 리스트 정보 조회 @@@    
SELECT M.MEMO_ID  M.MEMO_TITLE  M.MEMO_CNTN  
  M.MAKE_ID  M.MAKE_NM
  M.MAKE_DT  M.USE_YN  
FROM TB_MEMOLIST M   
WHERE M.USE_YN =  Y                    
ORDER BY MAKE_DT DESC]  개체  TB_MEMOLIST   데이터베이스  PYMS   스키마  dbo 에 대한 SELECT 권한이 거부되었습니다.  
nested exception is com.microsoft.sqlserver.jdbc.SQLServerException  개체  TB_MEMOLIST   데이터베이스  PYMS   스키마  dbo 에 대한 SELECT 권한이 거부되었습니다.
uxs (7888): Error: [D:/eclipse/workspace/PYMS/WebContents/PYMS/lib/comSvc_script.xjs][line:212] 종결되지 않은 문자열 상수입니다. (행: 212)
==============================================================================================================

- DB 로그인 정보
/PYMS/src/applicationContext.xml
<bean id="mastSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
        <property name="driverClassName" value="com.microsoft.sqlserver.jdbc.SQLServerDriver"/>
        <property name="url" value="jdbc:sqlserver://192.168.151.226:1433;DatabaseName=PYMS"/>  
        <property name="username" value="gluemast"/>
        <property name="password" value="gluemast"/>
        <property name="defaultAutoCommit" value="false"/>
</bean> 

<bean id="mast-tx" class="com.poscoict.glueframework.transaction.GlueDataSourceTransactionManager">
<property name="dataSource" ref="mastSource"/>
</bean>

<bean id="mast_dao" class="com.poscoict.glueframework.dao.jdbc.GlueJdbcDao">
<property name="dataSource" ref="mastSource"/>
<property name="queryManager" ref="queryManager"/>
<property name="columnManager" ref="columnManager"/>
<property name="batchUpdateLimit" value="30000"/>
</bean>  
==============================================================================================================

- 원격 연결
1. 실행 > 열기(O): mstsc   ==> 확인(클릭)
2. \\192.168.151.226  ==> administrator / poslo1!
==============================================================================================================

- 포항집 
06:30 출근(도보): 포스코 ICT
07:00 Glue 개발
09:30 도너츠 사옴(구철수 부장)
12:00 중식(비빕밥, 구부장님이 쏨): 오천고교 맞은편 식당
18:00 퇴근
18:10 문덕 사거리
18:20 102번 버스
19:10 창포 사거리 하차
19:20 귀가(포항집)
19:40 석식(삼계탕) 
21:40 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.07(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 포항집

- 일요일 
08:00 기상
08:20 TV 시청
14:20 큰누나, 매형 도착(회 사 옴)
14:40 중식
16:00 이발(누나가 해줌)
16:20 SKT 요금제 변경(T끼리 35[해지],  LTE 안심옵션5[해지] -> band 데이타 36)
17:20 포항집 출발(누나가 차 태워 줌, 누나 SMS5 새 차 뽑음)
17:50 여관 도착
21:00 화상 통화(루옌, 수종)
22:00 석식(엄마가 밥 사줌)
00:00 취침
==============================================================================================================

- 포스로 야드관리시스템 Prj 
1. 왼쪽 메뉴 창닫기 중지 에러 처리
function gfn_AddGblDSMenu_02(strID, nRow, objDs) 
{
	//gds_menu.filter("");  //  gds_menu DS filter 제거
	var curRow = gds_openMenu.addRow(); 
	trace("[/comSvc_script.xjs] [gfn_AddGblDSMenu_02()] ==> [TEST_01] [curRow]"+ curRow +"[PGM_ID]"+ 
	objDs.getColumn(nRow, "PGM_ID") +"[PGM_NM]"+ objDs.getColumn(nRow, "PGM_NM") ); 
	  
	gds_openMenu.setColumn(curRow, "WIN_ID", strID);
	gds_openMenu.setColumn(curRow, "PGM_ID", objDs.getColumn(nRow, "PGM_ID"));
	gds_openMenu.setColumn(curRow, "PGM_NM", objDs.getColumn(nRow, "PGM_NM"));
}

2. 검색 처리
/*****************************************************************************************
* 함  수  명 : grd_menu_oncelldblclick()
* 설      명 : grd menu 더블 클릭 이벤트(업무화면 URL 호출)
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2015.05.18
*****************************************************************************************/ 
function grd_menu_oncelldblclick(obj:Grid, e:GridClickEventInfo)
{ 
	var nRow = gds_menu.rowposition;
	 
	var sPgmId = gds_menu.getColumn(nRow, "PGM_ID");
	trace("[/Left_Menu.xfdl] [grd_menu_oncelldblclick()] ==> [nRow]"+ nRow +"[sPgmId]"+ sPgmId ); 

	gfn_ChkOpenMenu(sPgmId, gds_menu);  // 메뉴 클릭시 업무화면 호출 
}
==============================================================================================================

- 무료 클라우드 사이트 목록  
1. 메가드라이브 (50Gb) 
2. 구글드라이브(구글) (15Gb)
3. N드라이브(네이버) - 30Gb  ==> 사용 중
4. 나무클라우드(싸이이비즈) - 5Gb   
5. 드롭박스 - 2Gb 
6. ONE드라이브(MS) - 15Gb 
7. T클라우드(SK) - 20Gb(sk 회원일 경우, 타사 회원일경우 5Gb) 
8. 유클라우드(KT - 50Gb(kt 회원일 경우) 
9. U+Box(LG) - 10Gb(lg회원일 경우 +5Gb) 
==============================================================================================================

- 블랙박스
http://www.enuri.com/view/Listmp3.jsp?cate=0363&islist=Y&from=search&cate_keyword=Y&hyphen_2=false&skeyword=%EB%B8%94%EB%9E%99%EB%B0%95%EC%8A%A4
1. 아이나비 QXD900 View PLUS(2채널) 팅크웨어 ==> ADAS패키지,상시전원,32G
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1258654476
2. 아이나비 Real Shot (2채널)  ==> 상시전원,32G
http://www.enuri.com/move/Redirect.jsp?cmd=move_link&from=detail&cmd=move_1865937689&vcode=5910&modelno=10618832&pl_no=1865937689&cate=03631601
==============================================================================================================

- 대림역 한의원 검색
1. 해광한의원
http://place.map.daum.net/9574620
2. 여남한의원
http://place.map.daum.net/16528990
3. 제민한의원
http://place.map.daum.net/9378388
4. 제통한의원
http://place.map.daum.net/9574620
http://place.map.daum.net/16934972
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.08(월) 작업 ■■■■■■■■■■■■■■■
---> 06:30 ~ 21:40 ==> 비. 최규만 차장이랑 DataURL_PYMS 때문에 또 싸움, 기간 연장(수 -> 금)

- 포스로 야드관리시스템 Prj 
1. glue 연결
1. COM_RightFrame.glue_uml_ad  ==> 완료(공유 안됨)
2. COM_LeftFrame.glue_uml_ad==> 완료 
3. COM_TitlebarFrame.glue_uml_ad ==> 완료(저장 안됨)  
==============================================================================================================

- 배포(9시)
1. XPlatform 정품 CD Key
 1) Products: XPLATFORM V9.2 Runtime: 6CORE, UX-Studio: 1DEV
 2) License: N5XF1-SYF48-HJHF4-RX7GN-H5UJJ-RFJBU-ABQ
2. 개발 서버 배포(192.168.151.226)
3. 운영 서버 배포(192.168.151.225) ==> 192.168.151.222
-------------------------------------------------------------------------------------------------------

01. PYMS 개발서버 배포 URL: http://192.168.151.226:8080/PYMS-XP-Deploy/index.htm 
51. Glue Master: http://192.168.151.226:8080/GlueMaster/
=========================================================================================================

- 배포시 컴포넌트 UpdateURL 못 찾는 에러 발생
(XCompCmp) 컴포넌트 리소스에 접근하지 못하여 업데이트 진행을 중단합니다. 
Component.dll을 찾을 수 없어 Load에 실패하였습니다.(XCompCmp)
1. 원인: Component UpdateURL이 잘못 되어 있어서 나는 에러
==> Component UpdateURL : http://192.168.151.226:8080/PYMS-XP-Deploy/XP-Module/components
=========================================================================================================

- hortcut부분에서 아이콘 클릭을 하면 에러 창 뜸
1. 현상: 
배포는 무사히 되었는데 shortcut부분에서 아이콘 클릭을 하면
그림과 같은 에러가 2~3번 난 후에 로그인 화면이 열립니다.
 1) 프로시저 시작 지점을 찾을 수 없습니다.
2. 원인: 브라우저가 열려 있거나 해당 프로그램이 제대로 설치가 안되어서 나는 현상
3. 조치: PC 재시작 후 다시 설치할 것
------------------------------------------------------------------------------------------------

<SCRIPT LANGUAGE="javascript">
function fn_make_shortcut()
{ 
	var sServerPath = "http://192.***.***.***:8080/PYMS-XP-Deploy/"; // 운영 서버

	XLauncher.key = "PYMS";
	XLauncher.xadl = "http://192.***.***.***:8080/PYMS-XP-Deploy/XP-Source/PYMS.xadl";

	XLauncher.makeshortcut("PYMS","http://192.***.***.***:8080/PYMS-XP-Deploy/image/PYMS.ico", "desktop");
	XLauncher.launch(); 
}
</SCRIPT> 
==============================================================================================================

- 공통 테이블 생성
1. TB_COM_MENU(메뉴 리스트  정보 TB)
2. TB_COM_MYMENU(마이메뉴 리스트  정보 TB)
3. TB_COM_FRAMERESET(프레임 재설정 TB)
4. TB_COM_MEMOLIST(메모 리스트  정보 TB)
5. TB_COM_SHARELIST(공유 리스트  정보 TB)
6. TB_COM_MENUSRCH(메뉴 검색  정보 TB)
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.09(화) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 21:00 ==> 최규만 차장쪽에서 개발서버에 Glue class 작업을 안해서 배포된 파일 DB 검색 안됨

- 포스로 야드관리시스템 Prj 
1. glue 연결
1. COM_RightFrame.glue_uml_ad  ==> 완료(공유 안됨)
2. COM_LeftFrame.glue_uml_ad==> 완료 
3. COM_TitlebarFrame.glue_uml_ad ==> 완료(저장)  
==============================================================================================================

- 포스로 야드관리시스템 Prj 개발 해상도
1. 표준 해상도: 1366 * 768  
2. 개인 노트북(Dell) 해상도: 1920 * 1080
==============================================================================================================

- Glue 에러 
===========================
Start XplatformDeleteNamed !
dao        => pyms_dao
sql-key    => TITLEBARFRAME.DELETE
in-ds      => ds_cond
result-cnt => fv_deleteCnt
===========================
Do not support Input DataSet Type (glueRowSet)!
com.poscoict.glueframework.GlueException: Do not support Input DataSet Type (glueRowSet)!
1. 해결책
/left_frame.xfdl] [btn_selt_onclick()에서 sInDatasets을 frameReset로 지정
/COM_TitlebarFrame.glue_uml_ad 모델에서 in-ds: frameReset 로 지정
var sSvcID = "svc_save_frameReset";
var sUrl = "DataURL_PYMS::handle.do?ServiceName=COM_TitlebarFrame-service&save";    
var sInDatasets  = "frameReset=gds_frameReset";
var sOutDatasets = "fv_saveCnt=fv_saveCnt";
var sOutDatasets  = "";
var sArgument = " userId="+ wrapQuote(gv_UserId);   
var sCallbackFunc = "fn_CallBack";  
trace("[/left_frame.xfdl] [btn_selt_onclick()] ==> [gds_frameReset_조회수]"+ gds_frameReset.getRowCount() 
+"[gds_frameReset.saveXML()]"+ gds_frameReset.saveXML() );  // DS 로그 추적  
gfn_Transaction(sSvcID, sUrl, sInDatasets, sOutDatasets, sArgument, sCallbackFunc);
-----------------------------------------------------------------------------------------------------

- Glue 에러2 
===========================
Start XplatformSearchNamed !
dao     => pyms_dao
sql-key => MENUSRCH.SELECT
in-ds   => 
out-ds  => ds_result
===========================
Please Check query!
com.poscoict.glueframework.GlueException: Please Check query!
1. 해결책
/left_frame.xfdl] [btn_selt_onclick()에서 sInDatasets을 frameReset로 지정
/COM_TitlebarFrame.glue_uml_ad 모델에서 in-ds: frameReset 로 지정
var sSvcID = "svc_save_frameReset";
var sUrl = "DataURL_PYMS::handle.do?ServiceName=COM_TitlebarFrame-service&save";    
var sInDatasets  = "frameReset=gds_frameReset";
var sOutDatasets = "fv_saveCnt=fv_saveCnt";
var sOutDatasets  = "";
var sArgument = " userId="+ wrapQuote(gv_UserId);   
var sCallbackFunc = "fn_CallBack";  
trace("[/left_frame.xfdl] [btn_selt_onclick()] ==> [gds_frameReset_조회수]"+ gds_frameReset.getRowCount() 
+"[gds_frameReset.saveXML()]"+ gds_frameReset.saveXML() );  // DS 로그 추적  
gfn_Transaction(sSvcID, sUrl, sInDatasets, sOutDatasets, sArgument, sCallbackFunc);
==============================================================================================================
 
- SSD 구입 검토(델 노트북에 사용)
1. 삼성전자 840 EVO Series (250GB, MZ-7TE250B/KR, 정품), 가격: 126,890원
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&firpg=01&sc.prdNo=3327928046&sc.dispNo=016001&sc.dispNo=016001
SATA3(6Gb / s) / 250GB / 읽기 540MB / s , 97,000 IOPS / 쓰기 520MB / s , 66,000 IOPS / 2.5형(6.4cm) / 
삼성 3-CORE MEX / TLC(토글) / TRIM 지원 / GC 기능 / 두께6.8mm / Samsung 1x nm Toggle DDR 2.0 NAND 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.10(수) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 21:30 ==>  

- 포스로 야드관리시스템 Prj 
1. glue 연결
1. COM_RightFrame.glue_uml_ad  ==> 완료(공유: 완료)
2. COM_LeftFrame.glue_uml_ad==> 완료 
3. COM_TitlebarFrame.glue_uml_ad ==> 완료(저장) 
==============================================================================================================

- 마이메뉴 설정(/Popup_MyMenu.xfdl) ==> 완료 
==============================================================================================================
 
- 공통 테이블 생성 
1. TB_COM_MEMOLIST(메모 리스트  정보 TB)
2. TB_COM_SHARELIST(공유 리스트  정보 TB)
3. TB_COM_EMP(직원 정보 TB)   ==> 보류
==============================================================================================================

- 테이블 권한 부여(MS-SQL 툴에서 할 것) ==> http://blog.naver.com/nkind/110167567884
use PYMS
grant select on dbo.TB_COM_MEMOLIST to pyms_usr
;

use PYMS
grant insert on dbo.TB_COM_MEMOLIST to pyms_usr
; 

use PYMS
grant delete on dbo.TB_COM_MEMOLIST to pyms_usr
; 
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.11(목) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 21:00 ==> 10시 시연(화면 에러가 나서 다시 하기로 함: 개망신) ==> 저녁에 프로그램 컴펌 받음

- 포스로 야드관리시스템 Prj 
1. 전체 수정
==============================================================================================================

1. glue 연결
1. COM_LeftFrame.glue_uml_ad(메뉴, 마이메뉴)  
 1) 메뉴, 마이메뉴 --> 완료
 2) 메뉴 검색
2. COM_RightFrame.glue_uml_ad(메모, 공유)  
 1) 메모 --> 완료 
 2) 공유 --> 완료
3. COM_TitlebarFrame.glue_uml_ad(프레임 재설정) ==> 완료 
==============================================================================================================

- 배포 서버 URL
http://192.168.151.226:8080/PYMS/PYMS/PYMS.xadl

1. 배포 dll 버전
XAppletComp.dll ===> 파일 버전 2015.4.28.1(7개 파일 같은 파일 버전 적용)
ExtCommon.dll   ===> 2015.2.27.1
==============================================================================================================
 
- 로그 조회(log 조회)
[wadmin@_DEV_~]: cd /usr/share/tomcat/logs  ===> 개발 서버  @@@
[wadmin@_DEV_~]: grep 'header.jsp]' /usr/share/tomcat/logs/catalina.out -A10 -B10  less ==> 로그 조회 @@@
[wadmin@_DEV_~]:  tail -f /usr/share/tomcat/logs/catalina.out  grep 'Exception' ==> 실시간 조회 @@@
tail -f /iosp/comp/auth/logs/catalina.out  
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.12(금) 작업 ■■■■■■■■■■■■■■■
---> 06:20 ~ 00:00 ==> 철야, 포항 Prj 철수 실패(18시, 구철수 부장 차로 여관에서 짐싸서 옴), 석식(구부장이 쏨)

- 포스로 야드관리시스템 Prj 
1. 전체 수정
2. 박성용 대리 철수 ==> 1달 동안 1본도 못 했다고 함, 헬스(월 7만원)
==============================================================================================================
 
- 추가 수정 사항
1. 왼쪽창, 메모창 보이기, 숨기기 ==> 완료(다시 확인할 것)
2. 새창 띄우기 화면 크기 수정 ==> 완료
3. 메인 이미지 로딩 바 처리 ==> 완료
4. 운영 서버 재 배포 ==> 완료
5. 산출물 작성 ==> 완료
6. openList 수정 ==> 완료
==============================================================================================================

- 이미지 로딩 
this.ImageViewer00.image ="";
trace(this.ImageViewer00.imageheight); 
this.ImageViewer00.image = "http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif";
==============================================================================================================
 
- 메인 이미지 로딩 바 처리 문의
/XP-Runtime-Install.htm 파일에서 처리
<SCRIPT LANGUAGE="javascript">
function fn_make_shortcut()
{ 
	var sServerPath = "http://192.168.151.226:8080/PYMS-XP-Deploy/";// PYMS 개발 서버 

	XLauncher.key = "PYMS"; 
	XLauncher.xadl = "http://192.168.151.226:8080/PYMS/PYMS/PYMS.xadl";   // xadl(PYMS 개발 서버) ==> 1차 변경: 2015.06.11 변경됨

	XLauncher.loadingimage="http://192.168.151.226:8080/PYMS-XP-Deploy/image/loading_img.gif";	// PYMS 개발 서버 loading image 

	XLauncher.makeshortcut("PYMS","http://192.168.151.226:8080/PYMS-XP-Deploy/image/PYMS.ico", "desktop");
	XLauncher.launch(); 
}
</SCRIPT>
</HEAD>
==============================================================================================================

- grd_openedList 수정
1. 왼쪽 Grid 데이타가 크기 조절이 안됨)  ==> class(grd_LF_openMenu) 조절
/*****************************************************************************************
* 함  수  명 : btn_openedList_onmouseenter()
* 설      명 : 열린 창 리스트에 마우스를 올렸을 때 이벤트(열린 창 리스트 보기)
* 파라미터  :  
* 작성자    : 진태만
* 작성일    : 2015.05.21       
*****************************************************************************************/  
function btn_openedList_onmouseenter(obj:Button, e:MouseEventInfo)
{ 
	this.pdv_popupOpenList.visible = true; 
	if(pdv_popupOpenList.isPopup) pdv_popupOpenList.closePopup();
	trace("[/TabFrame.xfdl] [btn_openedList_onmouseenter()] ] ==> [TEST_01] [obj.position.height]"+ obj.position.height ); 

	pdv_popupOpenList.trackPopupByComponentAsync(obj, 0, obj.position.height);
	//trace("[/TabFrame.xfdl] [btn_MDI_OpenList_onmouseenter()] ==> [TEST_end]" ); 
}
==============================================================================================================

gv_TabFrame.form.btn_leftMenuHide.visible = true;// Left Menu 숨기기 버튼(Main)
==> btn_leftMenuHide -> btn_MDI_LeftHide :

gv_TabFrame.form.btn_leftMenuShow.visible = false; // Left Menu 보이기 버튼 
==> btn_leftMenuShow -> btn_MDI_RightHide : absolute 20 0 45 33

gv_TabFrame.form.btn_rigthtMenuHide.visible = true;// RIGHT Menu 숨기기 버튼 (Main) 
==> btn_rigthtMenuHide -> btn_MDI_RightHide

gv_TabFrame.form.btn_rigthtMenuShow.visible = false;// RIGHT Menu 보이기 버튼
==> btn_rigthtMenuShow ->  btn_MDI_LeftHide 
=========================================================================================================    
 
//gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 165 33";//absolute 140 0 165 33  ==. absolute 140 0 165 33 
gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 25 33";//absolute 140 0 165 33  ==. absolute 140 0 165 33 

//gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 165 33";//absolute 140 0 165 33  
gv_TabFrame.form.btn_leftMenuShow.position = "absolute -150 0 25 33";//absolute 140 0 165 33 
=========================================================================================================    
 
gv_TabFrame.form.btn_leftMenuShow.move(-200,0);
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.13(토) 작업 ■■■■■■■■■■■■■■■
---> 00:00 ~ 21:00 ==> 철야, 포항 Prj 철수(16시, 포스코 ICT 이종창 차장이 차로 태워 줌 => KTX로 서울역까지 가기)

- 포스로 야드관리시스템 Prj
1. 전체 수정
==============================================================================================================
  
- 추가 수정 사항
1. 왼쪽창, 메모창 보이기, 숨기기 ==> 완료
2. myMenu 저장 수정 ==> 완료
3. 화면 상단의 공통버튼 숨기는 기능 ==> 수정 중(1차 완료)
4. 계단식 보기에서 화면 클릭시 탭도 같이 변경 ==> 확인 중[투비에 자문 구해해야 함]
 1) 탭 숨기기로 해결
==============================================================================================================

- 철야
00:30 왼쪽창, 메모창 보이기, 숨기기 기능 구현
09:50 인수인계 자료 전달
10:30 GIDATA 이석부 사장님에게 상황 보고
12:30 중식(돼지국밥): 이종창 차장이 쏨
15:00 종료
16:00 포스코 ICT 출발(이종창 차장 차)
16:30 포항역 도착
17:00 포항 출발(KTX 산천)
19:40 서울역 도착(잔다고 광명역에서 못 내림)
20:00 지하철 탑승(서울역(1호선) -> 신도림역 -> 대림역(2호선))
20:40 집 도착(장인 어른과 인사)
21:00 석식
23:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.14(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 
 
▦ 조기축구
06:00 기상(비 옴)
06:30 버스(6411번, 대림역 -> 한티역)
07:20 도곡초등학교(비 그침, 운동장 젖어 있음)
08:20 게임(3게임)
10:30 종료(야구부 때문에 이 시간에 끝내야 한다고 함)
11:30 중식(국밥: 뚝심한우): 효균이형이 쏨
12:40 종료
13:20 귀가 
14:00 낮잠
18:30 기상
19:00 석식
00:00 취침
==============================================================================================================

- 지문사진등록제도 신청: 대림3동 어린이집에서 일괄 신청하기고 함
1. 아동등 등록 신청서 작성( 대림3동 어린이집으로 전달)
2. http://blog.nsok.co.kr/220365293055   ==> 
1) 세화파출부
http://place.map.daum.net/12503423
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.15(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 본사 복귀

- 포스로 야드관리시스템 Prj  추가 처리 사항
1. 계단식 보기에서 화면 클릭시 탭도 같이 변경(TabFrame.xfdl) ==> 완료 

2. 화면 상단의 공통버튼 숨기는 기능(WorkFrame.xfdl)  ==> 완료
 1) 예제: /M800200006.xfd(장비별상차수량관리, Common::M800200006.xfdl)
 2) 메뉴 버튼 권한을 변경하고 싶으면 gds_menuInfo에 가서 해당 프로그램 ID의 버튼 권한을 변경하면 됨

3. 상단의 공통버튼 숨기는 기능(새창 화면)(WorkFramePopup.xfdl) ==> 완료
==============================================================================================================

- 계단식 보기에서 화면 클릭시 탭도 같이 변경
/************************************************************************************************
 * 01. 함수구분 : MainTemp_onactivate()
 * 02. EVENT : MainTemp onactivate
 * 03. 기능 : 메인프레임이 활성화되었을 때 발생하는 이벤트
 ************************************************************************************************/ 
function MainTemp_onactivate(obj:Form, e:ActivateEventInfo)
{ 
if(gfn_IsNull(pv_winKey) == true) return;

div_subMain.redraw(); 
gfn_ActiveForm(pv_winKey);    // 윈도우 키를 기준으로 열려있는 화면일 경우 Frame을 focus, maximize 처리
}
----------------------------------------------------------------------------------------------------------

/*****************************************************************************************
* 함  수  명 : btn_MDI_Fullsize_onclick()
* 설      명 : 기본 보기 
*****************************************************************************************/  
function btn_MDI_Fullsize_onclick(obj:Button,  e:ClickEventInfo)
{
	if(gv_cascadeYn > 0 )
	{
	if(gds_openMenu.rowcount > 0 )
	{     
	lfn_TabFrameBtnVisF();
	gfn_ArrangeWin(obj.userdata);
	    
	var naviCD = tab_navi.tabpages[0].name; 
	gfn_ActiveFrame(gv_activeWinId);    // 윈도우 키를 기준으로 열려있는 화면일 경우 Frame을 focus, maximize 처리
	}
	}
} 
==============================================================================================================

- 2. 화면 상단의 공통버튼 숨기는 기능
1. 예제: /M800200006.xfdl
==============================================================================================================
 
- 프린터 연결[(주)지아이데이타 본사]  ==> 01. HP Officejet Pro 8660[GIDATA_본사)]
1. HP Officejet Pro 8660 ==> http://[fe80::a22b:b8ff:fe6d:627e]/
http://support.hp.com/kr-ko/drivers/selfservice/hp-officejet-pro-8660-e-all-in-one-printer-series/5398139/model/5387678 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.15(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 본사 복귀

- 포스로 야드관리시스템 Prj  추가 처리 사항
1. 최종 수정2
==============================================================================================================

- MySQL, Apache Tomcat, Eclipse 연동하기(JSP) 
- MySQL DB 저장
- 포스로 야드관리시스템 Prj MySQL 적용
- AIG_TM 소스 MySQL 적용
- 군산대 Nexacro 소스 MySQL 적용
==============================================================================================================

- 포스로 야드관리시스템 Prj  소스에서 다운로드 받을 소스
1. 군산대 소스
2. AIG_TM 소스
2. tamaPrj 소스
==============================================================================================================

- 포스로 야드관리시스템 Prj 
1. 박성용 대리 (주)지아이데이타 이석부 사장이 투입 시켰다고 함 ==> 나한테 박성용 대리에 대해 물어 봄
 1) 개발자 다시 인터뷰 봐서 보냈다고 함
==============================================================================================================

- 흙 구입
1. 마사토 대용량 23kg /배양토/★ 흙사랑(최고급배양토)35리터, 가격: 7,500원
http://www.interpark.com/product/MallDisplay.do?_method=detail&sc.shopNo=0000100000&sc.dispNo=016001&sc.prdNo=1734615445
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.16(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 개인 휴일

- 개인 휴일 
00:00 철야
06:00 취침
09:00 기상
09:10 조식(쌀국수)
09:20 집출발
09:40 대림3동 어린이집(수종 데려다 줌)
09:50 침(장인 어른): 여남한의원
11:00 쇼핑: 다아소 구로시장점
11:20 쇼핑: 구로DC아울렛(창신 음식물쓰레기통 8.5L)
12:40 귀가 
14:00 중식
16:00 집출발(장인 어른 공장으로 돌아감: 루옌 배웅)
16:10 대림3동 어린이집(수종 데려 옴)
16:20 문영 아파트 놀이터(수종 잘 놈)
17:20 귀가
17:50 낮잠
20:00 기상
20:10 석식
22:00 취침
==============================================================================================================

- 분유 구입(다오씨 부탁)
1. [남양유업] XO임페리얼 800g 3캔+마일리지5천원/분유, 54,000원 ==> 구입 완료 
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
==============================================================================================================
 
- 다오씨 집 주소
1. 서울 관악구 신림동 412-103 101호  이춘호씨(다오씨 남편) 귀하
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.17(수) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00 ==> 공통 교육(10시, 투비S 5층): 본사에서 9시 10분에 출발(9시 45분 도착)

- 공통 교육(10시, 투비S 5층)
01. 교육과정명 :  XPlatform 공통 교육
02. 일시 : 2월 10일 10:00~ 2월 11일 17:00 
03. 강사:  XPlatform 안상일 팀장(010-8759-3999): 컨설팅사업본부 / 컨설팅컨버전스팀 
04. 교육장소 : TOBESOFT 5층 제우스룸
05. 기타: 김문주 팀장(010-2846-0551. (주)투비S), 김찬영 부장(010-7204-8977, 010-7204-8977)과 같이 교육 받음
==============================================================================================================

- 공통 교육
1. DB 관련은 우리 업무가 아님 ==> Frame 설정은 우리 역할
2. Transaction 샘플 생성
3. 기술 문의 지도(교육은 아님 ==> 투비에 기술 지원 요청) --> 단체 교육 신청 가능(영업에게 문의) 
http://www.xplatform.co.kr/Miplatform/NewHome/asp/support/TotalBoard.asp?PCategory1=Support&PCategory2=XPLATFROM&PCategory3=QA&dispGubun=ALL
4. XPlatform은 CSS2 사용
5. Nexacro ==> XP V14
6. 차트 툴: XChart(투비 제품, 유료), 유비디시전(http://www.ng-shop.co.kr/), 알디
7. 공통 개발
 1) Frame, Library, gfn_Transaction, File up-down, Excel Exp-Imp, Grid sort-filter, Dataset, Model, Message
 2) 배포
 3) 3rd Party: Report, Chart, Web Editor(나모) ==> 상용 구매 유도할 것
==============================================================================================================

- 배포(브라이저별 체크)
1. XPLATFORM9.2 win8_ie11이상 적용 배포샘플입니다.
http://www.xplatform.co.kr/Miplatform/NewHome/asp/support/TotalView.asp?PCategory1=Support&PCategory2
=XPLATFROM&PCategory3=Tip&page=1&display_cnt=20&str_boardid=A05&searchfield=제목&searchgubun=OR&keyword
=%B9%E8%C6%F7&BusinessSection=%&str_an=1725
 1) MS 브라우져 신 버전 스파르타 환경 대응(ActiveX 사용 안 함)
==============================================================================================================

- 무선 공유기 연결[(주)투비소프트]
1. TOBE-SAP-AP3 / tobesapap0701#3==> 연결됨
2, Zeus AP/ tobesoftap  ==> 연결 안됨
==============================================================================================================

- nexacro 홈페이지
1. www.playnexacro.com
==============================================================================================================

- D3 Chart ==> 무료 소스(유투브에서 nexacro 검색 --> 유지보수에 어려움)
==============================================================================================================

- HTML5 소스
1. caniuse.com ==> http://caniuse.com/#cats=HTML5
2. w3shools.com
----------------------------------------------------------------------------------------

- js DOC
- base Library
- Eco Library
/**
 * Represents a book.
 * @constructor
 * @param {string} title - The title of the book.
 * @param {string} author - The author of the book.
 */
function Book(title, author) {
}
==============================================================================================================

- Shock StartUp 설정
01. MySQL_startup
"D:\mysql-5.6.21\bin\mysqld.exe"
"C:\eduPrj\mid\mysql-5.6.21\bin\mysqld.exe" /startup    --> 사용 안함
==============================================================================================================

- mysql 자동 시작
http://www.mysqlkorea.com/sub.html?mcode=manual&scode=01_1&m_no=22196&cat1=749&cat2=773&cat3=833&lang=k
==============================================================================================================

- tamaPrj 생성(eclips에서) @@@
1. D:\eduPrj 폴더 복사하여 붙여넣기
2. eduPrj -> etamaPrj로 이름 바꾸기
3. D:\tamaPrj\eclipse\eclipse.ini 파일에서
D:\eduPrj\mid\jdk1.6.0_30\jre\bin\javaw.exe
==> D:\tamaPrj\mid\jdk1.6.0_30\jre\bin\javaw.exe로 변경
4. eclipse.exe 실행
5. eduPrj_90 프로젝트로 변경
6. .metadata 삭제
6. New > Dynamic Web Prject 생성
 1) Prject name: tamaPrj
 2) Prject location: D:\tamaPrj\work\tamaPrj ==> 자동 생성
7. Source folders on build path: Next(클릭)
8. Configure web module settings
 1) Context root: tamaPrj 
 2) Context directory: Web   ==> Finish(클릭)
9. tamaPrj 프로젝트 생성됨 ==> 닫기 
10. D:\tamaPrj\work\tamaPrj_90 폴더 복사
11. D:\tamaPrj\work\tamaPrj폴더에 붙여넣기
12. tamaPrj 프로젝트 재시작
13. Web Modues 수정
==> /, tamaPrj 
14. Tomcat v7.0 서버 Server Locations 변경
==> Server path: D:\tamaPrj\mid\apache-tomcat-7.0.53
 1) Server > Runtime Environments: 
  Name: Apache Tomcat v7.0
  Tomcat installatiton directory: D:\tamaPrj\mid\apache-tomcat-7.0.53
15. 서버 재시작
16. 테스트
 http://127.0.0.1:9080/test.jsp
http://127.0.0.1:9080/JSP_PYMS/pyms.jsp 
==============================================================================================================

- eclipse 에러
A Prject already exists on the file system at this location: D:\tamaPrj\work\tamaPrj.  
Either use "Import Existing Prjects into Workspace" to create a Prject at this location or 
==============================================================================================================
 
- 포항 Prj 지출(2015.06) 결산
1. 포항 Prj 지출 결산하여 우체국에서 우편 배송(12시) ==> 6월 지출 170,600원 청구
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.18(목) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 19:00 ==>  

- 한섬 ERP 재구축 Prj 투입(9시, 공통)
1. 한섬 Prj(강남구) - XPlatform 공통(8개월)
 1) 위치: 서울시 강남구 도산대로 523 한섬빌딩 근처 버스 정류소 앞(우리은행 신청담지점 건물 3층) 
2. 프로젝트 인력
 1) 곽기호 부장(010-2247-9565, khkwak@lgcns.com, LG CNS 하이테크사업본부, PM)  면담 ==> 생산성 강조
 2) 박재완 부장(010-8241-4516, jwanpark@lgcns.com, LG CNS 하이테크사업본부, ERP1팀 PL)
 3) 서영봉 부장(010-8178-6699, youngbseo@lgcns.com,  LG CNS 하이테크사업본부, 공통 PL)
3. 프로젝트 인력(고객)
 1) 강상규 선임연구원(010-2958-4150, (주)한섬 전산실) 
 2) 이용섭 주임(010-7226-7879, (주)한섬 IT실) 
==============================================================================================================

- 한섬 ERP 재구축 Prj 현황
1. WAS: JEUS, Middleware: TMAX
2. 개발서버: 구축 중(윈도우 기반), 운영서버: 확보(리눅스 기반)
3. XPLATFORM 버전: 9.2.1(최신 버전)
==============================================================================================================

- 무선 공유기 연결[한섬 ERP 재구축 Prj]
1. cn2 / 20150429a==> 연결됨
==============================================================================================================

- LG CNS 회원가입
1. https://partnerplus.lgcns.com/lgcns/pp/common/dev_login/portalIndex.dev ==> DEV109094 / hpxoaks1**
==============================================================================================================

- 시연 화면 정리 작업
1. ppt 작업
==============================================================================================================

- 공통 개발  업무(순수한 UI 업무 --> DB 사용 안함)
1. Frame, Library, gfn_Transaction, File up-down, Excel Exp-Imp, Grid sort-filter, Dataset, Model, Message
2. 배포
==============================================================================================================
 
■■■■■■■■■■■■■■■■■■ 2015.06.19(금) 작업 ■■■■■■■■■■■■■■■
---> 08:10 ~ 19:10 ==> 디자이너 투입됨(곽현준 차장[010-6355-0272, hyonejun@daum.net)

- 한섬 ERP 재구축 Prj
1. NH손해 소스 분석(user_component) 
==============================================================================================================

- Load에 실패(NH손해 소스)
 (5124): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XResponse)
 (5124): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XPrintEx)
 (5124): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XInitechAdp64)

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
==> NH손해에서 dll을 받으라고 함(XInitechAdp64.ll 파일은 해결 불가)
==============================================================================================================
 
- Load에 실패(NH손해 소스)
1. 현상
(2868): Error: Component dll를 찾을 수 없어 Load에 실패하였습니다. (XWrapComp)  ==> 파일버전: 2015.4.28.1 

2. 조치: 버전 변경(2015.4.28.1 --> 2015.4.28.1)
<Component type="Bin" id="WebBrowser" classname="WebBrowser" module="XWrapComp" version="2013.5.16.1"/> 
--> 
<Component type="Bin" id="WebBrowser" classname="WebBrowser" module="XWrapComp" version="2015.4.28.1"/>
==============================================================================================================

- XPlatform 디버깅(Debugging)
http://xplatform.tistory.com/15
http://onjoraclejava.blogspot.kr/2014/04/xplatform-debugging-alerttrace.html
==============================================================================================================

- 현장대리인 역량 강화 (자율학습) 동영상 청취
1. http://partnercampus.lgcns.com 접속 > log-in > 현장대리인 교육 수강 ==> DEV109094 / hpxoaks12!@ 
2. LG CNS ‘한섬 ERP 재구축’에 참여하게 된 협력회사 ‘(주)투비소프트’의 현장대리인으로 선임 
==============================================================================================================

- 픽픽(PicPick) 정보(http://wiziple.tistory.com)
1. 화면 캡처, 색상 추출
2. 단축키
 1) 픽픽 에디터: Shift + Ctrl + 1
 2) 활성화된 윈도우 캡처하기: Shift + Ctrl + 9
 3) 영역을 지정하여 캡처하기: Shift + Ctrl + 0
==============================================================================================================

- 분유 구입(다오씨 부탁)
1. [남양유업] XO임페리얼 800g 3단계 3캔, 54,000원 ==> 구입 완료[2015.06.17(수)]
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
----------------------------------------------------------------------------------------

2. [남양유업] XO임페리얼 800g 4단계 6캔, 118,570원 ==> 구입 완료[2015.06.19(금)]
http://item2.gmarket.co.kr/Item/detailview/Item.aspx?goodscode=538264949
==============================================================================================================

- 분유 구입 총 금액: 172,570원
1. 송금 은행: SC은행, 계좌번호: 130-20-502841, 예금주: 진태만
==============================================================================================================

- 금요일
19:00 퇴근
20:00 문영아파트 도착(엘리베이트 고장나 있음)
20:10 관리소장과 전화(변명으로 일관하길래 언성 높아짐)
20:20 귀가(아파트 계단 걸어서 올라옴)
20:30 석식 
00:00 관리소장에 엘리베이트 고쳤다고 전화, 문자 넣음(안 받음)
00:20 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.20(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 
 
- 주말 
08:00 기상
08:30 문영 아파트 민원 글 작성(인쇄)
08:50 문영 아파트 민원 글 아파트 출입구에 붙임
09:00 문영 아파트 민원 영등포구청 민원실에 등록(대림2동 문영아파트 엘리베이트 정말 안전진단 요청)
12:30 중식
19:00 석식
00:00 취침
==============================================================================================================

- BBQ 치킨 주문(BBQ 대림점)
1. 시크릿 양념치킨, 가격: 17,000원 
https://www.bbq.co.kr/menu_new/menu_view_R.asp?mid=10666&cate=B0101&cate2=&SCHKEY=&SCHTEXT=&catenm=%EC%B9%98%ED%82%A8
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.21(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 
 
▦ 조기축구
06:00 기상
06:30 버스(6411번, 대림역 -> 한티역)
07:20 도곡초등학교 
08:00 게임(4게임: 상권이형하고 종욱이형하고 싸움)
11:00 종료
11:30 중식(국밥: 뚝심한우): 만원 냄
12:40 종료
14:00 6411번 버스 
14:30 LG 텔레콤(액정 무료로 갈아 줌): 국민카드 사용, 2년 약정, 월 3만원으로 아이폰 6 사용할 수 있다고 함
        ==> SKT 약정 1년 더 남아 있어서 고민 중
15:00 귀가 
15:40 낮잠
18:30 기상
18:35 쇼핑(남구로시장)
19:50 석식
00:00 취침
==============================================================================================================
   
- 쌀구입
1. 소사뜰 영농조합 풍요로운 쌀 풍미(20kg), 35,890원
http://www.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=1185816850&xfrom=&xzone=
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.22(월) 작업 ■■■■■■■■■■■■■■■
---> 08:10 ~ 19:10 ==>  

- 한섬 ERP 재구축 Prj
1. NH손해 소스 분석(user_component) 
1) Component(Binary, User Object, Composite) 
2) LEFT 메뉴: ds_left_menu(gds_SubMenu DS를 복사)
==============================================================================================================

- LEFT 메뉴 조회 처리
/*********************************************************************
 * 함 수 명 : f_leftMenuSet
 * 함수설명 : top 메뉴 클릭시 레프트 메뉴 활성화
 *********************************************************************/
function f_leftMenuSet(strHgrkMnCd)
{ 
    var stKey = strHgrkMnCd.replace("_","/");
    tab_leftMenu.tabindex = 0;   
    PopupDiv02.divPopupLeft.tab_leftMenu.tabindex = 0;
    ds_left_menu.clearData();
    gds_SubMenu.filter("MENU_DPTH_CN > 4 && HGRK_MENU_CODE == '"+stKey+"'");
    ds_left_menu.copyData(gds_SubMenu,true);// gds_SubMenu DS를 복사하여 ds_left_menu DS에 붙여넣기
    gds_SubMenu.filter("");

   if(!isExpandLeft) showHideLeftMenu();// 메뉴가 접혀있을경우에만 펼침  
}
==============================================================================================================
 
- Component, 화면상속 분석
1. Binary
2. User Object
3. Composite
4. 화면상속
==============================================================================================================

- xtheme 에러(/NH_Theme.xtheme 파일에서)
1. 현상(LWRMM108200.xfdl[부활예정조회] 조회시 아래 에러 발생
uxs (6464): Warning: Theme 화일에서 (theme://images/btn_spindown_D.png center middle)을 찾을 수 없습니다.
uxs (6464): Error: 부적합한 ResponseItem(id=theme://images/btn_spindown_D.png center middle,hr=ffffffff)
uxs (6464): Error: 이미지 정보 (theme://images/btn_spindown_D.png center middle) 을 찾을 수 없습니다.

2. 원인: NH_FIRE_CE_CSS.css 파일에서 Calendar>#spindownbutton:disabled에서 image에 url 다음에 center middle;
붙임 ==> center middle은 imagealign으로 따로 만들어야 함
#spindownbutton
}Calendar>#spindownbutton:disabled
{
background: url('theme://images/spin_btn_bg_D.png'); 
/* image: url('theme://images/btn_spindown_D.png') center middle;  ==> 수정 전 */
image: url('theme://images/btn_spindown_D.png');
imagealign: center middle;/* 수정 후(추가) */
}
==============================================================================================================

- 핸드폰 연락처(내 연락처: 300개)
1. 핸드폰 연락처 컴퓨터로 옮기기  ==> http://blog.naver.com/jjjung_yun/220294139859 
2. PC에서 네이버 주소록에서 수정 작업
3. 네이버 주소록 프로필 사진 올리기
 1) 등록할 수 있는 사진의 크기는 120*120픽셀 이상, 최대용량은 5MB미만 입니다.
==============================================================================================================

- 귀화(루옌)
==============================================================================================================

- 대여금 소송 대리
==============================================================================================================

- 다이소 이어폰 정리
==============================================================================================================

- 아이폰 6+ 16G 데이타 부족
1. 아이 클라우드((iPhone))
기본 용량이 다소 적은 형태라면 아이클라우드를 사용하거나 엔드라이브/드롭박스 등을 이용하여 웹에다가 
업로드 해서 저장을 하고 아이폰에서는 삭제를 하여 공간 확보를 해볼 수 있습니다.  
대신 와이파이 사용이 가능한곳에서 해주셔야 데이터 사용으로 인한 요금폭탄을 피하실 수 있습니다 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.23(화) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 19:10 ==>  

- 한섬 ERP 재구축 Prj
1. NH손해 소스 분석(user_component) 
1) 철회취소계약명세(lw_psttanss::LWPAM107000.xfdl) ==> \ni\fw\SAMPL00139_BTNAUTHTEST.xfdl
==============================================================================================================

- 공통 조회 함수 사용 방법
1. user_form::nh_base_title.xfdl 파일 생성(팝업: /nh_popup_title.xfdl)

2. /default_typedef.xml에 등록
<Component type="UserForm" id="nh_base_title" classname="nh_base_title" module="user_form::nh_base_title.xfdl" version="1000"/>
<Component type="UserForm" id="nh_popup_title" classname="nh_popup_title" module="user_form::nh_popup_title.xfdl" version="1000"/>

3. /LWPAM107000.xfdl 파일에서 inheritanceid="nh_base_title"을 상속 받음
<Form id="LWPAM107000" classname="LWPAM107000" inheritanceid="nh_base_title" position="absolute 0 0 846 578" 
titletext="철회취소계약명세" visible="true" onload="LWPAM107000_onload" onsize="LWPAM107000_onsize">
</Form> 
==============================================================================================================

- 시안 관련 회의(16시, 회의실)
1. 현업과 시안 관련 회의
2. 6월 30일(화)까지 디자인 시안 완료하라고 함
3. 모바일 웹(개발 고려 중)
==============================================================================================================

- 한섬 ERP 재구축 Prj 개발 해상도
1. 표준 해상도: 1280 * 1080
2. 개인 노트북(Dell) 해상도: 1920 * 1080
==============================================================================================================

- 달력 수정(/Calendar.xfdl, Calendar_Period.xfdl)
==> /M800300005.xdl(출고검수처리이력조회) 파일에서 
Div01.url = "Common::Calendar_Period.xfdl"

- 형변환(/comDate_script.xjs 파일에서)
function gfn_GetDiffDate2(sStartDate, sEndDate)
{ 
	var sStartDateChgStr = ""+ sStartDate;   // 형변환(날짜 -> String)
	var sEndDateChgStr = ""+ sEndDate;    
	var vFromDate = new Date(parseInt(sEndDateChgStr.substring(0,4),  10), parseInt(sEndDateChgStr.substring(4,6)-1,  10), 
	parseInt(sEndDateChgStr.substring(6,8), 10));
	var vToDate = new Date(parseInt(sStartDateChgStr.substring(0,4),  10), parseInt(sStartDateChgStr.substring(4,6)-1,  10), 
	parseInt(sStartDateChgStr.substring(6,8), 10));

	return parseInt((vFromDate - vToDate)/(1000*60*60*24));
}
==============================================================================================================

- 출입문 지문 등록
1. 오른쪽 검지 손가락으로 등록(삼성 에스원)
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.24(수) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:10 ==> 점심시간에 동판[(주)효성 인포메이션 시스템 다님]이 만남(커피), 외할머니 사망(엄마가 부조 20만 원 했다고 함)

- 한섬 ERP 재구축 Prj
1. 한섬ERP Prj 구축(환경 설정)
==============================================================================================================
 
- 이클립스(Eclipse) PHP 개발환경 설정(Eclipse, PHP)
http://lunaticlobelia.tistory.com/423
http://arisu1000.tistory.com/27706
==============================================================================================================

- 아코디언 컴포넌트 적용
1. 정의: 최소한의 공간을 소비하여 마우스의 클릭이나 포지션만으로 다량의 컨텐츠를 조회할 수 있게 하는 
인터페이스 컨트롤러를 말한다.
==============================================================================================================

- (이제 실전이다)HTML5 & CSS3 사이트 제작의 모든 것 / 양용석 지음 
http://roadbook.co.kr/77

- Do it! 안드로이드[개정 2판 롤리팝] Day01 01[youtube 동영상]
https://www.youtube.com/watch?v=xO1TlHzZHFU&list=PLG7te9eYUi7vXZf7O6Fd2YCnJlx5YG9qq
==============================================================================================================

- 유투브 재생 속도
1. Crome 브라우저 띄우기 > 설정 > 속도(최고 속도: 2)
2. EI 브라우저 띄우기 > https://www.youtube.com/html5에서
HTML5 플레이어 요청'버튼을 누른 후 동영상을 새로고침(F5)하면 플레이어 설정에 속도조절 기능이 생김
> 설정 > 속도(최고 속도: 2)  ==> http://infomoa.kr/890
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.25(목) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:10 ==> 생일

- 한섬 ERP 재구축 Prj
1. 한섬ERP Prj 구축(환경 설정) 
==============================================================================================================

- PropertyAnimation 사용
1. /globalvars.xml 파일에서
<PropertyAnimation id="gPropAni" onend="gPropAni_onend"/>

2. /LEFT.xfdl 파일에서
/************************************************************************************************
 * 01. 함수구분 :  btn_leftMenuHide_onclick()
 * 02. EVENT : 왼쪽 메뉴 숨기기 버튼 이벤트(좌측 메뉴 숨기기) 
 ************************************************************************************************/
function btn_LF_ShowHide_onclick(obj:Button,  e:ClickEventInfo)
{
objDiv.visible= false;
showHideLeftMenu();
}

3. /HandsomeERP_LOCAL.xfdl 파일에서 
var isExpandLeft = true;
 /************************************************************************************************
* 01. 함수구분 : showHideLeftMenu()
* 02. EVENT : left menu를 접었다/ 폈다가 이벤트를 진행
* 03. 기능 : 
************************************************************************************************/ 
function showHideLeftMenu()  
{ 
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [isExpandLeft]"+ isExpandLeft );
 
if( isExpandLeft == true ) // left menu 숨기기 클릭이면 
{ 
cf_menuShowWidth = cf_left.position.width;
var PropAni1 = new PropertyAnimation();
var PropAni2 = new PropertyAnimation();
var CompAni = new CompositeAnimation();
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu 숨기기 클릭이면] [isExpandLeft]"+ isExpandLeft );

gPropAni.menuType = "LEFT";
gPropAni.hide = true;
gPropAni.duration = 100;
gPropAni.targetcomp = cf_left; 
gPropAni.interpolation = Interpolation.expoOut;
gPropAni.fromvalue = cf_left.position.x;
gPropAni.tovalue   = cf_menuHideWidth - cf_left.position.width; 
gPropAni.targetprop = "position.x";
gPropAni.endingmode = "to";

PropAni1.duration = 100;
PropAni1.targetcomp = cf_VFrameSet;
PropAni1.interpolation = Interpolation.expoOut; 
PropAni1.fromvalue = cf_VFrameSet.position.x;
PropAni1.tovalue = cf_menuHideWidth; 
PropAni1.targetprop = "position.x";
PropAni1.endingmode = "to";

PropAni2.duration = 100;
PropAni2.targetcomp = cf_VFrameSet;
PropAni2.interpolation = Interpolation.expoOut; 
PropAni2.fromvalue = cf_VFrameSet.position.width;
PropAni2.tovalue = cf_VFrameSet.position.width+(cf_VFrameSet.position.x-cf_menuHideWidth);
PropAni2.targetprop = "position.width";
PropAni2.endingmode = "to";

CompAni.addItem(gPropAni);
CompAni.addItem(PropAni1);
CompAni.addItem(PropAni2);
CompAni.run();

cf_left.form.sta_LeftBack.visible = true;
cf_left.form.btn_LF_ShowHide.position.x = 2;
cf_left.form.btn_LF_ShowHide.class = "btn_LF_ShowOpen";  // left menu 숨기기 클릭 후 보이기 image Display ==> url('theme://images/img_LF_ShowOpen.png');
cf_left.form.btn_LF_ShowOpen = true;
isExpandLeft = false; 
}  
else  // left menu 보이기 클릭이면 
{ 
cf_left.form.btn_LF_ShowHide.position.x = 164;

var PropAni1 = new PropertyAnimation();
var PropAni2 = new PropertyAnimation();
var CompAni = new CompositeAnimation();
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu 보이기 클릭이면] [isExpandLeft]"+ isExpandLeft );

gPropAni.menuType = "LEFT";
gPropAni.hide = false;
gPropAni.duration = 200;
gPropAni.targetcomp = cf_left;
gPropAni.interpolation = Interpolation.expoOut;
trace("[/HandsomeERP_LOCAL.xfdl] [showHideLeftMenu()] ==> [left menu 보이기 클릭이면] [cf_menuShowWidth]"+ cf_menuShowWidth );

fs_main.separatesize = cf_menuShowWidth + "," + "*, 5";    // lelft frame 재설정(left menu Display)
gPropAni.fromvalue = cf_left.position.x - cf_menuShowWidth;
gPropAni.tovalue = cf_left.position.x; 
gPropAni.targetprop = "position.x";
gPropAni.endingmode = "to";

PropAni1.duration = 200;
PropAni1.targetcomp = cf_VFrameSet;
PropAni1.interpolation = Interpolation.expoOut; 
PropAni1.fromvalue = cf_menuHideWidth;
PropAni1.tovalue = cf_menuShowWidth; 
PropAni1.targetprop = "position.x";
PropAni1.endingmode = "to";

PropAni2.duration = 200;
PropAni2.targetcomp = cf_VFrameSet;
PropAni2.interpolation = Interpolation.expoOut; 
PropAni2.fromvalue = cf_VFrameSet.position.width+(cf_VFrameSet.position.x-cf_menuHideWidth);
PropAni2.tovalue = cf_VFrameSet.position.width;
PropAni2.targetprop = "position.width";
PropAni2.endingmode = "to";

CompAni.addItem(gPropAni);
CompAni.addItem(PropAni1);
CompAni.addItem(PropAni2);
CompAni.run();

cf_left.form.btn_LF_ShowHide.class = "btn_LF_ShowHide"; // left menu 보이기 클릭 후 숨기기 image Display ==> url('theme://images/img_LF_ShowHide.png');
cf_left.form.sta_LeftBack.visible = false;
isExpandLeft = true;
}
}

/************************************************************************************************
* 01. 함수구분 : gPropAni_onend()
* 02. EVENT : PropertyAnimation를 onend 했을 때(Frame 재설정 수행)
* 03. 기능 : 
************************************************************************************************/ 
function gPropAni_onend(obj:PropertyAnimation, e:AnimationEventInfo)
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [TEST_01] [gPropAni.menuType]"+ gPropAni.menuType );

if(gPropAni.menuType == "TOP")
{
if(gPropAni.hide == false)
{
} 
else
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [cf_menuHideWidth]"+ cf_menuHideWidth );
application.mainframe.vf_set.separatesize = cf_menuHideWidth + "," + "*"; // TOP frame 재설정(왼족 프레임 생성[프레임 나누기])   
}
}

else if(gPropAni.menuType == "LEFT")
{
if(gPropAni.hide == false)  
{ 
} 
else
{
trace("[/HandsomeERP_LOCAL.xfdl] [gPropAni_onend()] ==> [cf_menuHideWidth]"+ cf_menuHideWidth );
fs_main.separatesize = cf_menuHideWidth + "," + "*, 5"; // lelft frame 재설정(왼족 프레임 생성[프레임 나누기])   
}
}
}
==============================================================================================================

- 아이폰 Apple ID 생성
1. 루옌 Apple ID 만들기 ==> https://appleid.apple.com/account
 1) vnluyen@naver.com --> l*l*3**A
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.26(금) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 19:10 ==> 착수보고회, 회식(16시, 19시)

- 한섬 ERP 재구축 Prj
1. 한섬ERP Prj 구축(환경 설정) 
==============================================================================================================

- popupdiv 외에 다른곳을 클릭하면 popupdiv가 사라지는 현상 해결
1. popupdiv의 onKillfocus 이벤트에서 popupdiv.setFocus() 처리하여 강제적으로 포커스를 줘서 
처리 해보시기 바랍니다. 감사합니다. PopupDiv 을 출력할 경우에는 마우스 커서를 버튼에
옮기기만 해도 PopupDiv 을 출력할 수 있습니다.
==> popupdiv의 경우 포커스를 잃을 경우에 팝업이 사라지시는게 정상 동작 입니다.
==============================================================================================================

- 2015년(2014년 귀속) 종합소득세 환급
==> 6월 26일(금) 동작세무서에서 3,068,360원 입금 됨
==============================================================================================================

- 금요일
18:20 퇴근
18:30 삼겹살집(착수보고회 후 회식) ==> 소주 많이 먹음
23:00 종료
24:00 귀가
00:20 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.27(토) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 
 
- 주말 
09:00 기상(술 덜 깸)
14:00 중식(루옌, 수종 다오집에 놀러 감)
15:00 대림역 정류장(5618번 버스 -> 여의도 중학교): 동지FC 원정
15:30 여의도 중학교(3급 승진 시험치고 있었음, 맨땅) ==> 현민(동지고 59회, 9번, 철강, 영업, 12월 26일 결혼 예정)
, 인기(동지고 59회,10번, 스포츠 마케팅 창업) --> 3명 나옴
최화식(선배,동국대 교수), 이성호(선배, 기아 자동차 영업, 형수가 명동에서 음식점 함)
16:00 포고 동문회팀과 8대 8대 게임함(개인기 많이 씀, 생각보다 잘 함)
19:00 종료(4게임함)
20:00 귀가(현민이가 태워줌)
21:00 석식(라면)
00:00 취침
==============================================================================================================

- 서울시 대중교통(지하철/버스)요금인상, 새로 도입된 조조할인 제도 
1. 지하철: 1,050원 --> 1,250원
2. 버스: 1,050원 --> 1,200원
3. 조조 할인(오전 6시 30분 이전에 교통카드를 사용하는 승객에 한해 20% 할인)
 1) 지하철: 1,050원 --> 1,000원
 2) 버스: 1,050원 --> 960원
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.28(일) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 20:40 ==> 
 
▦ 조기축구
06:30 기상
07:00 루옌 기상
07:30 집출발(루옌, 수종)
07:40 대림역 -> 강남역(신분당선 환승) -> 청계산입구역
08:40 청계산입구역(2번 출구로 나옴)
09:00 청계산 입구에서 현우형 만남(산 안 올라감)
09:20 모임 장소(이재상 고문님 원두막): 병규(총무)형, 현태형, 병기형 --> 음식 준비 
11:30 청계산 등산팀 도착 ==> 수종 돌잔치 축의금이라고 개개인이 만원씩 걷어 10만원 정도 받음
11:40 고기 구워 먹음(창원이형 형수, 정욱이형 형수[수종 너무 좋아함], 성주 가족 옴)
15:30 종료
15:40 효순이형 차 얻어 타고 옴
16:00 강남역 도착
17:00 귀가
21:00 석식(짜왕 라면 2개)
00:00 취침
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.29(월) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:10 ==>  

- 한섬 ERP 재구축 Prj
1. 왼쪽 메뉴 개발
==============================================================================================================

- Static, 버튼을 div 안에 넣는 방법
1. st_logTopImg(Static) 복사
2. div_leftMenuTopView(Div)안에 클릭 후 붙여넣기
3. 마우스로 st_logTopImg(Static) 선택하여 div_leftMenuTopView(Div)안으로 가져오기
==============================================================================================================

- 한섬 ERP 재구축 Prj템 Prj IP 주소[변경 전]
1. IP 주소: 192.168.0.61, GW: 192.168.0.1
SM: 255.255.255.0, DNS: 없음(내부 네트워크용) ==> 와이파이 사용
2. 파일 서버
\\192.168.0.2  --> 한섬ERP, 20160101a 
==============================================================================================================

- 한섬 ERP 재구축 Prj템 Prj IP 주소  ==> 2015.07.07(화) 
1. IP 주소: 172.168.110.79, GW: 172.168.110.254
SM: 255.255.255.0, DNS: 59.10.4.200  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2015.06.30(화) 작업 ■■■■■■■■■■■■■■■
---> 07:10 ~ 19:10 ==>  

- 한섬 ERP 재구축 Prj
1. 상단FR(Top.xfdl) 메뉴 개발
==============================================================================================================

- 1. /NOTI_POINT.xfdl 파일에서
function NOTI_POINT_onload(obj:Form, e:LoadEventInfo)
{
	trace("[/NOTI_POINT.xfdl] [NOTI_POINT_onload()] ==> [TEST_01]" );

	form_onload(obj);// onload 수행되는 함수(공통코드, 공통버튼 권한처리, title 설정, valid 메세지 초기설정, 화면 단축키)
}

- 2. /lib_formcommon.xjs파일에서
/*********************************************************************
 * 함 수 명 : form_onload
 * 함수설명 : onload 수행되는 함수(공통코드, 공통버튼 권한처리, title 설정, valid 메세지 초기설정, 화면 단축키) 
 *********************************************************************/
function form_onload(obj)
{ 
_FORM_OBJ = this;
_FORM_NAME = (isForm() == "P" ? this.name : getCurMenuId());

//fn_createAuthDs();  //권한설정 관리를 위한 임시데이타셋 생성
//quick 으로 보면 경로가 안잡힌다.
local_code_path= system.convertRealPath("%DOCUMENT%") + "/nh";//로컬경로
var startTime = (new Date()).getTime();
     
// 처음 화면에 뿌려줄 button들
try 
{
if(isGetHost() != "운영")
{
createCommonButton(obj);   // 설계화면을 위한 컴퍼넌트 생성 이벤트
} 
} 
catch(e)
{
}

//화면 캡쳐를 위해 임시 key event handling
obj.onkeydown.addHandler(form_onkeydown);

//form 에 drag event 를 지정해서 동작하도록 해두자.
this.ondragmove.addHandler( form_divBox_ondragmove );
this.onlbuttonup.addHandler( form_divBox_onlbuttonup );

//div 이동을 위해
this.onvscroll.addHandler( form_onvscroll );
this.onhscroll.addHandler( form_onhscroll );

// 공통으로 사용하는 event 등록
try 
{ 
addBaseTitleButtonEvent();
} 
catch(e)
{
}

// 제목 지정
try 
{ 
if( isForm()=="P")
{
if(obj instanceof Div)
{
}
else
{ 
obj.style.border = "2 solid #667375FF";
 
if(obj.name == "CB10P978005" &&  indn_param[7] == "사용자로그인")  // 재로그인 titletext 셋팅
{ 
obj.titletext = indn_param[7]; 
} 
trace("[/lib_formcommon.xjs] [form_onload()] ==> [obj.name]"+ obj.name +"[obj.titletext]]"+ obj.titletext +"[indn_param[7]]"+ indn_param[7] );

setBaseTitle(obj.name, obj.titletext);
}
}
else
{ 
setBaseTitle(getCurMenuNo(), getCurMenuNm());
}
}
catch(e)
{
}

//부모창 사이즈 조절
try 
{
setFormSize();
}
catch(e)
{
}
     
scanAllComponent(obj);//component 를 조회해서 공통코드를 설정한다.

var endTime = (new Date()).getTime();
     
try 
{
resetScroll();
} 
catch(e)
{
} 
}
==============================================================================================================

- 리포트(Report) 툴
0. 클립 소프트(사용 예정)  ==> http://clipsoft.co.kr/wp/clip-report/overview
1. 유비 리포트(UBI Report) --> http://www.ubireport.com
2. ML 리포트
3. OZ 리포트
4. RD 리포트
5. 리포트 디자이너
==============================================================================================================

- 신사조기회 회비 납부(2015년) 
1. 2015.06.30(화) 송금: 진태만(1~6월): 12만원 ==> 납부 완료 
2. 신한은행: 110.*2870, 예금주: 엄기용 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■