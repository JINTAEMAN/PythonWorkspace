

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// Memo(2012.11) //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


■■■■■■■■■■■■■■■■■■ 2012.11.01(목) 작업 ■■■■■■■■■■■■■■■
---> 07:00 ~ 18:30 --> ChatON Proj 첫 출근 

- ChatON 운영 Prj
- ChatON Proj 첫출근 
1. 프로젝트명: ChatON  Proj 
2. 기간: 2012.11.01(목) ~ 12.31(목) 
3. 보안 서약서 작성 
3. 노트북 셋팅 
 1) 노트북 사양(모델): MSI GT638DX-i7, S/N(제조번호): GT683DX-685XKRK111000258 
 2) OS 설치: window7 Professional K 32Bit 
 3) MSI LOCK SW(1년 무료): 제품코드(제조번호): 3363 3E56 A1D4 5EE0 
4. 근무지: 서울시 강남구 역삼동 825-22 미림타워 4층 ChatON팀)  
==============================================================================================================

- IP 주소(ChatON Proj) 
IP 주소: 70.4.121.00, GW: 70.4.121.1 
SM: 255.255.255.0, DNS: 203.241.132.00 
-------------------------------------------------------------------------------------------------------- 

- 파일 서버 
1. \\33.36.11.65\osp123   osp123/0 
2. V3 S/W 설치: \\33.36.11.65\osp123\00.Common_Project_Software\V3 8.0 
3. OPENPMS(http://122.1.20.204:8080/OPENPMS)  ==> tamar/ssj**8** 
- 프린터 서버(Samsung SCX-7635) --> IP 주소: 70.4.78.163 
==============================================================================================================

- Sinle Sign On: taemanJin.id/s*j*m**9  ==> CMS서비스그룹 
- NASCA: taemanJin.id/s**m8*1 

- ESCORT 에러  
1. 사용자 정보: 모란 
2. 싱글iID: ran.0 
3. PC정보 > 제조번호: FFFFFFFFFFFF ==> GT683DX-685XKRK111000258로 변경 
4. PC정보 > 모델: GT638DX-I7 
5. 에러 내용: 부팅 암호가 설정되어 있지 않습니다. 
TAMA: 암호를 설정하세요. 
6. 조치: SDS  헬프 데스크(3429-0 > 0번)에 전화해서 제조번호(GT683DX-685XKRK111000258) 삭제 요청 후 
모란 이름으로 제조번호(GT683DX-685XKRK111000258)  재등록[임시용] 
7. 조치2: TAMA: 암호를 설정하세요. ==> 제어판\사용자 계정 및 가족 보호\사용자 계정\계정 관리에서 TAMA에 
대한 암호를 설정하면 해결됨 
7. 기타: 모란(ran.0/0), 이치훈(chihoon1/0) 
==============================================================================================================

- 윈도우7 정품인증 패치 다운 and 사용법 
http://utilguider.tistory.com/228  
- 윈도우7 32비트 램 8G 이상 사용(16G 사용) 
http://www.irezia.com/354 
==============================================================================================================

- ChatON Proj 설명(김원기 수석, 이치훈 책임, 남현종 선임) 
1. EV 개발(20본) 
2. 업무: 공통(이권율: *) 
3. 개발 기간: 11월말까지 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.02(금) 작업 ■■■■■■■■■■■■■■■
---> 08:50 ~ 18:30 --> 중식(김원기 수석님이 쏨: ChatON팀(삼계탕)) 

- ChatON 운영 Prj
- ChatON Proj 분석 
1. 로그 
System.out.println("[CLI<=SVR]##### Message Received : " + e.getMessage().getClass().getName() ); 
handlerLog(1, "##### Message Received : " + e.getMessage().getClass().getName()+"\n"); 
log.append("\n########## cmd -> " + cmd + " ##########\n"); 
System.out.println("[createUser()] [strLoginId(임의 수정ID)]"+ strLoginId  +"[loginID(SF Login ID)]"+ strLoginId ); 
==============================================================================================================

- 진척 상황 회의(김원기 수석, 이치훈 책임, 남현종 선임) 
1. EV 개발 PT(삼성SDS 사원 개인별 발표) 
2. 일시: 매주 월, 수, 금 10시 
==============================================================================================================

- Easy Validator 개발자 환경 설치 
1. JDK 설치: 1.6.0_XX ==> http://www.oracle.com/technetwork/java --> 
http://www.oracle.com/technetwork/java/javase/downloads/jdk6u37-downloads-1859587.html 
2. Editor: Eclipse J2EE Galileo ==>  
http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/juno/SR1/eclipse-jee-juno-SR1-win32.zip 
Eclipse Java EE IDE for Web Developers.[Version: Juno Service Release 1 설치 --> Juno가 Galileo 보다 최신 버전] 
http://cafe.naver.com/2developia/5 
3. CVS: SVN  ===> SVN가 없을 시(Update 할 것): Help > Eclipse Markplace > Find: SVN 
-------------------------------------------------------------------------------------------------------- 

- 신규 SVN 서버 정보 
svn://svn://70.4.121.240/SSM_EV ==> ran.0/0 
C:\EasyValidator\SSMEV2 > trunk 865 > 02_Source 865(마우스 오른쪽 클릭): CheckOut   
SSM_EV ==> svn://70.4.121.240/SSM_EV/trunk/02_Source/SSM_EV  
==============================================================================================================

- ISO파일 설치 방법 
1. MS & 한컴 오피스 2010.iso(알집으로 압축풀기 
2. MS & 한컴 오피스 2010 폴더 안에 있는 autorun.exe 파일(더블크릭) ==> 일반 zip 파일과 같음 
==============================================================================================================

- 웹 ChatON(2012.11(삼성전자 ChatON SM_IL4U)) 
https://web.samsungchaton.com/index.html ===> *@*.*/tama339 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.03(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 22:00  

- HD 교체 @@@@@@@@@@ 
08:00 기상 
09:30 HD를 SSD로 변경(삼성전자 830 Series 노트북 패키지 64GB) 
10:00 윈도우 7 Professional K 64 Bit 설치 
11:50 중식(집: 해장국) 
12:30 프로그램 설치 
16:00 낮잠 
20:00 기상 
20:00 석식 
21:30 루옌(부인)과 화상통화 
24:30 취침 
==============================================================================================================

- Dell 노트북에 SSD 설치(집 노트북) 
1. SSD로 변경: 삼성전자 830 Series 노트북 패키지(64GB, MZ-7PC256N/KR) 설치(기존 히타치 500GB 하드를 교체) 
2. 윈도우 7 Professional K 64 Bit 설치 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.04(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦조기축구
06:30 기상  
06:50 신봉천 주유소(태훈이형 차)  
07:20 신구초등학교    
08:30 게임(3:1 승) 
09:10 게임(3:1 승) 
09:40 게임(3:1 승)  
10:20 게임(1:3 패)  
11:00 종료  
11:20 중식(류명국해장국: 부대찌게 ==> 조기회에서 쏨)  
12:10 종료  
12:40 귀가  
13:00 목욕(태화사우나: 5,500원)  
15:20 귀가  
20:00 석식  
21:30 루옌(부인)과 화상통화  
22:10 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.05(월) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30 --> 정병인 과장, 이순철 과장, 임정현 과장 추가 투입(총 8명) 

- ChatON 운영 Prj
- ChatON Proj 분석 
1. config 
D:\config\821094386889 ==> 실제 설정 
C:\EasyValidator\SSMEV2\EV_config\821094386889 
-------------------------------------------------------------------------------------------------------- 

- buddy Group 개발(모란 사원 요청) 
1. /ssm/emulator/window/CommandWindow.java  
 1) sashForm 
2. Buddy > Upload Address List > Upload Address Lis(새창) ==> new, append. delete, group: 선택(라디오 버튼) 
==============================================================================================================

- eclipse SWT Editor 설치 
1. Help > Install New Software > Availble Software(새창): add(클릭) 
 1) Name: Window Buider Editor 
 2) Location: http://dl.google.com/eclipse/inst/d2wbpro/latest/3.8 ==> eclipse(Juno) 
 3) SWT Designer[]체크], WindowBuilder Engine(Reqired)[체크] > NEXT>(클릭) 
 -------------------------------------------------------------------------------------------------------- 

- eclipse SWT Editor 교육(윤영훈 사원) 
1. SWT 간단 설명 
==============================================================================================================

- eclipse 메모리 에러 처리(C:\eclipse/C:\eclipse/eclipse.ini) 
-Xmx748m ==> 이전: -Xmx256m 
C:\Program Files\SmartBear\soapUI-Pro-4.0.1\bin에 위치한 (설치된 위치) 
soapUI-Pro-4.0.1.vmoptions 와 soapui-pro  파일내 메모리 설정을 아래와 같이 수정해 주시면 됩니다.   
==============================================================================================================

- Advenced REST Client 설치(설치 안됨) 
https://chrome.google.com/webstore/search/Advenced%20REST%20Client%20?hl=ko 
==> 이 컴퓨터에서 지원되지 않는 애플리케이션입니다. 
http://interwater.tistory.com/77  
http://localhost:8080/v2/sample/guides/1 
Accept: text/xml, Content-Type: text/xml  
-------------------------------------------------------------------------------------------------------- 

- poster Client URL 확인 
==============================================================================================================

- 무료문자 설치 
1 씨네락(cine rak): http://www.cinerak.com/freesms/sub07_09.html 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.06(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30 

- ChatON 운영 Prj
- buddy Group 개발 
1. Group Info(/GetGroupInfoWindow.java) 
2. Upload Address Select Information(/GetUploadAddressSelectWindow.java) 
Buddy > Upload Address List > Upload Address Lis(새창) ==> new, append. delete, group: 선택(라디오 버튼) 
3. sashForm 문제(/CommandWindow.java) 
 1) Horizonal(Style) 선택 후 Grid 크기 변경이 일괄적으로 적용됨  
4. Properites > Bounds가 안 보이면: FillLayout ==> Absolute Layout로 변경할 것 

log.append("[/CommandWindow.java] [widgetSelected()] [event]"+ event +"[cmd]"+ cmd +"\n"); 
System.out.println("[/CommandWindow.java] [widgetSelected()] [event]"+ event +"[cmd]"+ cmd +"\n");  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.07(수) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 18:30 

- ChatON 운영 Prj
- buddy Group 개발 
1. Upload Address List 팝업 처리 프로세스(/UploadAddressListCommand.java) 
 1) Add Buddy 번호:+821030, tama 
 2) phonebook 등록 번호: +82100(모란), +821030 --> +8210670(나영철) 
-------------------------------------------------------------------------------------------------------- 

- phonebook.xml 파일에서 @@@@ 
<param> 
	<address name="pp" group="qw">+82100</address> 
	<address name="pp" group="qw">+821030</address> 
</param> 
==============================================================================================================
  
- 삼성 이력서 재등록 요청(김성채 팀장) 
1. 삼성SDS파트너사: http://www.sdswinwin.com  ==> tamario2/s*j*m8*1 
==============================================================================================================

- 왕십리 아시안마트(베트남 타운) 
http://cafe.naver.com/engtalkclub/47740 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.08(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 18:30 --> 응아씨랑 페이스북 채팅함 

- ChatON 운영 Prj
- buddy Group 개발 
1. Buddy > Get All Buddy Group List > Group Info(새창): Group Info(/GetGroupInfoWindow.java) 
/XmlPhonebook.java, /XmlUtil2.java 
2. 참조: /PhonebookPopup.java, /UserProfileWindow.java 
-------------------------------------------------------------------------------------------------------- 

- TableItem check3 에러 
1. 현상 
at org.eclipse.swt.widgets.TableItem.checkNull(TableItem.java:123) 
List<XmlPhonebook> list = new ArrayList<XmlPhonebook>(); 
TableItem item = new TableItem(groupTable, SWT.NONE);  //에러 줄 
2. 조치 
groupTable 테이블의 칼럼명을 XmlPhonebook.java 파일에 맞게 수정할 것 
==============================================================================================================

- PM 교육(김원기 수석) 
1. 도박 금지(PC 모니터링하고 있다고 함) 
==============================================================================================================

- USB 포터 
- eclipse debugging 설치 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.09(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 18:30 

- ChatON 운영 Prj
- buddy Group 개발 
1. Buddy > Get Buddy Group List > Group Info(새창): Group Info(/GetGroupInfoWindow.java) 
/XmlPhonebook.java, /XmlUtil2.java 
2. 참조: /PhonebookPopup.java, My Profile: /UserProfileWindow.java 
/GetBuddyListCommand.java 
-------------------------------------------------------------------------------------------------------- 

- TableItem checkNull 에러 
1. 현상 
at org.eclipse.swt.widgets.TableItem.checkNull(TableItem.java:123) 
List<XmlPhonebook> list = new ArrayList<XmlPhonebook>(); 
TableItem item = new TableItem(groupTable, SWT.NONE);  //에러 줄 
2. 조치 
groupTable 테이블의 칼럼명을 XmlPhonebook.java 파일에 맞게 수정할 것 
==============================================================================================================

- mysingle ID 신청 및 등록(my single, 마이 싱글) 
1. 진태만 고유코드: C60WA967 
2. http://www.samsung.net에서 신규가입 신청 
3. http://www.samsung.net/portalWeb/default.jsp ==> tamario0.jin/s*j**8*1,  
E-MAIL: tamario0.*@*.* 
==============================================================================================================

- 윈7 인증 메일 
1. 삼성SDS 조영제 수석(young.*@*.*)  
2. 윈도우7 정품인증 패치 다운 and 사용법(http://utilguider.tistory.com/228) 
3. 확인: 제어판\시스템 및 보안\시스템 > 
Windows 정품 인증: "Windows 정품 인증을 받았습니다"라고 나옵니다. 
==============================================================================================================

- 공인인증서 재등록(SC은행) 
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
PC별명 설정하기: TAMA_CHATON_미림4 
==============================================================================================================

- 하씨 아들(광희) 돌잔치 
18:10 퇴근 
18:40 종로3가역 
19:20 오션패밀리 씨푸드부페(서울 종로구 세종로 100 KT빌딩 지하 1층, 02-730-1001) 도착 
        매니저님, 용산 사장님, 원석씨, 바보사랑고양님(신부 가출함), 용이서울님 부부, 쭌인천님, 종민씨 부주(10만원 전달) 
20:45 종료(선물: 무릎담요) 
21:20 서울등축제 구경(매니저님, 용산 사장님, 원석씨)  
22:20 종료 
23:20 귀가 
23:50 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.10(토) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 18:30 --> 조기축구, 석식(한상봉 부회장님이 쏨), 출근(09:30 ~ 19:50) 

- ChatON 운영 Prj
- buddy Group 개발 
1. Buddy > Get Buddy Group List > Group Info(새창): Group Description(/GetGroupInfoWindow.java) 
/XmlPhonebook.java, /XmlUtil2.java 
2. 참조: /PhonebookPopup.java, My Profile: /UserProfileWindow.java 
/GetBuddyListCommand.java  
==============================================================================================================

- super 에러 처리(//GetGroupInfoWindow.java 파일에서) 
public GetGroupInfoWindow(CommandWindow parentWindow, Shell parent, String dirpath, String phoneNum, int style) {  
	super(parent, style); 
	this.parentWindow = parentWindow; 
	this.dirpath = dirpath; 
	this.phoneNum = phoneNum;  
	xLocation = parentWindow.getShell().getLocation().x; 
	yLocation = parentWindow.getShell().getLocation().y; 

	setText("phonebook"); 
} 

protected void createContents() { 
	ssm = parentWindow.getSsm(); //super 에러 처리 
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.11(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 --> 비와서 집에서 쉼 

09:30 기상  
11:20 중식(류명국해장국 운동장에서 끓여 먹음)  
14:10 Dell 노트북 OS 포맷 밎 재설치 실패(부팅시 CD를 인식 못함) 
16:10 낮잠 
20:00 기상 
20:00 석식(라면) 
22:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.12(월) 작업 ■■■■■■■■■■■■■■■
---> 06:00 ~ 18:30 --> 홍영민(IST) 과장 추가 투입(총 10명), 원석씨가 전화와서 신부때문에 힘들다고 함(밖으로 나돔) 

- ChatON 운영 Prj
- buddy Group 개발 
1. Buddy > Get Buddy Group List > Group Info(새창): Group Description(/GetGroupDescriptionWindow.java) 
group, groupdesc, groupfilename ==>  txtGroup, txtGroupDesc, txtGroupFileName 
[category]allbuddygrouplist ===> allbuddygrouplist, buddygrouplist  
/XmlPhonebook.java, /XmlUtil2.java  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.13(화) 작업 ■■■■■■■■■■■■■■■
---> 06:50 ~ 18:55 

- ChatON 운영 Prj
- buddy Group 개발 
1. Buddy > Get Buddy Group List > Group Info(새창): Group Info(/GetGroupInfoWindow.java) 
Update Group Profile Image(파일 업로드): UpdateGroupProfileImageCommand.java 
txtGroupNmSel 
-------------------------------------------------------------------------------------------------------- 
2. 에러 
 1) 현상 
java.lang.NullPointerException 
log.append(CommandWindow.mskeReqResMsg(0, "[==================== UpdateGroupProfileImageCommand Start ====================]\n")); 
 2) 조치 
UpdateUserProfileImageCommand updateprofileimg = new UpdateUserProfileImageCommand(ssm, deviceStorage, parentWindow, fileImgPathName); ==> 
UpdateGroupProfileImageCommand updategroupprofileimg = new UpdateGroupProfileImageCommand(ssm, deviceStorage, parent, fileImgPathName); 
==> SSMConfig, CommandWindow를 제대로 받아 오는 지 확인할 것 
public UpdateGroupProfileImageCommand(SSMConfig c, DeviceStorage s, CommandWindow t, String f) { 
System.out.println("[/UpdateGroupProfileImageCommand.java] [UpdateGroupProfileImageCommand()] [c_1]"+ c +"[s_2]"+ s +"[t_3]"+ t ); 
ssm = c; 
storage = s; 
log = t; 
fileDirName = f; 
isLog = true;  
} 
==============================================================================================================

- null 체크 
if( fileImgPathName != null && fileImgPathName.length() > 1) {	// 파일 업로드된 파일명이 존재하면 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.14(수) 작업 ■■■■■■■■■■■■■■■
---> 06:53 ~ 18:59 

- ChatON 운영 Prj
- Extra Info 개발 
1. Buddy > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetGroupInfoWindow.java)  
==============================================================================================================

- SVN 서버 등록 정보 
project 이름 : SSM_EV 
svn://70.4.121.240/SSM_EV ==> tamario0.jin /sds2012(ran.0/sds2012) 
C:\EasyValidator\SSMEV2 > trunk 865 > 02_Source 865(마우스 오른쪽 클릭): CheckOut  
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.15(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 --> 중식(김성채 팀장) 

- ChatON 운영 Prj
- Extra Info 개발 
1. Buddy > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetGroupInfoWindow.java)  
==============================================================================================================

- ChatON 계약(아이엘포유) 
1. 수행업부: 시스템 개선/개발 
2. 기간: 2012.11.01 ~ 12.31(2개월) 
3. 내용: 정규직(1,050,000원), 프리랜서(*,863,000원) 2가지 계약 체결(총: 5,913,000원), 4대보험, 퇴직금 
4. 계약 대행: (주)아엘포유 SI 사업부 김성채 팀장(H: 010-2352-0): http://www.il4u.co.kr 
5. 갑: 주식회사 솔루션허브 대표이사 노영식(서울시 마포구 공덕동 404 풍림브이아이피텔 4층 411호) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.16(금) 작업 ■■■■■■■■■■■■■■■ 
---> 06:40 ~ 18:10 --> 여권 전달(가원 용산 사무실 방문하여 용산 사장님에게 전달) 

- ChatON 운영 Prj
- Extra Info 개발 
1. Buddy > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetGroupInfoWindow.java) 
 1) XML 받아온 값을 alert으로 처리 ==> parseXML 작업할 것(추후) 
==============================================================================================================

- Profile Image History Management 개발 
1. Buddy > Get Buddy Group List > User Profile Image History Management(새창): Get Buddy Profile Image History(/UserProfileImageHistoryMgtWindow.java) 
2. Buddy > Get Buddy Group List > Get Buddy Profile Image History((새창): Get Buddy Profile Image History(/UserProfileImageHistoryWindow.java)  
==============================================================================================================

- stg 서버(TEST로 사용할 것) 
stg.gld1.samsungchaton.com: 80  
- product 서버 
gld1.samsungchaton.com: 443 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.17(토) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 --> 새벽에 비와서 집에서 쉼 

09:30 기상  
12:20 중식 
16:10 Dell 노트북 OS 포맷 밎 재설치(D 드라이브에 프로그램 설치) 
16:10 낮잠 
20:00 기상 
20:00 석식 
22:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.18(일) 작업 ■■■■■■■■■■■■■■■ 
---> 09:00 ~ 18:00 

▦조기축구
06:30 기상 
06:50 신봉천 주유소(태훈이형 차) 
07:20 신구초등학교 
08:30 게임(1:1 무) 
09:10 게임(2:1 승): 1골 넣음 
10:40 게임(2:1 승): 1AS 
11:10 종료 
11:30 중식(문경세재: 갈비탕 ==> 오세림 고문님이 쏨) 
12:20 종료 
12:50 이발(봉천동 빅맨) 
13:30 귀가 
17:00 낮잠 
21:20 기상 
21:30 루옌(부인)과 화상통화  
23:10 종료 
23:40 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.19(월) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 18:30 --> 김성채 팀장 회의(출근, 보안, 현장관리자 임명), 김경주 과장 철수 

- ChatON 운영 Prj
- Extra Info 개발 
1. Buddy > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetGroupInfoWindow.java) 
 1) XML 받아온 값을 alert으로 처리 ==> parseXML 작업할 것(추후) 
==============================================================================================================

- Eclipse Decompiler(JadClipse) 설치 방법(http://chogoon.tistory.com/39) 
1. jad.exe 다운로드 ==> C:\eclipse\jad.exe 붙여넣기 
 http://www.varaneckas.com/jad 
2. net.sf.jadclipse_x.x.x.jar (현재 3.3.0 버전이 최신) 
 http://sourceforge.net/projects/jadclipse 
3. C:\eclipse\plugins폴더 안으로 net.sf.jadclipse_3.3.0.jar 파일을 붙여넣기 
4. jad 설정(Window > Preferences > Java > JadClipse 클릭 > JadClipse(새창)) 
Path to decompliler: C:\eclipse\jad.exe(변경) 
Derectory for temporary files: C:\Users\TAMA\.net.sf.jadclipse(임시파일을 보관하는 위치, 변경 가능) 
Reuse code buffer 체크 ===> Apply(OK 클릭) 
5. eclipse 를 다시 시작한다.  
6. 상단메뉴의 window > Preferences > General > Editors > File Associations 를 열면 우측화면에 파일 확장자에 따른 실행 
프로그램을 등록할 수 있는 기능을 찾을 수 있다. 
 1) File types에서 *.class 를 선택하거나 없으면 Add 버튼을 눌러 *.class 를 등록한다. 
 2) *.class 선택후 아래 창의 Associated editors 에서 JadClipse Class File Viewer 를 선택한 후 우측의 default 버튼을 
눌러 기본으로 등록한다. 
 3) File types(*.class) ==> Associated editors(JadClipse Class File Viewer: default) 
 4) File types(*.class without source) ==> Associated editors(JadClipse Class File Viewer: default)[추가할 것] 
7. OK 를 눌러 종료한 후 열고자하는 클래스를 ctrl+왼쪽마우스클릭하여 열면 .java 없이 .class 만 있는 파일들도 
자동으로 디컴파일되어 소스를 확인 할 수 있다. 
-------------------------------------------------------------------------------------------------------- 

- 자바 디컴파일러 사용법 
C:\> cd D:\03. TAMA SW\02. 개발용 프로그램\03. JAVA\00. Decompiler(JadClipse)\01. TEST 
D:\> jad.exe *.class 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.20(화) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 18:10 --> 자체 회식(ChatON팀, 스페셜(안)), 루옌이 보낸 선물 받음(커피, 사탕) 

- ChatON 운영 Prj
 - Dashboard(API Based) 개발 
1. Dashboard > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetDashboardAPIWindow.java) 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.21(수) 작업 ■■■■■■■■■■■■■■■
---> 07:20 ~ 18:40 --> Dashboard 개발회의 

- ChatON 운영 Prj
- Dashboard(API Based) 개발 
1. Dashboard > Get Buddy Group List > Get Extra Info(새창): Group Info(/GetDashboardAPIWindow.java) 
 1) /AniconListWindow.java 
==============================================================================================================

- Add User Profile Image 수정 
1. /AddUserProfileImageCommand.java, /UploadFileIOSCommand.java 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2012.11.22(목) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:00 --> PM면담(식사, 자리이동) 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. Dashboard > Dashboardt Test > Dashboard Test(새창)(/GetDashboardTestWindow.java) 
 1) /AniconListWindow.java 
 2) EV Multi Device 고민 
-------------------------------------------------------------------------------------------------------- 

- 국가 코드  
clientversion : 3.7.1 (EU-WEST) 
                3.7.2 (APAC-TOKYO) 
                3.7.3 (APAC-SINGAPORE) 
                3.7.4 (US-EAST) 
                3.7.5 (KOREA) 
                3.7.6 (CHINA) 
platform : ev_dummy 
model : ams_dummy 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2012.11.23(금) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 --> 커피(대시보드 7명), 현장관리자 임명(관리, 출근 체크) 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. Dashboard > Dashboardt Test > Dashboard Test(새창)(/GetDashboardTestWindow.java)  
 2) EV Multi Device 고민 
 400: Bad Request 
 401: 가입이 안된 상태 
2.6. Register from Samsung Account  ==> 삼성에서 답변 못 받음 
==============================================================================================================

- Dashboard Test 개발 회의 
1. Config 파일 생성 
2. Message input값 3개 생성 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.24(토) 작업 ■■■■■■■■■■■■■■■
---> 08:00 ~ 22:00  

- 포항행 @@@
08:00 기상 
08:10 조식 
08:40 집출발 
09:00 643번 버스(KB카드로 결제: 집에서 카드 못 찾음) 
09:20 강남터미널(KB카드 결제 취소 --> SC카드로 다시 결제) 
09:30 서울 출발 
14:10 포항 도착(4시간 40분 걸림) 
15:20 포항옛집(공원 만들어짐: 지하도, 분수) 
16:10 귀가(부모님께 묘사 비용, 성희 결혼 부주: 총 20만원 드림) 
18:00 석식 
21:30 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.25(일) 작업 ■■■■■■■■■■■■■■■
---> 09:00 ~ 18:00 

▦묘사
09:00 기상 
09:20 염색(보이는 곳만 함)  
12:00 묘사(작은 아버지 부부(대규), 중욱(중협) 아제, 종근, 병오 아제 부부, 판섭이 고모 부부, 동욱이 고모 부부, 재원이, 만주 고모)    
15:30 종료 
16:10 포항집 출발(베낭(사과, 떡)) 
16:45 포항고속터미널 
17:00 포항 출발 
22:40 강남터미널 도착(5시간 40분 걸림) 
22:50 버스(643번) 
23:20 귀가 
01:00 취침 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.26(월) 작업 ■■■■■■■■■■■■■■
---> 06:10 ~ 18:20 --> 근태관리대장 작성 시작, 도시가스 점검(약속 안 지켜 화냄) 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. Dashboard > Dashboardt Test > Dashboard Test(새창)(/GetDashboardTestWindow.java)  
 2) EV Multi Device  고민 
 SERVICE_TYPE.GLD.getServiceName() 
==============================================================================================================

// Dashbaord download 경로 
String filename = "1331469610910"; 
String filePath = ssm.getDefaultPath() + ssm.getPhoneNumber() + fileSeparator + "download_dashbaord" + fileSeparator + strGroupNm +".jpg"; 
==============================================================================================================

- device.xml 환경 설정 
<?xml version="1.0" encoding="UTF-8"?> 
<device> 
	<clientversion>3.7.5</clientversion> 
	<regid>0401015cad50fec3ea99e4f3b884c8e0c012b93e5ff9ad10ed718e2637e814d096b43de7a60ebd54d728d15fa9aedba356a5</regid> 
	<model>SHW-M250S</model> 
	<msisdn>821000090901</msisdn> 
	<imei>OSSAMS-560121-1003</imei> 
	<imsi>820000042131004</imsi> 
	<_path>D:\00. EV_config\821000090901\device.xml</_path> 
</device> 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.27(화) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:00 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. Dashboard > Dashboardt Test > Dashboard Test(새창)(/GetDashboardTestWindow.java)  
 2) 타켓 디바이스 C, D 생성(Message Server용) 
==============================================================================================================

- List 활용 
import org.apache.http.NameValuePair; 
import org.apache.http.message.BasicNameValuePair; 

public class ContactServiceCommand {  
	public void requestApi(int intNo, String strClntVerNm) {  
	L	ist<NameValuePair> requestParams_2 = getRequestParams(2);  // List에 넣기 
		GetVersionInformationCommand getVersionInfon_2_20_1 = new GetVersionInformationCommand(ssm, 
		ssm.getDeviceStorage(), cmdWindow, urlVersion, requestParams_2);  
		statusCode = getVersionInfon_2_20_1.request(phoneNumber);   
	}  

	private List<NameValuePair> getRequestParams(int intNo) {   
		List <NameValuePair> requestParams = new ArrayList <NameValuePair> ();  
		requestParams.add(new BasicNameValuePair("platform", "android"));   //platform 
		requestParams.add(new BasicNameValuePair("osversion", "3.0"));   //osversion  
		//System.out.println("[/ContactServiceCommand.java] [getRequestParams()] [intNo]"+ intNo 
		+"[requestParams]"+ requestParams );   
		return requestParams; 
	} 
} 
==============================================================================================================

- List 활용 
private void testAPICommand() { 
	String strClntVerNm = ""; 
	String strClntVer[] = {"3.7.1", "3.7.2", "3.7.3", "3.7.4", "3.7.5", "3.7.6"};  //국가 코드(6개)(01. EU-WEST,  
	//02. P-Northeast, 03. AP-Southeast, 04. US-EAST, 05. KOREA, 06. CHINA)  
	   
	for(int i = 1; i <= strClntVer.length; i++) {     
		strClntVerNm = strClntVer[i-1]; // 국가 코드 
		System.out.println("[/GetDashboardTestWindow.java] [testAPICommand()] [strClntVerNm]"+ strClntVerNm ); 
	}   // end of for()
} 
==============================================================================================================

■■■■■■■■■■■■■■■■■■ 2012.11.28(수) 작업 ■■■■■■■■■■■■■■■
---> 06:45 ~ 19:00 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. Dashboard > Dashboardt Test > 2.16. Block Buddy(/ContactServiceCommand.java) 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2012.11.29(목) 작업 ■■■■■■■■■■■■■■■
---> 06:40 ~ 19:00 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. 타켓 디바이스(B) invalid User 체크 함수 수정 
==============================================================================================================
  
■■■■■■■■■■■■■■■■■■ 2012.11.30(금) 작업 ■■■■■■■■■■■■■■■ 
---> 06:45 ~ 19:00 

- ChatON 운영 Prj
- Dashboard Test 개발 
1. 엑셀 다운로드 화면  
poi-bin-3.8-20120326\poi-3.8폴더의 .jar 파일 복사하여 C:\EasyValidator\SSMEV2\lib  폴더에 붙여넣기  
==> Java Buid Paht(새창): Add External JARs 
http://breezydawn.tistory.com/154  
2. apache poi 로 엑셀 읽기  
http://blog.naver.com/cain007?Redirect=Log&logNo=162385532 
http://modami.tistory.com/61 
http://my1over.blog.me/120162397685 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■