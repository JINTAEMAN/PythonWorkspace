

�����������������������������������������������������������
+---------------------------------------------// Memo(2014.02) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2014.02.03(��) �۾� ����������������
---> 07:30 ~ 21:00 -->   

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) ���� ==>  
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
==============================================================================================================
  
- ���(�ɴ븮 ����)
http://localhost:8080/mgr/bannerMgmt/contentsBannerMain.do  
/BannerMgmtController.java, /contents_banner.jsp 
==============================================================================================================

- Space for Export ���� 
1. Space for Expert ����(/spceExptMain.jsp) ����  ==> �Ϸ�  
==> /hmpg/stkCm/spceExpt/spceExptMain.do 

2. Space for Expert Profile(/spceExptMainProf.jsp) ����  ==> �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExptMainProf.do 

3. Space for Expert Information(/spceExptMainInfo.jsp) ����   ==>  �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExptMainInfo.do 

4. Space for Expert Profile Mgmt(/spceExptMainProfMgmt.jsp) ����   ==> �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExptMainProfMgmt.do 

5. Space for Expert Profile Mgmt(/spceExptMainlDtlR.jsp) ����   ==> �Ϸ�  
==> /hmpg/stkCm/spceExpt/spceExptMainlDtlR.do 

6. Space for Expert Infomation(/spceExptMainInfo.jsp) ����   ==>    
==> /hmpg/stkCm/spceExpt/spceExptMainInfo.do 

7. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) ���� ==> admin   
==> /mgr/spceExptMgmt/spceExptMgmtExpertReg.jsp, /SampleBbsController.java 

8. Space for Expert List(/spceExptMgmtExperListR.jsp) ���� ==> admin   
http://localhost:8080/mgr/spceExptMgmt/spceExptMgmtExperListR.do 
==============================================================================================================

- AP �ҽ� 
1. MGM pgmRank ������(/hmpg/myPage/mgmMgmt/pgmRank.do) 
/MgmtController.java, /hmpg/myPage/mgmMgmt/evntPstat.jsp 
==============================================================================================================

- ���� ���α׷� ��ġ 
1. mirage ���� 
mirage / �̶���12# 
2. swork ��ġ 
1 ) swork ���α׷�(160.10.181.68/sw2.0_IT����.exe) ���ÿ� �ٿ�ε�   
 2) �α���: dws_dev / system00@# 
3. �α��� 
dws_dev / system00@# 
-------------------------------------------------------------------------------------------------------- 
  
- mirage ��ġ 
http://10.110.9.141/profile.aspx --> s0130418(��뼳 ����) / dsw4004# 
s0140003(���¸�) / dws4004!  
==============================================================================================================

- 1�� �Ĵ�, �ýú� ���� ��û 
1. (��)JTREE ��뼳 ���忡�� ������ ����ؼ� ���翡 ��û(50,300��) 
==============================================================================================================

������������������� 2014.02.04(ȭ) �۾� ���������������� 
---> 07:30 ~ 21:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) ���� ==>  
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
Space for Export Management Home ����: /spceExpertAdminHomeU.do 
==============================================================================================================
  
- ���(�ɴ븮 ����):   
http://localhost:8080/mgr/bannerMgmt/contentsBannerMain.do  
/BannerMgmtController.java, /contents_banner.jsp 
 Banner �Է� �� ����: /mgr/bannerMgmt/contentsBannerCU.do   
==============================================================================================================
  
- �����Խ��� ��� ��ȸ( ���� ���ε�) 
1. /lbrtyBbsListRM.do ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /lbrtyBbsRegistCM.do ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do 
==============================================================================================================

- ���� ���ε�(MultipartFile) 
1. JSP ���� ���ε� �ҽ�(MultipartRequest ���) 
http://kamsi76.egloos.com/361961 
http://blog.daum.net/oraclejava/15870483 
http://blog.naver.com/PostView.nhn?blogId=lsv400&logNo=100132978423  
==============================================================================================================
  
������������������� 2014.02.05(��) �۾� ����������������
---> 07:10 ~ 21:00  

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Management Home(/spceExpertAdminHome.jsp) ���� ==> �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExpertAdminHome.do  
Space for Export Management Home ����: /spceExpertAdminHomeU.do 
-------------------------------------------------------------------------------------------------------- 

- �����Խ��� ��� ��ȸ(���� ���ε�) 
1. /lbrtyBbsListRM.do ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /lbrtyBbsRegistCM.do ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do  ==> Multipartfile ���� 
==============================================================================================================

- ���� ��¥(java ����) 
String strOrd_date = new SimpleDateFormat("yyyyMMdd").format(new Date());  // ��ȸ�ֹ�����((��������)) ==> �Է�(�ʼ�) 
logger.debug("[/SpceExptController.java] [spceExptMainInfo()] [strOrd_date]"+ strOrd_date );  
==============================================================================================================
  
- �α� ���(log) 
System.out.println("[/test.java] [test()] [user_id]"+ user_id );  
logger.debug("[/test.java] [test()] [user_id]"+ user_id );  

// out.println("[/spceExpertAdminHome.jsp] [test] <br>");     ===> jsp���� 
// out.println("[/spceExptMainDtlR.jsp] [forumId]"+ request.getParameter("forumId") +"[blbdClasNm]"+ request.getParameter("blbdClasNm") +"<br>");  
==============================================================================================================
  
������������������� 2014.02.06(��) �۾� ����������������
---> 07:10 ~ 21:00  

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
7. Space for Expert Mgmt Expert Reg(/spceExptMgmtExpertReg.jsp) ����  ==> �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExptMgmtExpertReg.do 
==============================================================================================================
  
������������������� 2014.02.07(��) �۾� ����������������
---> 07:20 ~ 19:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. ��ü ���� 
==============================================================================================================
 
������������������� 2014.02.08(��) �۾� ����������������     
---> 09:00 ~ 18:00   

- �ָ� 
08:50 ���   
09:00 ����(���) 
09:10 ���������÷��� ġ�� �湮 
10:10 LG A/S ��� �湮(LG TV: ������ ȭ���Ͽ� ����Ŀ ��ü ���شٰ� ��, LG ��ġ�����: ���� �������� ���ư��� 
�Ҹ��̸� �����̶�� ��) 
10:50 ���� 
11:50 �����(������Ա��� -> ���￪) 
12:40 �������� �Ƶ� ��ȥ����(�츮�� 2�� �Ʊ״Ͻ�Ȧ[7ȣ�� �е��� 3�� �ⱸ)] 
12:50 �߽�(�������� ��° �Ƶ� �� ==> �翺 ������ �� ��� ��) 
15:00 ���� 
15:20 ������ ���(�е��� -> ������ -> �������� -> ������) 
16:00 ������Ա��� ����(��� �ƿ﷿ -> ������Ա��� 7�� �ⱸ ����[���ǽ�(6����) ����] 
17:00 �Ͱ� 
18:00 ���� 
23:50 ��ħ 
==============================================================================================================

������������������� 2014.02.09(��) �۾� ����������������
---> 09:00 ~ 18:00 

�������౸   
07:00 ���   
07:40 �������� ��õ������ ��(�������� ��) 
08:00 �ű��ʵ��б�(�� �׿� ����) 
08:15 ���� �۾�(�˰����� ��� �� �� ġ��) 
09:30 ������(2:1 ��) 
10:00 ��� ����   
11:00 08:15 ������(2:1 ��)   
11:40 08:15 ���� 
11:30 �߽�(����, �ҽ��ѿ�Ĵ�): ���������� �Ƶ� ��ȥ ������� �� 
14:30 ����  
15:20 �Ͱ�(����) 
17:00 �庸��  
17:40 �Ͱ� 
18:30 ���� 
23:50 ��ħ 
==============================================================================================================

������������������� 2014.02.10(��) �۾� ����������������
---> 07:50 ~ 21:00  

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. ��ü ���� 
==============================================================================================================

7. Space for Expert Mgmt Expert Reg(/spceExptMgmtExpertReg.jsp) ����(AP:A21OI02)    ==> �Ϸ� 
==> /hmpg/stkCm/spceExpt/spceExptMgmtExpertReg.do 
==> /CmmnTrServiceImpl.java ���� ==> public A11OU26Vo signup(A11OU26Vo vo) throws Exception {} 
==============================================================================================================

- IP�����ý��� 
����� ������ �ʿ� ==> ���ID(s0140003) �α��� �� ������ 
==============================================================================================================

- ���߼��� �α��� ���� ���� 
1. ����: ���߼���(http://dev.dwsec-id.com)���� �α���(http://dev.dwsec-id.com/login.do)�� �ϸ�  
�������� �޾ƿ;��ϴµ� �޾ƿ��� ���ϰ� makecert.exe ����(makecert.exe returned -1)�� ��. 
 1) C:\Users\s0130418\AppData\Roaming\Microsoft\Crypto\RSA ���� �������� ���������� 
��Ȯ�ϰ� �޾ƿ��� ���ϰ� makecert.exe ������ ��. 
3. ����: �ʱ⿡ ������ ���ϴٰ� ��뼳 ���� ���� ID(s0130418)�� ����ϸ鼭 ������ ���� ������ ������.  
==============================================================================================================
   
������������������� 2014.02.11(ȭ) �۾� ���������������� 
---> 07:30 ~ 19:00  

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Export �α��� ����  
 1) ����ID(00401001:��ȸ��, 00402001:��ȸ��, 00403001:��ȸ��, 00499001:����) 
 2) /CmmnTrController.java ���Ͽ��� 
public @ResponseBody String loginTR( 
SpceExptVo expxInfoVo = spceExptService.selectSpceExpxInfo(spceExptVo); 
// Space for Expert Expert Info ��ȸ(Left ȭ��: Expert ���� Display) 

a31OI01Vo.setMembId("00403"); // ��ȸ�� ���� 

if(expxInfoVo != null && !"".equals(expxInfoVo.getExptId())) {  // Export 
//a31OI01Vo.setMembId("00404"); // Export ���� 
a31OI01Vo.setIsExpertYn("Y");   // Expert ����    
logger.debug("[/CmmnTrController.java] [loginTR()] [��ȸ��_Export]");  
} 
} 
==============================================================================================================

- ERWIN : nsm ���� �ۼ� (Physical Column �� ����) 
1. http://blog.naver.com/sfdevil67?Redirect=Log&logNo=20196643697 
2. http://cafe.naver.com/soltronix/37 
==============================================================================================================
  
������������������� 2014.02.12(��) �۾� ����������������
---> 07:30 ~ 21:00 --> ���� �׽�Ʈ 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. DB ERD ����(nsm ��� ������ �°� Table �ʵ� ����) 
==============================================================================================================

- Oracle squence ���(��¥ ��) 
-- 91-2. Space for Expert Mgmt Forum ���(insertSpceExptMgmtForum() --> /spceExptMgmtExpertReg.do)   
INSERT INTO TB_FORUM_MGMT (   
FORUM_ID, /* ���� ID */ 
FORUM_NM, /* ���� ��  */   
FORUM_EXPL, /* ���� ����  */   
USE_YN, /* ��� ���� */    
FORUM_REG_CST, /* ���� ��� ��� */   
FORUM_STRT_DAY, /* ���� ���� �� */ 
FORUM_XPR_DAY, /* ���� ���� ��  */  
REG_MN_ID, /* ����� ID */  
REG_DT, /* ��� �Ͻ� */  
UPDT_MN_ID, /* ������ ID */  
UPDT_DT  /* ���� �Ͻ� */  
) 
VALUES(  
-- #{forumId, jdbcType=VARCHAR}   /* ���� ID */  ==> 201402120001(20140212 + 0001) 
( SELECT  --F.FORUM_ID AS "FORUM_ID[TB_FORUM_MGMT]" 
--, D.FORUM_ID AS "FORUM_ID[SYSDATE]" 
CASE 
    WHEN D.FORUM_ID = F.FORUM_ID THEN TO_CHAR(TO_NUMBER(D.FORUM_ID)+1) 
    ELSE TO_CHAR(TO_NUMBER(D.FORUM_ID)) 
END as forumId   /* ���� ID */ 
FROM 
( 
    SELECT 
TO_CHAR(SYSDATE, 'YYYYMMDD')  '0001' as FORUM_ID 
    FROM 
DUAL  
) D, 
TB_FORUM_MGMT F 
WHERE 
D.FORUM_ID = F.FORUM_ID(+))  /* ���� ID */     
, 'Welcome!!_02' /* ���� ��  */   
, ''       /* ���� ����  */   
, 'Y' /* ��� ����  */   
,  90000 /* ���� ��Ϻ�  */   
, SYSDATE /* ���� ���� �� */  
, NULL /* ���� ���� �� */ 
, 'TEST' /* ����� ID  */   
, SYSDATE /* ��� �Ͻ� */  
, 'TEST' /* ������ ID */ 
, SYSDATE /* ���� �Ͻ� */    
)  
; 

SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  '-' '0001' FROM DAUL; 
SELECT TO_CHAR(SYSDATE, 'YYYYMMDD')  '-' LPAD(maxNum+1, 4, '0') FROM DAUL; 
==============================================================================================================
  
������������������� 2014.02.13(��) �۾� ����������������
---> 07:30 ~ 18:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. ��ü ���� 
==============================================================================================================

- Space for Export �߰� ��û ���� --> ������ ���� 
1. ������ 1���� expert Ȯ�� �����ϰ� ���� 
2. TB_BLBD_MSTR(�Խ��� ����Ʈ ����)    
 1) master ����(��ȸ��, ����)�ڵ� �߰� 
3. �Խ��� 10�� �̻� Ȯ���� ���� 
==> ���: �系 �Խ��� ����� �ֱ�� ��(2�� 28��(��) ö���� �ٽ� ���� ��) 
==============================================================================================================

- �μ��ΰ� �ޱ� 
1. �ɴ븮: ������ 
2. ���븮: Space for Export 
==============================================================================================================
  
<!--// Space for Expert Expert Info ��ȸ  //-->  
<!-- <select id="selectSpceExpxInfo" parameterType="spceExptVo" resultType="spceExptVo">   
SELECT  RPST_IMG_NM       AS forumImgFileNm  
, RPST_IMG_ORI_NM     AS forumImgFileOriNm   
, PRFL_PIC_NM       AS profImgFileNm  
, PRFL_PIC_ORI_NM     AS profImgFileOriNm   
, EXPERT_NM AS exptNm 
, EXPERT_ID AS exptId 
, EXPERT_GRAD AS exptGrade 
, DECODE(EXPERT_GRAD, 'T', 'trader', 'A', '') AS exptGradeNm 
, INTR_MSG AS introductionMsg  
FROM TB_FORUM_EXPERT_INFO  
WHERE EXPERT_ID = #{exptId, jdbcType=VARCHAR}  /* ������ID */ 
</select> --> 
==============================================================================================================

- ���� ���� ���� ��� @@@@@@ 
[extuser@IWD01I ~]$ ls  
[extuser@IWD01I ~]$ su - wadmin ==> ������ ID �Է� @@@ 
Password: devwn01 ==> ��й�ȣ �Է� @@@ 
[wadmin@IWD01I ~]: ls 
ROOT.bak/  backup/  bin/  download/  leo/  lost+found/  pds/  scs/  svn/  svnlog2.xml  temp/  test/  trbuilder/  wapps/  wdocs/  wdocs_20140104/ 
[wadmin@IWD01I ~]: cd /usr/share/ant ==> ant ��� �Է� @@@ 
[wadmin@IWD01I /usr/share/ant]: tstop ==> ���� stop @@@ 
Using CATALINA_BASE:   /usr/share/tomcat 
Using CATALINA_HOME:   /usr/share/tomcat 
Using CATALINA_TMPDIR: /usr/share/tomcat/temp 
Using JRE_HOME:        /usr 
Using CLASSPATH:       /usr/share/tomcat/bin/bootstrap.jar:/usr/share/tomcat/bin/tomcat-juli.jar 
[wadmin@IWD01I /usr/share/ant]: ant ==> ���� ���� @@@ 
Buildfile: build.xml 

cleanall: 
   [delete] Deleting directory /dwsid/wapps/ROOT 
   [delete] Deleting directory /dwsid/wdocs 

checkout: 
      [svn] Deprecated attribute 'javahl'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'username'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'password'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 
      [svn] Deprecated attribute 'svnkit'. This attribute will disappear with SVNANT 1.3.2. Use svnSetting instead. 

init: 
     [copy] Copying 3642 files to /dwsid/wdocs 
     [copy] Copied 215 empty directories to 53 empty directories under /dwsid/wdocs 
     [copy] Copying 360 files to /dwsid/wapps/ROOT 
     [copy] Copied 122 empty directories to 44 empty directories under /dwsid/wapps/ROOT 
     [copy] Copying 516 files to /dwsid/wapps/ROOT/WEB-INF/src 
     [copy] Copied 153 empty directories to 14 empty directories under /dwsid/wapps/ROOT/WEB-INF/src 
     [copy] Copying 50 files to /dwsid/wapps/ROOT/WEB-INF/classes 
     [copy] Copying 5 files to /dwsid/wapps/ROOT/WEB-INF/classes 

build-project: 
     [echo] kdbdw: /usr/share/ant/build.xml 
    [javac] Compiling 414 source files to /dwsid/wapps/ROOT/WEB-INF/classes 
    [javac] Note: Some input files use unchecked or unsafe operations. 
    [javac] Note: Recompile with -Xlint:unchecked for details. 

clean: 
   [delete] Deleting directory /usr/share/ant/checkout_source 

build: 

BUILD SUCCESSFUL 

[wadmin@IWD01I /usr/share/ant]: tstart ==> ���� start @@@ 
[wadmin@IWD01I /usr/share/ant]: tlog ==> ���� �α� �м� @@@ 
==============================================================================================================
  
������������������� 2014.02.14() �۾� ����������������
---> 07:20 ~ 24:50 --> �ҽ� ��� �ݿ�(moble jsp������ ������ ���� �������� �����) 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Panel Name ��ҹ��� ����: insertSpceExptMgMembRole 
2. ȸ�� ���� ���� ��� ����: selectSpceExptExpertPanelName 
==============================================================================================================

- Space for Export �޴� query ���� 
V:\A3.�ڷ��\DB\Space for Export �޴� query 
==============================================================================================================

- Apply Expert Forum(/spceExpertMainApply02.do) ���� 
==> T61OU27.java 
==============================================================================================================

- Space for Expert Reg(/spceExptMgmtExpertReg.jsp) ȭ�� ���� 
==> /mgr/spceExptMgmt/spceExptMgmtExpertReg.jsp 
==============================================================================================================
  
- SMS Push ����(�Ǽ��� Ȯ�� �� �غ���) 
1. ttile(����) ���� Ȯ���� ��(/spceExpertAdminPush.dp) 
==============================================================================================================

- ������ ȸ�� 
1. ���� ������ ö�� 
 1) �μ��ΰ�, � �ҽ� �ݿ� Ȯ��(18��) 
2. 2�� 16��(��) 14�� � �ҽ� ���� ���� Ȯ�� 
==============================================================================================================
  
- VM �α���  
1. VM �α���(��뼳 ����) --> IP: 10.110.43.236 -> s0130418 / dsw4004#   
1. VM �α���(������ �븮) --> IP: 10.110.43.236 -> s0140010 / dws4004@ 
==============================================================================================================

- �����Խ��� ��� ��ȸ( ���� ���ε�) 
1. /SampleBbsController.java  ==> http://localhost:8080/manage/edu/lbrtyBbsListRM.do 
2. /SampleBbsController.java  ==> http://localhost:8080/manage/edu/lbrtyBbsRegistCM.do 
==============================================================================================================

- ERwin ���̺� ���� ��ũ��Ʈ, �ڸ�Ʈ �߰� 
1. ERwin ȭ�� > Physical�� ��ȯ 
2. Tools > Forward Engineer > Schema Generation > Forward Engineer Schema Generation[��â] 
1) Option Set:  Default Schema Generation : Save(���� Open�ؼ� ���) 
2) Options: Sehema 
3) Table Filter: 36/36  ===> Preview(DB ���� ����) or Generation(DB ���� �Ǿ�� �� ��) 
-----------------------------------------------------------------------------------------  

- ERwin ���̺� ���� ��ũ��Ʈ, �ڸ�Ʈ �߰�(����) 
1. Database > Pre & Post Scripts > Model-Level�� �����Ѵ�.  
New �� ������ Code �ǿ��� �Ʒ� ��ũ��Ʈ �Է�  
2. ���̺�� �������� , �ε����� Tools�� ù��° �޴����� ���� �ϰ�,  
�ڸ�Ʈ ��ũ��Ʈ�� Tools > alter Script/Schema Generation :  Option  Comment Ȯ�� �� ���� 
3. Reverse �� �� �𵨿� Properties ���������� ������ ������ comment �� ���ؼ� �� �� ����.  
Database > Pre&Post Scripts > Table-Level 
Domains Default ���� NameInherited by Attribute > %ColumnComment ���Ƿ� ó�� 
-----------------------------------------------------------------------------------------  

- ���� ���� ��� ���� 
1. http://lugenzhe.blog.me/90185306361 
==============================================================================================================
 
������������������� 2014.02.15(��) �۾� ����������������     
---> 09:00 ~ 18:00   

- �ָ� 
08:40 ��� 
08:50 �߷�Ÿ�ε��� ���� ����(���ڷ� ��Ʈ: �翺�� ����) 
09:30 ���¼Ҿư�(��������): ��� 20�� ==> �� 21�� 5õ�� ������ 
1. DPT[�����׸���(diphtheria), ������(pertussis), �Ļ�ǳ(tetanus)](2��) 
2. ��������(PRP-OMP)(2��)  
3. ��Ÿ ���̷���(��Ÿ����)(1��): 11���� 
3. �󱸱�(13���� ���)(2��): 12����  ==> ���� ü��: 8.7, ����: 68.2, ����: 44.5(ü�� ����� ���� 1kg �� ����) 
11:20 ���� 
11:50 �Ͱ� 
12:20 �߽� 
13:00 ���� 
17:00 ��� 
18:00 ����(���� ���� ����) 
18:30 �����(2�׸�, ���Ÿ����Ѹ���) �����ؼ� ���� ���� �� 
18:50 ����(�����) 
20:20 ���� ���� ��Ƽ(����: �뵷 10����) 
23:50 ��ħ 
==============================================================================================================

������������������� 2014.02.16(��) �۾� ����������������
---> 12:30 ~ 18:00 --> 2�� ���� 

�������౸   
07:20 ���   
07:40 643�� ����(�� �ֹμ���) 
08:30 �ű��ʵ��б�(�������� 8�� 45�п� ��) 
09:00 ����(3:1 ��): ���Ե��� ���� ��  
10:00 ����(3:1 ��) 
10:30 ����(2:0 ��) 
11:10 ���� 
11:30 �߽�(����, �ҽ��ѿ�Ĵ�): ���� �� 
12:00 ����  
12:30 �������(��õ): ���������� �¿� ��  
12:40 Space for Export ���� ���� ó���� 
20:30 ���� 
20:50 ����(�����): �������� ��(���� ó��) 
21:10 ������ �� ���Ž 
21:30 9�� ����(��翪) 
21:40 �Ͱ� 
23:50 ��ħ 
--------------------------------------------------------------------------------------------------------- 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export 2�� ���� ���� ���� ó�� 
1. Export ��Ͽ��� ���� ���� 2�� �����ϰ� ó�� 
2. ALL View���� ����, ���� �����ϰ� ó�� 
3. Analst����Infomation �� ���̰� ���� 
==============================================================================================================
  
������������������� 2014.02.17(��) �۾� ����������������
---> 07:20 ~ 17:30 --> T61OU27 AP ������ PM���� ȭ���� ��� �� 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) ���� 
==============================================================================================================
  
- SMS Push ����(�Ǽ��� Ȯ�� �� �غ���) 
1. ttile(����) ���� Ȯ���� ��(/spceExpertAdminPush.dp) 
==============================================================================================================

2. My Expert(/stkCmMain.jsp) ���� ==> �Ϸ� 
==> http://www.dwsec-id.com/hmpg/stkCm/main/stkCmMain.do 
==============================================================================================================

3. Apply Expert Forum(/spceExpertMainApply02.do) ���� ==> �Ϸ� 
==> hmpg/stkCm/spceExpt/spceExpertMainApply02-checkPIN.do --> T61OU27.java 
1) �������ܾ� >=0 �̸� ���� 
2) "".equals(trim(�������ܾ�)) �̸� ����  
--------------------------------------------------------------------------------------- 

- ���� 
���� ���� AP�� �ѱ�� �н����尡 ����Ǿ ������..�׷�����Դϴ�. 
12:00:04:840950[A11SI03.c :A11SI03_PinChec:01149][it=021574] [lsPwd=\223\220] [dbPwd=123456] stat=[0] 
==============================================================================================================
  
������������������� 2014.02.18(ȭ) �۾� ����������������
---> 07:20 ~ 18:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) ����  
==============================================================================================================
  
������������������� 2014.02.19(��) �۾� ���������������� 
---> 07:30 ~ 18:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj
- Space for Export ���� 
1. Space for Expert Reg(/spceExptMgmtExpertReg.jsp) ����  
==============================================================================================================
  
- Project Management ���� 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==>   
==============================================================================================================
  
������������������� 2014.02.20(��) �۾� ����������������
---> 07:30 ~ 18:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
- Project Management ���� 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==>  
==============================================================================================================
  
������������������� 2014.02.21(��) �۾� ����������������
---> 07:30 ~ 17:30 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
- Project Management ���� 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do) ==> �Ϸ� 
==============================================================================================================
  
������������������� 2014.02.22(��) �۾� ����������������   
---> 09:00 ~ 18:00   - �ָ�  

- �ָ� 
08:40 ���  
09:50 ����� 
10:00 ����ö(������Ա��� -> ���߻꿪 4�� �ⱸ(1�ð� 30��)) 
	--> I��ũ APT ��: ��������[ǳ�꿪] ����(��ȸ��) > ������(��ȸ��) > �����ǿ����� 1���� APT(�� ȸ��)
	> �����ʱ� > �����ʱ� ��Ÿ�(�ǳʱ�) > ����ȭ�� 141����(��ȸ��) > �л� �ε��� >  ����(����ȭ��141���� 16-1 3��)  
12:10 ���ξ��� ����(���� �θ�� ����, ���� ����(��) ���� ����) 
12:20 �߽� 
16:30 ���ξ��� ���  
18:30 �߽�(�ع���(��: 4����): ��ȣ �Ʊ���) 
19:30 �Ͱ� 
22:30 ��ħ  
==============================================================================================================    

������������������� 2014.02.23(��) �۾� ����������������  
---> 12:30 ~ 18:00 --> 2�� ���� �������౸  

- �ָ�2
07:20 ���
07:30 643�� ����(�� �ֹμ���)
08:20 �ű��ʵ��б�(�������� 9�� 30�п� ��)
10:00 ����(3:1 ��)
10:30 ����(3:1 ��): 1�� ����
12:00 ����  
12:30 �߽�(��ġ���, ȿ������ ����: ������ ��ģ�� ���)
12:00 ���� 
13:00 �Ͱ� 
14:00 ���� 
17:00 ��� 
19:00 ���� 
23:50 ��ħ   
==============================================================================================================    
  
������������������� 2014.02.24(��) �۾� ����������������
---> 07:30 ~ 18:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
- Project Management ���� 
1. Create Board(/mgr/projectMgmt/createBoardMgmt.do)   
==============================================================================================================
    
������������������� 2014.02.25(ȭ) �۾� ����������������      
---> 09:00 ~ 18:00

- �ް�
09:30 ���    
10:00 ����(���)  
10:20 erd �ۼ�(DWS_ID)  
12:50 �߽� 
13:10 ����� 
13:30 ���� ��(����) ����, ���ξ� �Ƶ� ���� ���� ==> ��� �ƿ﷿(�ư���) 1�� �����  
13:40 �������̽�����(���� ���Ǳ� ���μ�ȯ�� 1796): http://www.choicehospital.co.kr, �� 875-2200 
14:10 ����(�翺) => X-ray �Կ�(11,900��) => ����ġ��(2,000��: 30��) ==> ū ���� �ƴ϶�� ��(����ġ�� 2��) 
15:20 ���� 
15:40 ����Ŭ�Ǻΰ��ǿ�(������Ա���, ���� ���Ǳ� ���Ƿ� 217): http://www.oracleclinic.com, �� 871-8301 
15:50 ���� ==> �翺: �Ӹ�ī�� ���� ���(�ӽ��ϸ� ����ٰ� ��), �¸�: �� ���� ���(�� ����) 
	==> ���, �߰ſ� �� ���� 
16:30 ���� 
16:40 �庸�� 
17:00 �Ͱ� 
18:00 ����  
22:00 ���� �ٸ�(�ξ�, �ȹ�)  
23:50 ��ħ  
==============================================================================================================   
  
������������������� 2014.02.26(��) �۾� ���������������
---> 06:15 ~ 21:00 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
- Project Management ���� 
2. Project Management > Board Modification(/mgr/projectMgmt/projectBoard/boardCU.do) ==> 92-6. Board Modification: �Ϸ� 
==============================================================================================================
  
������������������� 2014.02.27(��) �۾� ����������������  
---> 06:00 ~ 21:00 --> (��)JTREE�� 550�� 3�� �Ѵ� ����, �۲�: ���� ���(9) 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
  
- Project Management ���� 
1. Project Management > Board List(/mgr/projectMgmt/projectBoard/boardListR.do) ==> 92-4. Board List: �Ϸ� 
http://localhost:8080/mgr/projectMgmt/projectBoard/boardListR.do 
3. Project Management > Board Detaill(/mgr/projectMgmt/projectBoard/boardDtlR.do) ==> 92-5. Board Detaill: �Ϸ� 

2. Project Management > Board Modification(/mgr/projectMgmt/projectBoard/boardCU.do) ==> 92-6. Board Modification: �Ϸ� 
=============================================================================================================
=
- ��Ʈ ���� ����(� �ݿ�) ==> Chat �����ڰ� ���ͼ� ���� �� 
1. /js/dwsComplex/jCommonEx.js 
==============================================================================================================

- FTP 
1. 10.100.55.61: s0140003.wadmin@iwd01i / dws4004@ 
2. Dir: /dwsid/wdocs,  Dir: /dwsid/svn/rev_info 
==============================================================================================================
  
������������������� 2014.02.28(��) �۾� ����������������
---> 06:20 ~ 18:00 --> ö��(18��) 

- ������� �ε��׽þƹ��� Ȩ������ �籸�� Prj  
- Project Management ����  
1. ���� ����(zip���Ϸ� ���� ������ ���), ���� ����, � ���� �ݿ�(������ �����Ϸ� ����) 
==============================================================================================================
- ����Ʈ ��ȸ 
List<SpceExptVo> selectProjectMagBlbdYnList = spceExptService.selectProjectMagBlbdYnList(spceExptVo); 
// 92-11. Project Mag �Խ��� ����� ���� List ��ȸ 
  
if(selectProjectMagBlbdYnList.size() >0) { 
	a31OI01Vo.setIsProjectMagBlbdYn("Y"); // Project Mag �Խ��� ��� ���� ���� 

	if(selectProjectMagBlbdYnList != null && selectProjectMagBlbdYnList.size() > 0){ 
		//for(int i=0; i< selectProjectMagBlbdYnList.size(); i++){ 
			SpceExptVo poplist = selectProjectMagBlbdYnList.get(0);  
			if(poplist.getCtnsClasCd() != null ){ 
			a31OI01Vo.setFirstCtnsClasCd(poplist.getCtnsClasCd());   // firstCtnsClasCd 
			logger.debug("[/CmmnTrController.java] [loginTR()] [getCtnsClasCd()]"+ poplist.getCtnsClasCd() ); 
		// }
	}  
} else { 
	a31OI01Vo.setIsProjectMagBlbdYn("N"); 
} 
==============================================================================================================
  
- ȸ�� ���� 
/* 1. ��ȸ��(00402001) */ 
test-20/1234567 
/* 2. ��ȸ��(00403001) */ 
Hotsguru/123456 
KSTD0618, bluerain, taeho 
, ANDI20, DONNY_72, fuadnas 
, kancil118, ronnywan 
/* 3. ������(00499001) */ 
8000156/456789 
8000157/12345 
8000158/12345 
s0330176/12345 
--------------------------------------------------------------------------------  

- DWS_���߼��� FTP �ּ� 
1. IP�ּ�: 10.100.55.61 --> s0140003.wadmin@iwd01i/ dws4004@  
==============================================================================================================

- (��)JTREE 
1. �ּ�: ����� ������ ������� 18�� 17, 1��(���ﵿ) 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������
