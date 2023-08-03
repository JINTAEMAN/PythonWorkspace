

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2008.06) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2008.06.02(월) 작업 ■■■■■■■■■■■■■■■■
---> 11:00 ~ 13:00  --> 교보생명 면접(클라우드나인: 현용 소개) 

- 교보생명 면접
1. 경력 증명서 
2. 450으로 합의 
==============================================================================================================

- 프린터 설정(교보생명 리뉴얼 Proj) 
01. 흑백프린터 
“ 20050705102745015_ML-2550S_Print_Common.exe” 설치  
1. 20050705102745015_ML-2550S_Print_Common.exe 프로그램 설치 
2. 프린터 및 팩스 
   Samsung ML-2550S Series 오른쪽 버튼 클릭 -> 속성 -> 포트  
   포트추가 -> Standard TCP/IP -> 새포트  
3. 프린터 이름 또는 IP주소 : 10.33.160.135 -> 적용 
------------------------------------------------------------------------------ 
 02. 컬러프린터(Xerox 8400DP)  
1. "프린터 및 팩스" --> 프린터 추가 
2. "이컴퓨터에 연결된 로컬프린터" 
   "플러그 앤 프레이프린터를 자동으로 검색 및 설치" --> 채크 해제  
3. "새포트 만들기" --> "Standard TCP/IP Port" 선택 
4. "프린터 이름 또는 IP주소" : 10.33.160.134 -> 적용 
5. "디스크 있음" -> 8400winxp_2kpcl --> "Xerox Phaser 8400DP PCL 5C" 
   --> 다음 --> 기본 프린터 사용 "아니오" --> "공유안함" --> 테스트인쇄 
- 프린터드라이버 위치 
\\10.33.165.170/Kyobo/88.공통/04.개발팀/99.개발환경설정/5.프린터드라이버  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.03(화) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 21:00  --> 교보생명 첫 출근, 노트북 포맷 후 재설치 

- 교보 홈 리뉴얼 Prj
- 교보 홈 리뉴얼 구축(2008.06.02 ~ 09.30) 
- 사이버창구(기업보험) 
개발서버: 100.1.131.106 
RIA(Rich Internet Application): Flash로 이루어진 Visual Application 
- Eclipse설치(eclipse-jee-europa-winter-win32), Toad for DB2 설치 
SELECT * FROM TB_INGRM003 
--; 
----------------------------------------------------------------------- 

주소: 서울시 종로구 종로1가 1번지 교보생명 BD 16층 
최동훈 부장(PM) Cel) * 
김형철 차장(PL) Cel) * 
==============================================================================================================

- 파일 서버 
파일 서버 (산출물): \\10.33.165.170 cloud9/c9 
파일 서버 (개발): \\10.33.165.171\Backup\DEV\개발\개발프로그램  administrator/c9c9 
dev/dev1234 
==============================================================================================================

 - OS 재설치(XP Pro) 
- Video 카드 설치 에러 
1. 삼성 노트북 NT-Q70 XP Geforce 설치시 에러 
 1) 에러내용: 복사 오류 -> "nv4_mini_sys 파일을 복사할 수 없습니다." 
 2) 원인: 호환되지 않는 드라이버 파일 
 3) 조치: 
  - 고객지원센터 1588-3366번으로 상담(원격으로 서비스 받음)   
  - 자이젠 홈(http://www.zaigen.co.kr) --> 자료실 --> 모델 검색: sens r700  --> 그래픽 카드: 클릭 
  - 20080131170052984_Graphics_Driver_6.14.11.5676.zip 다운 받아서 압축 풀고 설치   
==============================================================================================================

- 기업보험 관련 회의 
교보생명 최현진 대리 
김형철 차장, 이종석 과장(기업보험 담당), 임형성 과장  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.04(수) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:10 ~ 18:00 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험)  스토리보드 분석 
==============================================================================================================

- 개인보험 관련 회의(15:00 ~ 16:30, 회의실) 
1. 참석자 
교보생명 최현진 대리, 서지희씨, 한경철 대리 
김형철 차장, 이종석 과장(기업보험 담당), 임형성 과장  
2. 내용 
 1) 메뉴구조 벤치 마킹 
  가) 삼성생명, 대한생명, 미래에셋생명(간결), 푸르덴셜생명  
  나) 메뉴 AS-IS/TO-DB 분석 
 2) 서브메뉴 구성(사이버 창구) 
  가) 로그인을 하나로 가자 -> 심플하게 구성해야 함: 기업고객, 개인고객 분리 
  나) 보안 프로그램 설치 확인, 보안카드 안내 발급 공지, 공지사항 눈에 잘 띄게 구성 
 3) 간편 조회 
  가) 카드사고신고 -> 교보생명사고신고, 카다사고신고(공인인증서 로그인) 
   - 간편 조회에서 제외하는 것이 바람직한 것으로 결론 
 4) 개인보험 
  가) 수정 사항 확인 작업, 추가 요청 사항 -> 경미함 
==============================================================================================================

 - Ajax 정의  
ajax 는 자바나 베이직, C 와 같은 프로그래밍의 이름이 아니라 프로그램을 개발하는데 필요한 개발 패턴이라고  
보시면 됩니다.  
즉 웹상에서 자바스크립트를 통해서 서버와 통신을 하는 개발 방식입니다.  
예를들어 웹페이지를 개발할떄 DB와 연동을 하기 위해서는 jsp 와 asp 등의 서버사이드 스크립트의 도움이  
필요했습니다. 그리고 form 태그를 이용해서 값을 전달죠, 이때 submit 을 통해서 값을 보내게 됩니다.  
그러면 값을 보낼때 사용되는 페이지는 서버와 통신하고 response 값이 넘어오기 전까지는 아무것도 못하는  
상태가 됩니다. 하지만 ajax 는 이를 자바스크리트 선상에서 처리를 할수있습니다.  
즉, 자바스크립트를 통해서 서버와 통신하고 값을 받아온다는 거죠. 그리고 중요한것은 
서버와 통신하고 값을 받아오는 중에도 다른 일을 수행할수가 있다는 것이죠. 
다시말해서 jsp 와 asp , php 등은 값을 전달 할때마다 페이지 이동이 생깁니다. 
그리고 각 역할에 맡는 페이지가 따로 존재해야한다는 것이죠.  
하지만 ajax 는 페이지 하나로 페이지 이동없이 값을 보내고 받아올수있다는 것이죠.  
그리고 서버와 통신하는 동안에도 다른 일을 처리할수가 있다는 것입니다. 
단, ajax 는 서버에서 값을 받아오기 위해서 xml 을 사용합니다.  
넘어오는 값이  xml 형태이기 떄문에 자바스크립트의 xml 파서를 이용해서 값을 받아올수가 있습니다   
==============================================================================================================

 - LG전자 Xnote P300-UP94K(추천 노트북) 
 가격: 2,224,000원   
코어2듀오(펜린) / T9300 (2.5GHz) /13.3인치 / 1280x800 / 1.6Kg / 3GB / 320GB / DVD레코더 (USB)  
/GeForce 8600M GS / IEEE802.11n(draft) / Gigabit / 6cell / T9300 (2.5GHz) / HDMI / 1.3M WEB CAMERA  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.05(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 18:00 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험)  스토리보드 분석 
1. 조회, 등록 등 같은 유사한 업무가 반복 되는 경우가 없음 
2. 신규 개발은 많지 않고 개발 범위에 어려운 로직은 추가된 것 같지 않음 
3. 분량은 많지만 리뉴얼 업무라 정의를 잘하고 개발하면 큰 어려움이 없을 것 같음 
4. 출력 부분은 타팀에서 위조방지시스템 개발이 된 후에 개발하면 됨 
==============================================================================================================

- 건강보험 납부 이력 
71058923615   직장가입자   넥스젠어쏘시에이트(주)   20000103   20000327   용산지사 
71057766551   직장가입자   (주)시스웹   20000401   20000718   강서지사 
71071618034   직장가입자   인트로시스템(주)   20000807   20010201   서초북부지사 
71200467759   직장가입자   (주)엠지애드   20010212   20020215   강남북부지사 
200202.02 ~ 200202.08  (주)인스케어 프리랜서(경력 증명서 보유) 
71245340833   직장가입자   (주)케이티원   20020902   20030716   마포지사 
71270033394   직장가입자   (주)케이와피젠   20030709   20040101   서초남부지사 
73216323834   직장가입자   (주)아이쓰리샵   20040102   20070217   대구동부지사 
80016548861   직장가입자   (주)위니텍   20070220   20080101   대구남부지사 
==============================================================================================================

- 신재광(*): 화공과 92학번 후배, IBM에 근무 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.09(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 18:40 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험)  소스 분석
"/jsp/kblcm/cyber/CYCOLO_login_ins.jsp(/cyber/cycolo_login) 
 ==> /jsp/kblcm/cyber/co/lo/CYCOLO_login_viw.jsp" 
"com.kyobo.kblcm.cyber.co.lo.action.CYCOLO_loginAction: 로그인 Action  
 ==> 로그인 이력 저장 Dao(insertCertiHistory())"  ==> CYM00001 호출  
-------------------------------------------------------------------------------------------------------- 
  
- 테이블 query 파일 위치 
D:\eclipse\workspace\kblcmsys\titan\apps\queries-db2\kblcm-query-cy.xml 에서 
<query id="CYQ11004" type="pstmt" class="com.kyobo.kblcm.cyber.co.lo.dao.CYCOLO_loginDAO"><![CDATA[ 
INSERT INTO TB_CYCML002 (ACCESS_DM, RESD_NO, ACCESS_IP) VALUES (?, ?, ?) 
]]></query>   
---------------------------------------------------------------------------- 

- 테이블 query 파일 위치(/kblcmsys/WEB-INF/src/com/kyobo/kblcm/cyber/eh/dao/CYEH_hospitalDAO.java)  
//촉탁병원 리스트 조회 
public CYEH_listVO listHospCD(Connection con, int cPage, int pageSize, String cmd, String search_nm) 
        throws Exception, KBLCMSysException 
  { 
PreparedStatement pstmt = null; 
        ResultSet rs = null; 
        CYEH_listVO cyeh_listVO = new CYEH_listVO(); 
        StringBuffer query = new StringBuffer(); 
        int totalCnt = 0; 

try { 
// 총 카운트 구하기 
query.append(QueryFactory.getInstance().getQuery("CYQ01345"))  // 테이블 query 파일 위치 조회 

if (cmd.equals("srchHospCD")) { // 검색하기라면  
query.append(" AND ").append(" ID ").append(" LIKE '%").append(search_nm).append("%'"); 
} 
System.out.println("[/STRService.java]:[listHospCD()]:[sql]"+ QueryFactory.getInstance().getQuery("CYQ01345"));  

pstmt = con.prepareStatement(query.toString()); 
pstmt.setString(1, "G"); 
  
rs = pstmt.executeQuery(); 
if (rs.next()) { 
totalCnt = rs.getInt(1);   //검색 데이타가 존재 
}  

// 페이지 마지막 게시물 번호 
int endNo = pageSize * cPage;  
// 임시 번호 셋팅 
int virtualNo = totalCnt - (cPage - 1) * pageSize; 
ArrayList boardVOList = new ArrayList(); 

// 검색하기라면 
query.append("SELECT * FROM \n"); 
query.append("( \n"); 
query.append("   SELECT ID, USER_TYP, PASSWD, REGI_DT,\n"); 
query.append("         ROW_NUMBER() OVER(ORDER BY ID ASC, REGI_DT DESC) AS ROW\n"); 
query.append("        FROM TB_CYCMD130 WHERE USER_TYP=?\n"); 
query.append("         AND ").append(" ID ").append(" LIKE '%").append(search_nm).append("%'\n"); 
query.append(") AS BOARD\n"); 
query.append("WHERE ROW > ? AND ROW <= ?"); 

pstmt = con.prepareStatement(query.toString()); 
pstmt.setString(1, "G"); 
pstmt.setInt(2, endNo - pageSize); 
pstmt.setInt(3, endNo); 

CYEH_hospitalVO boardVO = null; 

rs = pstmt.executeQuery(); 
while (rs.next()) { 
boardVO = new CYEH_hospitalVO(); 
boardVO.setVirtualNo(virtualNo); 
boardVO.setHospCD(rs.getString("ID")); 
boardVO.setRegi_dt(rs.getString("REGI_DT")); 

boardVOList.add(boardVO); 
boardVO = null; 
virtualNo--; 
} 

} catch (KBLCMSysException kble) { 
            throw kble; 
        } catch (Exception e) { 
            e.printStackTrace(); 
            throw new KBLCMSysException(e, "CYM04002"); 
        } finally { 
            DBUtil.close(pstmt, rs); 
        }  
        return cyeh_listVO; 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.10(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00  --> 6.10 항쟁 21주년 기념 촛불집회 참석(현용, 임모, 태용),  맥주(충무로역) 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험)  스토리보드 분석 회의 결과 
1. 보험대상자 명부정리에서 다량의 엑셀 데이타를 다운 할때 데이타 검증시 DB연동 또는 네트웍 통신 문제 
==> I/F으로 전송(현업에서 처리할 예정) 
2. 납입확인서 증명서 발급시 위변조방지기능 처리에 관해 전자청약 파트와 협의(개발 범위 확정 요청할 것) 
 가) 현재 Report툴은 RD(Report Designer)를 사용 
==============================================================================================================

- SConnect 연결(무료 회원 가입: 일 3시간 가능): 네이트온 연결 가능 
http://www.sconnect.co.kr --> SConnect.exe 실행(유로 회원: 월 천 5백원) 
*@*.* / ssj***1 
u.exe(안 될시 실행): url이 막혔을 때 
http://www.dyndns.com  
방법: u.exe를 더블 클릭하고 SConnect.exe 더블 클릭 한 후 
http://www.sconnect.co.kr/member/join_new.asp 회원 가입을 한다.  
==============================================================================================================

- 6월 관리비 송금 
하나 은행 58381003279907  301호(진태만)_월관리비 
2008.06.05 전자금융 나라정보기술（   2,079,050  2,126,699  신 한    
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.11(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 18:40 --> 촛불집회로 아침 광화문 4거리 통제, 점심(최동훈 부장이 개발팀에 쏨) 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험)  소스 분석 

- 기업고객 로그인  
/jsp/kblcm/company/cy/ri/COCYRI_login_pop.jsp(/company/cocyrimm_login)  
 ==> /jsp/kblcm/cyber/co/lo/CYCOLO_login_viw.jsp  
"/com.kyobo.kblcm.company.cy.ri.mm.action: 기업고객 로그인 Action 
------------------------------------------------------------------------------------ 
- 사이버창구 들어가기  
jsp/kblcm/company/cy/OCY_submain_viw.jsp(/cyber/cycolo_login)  
"com.kyobo.kblcm.cyber.co.lo.action.CYCOLO_loginAction: 로그인 Action  
 ==> 로그인 이력 저장 Dao(insertCertiHistory())"  ==> CYM00001 호출  
------------------------------------------------------------------------------------ 
- 대상계약 선택 
/jsp/kblcm/company/cy/ri/tc/COCYRITC_selTrgCon_lst.jsp(/company/cocyritc_seltrgcon)  
 ==> /jsp/kblcm/company/cy/ri/tc/COCYRITC_selTrgCon_lst.jsp 
com.kyobo.kblcm.company.cy.ri.tc.action.COCYRITC_selTrgConAction: 대상계약 선택 Action  
 ==> EW00EW76 
------------------------------------------------------------------------------------ 
- 퇴직보험 - 진행중인 업무 조회 
/jsp/kblcm/company/cy/ri/tc/COCYRITC_selTrgCon_lst.jsp(/company/cocyriis_session)   
 ==> /jsp/kblcm/company/cy/ri/yu/COCYRIYU_notProcess_lst.jsp 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_sessionAction: 진행중인 업무 조회 Action  
 ==> EW00W140 
------------------------------------------------------------------------------------ 
- 퇴직보험 -  처리중인 업무 조회 
/jsp/kblcm/company/cy/ri/sp/COCYRISP_businessProgress_lst.jsp(/company/cocyriis_session)   
/jsp/kblcm/company/cy/ri/sp/COCYRISP_businessProgress_lst.jsp 
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_sessionAction:  처리중인 업무 조회 Action  
 ==>   
==============================================================================================================

- 교보생명-개발계(관리자) 09919161/a919161 
http://100.1.131.106/common/admin_login.do 
==============================================================================================================

- [주간업무 2008년 6월 2째주]  
★ 금주 업무 실적(06.09 ~06.13)
1. 사이버창구(기업보험) 스토리보드 분석 및 개발 타당성 분석 
2. 사이버창구(기업보험) 소스 분석 문석 작성(View, Modul, Controler, Query ID, Table, I/F) 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(06.16 ~06.20)
1. 개발 환경 설치(Eclipse, Framework)
2. 개발교육 참가 
3. 사이버창구(기업보험) 소스 세팅 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.12(목) 작업 ■■■■■■■■■■■■■■■■ 
---> 07:00 ~ 22:10 --> Workshop   
  
06:10 기상 
07:00 출근 
08:50 교보생명 출발(버스) 
10:10 한국방송광고공사 남한강연수원 도착 
10:30 워크샵 일정 공유 및 안내(대회의실) 
10:30 대출(분임3실) 
11:00 대출(분임3실) 
12:00 점심 
12:30 족구 
13:30 사이버창구: 기업보험(분임3실) 
16:30 수행사 웹 기획 각 담당 및 웹 전략 PL 발표(대회의실) 
18:00 저녁 
18:30 족구 
18:40 술자리 
20:00 한국방송광고공사 남한강연수원 출발 
22:10 교보생명 도착 
23:00 귀가 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.13(금) 작업 ■■■■■■■■■■■■■■■■
---> 07:20 ~ 19:00  

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성 
- 계약사항 조회 
/jspcyber/in/cm/CYINCM_account_lst.jsp(/company/cyincm_account)   
-> /jspcyber/in/cm/CYINCM_account_lst.jsp 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountAction: 계약사항 조회 Action  
 ==>  YC122us 
------------------------------------------------------------------------------------ 

- 보험료납입내역 조회 
/jsp/kblcm/company/cy/ri/sp/COCYRISP_businessProgress_lst.jsp(/company/cyincm_account)   
-> /jsp/kblcm/company/cy/ri/sp/COCYRISP_businessProgress_lst.jsp 
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountAction: 보험료납입내역 조회 Action 
 ==> YC120us  
==============================================================================================================

- 개발 표준 교육(15:00 ~ 16:50) 
Eclipse, struts2, spring 
==============================================================================================================

- 불법 소프트웨어 점검(필요한 프로그램) 
1. XP Pro  
2. MS-Offirce 2003 
3. MS visio 2003 
4. 한글 2005 
5. 토드(DB2용) 
http://www.spc.or.kr/sw/click_service.asp 
==============================================================================================================

- Xecure 설치 
C:\xecureweb_ver7\lib\common\C:\xecureweb_ver7\xgate 
XgateNT70.exe -install 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.16(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00 --> 자리 재배치, 술(지연씨, 영란씨) 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성 
==============================================================================================================

- Eclipse CVS 설정 
1. CVS Repository -> New -> Repository Location 
2. Add CVS Repository 
 1) Host: 10.33.165.171   
 2) Repository path: /kyobo 
 3) Authorization: dev02/dev02  
3. Head --> check out(오른쪽 클릭) 
==============================================================================================================

- Generate Setter and Getter Setting(Eclipse에서 SET, GET 설정) 
public class TV { 
boolean power; 
int channel; 
int vol; 
}  
 Source --> Generate Getters and Setters -> Select All -> OK 
<Generate Setter and Getter Setting 수행 후 결과>  
public class TV { 
 boolean power; 
 int channel; 
 int vol; 
 public int getChannel() { 
  return channel; 
 } 
 public void setChannel(int channel) { 
  this.channel = channel; 
 } 
 public boolean isPower() { 
  return power; 
 } 
 public void setPower(boolean power) { 
  this.power = power; 
 } 
 public int getVol() { 
  return vol; 
 } 
 public void setVol(int vol) { 
  this.vol = vol; 
 }  
}  
==============================================================================================================

- 자동이체 설정(HSBC) 
2008.06.15 진태만   KRW 110,000   관리비 
하나은행: 583-810032-7990(58381003279907)   여정자, 301(진태만)_월관리비 
2008.06.24 진태만   KRW 650,000   KB각종 공과금 
2008.06.24 신화자   KRW 200,000   부모님 생활비 
국민은행 606401-04-083394(60640104083394)  
2008.06.24 진태만   KRW 100,000   동양펀드 적립식 
국민은행 801390-60-429087(80139060429087) 
2008.06.24 진태만   KRW 300,000   프라임B_적립식 
국민은행 400490-61-473440(40049061473440)  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.17(화) 작업 ■■■■■■■■■■■■■■■■
---> 07:40 ~ 19:00 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성 
- 지급중지건 조회 
/jsp/kblcm/company/cy/ri/is/COCYRIIS_attachmment_lst.jsp(/company/cocyriis_attachmment, list)   
com.kyobo.kblcm.company.cy.ri.is.action.COCYRIIS_attachmmentAction: 지급중지건 조회 Action 
=> EW00W141odCall  
==============================================================================================================

- 무선 네트웍 연결(Cloud9) 
PWD: 1234567890 
==============================================================================================================

- 개발 표준 교육(14:00 ~ 17:30) 
Eclipse, struts2, spring 소스 분석 
http://127.0.0.1:8080/KBLCM/ 
JSON: 인터넷에서 자료를 주고받을 때 그 자료를 표현하는 방법이다. 자료의 종류에 큰 제한은 없으며, 
특히 컴퓨터 프로그램의 변수값을 표현하는 데 적합하다. 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.18(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:00 ~ 19:00  --> 교보 2회의실 만듬, 태훈이집 방문(낙성대역: 전세 7천 3백) 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성  
==============================================================================================================

- 기업보험 관련 회의 
참석: 교보생명 장재성 과장, 이종석 과장(기업보험 담당) 
내용: 1. 기업보험을 실재 사용하는 것을 견학할 예정(내일 16시) 
2. 관리자 화면을 어떻게 구성할 것인가(추가 사항 구성, P&D의 이동 여부) 
==============================================================================================================

- [주간업무 2008년 6월 3째주]
★ 금주 업무 실적(06.16 ~ 06.20)
1. 사이버창구(개인보험) 소스 분석 문서 작성(View, Module, Controler, Query ID, Table, I/F) 
2. 개발교육 참가 및 개발 환경 설정 
- Eclipse, Framework, DB2 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(06.23 ~ 06.27)
1. 개발 준비 작업 
- 사이버창구(기업보험) 소스 샘플 작성(Framework, Ajax 표준에 맞추어 작성) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.19(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 19:00  --> 개발팀 회식 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성  
==============================================================================================================

- 전세끼고 3,000만원 있으면 "내집"  
http://economy.hankooki.com/lpage/estate/200806/e2008061815521851040.htm 
www.serve.co.kr 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.20(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:40 ~ 19:00  --> 나눔동기 만남(현용, 태용, 임모) 

- 교보 홈 리뉴얼 Prj
- 사이버창구(기업보험) 소스 분석 문서 작성  
- 계약변경 조회 
/jsp/kblcm/cyber/in/cm/CYINCM_accountUpd_lst.jsp(/company/cyincm_accountupd, list)    
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountUpdAction: 계약변경 조회 Action 
=> N205A009odCall 

- 계약변경 
/jsp/kblcm/cyber/in/cm/CYINCM_accountUpd_lst.jsp(/company/cyincm_accountupd, list)    
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountUpdAction: 계약변경 Action 
=> N205A009odCall 
  
<!--계약변경 --> 
<action path="/cyber/cyincm_accountupd" type="com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountUpdAction" validate="false"> 
<forward name="secu" path="CYINCM_accountUpd_lst" /> 
<forward name="alter" path="CYINCM_accountCycle_viw" /> 
<forward name="checkItem" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountUpdCheckItem_frm.jsp" /> 
<forward name="getPeriodCycle" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountUpdPeriodCycle_frm.jsp" />  
<forward name="error" path="error" /> 
<forward name="list" path="CYINCM_accountUpd_lst" />  
<forward name="alter2" path="CYINCM_accountCycle_viw" /> 
<forward name="reduction" path="CYINCM_accountAmount_viw" /> 
<forward name="bojong" path="CYINCM_accountKind_viw" /> 
<forward name="calc_cycle" path="CYINCM_accountCycleComp_ins" /> 
<forward name="calc_amount" path="CYINCM_accountAmountComp_ins" /> 
<forward name="calc_kind" path="CYINCM_accountKindComp_ins" /> 
<forward name="fix" path="CYINCM_accountCycle_upd" /> 
<forward name="ret" path="CYINCM_accountUpd_viw" /> 
<forward name="prn" path="CYINCM_accountUpd_viw_prn" /> 
<forward name="guide" path="CYINCM_accountGuide_viw" /> 
<forward name="cancel" path="CYINCM_accountCancel_wrk" /> 
<forward name="getBogiNabgi" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountUpdBoNab_wrk.jsp" /> 
<forward name="getAmtAll" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountUpdAmtAll_wrk.jsp" /> 
<forward name="getBojong" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountUpdBojong_wrk.jsp" /> 
<forward name="bj_change_iq" path="/jsp/kblcm/cyber/in/cm/CYINCM_accountKind_chglist.jsp" /> 
<forward name="rd_init_ju" path="/jsp/kblcm/cyber/in/cm/CYINCM_initReduction.jsp" /> 
<forward name="rd_speck_attr" path="/jsp/kblcm/cyber/in/cm/CYINCM_getReductAttrChangeValue.jsp" /> 
<forward name="work_del_data" path="CYINCM_selfList" /> 
<forward name="send_email" path="/jsp/kblcm/cyber/in/cm/CYINCM_sendMail_close.jsp" /> 
<forward name="newAccount" path="/jsp/kblcm/cyber/in/cm/CYINCM_addAccount_pop.jsp" /> 
<forward name="addAccountResult" path="/jsp/kblcm/cyber/in/cm/CYINCM_addAccount_result_pop.jsp" /> 
<forward name="checkAccountResult" path="/jsp/kblcm/cyber/in/cm/CYINCM_checkAccount_result_pop.jsp" /> 
</action> 
==============================================================================================================

- 기업보험 관련 회의(충정로 교보생명): 14:00 ~ 17:00 
참석: 교보생명 장재성 과장, 이종석 과장(기업보험 담당), 최벽현 대리 
내용: 1. 기업보험을 실재 사용하는 것을 견학할 예정(내일 16시) 
2. 보험대상자 명부정리(기존 계약변경 명부정리와 유사하게 정의됨) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.23(월) 작업 ■■■■■■■■■■■■■■■■
---> 07:50 ~ 21:00 

- 교보 홈 리뉴얼 Prj
- 사이버창구 인터페이스 샘플링 작업
- 교보생명 개발샘플(메인)   
http://127.0.0.1:8080/KBLCM/examples/main.action   
==============================================================================================================

http://127.0.0.1:8080/KBLCM/examples/main.action  
1. /KBLCM/WebContent/WEB-INF/jsp/examples/board/Left.jsp 파일에서 
<a href='javascript:kbl.examples.main.go_menu(1);'>기본 CRUD</a>  //===> 클릭 
    
2. /KBLCM/WebContent/js/examples/board/main/board.js 파일에서 
kbl.examples.main = function() { 
return{ 
go_menu:function(sel) { 
var frm = $("leftform"); 
var url;  
switch(sel) { 
case 1: 
url = kbl.APPLICATION_CONTEXT_ROOT + "/examples/list.action"; //===> 클릭 
break;  
}   

frm.action = url; 
frm.submit(); 
} 
} 
}(); 

3.  /KBLCM/src/struts-examples.xml 파일에서 
<action name="list"> 
    <result type="tiles">page.examples.board.list</result> 
</action> 

4. /KBLCM/WebContent/WEB-INF/conf/tiles/tiles.xml 파일에서 
<tiles-definitions> 
<definition name="page.examples.board.list" extends="page.examples.main" > 
<put-attribute name="ScriptPath" value="/KBLCM/js/examples/board"></put-attribute> 
<put-attribute name="ScriptName" value="boardlist"></put-attribute> 
<put-attribute name="Content" value="/WEB-INF/jsp/examples/board/fragments/list.jsp" ></put-attribute> 
</definition>   
</tiles-definitions> 

<definition name="page.examples.board.list" extends="page.examples.main" > 
<put-attribute name="ScriptPath" value="/KBLCM/js/examples/board"></put-attribute> 
<put-attribute name="ScriptName" value="boardlist"></put-attribute> 
<put-attribute name="Content" value="/WEB-INF/jsp/examples/board/fragments/list.jsp" ></put-attribute> 
</definition> 
---------------------------------------------------------------------------------------------------------- 

- 게시판 조회(전체 수) 
 select count(*) from TB_BOARD 
WHERE TITLE like '%%%' 

- 게시판 조회 
select  
tb.SEQ,  
tb.TITLE, 
tb.WRITER, 
tb.REG_DT, 
tb.HIT_CNT 
from TB_BOARD tb 
WHERE TITLE like '%%%'   
==============================================================================================================

- 이지모아 메신져 설치 
id/pwd: 50001258/ssj****1 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.24(화) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 19:00  --> 저녁: 간단 술(선과장, 최부장, 주과장) 

- 교보 홈 리뉴얼 Prj
 - 사이버창구 인터페이스 샘플링 작업 

 /jsp/kblcm/cyber/in/cm/CYINCM_account_lst.jsp(/company/cyincm_account, view)  
 com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountAction: 계약상세내용 조회 Action Y2010102odCall  
-------------------------------------------------------------------------------------------------------- 

- 기업보험 관련 회의: 10:20 ~ 11:20 
참석: 교보생명 이명성 과장, 장재성 과장, 최현진 대리, 이종석 과장(기업보험 담당) 
내용: 1. 기업보험 관리자 화면 최종 검토 회의(전체적으로 기존 화면과 유사하게 가기로 함) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.25(수) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  --> 저녁(이나희, 정영란, 변지환, 배과장, 주과장: 6명): 청구할 것(41,000원), 맥주 

- 교보 홈 리뉴얼 Prj
 - 사이버창구 인터페이스 샘플링 작업
/jsp/kblcm/cyber/in/cm/CYINCM_account_lst.jsp(/company/cyincm_account, view)  
com.kyobo.kblcm.cyber.in.cm.action.CYINCM_accountAction: 계약상세내용 조회 Action Y2010102odCall  
==============================================================================================================

- 서버에 데이터 올리고 받기 
1. KBLCM[10.33.165.171] 폴더(오른쪽 클릭) -> Team -> Synchronize with Repository 
2. 서버에 올리기(=>&): 파일앞에 연주황색으로  ==> 된 것(오른쪽 클릭) -> Commit 
3. 받기(<=): 파일앞에 파란색으로 <== 된 것(오른쪽 클릭) -> Update  
4. 빨간색은 충동이 일어나고 있는 것: Ovderride and Update한 -> Commit 처리할 것 
5. 삭제 
1) 해당 파일(오른쪽 클릭) -> Delete(삭제) 
  2) KBLCM[10.33.165.171] 폴더(오른쪽 클릭) -> Team -> Synchronize with Repository 
3) 서버에 올리기(=>&): 파일앞에 연주황색으로 - 된 것(오른쪽 클릭) -> Commit   
==============================================================================================================

 - java소스 연결 
CYCOLO_loginVO cyberSession = getCyberSession(); // 위치에서 마우스 오른쪽 클릭 
--> Source --> Organize Imports: 관련된 클래스들을 보여줌 --> 해당되는 클래스를 선택 
==============================================================================================================

 - 나눔 동기회 스키 예매권(1월) 해지금 반환: 10만원 
하나은행(581 910048 19907) 예금주: 문태용 
==============================================================================================================

- [주간업무 2008년 6월 4째주]
★ 금주 업무 실적(06.23 ~ 06.27)
1. 사이버창구 인터페이스 샘플링 작업 
- 계약상세내용 조회, 보험료납입내역 조회 
------------------------------------------------------------------------------------------ 

★ 차주 업무 계획(06.30 ~ 07.04) 
1. 사이버창구(기업보험) 개발 
- 퇴직보험(대상계약선택, 업무진행사항) 
============================================================================================================== 
  
■■■■■■■■■■■■■■■■■■ 2008.06.26(목) 작업 ■■■■■■■■■■■■■■■■
---> 07:10 ~ 21:00  --> 소주(이나희, 임지연, 배과장), 맥주(최동훈 부장, 배과장, 임지연) 

- 교보 홈 리뉴얼 Prj
 - 사이버창구 인터페이스 샘플링 작업(보험료납입내역 조회)  
 - VO 타입이 틀려서 나는 에러 
java.lang.ClassCastException: kblcm.examples.pilot.login.CYCOLO_loginVO  
- HTTP Status 404 - /KBLCM/pilot/login.action 
404 에러는 서버내에 호출 요청한 파일이 없는 경우 발생합니다...  
 - eclipse 서버 에러 
에러내용:  
Publishing failed 
Removing obsolete files from server... 
Could not clean server of obsolete files: XML document structures must start and end within the same entity. 
XML document structures must start and end within the same entity. 
Could not publish server configuration: XML document structures must start and end within the same entity.. 
XML document structures must start and end within the same entity. 
조치: 톰켓6.0 서버를 삭제 후 다시 설정할 것 
==============================================================================================================

- PVCS 설치 
cloud9/c9 
\\epmserver\pvcs_rep 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.27(금) 작업 ■■■■■■■■■■■■■■■■
---> 08:00 ~ 19:00  -->  저녁: 간단 술(개발팀) 

- 교보 홈 리뉴얼 Prj
- 사이버창구 인터페이스 샘플링 작업(보험료납입내역 조회)    
- kbl이 정의되지 않았습니다. 
조치: 해당 파일에 <s:include value="/js/include.jsp" /> 넣어줌 

- Ajax 호출 스크립트 함수 
<script>  
	// Ajax 호출 스크립트 함수(계약상세내용 조회) 
	kbl.extJS.initializeApplication(kbl.main.go.do_requestAggrementList, kbl.main.go);   
</script> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.28(토) 작업 ■■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 --> 조기축구, 교보 토요 근무 

- 교보 홈 리뉴얼 Prj
 - 사이버창구 인터페이스 샘플링 작업(보험료납입내역 조회), 문서 재작성  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.29(일) 작업 ■■■■■■■■■■■■■■■■
---> 08:30 ~ 14:40 --> 교보 일요 근무 

- 교보 홈 리뉴얼 Prj
- 사이버창구 인터페이스 샘플링 작업(보험료납입내역 조회), 문서 재작성 
- layer 테스트 
http://127.0.0.1:8080/KBLCM/cy/login.action 
http://127.0.0.1:8080/KBLCM/pilot/login.action   
http://127.0.0.1:8080/KBLCM/ir/configure.action ==> 이사회 
http://127.0.0.1:8080/KBLCM/ci/main.action ===> 고객센터 
http://127.0.0.1:8080/KBLCM/html/codingTest/layer/layer.jsp ==>코딩 테스트(레이어) 
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\layer 
http://127.0.0.1:8080/KBLCM/html/codingTest/tab/tab.jsp ==>코딩 테스트(탭)  
C:\DevEnv\Projects\KBLCM\WebContent\html\codingTest\tab 
==============================================================================================================

- 개발팀 전체 회의(최정훈 이사) 
1. 개발팀 재세팅(PM:황광엽 부장(최동훈 부장 후임), 개발PL: 선동호 차장): 백부장 교체 
2. 개발 일정 재세팅 
==============================================================================================================

- 캐리비안베이(www.everland.com) 
주간 35,000원  26,000원 
2일 56,000원  41,000원  중복 할인 안 됨 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2008.06.30(월) 작업 ■■■■■■■■■■■■■■■■
---> 06:50 ~ 23:00   --> 소주(현용) 

- 교보 홈 리뉴얼 Prj
 - 사이버창구 인터페이스 샘플링 작업(보험료납입내역 조회) 
 - 문서 재작성(사이버창구 인터페이스 샘플 작업-v2.0.doc, 01. 인터페이스 흐름도.ppt) 
 - 개발관련 회의(14:30 ~ 15:00) 
인터페이스 흐름도 설명(개발팀), 강의 
 - SI-20080305-DS-DEV-15-프로그램목록-사이버창구(통합)-ver.3.0.xls 작성 
 jsp 파일명 적기 
==============================================================================================================

- 프라임 저축은행 적금 해지(계좌번호: 011-02-31-0133712) 
불입 기간: 5개월, 기간: 3년, 납입금: 30만원 
==> 2010년 7월 이후 아파트 매입을 목표로 2년짜리 적금으로 변경 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■