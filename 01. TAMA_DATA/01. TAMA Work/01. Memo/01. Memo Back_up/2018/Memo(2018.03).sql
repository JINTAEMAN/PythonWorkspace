

����������������������������������������������������������
+----------------------------------------------// Memo(2018.03) //----------------------------------------------+
����������������������������������������������������������


������������������� 2018.03.01(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ������(������), �߽�(��ġ�: �����н� -> ���غ� ����)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ����(BIZLI_S0114.xfdl) ȭ�� ���� ==> ���� �Ϸ�[����]
1. ��������(3��) Display: Ŭ�� ==> ������ �˾�
2. �Խ��� ��ȸ��(HIS_COUNT) Į�� ����
--------------------------------------------------------------------------------------------------------------

/* �Խ��� �� ��ȸ - ��ȸ�� ����[tfb.biz.bizbb.dao.BizbbMapper.hitPlus] */
UPDATE UXJP_BBS_POST
SET HIS_COUNT = (
	SELECT COUNT(*) + 1
	FROM UXJP_BBS_USER_HIT
	WHERE BBS_BOARD_CODE = #{BBS_BOARD_CODE}		-- �Խ����ڵ�(CRM_005: ��������, CRM_002: �ڷ��, CRM_003: ���ֹ��� ����)[��]
		AND BBS_POST_CODE = #{BBS_POST_CODE}				-- Post�ڵ�(���Ϲ�ȣ)[����]
		AND HIT_EMP_NO = #{EMP_NO} 
	)
	WHERE BBS_BOARD_CODE = #{BBS_BOARD_CODE}
		AND BBS_POST_CODE = #{BBS_POST_CODE}  
;
-------------------------------------------------------------------------------------------------------------- 

-- ��ȸ�� ���� @@@
UPDATE UXJP_BBS_POST
-- SET HIS_COUNT = 3
-- SET HIS_COUNT = '4' 	-- ��ȸ���� VARCHAR Ÿ�������� 3, '4'�� ��� ������Ʈ ���� ��(Tibero DB �� ����)
WHERE BBS_BOARD_CODE = 'CRM_005'	-- �Խ����ڵ�(CRM_005: ��������, CRM_002: �ڷ��, CRM_003: ���ֹ��� ����)[����]
	AND BBS_POST_CODE = 589				-- Post�ڵ�(���Ϲ�ȣ)[����] 
;
--------------------------------------------------------------------------------------------------------------

-- Į�� �߰� @@@
ALTER TABLE UXJP_BBS_POST ADD ( 
    HIS_COUNT INTEGER	     -- ��ȸ�� Į�� ����Ÿ Ÿ���� VARCHAR(20)���� INTEGER�� ����
)
;

-- �Խù����(UXJP_BBS_POST) TB Į�� ����ȯ
-- Į�� �߰� @@@
ALTER TABLE UXJP_BBS_POST ADD ( 
    HIS_COUNT INTEGER	     -- ��ȸ�� Į�� ����Ÿ Ÿ���� VARCHAR(20)���� INTEGER�� ����
)
;

-- Į�� ���� @@@
ALTER TABLE UXJP_BBS_POST MODIFY ( 
    HIS_COUNT INTEGER	 -- ��ȸ�� 
)
;
--------------------------------------------------------------------------------------------------------------
 
-- Į�� ���� @@@    
ALTER TABLE UXJP_BBS_POST DROP COLUMN HIS_COUNT2
;
==============================================================================================================

- Iject �м�(/Iject.js ���Ͽ���)
1. /Iject.js ���Ͽ��� �ҽ� ����  ==>  Genarate Application ó�� ==> eclipse���� /WebContent�� Refresh(F5)�� ��
==============================================================================================================

- eclipse���� ������Ʈ import �ϱ�
1. ���� ��� File�� -> Import Ŭ�� or �ͽ��÷η����� ���콺 ������ư Ŭ�� -> Import�� -> Import Ŭ��
2-1. General -> Existing Projects into Workspace ����
2-2. Next Ŭ��
3-1. Select root directory -> Browse Ŭ��
3-2. �߰��� Project ����  ==> .project ������ �����ϰ� WebContent ������ �����ؾ� ��
 ==> .project ���Ͽ��� nexacro-xeni���� �����Ǿ� ������ �浹�� �Ͼ(nexacro-xeni�� ������ ������ ��)
3-3. Ȯ�� Ŭ��
4-1. ���� import�� project�� check �Ǿ����� Ȯ��.
4-2. Copy project into workspace ��ư üũ
    (���� ��ũ�����̽� �ȿ� �� ������Ʈ�� ��°�� �����ϰڴٴ� �ǹ�)
4-3. Finish Ŭ��
4-4. �ͽ��÷η��� ���ϴ� ������Ʈ�� �߰��Ǿ��ٸ� �Ϸ�. 
==> https://polyglotm.github.io/2015-08-03-eclipse-se-import-or-eclipse-se-project.html
--------------------------------------------------------------------------------------------------------------

- Java project �� web application ������ �����ϴ� Dynamic Web Project �� ��ȯ�ϱ�
1. C:\eduNexaBase\workspace\nexacro-xeni\.settings\org.eclipse.wst.common.project.facet.core.xml ���Ͽ���
<runtime name="Apache Tomcat v6.0"/>				 // Apache Tomcat v6.0 �߰� @@@@
<installed facet="jst.web" version="3.1"/> 				// Dynamic Web Module version  ==> 3.1���� 2.5�� ���� @@@@
 
  1) ������ org.eclipse.wst.common.project.facet.core.xml ����
 <?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
	  <runtime name="Apache Tomcat v6.0"/>	 // Apache Tomcat v6.0 �߰� @@@@
	  <fixed facet="wst.jsdt.web"/>
	  <installed facet="java" version="1.5"/>
	  <installed facet="jst.web" version="2.5"/>		// Dynamic Web Module version  ==> 3.1���� 2.5�� ���� @@@@
	  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project> 

2. ���� ��� ������Ʈ�� ���� : ���콺 ������ư Ŭ�� > Properties(��â)
3. Properties(��â) > Project Facets
 1) Dynamic Web Module ���� ==> 2.5�� ����
 2) Java ���� ==> 1.5�� ���� 
 3) Runtimes(��)���� Apache Tomcat v6.0: üũ  > Apply > OK: Ŭ��
4. Serves�� ApacheTomcat v6.0 Server�� ������
 1) Edit Web Module(��â) > Path: / ==> OK: Ŭ��
5. ������ ���� ==> http://localhost:8080/basemdi/index.html 
==> ==> http://testuser.tistory.com/category/Eclipse
------------------------------------------------------------------------------------------------------

- Tomcat ���� ���� ����(nexacro-xeni ������ ��)
1. ����: Tomcat version 7.0 only supports J2EE 1.2, 1.3, 1.4, and Java EE 5 and 6 Web modules
2. ��ġ: 
C:\eduNexaBase\workspace\nexacro-xeni\.settings\org.eclipse.wst.common.project.facet.core.xml
<runtime name="Apache Tomcat v6.0"/>					// pache Tomcat v6.0 �߰� @@@@
<installed facet="jst.web" version="3.1"/> 				// Dynamic Web Module version  ==> 3.1���� 2.5�� ���� @@@@
 
<?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
  <runtime name="Apache Tomcat v6.0"/>
  <fixed facet="wst.jsdt.web"/>
  <installed facet="java" version="1.5"/>
  <installed facet="jst.web" version="2.5"/>
  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project> 
==============================================================================================================

������������������� 2018.03.02(��) �۾� �������������������
---> 12:40 ~ 23:00 ==> ����.��� �Ա�(06:50)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ���� ȭ�鿡�� ū ȭ������ �Ǹ� ����� ������ â�� �ȴþ�� ���� ==> 
1. /Iject.js ���Ͽ���
showModal : function(o, oData, fncCallback)
{
	cf.set_layered(false);									// layered([false]
	cf.set_autosize(oData.bAutoSize);			// autosize[true]
	cf.set_resizable(oData.bResize);				// resize[false]
}
==============================================================================================================

- showModal �� �˾��� ��ﶧ ��� �� ���� ����
childFrame.style.set_overlaycolor("#7f8c9aff"); �� ���� ������ ������ ����  
==============================================================================================================

-  ���ݿ�볻�� ��ȸ(Popup) �˾� ��� ���� ==> ���� �Ϸ�[����]
1. �ִ�ȭ ��� �����ϰ� ����
 1) resizable = true�� ����
2. division ���α��� ���� 
 1) div_search �Ӽ� scrollbar�� autoboth���� none�� ����, div_src_info �Ӽ� scrollbar�� autoboth���� none�� ����
 2) div_search �Ӽ� width(1160) �Է�, div_src_info �Ӽ� width(1160) �Է�
==============================================================================================================

- �������� ����
1. �ۼ��ڷ� �˻� �� �ۼ��� �ƴ� ����� ����
==============================================================================================================

- ���� �ۼ��� ���� ��û
1. ���ϰ� ������ ���� �ۼ��� ����((��)��ȭ) �κ� ���� �ֶ�� �̾߱� ��
==============================================================================================================

- ����, ��� ����
05:00 ���(�����̵� ���� ��)
05:30 �븲�� ����(�븲�� -> ��õ���׿�)
06:40 ��õ���׿� ����
06:50 ����, ��� ����(����)
07:10 ���� ����(��õ���׿� -> �븲��)
08:40 �븲��
08:50 �Ͱ�(ū �� 2�� ��� ��)
12:40 ���
==============================================================================================================

������������������� 2018.03.03(��) �۾� �������������������
---> 07:00 ~ 19:00 ==> �ָ� �ٹ�, �߽�(��ġ�: �����н�), ����(ġ�����: ���õ�� ��������)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- Iject eclipse ȯ�� ����
1. HTML5 ���� �Ϸ� ==> http://localhost:8080/basemdi/index.html
==============================================================================================================

- JSP �����α׷��� - ��Ŭ���� ���̳��� ��������Ʈ(Eclipse dynamic web project) ����[������ ������]
https://www.youtube.com/watch?v=TuwORSsxIM0
==============================================================================================================
 
- ���� ȭ�鿡�� ū ȭ������ �Ǹ� ����� ������ â�� �ȴþ�� ���� ==> ���� �Ϸ�[����]
1. /Iject.js ���Ͽ���
showModal : function(o, oData, fncCallback)
{
	cf.set_layered(false);									// layered([false]
	cf.set_autosize(oData.bAutoSize);			// autosize[true]
	cf.set_resizable(oData.bResize);				// resize[false]
}
==============================================================================================================

- �������� ǥ�������ӿ�ũ �¶��� ����
https://www.youtube.com/watch?v=FeTfhptuWdg&feature=youtu.be
http://www.egovframe.go.kr/EgovDevEnvRelease_300.jsp?menu=3&submenu=2&leftsub=2

- �������� ǥ�������ӿ�ũ  ����[���ڸ�]
https://www.youtube.com/watch?v=LbPhNq54tsE
http://www.jamjalee.com/egovframe-introduction/
==============================================================================================================

������������������� 2018.03.04(��) �۾� �������������������
---> 07:00 ~ 19:00 ==>  

- �ָ�2
08:00 ���
08:30 ����(��)
11:00 �߽�: ����, ���
12:10 �����
12:20 �뵿�ʺ�����ġ�� �湮 ==> �翺, ����
12:30 7ȣ�� �븲��(���� �ݻ����� ���Ϸ���: �翣 ����͹̳α��� ���)
12:50 ���̼�(����, ���� ������, ��īġ ������)
12:20 �Ͱ�
12:50 TV ��û == ����
17:10 ���(�౸�Ϸ� �� ��)
17:30 �����(������)
17:40 GS25�븲��������(����1��) ==> �ù� �ڽ��� �������� �������� ���ٰ� �ؼ� ����
17:50 �̸�Ʈ ������ ==> �ù� �ڽ��� ��������
18:00 GS25���ε�������(�����з�) ==> �������� �ù�(Ŀ��, ��) ��ħ(�ù�� 6õ��, ����: õ 2��� ==> �� �ù��: 4õ 8���)
18:20 �Ͱ�
19:00 ����
22:00 ��ħ
==============================================================================================================

- 01. ������ �ù�(GS25, CU) [Postbox]
1. http://www.cvsnet.co.kr/postbox/m_member/login_S.jsp
2. GS2 GS25���ε����������� �ù� ��ħ ==> GS25�븲��������(����1��), GS25�븲����(�븲��), GS25���ε�������(�����з�)
 1) 18_0304_������(�� Ŀ��) ����
==============================================================================================================

- ������� �̾��� ���[ȸ�翡�� ����ϴ� ���� �̾���]
MODEL: HBS-800 QC2 PASS
STEREO HEADSET
FCC ID: BEJBHS800
SN: 1407037
==> �嵥�� ������ USB�� ������ ��
==============================================================================================================

������������������� 2018.03.05(��) �۾� �������������������
---> 07:00 ~ 22:00 ==>  

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- �Խ��� ���� ==> ���� �Ϸ�[����]
1. �Խ��� �󼼿��� ���� �� â�ݱ�
==============================================================================================================

- �Խ��� ���� ���ε� ���� �뷮 ���� ==> ���� �Ϸ�[����]
1. 20M���� 100M�� ����
==============================================================================================================

- validation �м�
1. validation üũ �Լ� IE10 ���� ���� �߻� 
// �� �ε� Event �â�
this.form_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	alert("[/shu_kosyou_sagyo.xfdl] [shu_kosyou_sagyo_onload()] ==> [T: �����Ϻ� ȭ��] [�� �ε�] [TEST_01] =====> @@@@" ); 
	
	//�⺻ ����  �Լ� �ʱ�ȭ
	Iject.formOnload(obj); 
}
==============================================================================================================

- IE10 ���� �׽�Ʈ�� ���
1. ITTester �ٿ�ε� �� ��ġ
https://www.my-debugbar.com/wiki/IETester/HomePage 
--------------------------------------------------------------------------------------------------------------

- ������Ʈ�� IE8, IE9, IE10���� �� �������� �׽�Ʈ�ϴ� ���(����ӽ�),
https://www.cmsfactory.net/node/40024

- VirtualBox�� ie10 �׽�Ʈ �ϱ�
http://goni9071.tistory.com/entry/VirtualBox%EB%A1%9C-ie10-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%95%98%EA%B8%B0- 
������Ʈ�� IE8, IE9, IE10���� �� �������� �׽�Ʈ�ϴ� ���(����ӽ�),
https://www.cmsfactory.net/node/40024

- VirtualBox�� ie10 �׽�Ʈ �ϱ�
http://goni9071.tistory.com/entry/VirtualBox%EB%A1%9C-ie10-%ED%85%8C%EC%8A%A4%ED%8A%B8-%ED%95%98%EA%B8%B0
==============================================================================================================
 
- ���࿬��ȸ Prj[��]
1. �������������ӿ�ũ(egovFrameDev-3.6.0-64bit)
 1) eclipse ���� ==> Eclipse Java EE IDE for Web Developers
Version: Mars2 Release (4.5.2)
Buid id: 20160218-0600
2.�������� ǥ�������ӿ�ũ ����Ʈ ȸ�� ����
==> http://www.egovframe.go.kr,  tamario / h*��*16*1@
==============================================================================================================

- 72. �������������ӿ�ũ ���� ������_02 ��û
1. https://www.youtube.com/watch?v=VKXtRm7w0IU&t=272s
==============================================================================================================

������������������� 2018.03.06(ȭ) �۾� �������������������
---> 07:00 ~ 23:00 ==> ���н�(10��, �뵿����ġ��): ����, ����S ��� ����(14�� ~ 17��)  

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- validation check(���ݿ��ұ޽ý��ۿ��� �α��ο��� �׽�Ʈ)
1. IE 10���� syntax error  ';'�� �ʿ��մϴ�.
 --------------------------------------------------------------------------------------------------------------

- ';'�� �ʿ��մϴ�.
1. �����ݷ��� ����Ͽ� �� ���� ���� ǥ��
2. �Լ��� ��ȣ�� �ùٸ��� ��� 
3. for ������ ��� �ȿ� �����ݷ��� ��� 
==============================================================================================================

- ���߼������� open �Լ� ����ϸ� �ּ� ǥ���� ����(���� ���������� �� ����)
==============================================================================================================

- ����S ��� ����(14��, ��)
1. ���߼������� open �Լ� ����ϸ� �ּ� ǥ���� ����(���� ���������� �� ����) ==> �ذ� ����
2. validation ==> �ذ� ����
==============================================================================================================

- ĳ���� ��Ʈ(4��): ���� ��Ʈ, ���� 14,990��(����: 3,400��)
http://itempage3.auction.co.kr/DetailView.aspx?ItemNo=B445832634 
==============================================================================================================

������������������� 2018.03.07(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- validation check(���ݿ��ұ޽ý��ۿ��� �α��ο��� �׽�Ʈ) 
==============================================================================================================

- ���࿬��ȸ ���վ����ý��� ����Ʈ(��ȭ���� ������ ������ ==> ����� ������ ���� ��û�ؼ� �ذ�)
https://new.bizinfo.kfb.or.kr/index_biz.html

- ���࿬��ȸ Prj���� ���������� �ޱ�[IE�� ��밡��]
https://new.bizinfo.kfb.or.kr/install/01_tester21.zip   ==> 01_tester21.zip ������ ���࿬��ȸ FTP(10.1.3.5.12)����
install ���(/install)�� �־�θ� ��

- ���࿬��ȸ Prj���� validation �ҽ� �ޱ�[IE�� ��밡��]
https://new.bizinfo.kfb.or.kr/install/Validation.zip

- ���࿬��ȸ Prj�� ���� ������[IE�� ��밡��]
1. https://new.bizinfo.kfb.or.kr/index_biz.html > �ڷ�ǿ��� ���� ���ε� 
 1) �ڷ�� ��ȭ�鿡�� �ش� ����: ���� Ŭ�� > �ٿ�ε� �ޱ�
  2) ���࿬��ȸ FTP(10.1.3.5.12)���� ���� ���(/upload/bbs) �������� ���� �ޱ�
==============================================================================================================

- �Ϻ� ������ H-PLM ��ȯ Prj �ҽ� �̸��� �߼�
1. �Ϻ������� �ֽ� �ҽ� ��û
 1) ������ ���忡�� ��ȭ�ͼ� ����(/moms_Nexa.zip) ���Ϸ� ����
=============================================================================================================
 
- Eclipse SVN ���� ���
http://yysvip.tistory.com/182
1. ���� Ű���� �߰�
window -> proference -> team -> ignored resources
add pattern ��ư ������ ���� �߰����ָ� ��.
.project .classpath .settings 
*/target/**           <-- ���̺� ������丮 @@@
*[��].xprj

2. ���丮/���Ϻ� ����
������Ʈ �ͽ��÷ξ� -> ���ϼ��� �� �� Ŭ�� -> Team -> Add to svn:ignore.. 
Add to svn:ignore.. �޴��� ���ų� ��Ȱ��ȭ�Ǵ°��� �̹� �������/���丮�� �ҽ������� �ް��ִ� ��Ȳ.. �� ��쿡�� ignored ���� 
�Ұ���.. ==> �� ��쿡�� �� ���� ������ ���� �� ����.
 ��) ���� ���� Ű���带 �߰��ϴ� ����� ���.. 
 ��) ����� ����� svn���� ����� ������ ���¿��� svn�� Ŀ���ؼ� ����������� ����..
�� �� ����� ����.. �׸��� Add to svn:ignore.. Ȱ��ȭ�� �� Ȯ�� �� ignored ���� �Ϸ�.
=============================================================================================================

- �������������ӿ�ũ �ǽ�(02.����ȯ��)
1. 02.����ȯ��_�ǽ�����.pptx
 1) HSQLDB ������ ���� (+ ��Ŭ���� ����) ==> https://m.blog.naver.com/PostView.nhn?blogId=b_lackie&logNo=150168391015&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F 
=============================================================================================================
 
- LAB 1-1 ������Ʈ ���� �ǽ�
1. �⺻ �Խ��� ���  ==> http://localhost:8080/lbl101/egovSampleList.do
=============================================================================================================

- LAB 1-2 Code Generation �ǽ�(CRUD ���α׷� �ڵ� ����)
1. ���  ==> http://localhost:8080/lab102-code-generation/
http://localhost:8080/lab102-code-generation/sample/SampleList.do 
--------------------------------------------------------------------------------------------------------------

- �ҽ��ڵ� �ڵ����� ���丮 ���� �Է�
1. /lab102-code-generation/src/main/resources/egovframework/sqlmap/example,
2. egovframework.example.sample.service.impl
3. egovframework.example.sample.service

4. egovframework.example.sample.service
5.  govframework.example.sample.service.impl

6.  govframework.example.sample.web
7. /lab102-code-generation/src/main/webapp/WEB-INF/jsp/egovframework/example
=============================================================================================================
 
- LAB 1-3 �׽�Ʈ���̽� �ۼ� �� ���� �ǽ� ==> http://localhost:8080/lab102-code-generation/
1. JUnit Test Case  ==> https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev2:tst:test_case
=============================================================================================================

- LAB 1-5 ���ø� ������Ʈ ���� �ǽ�
1. ǥ�������ӿ�ũ ���� Ȩ������  ==> http://localhost:8080/sht_webapp/cmm/main/mainPage.do
=============================================================================================================

1. F12 > ���ķ��̼�( IE10)���� ����
 1) ����
 SyntaxError: ';'�� �ʿ��մϴ�.
 in eval script(http://localhost:8090/tax/CommLib/CommLibValidation.xjs.js)
=============================================================================================================

- SECURE �ڵ� �۾�
1. BIZINFO_20180305_filter2.xls ==> ���ݿ������ �������� ó�� �Ѵٰ� ��
=====================================================================================

������������������� 2018.03.08(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ��������: ��ť�� �ڵ� ���˰�� ��ġ��
1. ��ť���ڵ�(���������) ������ ���� ����� ���� ��ġ�� �̷������ �մϴ�. Ŭ���� ���ϼ��� ��Ʈ�� [��ť���ڵ�_����] ������ 
���ø� BIZINFO_20180305_filter2 �������ϰ� ���������� �����մϴ�. �������ϱ������� �������� ���� �׸��� �������� 1�������� 
������ �ʿ��մϴ�. ���ϸ��� �����ϴ� ���ߴ���ڵ��� ���� �����ϱ�� �����մϴ�.  
==============================================================================================================

- KISA
1. �׸� ���� ��༺ ����
==============================================================================================================

- ���� ����Ű
0. ppicpick_inst_kr.exe ���� �ٿ�ε�==> http://ngwin.com/kr/download
1. ����Ű
 1) ������ ��Ʈ�� ĸó�ϱ�: Shift + Ctrl + 9
 2) ������ �����Ͽ� ĸó�ϱ�: Shift + Ctrl + 0
 3) �ڵ� ��ũ�� ĸó�ϱ�: Shift + Ctrl + 8
 4) ���� ���� ����: Shift + Ctrl + 4
==============================================================================================================

- �ͽ��÷η� �˾�â�� �ּ� ǥ�� ��Ÿ���� �Ǵ� ���ִ� ���
1. IE  > ���� > ����� ���� ����(C) > ���� ���� (��â)
 1) �� ����Ʈ���� �ּ� �Ǵ� ���� ǥ���� ���� â�� ������ ��� > ���(Ŭ��: �ּ�â �� ����[����]) ==> Ȯ��(Ŭ��)
  > ������(Ŭ��: �ּ�â ����[���� ����]) ==> Ȯ��(Ŭ��)
https://m.blog.naver.com/PostView.nhn?blogId=nkkr01&logNo=132710968&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
==============================================================================================================

- ���࿬��ȸ Prj���� Memo(2018.03).zip �ޱ�[IE�� ��밡��]
1. https://new.bizinfo.kfb.or.kr/install/TAMA/Memo(2018.03).zip
==============================================================================================================

- �޴� ��ġ ���� ==> ���� �Ϸ�[����]
//�߸޴� ����
this.openSubPage = function(sMenuId)
{ 
	alert("[/BIZLI_S0113.xfdl] [openSubPage()] ==> [�� �ε�] [T: ����-TOP] [TEST_01]");
	
	// ���õ� Menu Info
	var oObj = {
		ds		: application.gds_menu,	// �޴� dataset 
		id		: sMenuId,				// ���õ� �޴����̵�(=MENU_ID)
		oArgs	: []					// �ѱ� argument
	};
	this.pdiv_subMenu.fn_createSubMenu(oObj);
	// this.pdiv_subMenu.trackPopup(40, 120, 1200, 340, "", false);
	this.pdiv_subMenu.trackPopup(360, 120, 1200, 340, "", false);	// ����[trackPopup �޼ҵ忡�� x��ǥ ����(40 -> 360)], 2018.03.08, by ���¸� 
}
==============================================================================================================

- ���� ȭ�鿡�� ū ȭ������ ����Ǹ� ����� ������ â�� �ȴþ�� ���� ==>  
0. showModal: �������� ������ ChildFrame�� ��� â���� �����ִ� �޼ҵ� 
showModal : function(o, oData, callback)
{
	cf.set_layered(false);					// layered: ���� ������� ����� ���θ� �����ϴ� �Ӽ� // ����[layered = false�� ����]: 2018.03.03, by ���¸�
	cf.set_autosize(true);					// autosize[true]// ����[autosize =true�� ����]: 2018.03.03, by ���¸�
	//cf.set_resizable(oData.bResize);		// resize[false]
	cf.set_resizable(false);				// resize[false]  // ����[resize = false�� ����]: 2018.03.03, by ���¸�
	alert("[/Iject.js] [showModal()] ==> [showModal] [TEST_78] [oData.sUrl]"+ oData.sUrl +"[oData.bAutoSize]"+ oData.bAutoSize +"[oData.bResize]"+ oData.bResize ); 
)
==============================================================================================================

- ���߼������� open �Լ� ���� �ּ� �Է�â ����(���ü��������� �ּ� �Է�â �� ����) ==> ���� �Ϸ�[����]
1. ���� �����Ϳ� ���� ==> �ּ�â�� IE ������� ��
//ȭ�� ����
this.fn_openPage = function(sSelMenuId)
{	
	var gdsMenu  = Iject.$["gds_menu"];
	var sPageId  = gdsMenu.lookup("MENU_ID", sSelMenuId, "PAGE_ID");
	var sPageUrl = gdsMenu.lookup("MENU_ID", sSelMenuId, "PAGE_URL");
	//trace("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [ȭ�� ����] [TEST_01] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
	//alert("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [ȭ�� ����] [TEST_01] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
	
	if(Eco.isEmpty(sPageUrl)) return;
	
	if(application.gds_userInfo.getColumn(0, "USER_ID") == "tester21")  	// �α���ID�� tester21 �̸�[���� �׽�Ʈ��]
	{	 
		trace("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [ȭ�� ����] [TEST_41] [sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );
		alert("[/CommCompSubMenu.xfdl] [fn_openPage()] ==> [ȭ�� ����] [TEST_41] [�α���ID]"+ 
		application.gds_userInfo.getColumn(0, "USER_ID") +"[sPageId]"+ sPageId +"[sPageUrl]"+ sPageUrl );	
	}
	
	Iject.open(this, sSelMenuId+"_"+sPageId, sPageUrl, {});
}

// popup ȣ��
open : function(o, sId, url, oArg, sOption, fnCallback)
{
	sOption = "resizable=true showtitlebar=true showstatusbar=false";  // ����[resizable ó��]: 2018.03,02, by ���¸�
			
	if (sId == "bizbbR0202" || sId == "bizbbR0201")		// �޴����� "�ڷ�� ��" �Ǵ� "�ڷ�� ���/����" �̸� ==> ȭ�� ������ �۰� ó��
	{ 
		//alert("[/Iject.js] [open()] ==> [popup ȣ��] [TEST_71] [sId]"+ sId );    		 
		bSucc = application.open(sId, url, cf, oArg, sOption, 780, 190, 900, 700, pThis);	// ����[Width(1160), Height(840) �߰�]: 2018.02.20, by ���¸�	 
	}
	else	// �� �� �̸�
	{
		//alert("[/Iject.js] [open()] ==> [popup ȣ��] [TEST_72] [sId]"+ sId ); 
		//bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, null, null, pThis);  // modaless ȭ�� �˾�
		bSucc = application.open(sId, url, cf, oArg, sOption, nLeft, nTop, 1160, 840, pThis); 	// ����[Width(1160), Height(840) �߰�]: 2018.02.20, by ���¸�
	}
}
==============================================================================================================

 0. ���� ���ε� ��� ==> /jeus/app/jeus2/bizinfonew/upload/bbs
 - JEUS ���� ��⵿
1. IE -> http://10.1.35.12:29736/webadmin/login ���� �� kfbadmin / jeusadmin �α���
 -> ���� �޴� �� "servers" ���� -> TAX_REQUEST : STOP & START
  1) java. xml ������ �� ������� ��(==> �������� FTP�� �ø� ��(.js�� ��������)
==============================================================================================================

- ���ݿ�� ���� �� �ѵ� ��ȸ(TAB_01)(/BIZTX_S0101.xfdl) ȭ�� ����
1. ���γ��� ����(BIZTX_P0111.xfdl) �˾� ȭ��  Iject.showModal���� Iject.open ���� ����
---------------------------------------------------------------------------------------------------------------

-�ϰ�����(/BIZTX_R0501.xfdl)
1. �ϰ����� �������(/BIZTX_P0511.xfdl)
/***********************************************************************************
* �����ڵ� ��� �˾�
***********************************************************************************/
this.btn_searchSavKndCd_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
	var oData = {
		sId           : "popup_BIZCM_P0125", 		//callback id
		sUrl          : "BIZCM::BIZCM_P0125.xfdl",	//url
		bshowtitlebar : false, 						//title bar
		bAutoSize     : true, 						//autosize
		bResize       : true, 						//resize
		bShowtatusbar : false, 						//statusbar
		sOpenalign    : "center middle",			//align
		oArgs         : []
	};
	
    //Popup
	Iject.showModal(this, oData, function()
	{
		var sJson = this.variant;

		var pThis = this.fobj;

		if ( sJson != "" )
		{
			pThis.edt_sav_knd_cd.set_value(sJson[0]);
		}
	});
}

//Confirm Button Click Event
this.btn_confirm_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{ 
	alert(pThis.ds_map.getColumn(0,"RSP_ERR_COMMENT") + "(" + pThis.ds_map.getColumn(0,"RSP_CD") +")");
	if(pThis.ds_map.getColumn(0,"RSP_CD") == "000") {
		//pThis.close();
		Iject.popClose(pThis, "");
	}
	
	return;
}
==============================================================================================================

������������������� 2018.03.09(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ���ݿ�� ���� �� �ѵ� ��ȸ(TAB_01)(/BIZTX_S0101.xfdl) ȭ�� ���� ==> ���� �Ϸ�[����]
1. ���γ��� ����(BIZTX_P0111.xfdl) �˾� ȭ�� Iject.showModal���� Iject.open ���� ���� 
==============================================================================================================

- Edit ������Ʈ�� ��Ŀ���� ���� �� �ؽ�Ʈ ������ �����ϸ� �ڵ����� ��ü ���� ==> ���� �Ϸ�[����]
// Edit ���� Event �â� 
this.div_search_edt_req_jumin_pre_ontextchanged = function(obj:Edit,  e:nexacro.TextChangedEventInfo)
{  
	//set JuminNo
	this.div_search.edt_req_jumin.set_value(this.div_search.edt_req_jumin_pre.value);  
  
	var oReq_jumin_pre = this.div_search.edt_req_jumin_pre;	 	// �ֹι�ȣ1{Object} 		// �߰�[Object]: 2018.03.09, by ���¸�
	var oReq_jumin_mask = this.div_search.edt_req_jumin_mask;	// �ֹι�ȣ2{Object}		// �߰�[Object]: 2018.03.09, by ���¸�
	//trace("[/BIZTX_S0101.xfdl] [div_search_edt_req_jumin_pre_ontextchanged()] ==> [TEST_03] [�ֹι�ȣ1]"+ oReq_jumin_pre +"[�ֹι�ȣ2]"+ oReq_jumin_mask );
	
	this.gfn_setAutoSelectEdit(oReq_jumin_pre, oReq_jumin_mask);		// �ֹι�ȣ ��ü ����, ��Ŀ�� ó�� �Լ� ȣ��	// �߰�[Object]: 2018.03.09, by ���¸�
}
--------------------------------------------------------------------------------------------------------------

/**
 * @class �ֹι�ȣ ��ü ����, ��Ŀ�� ó��	 ==> // �߰�[Object]: 2018.03.09, by ���¸� 
 * @param oReq_jumin_pre{Object} : �ֹι�ȣ1
 * @param oReq_jumin_mask{Object} : �ֹι�ȣ2 
 * @return  
 */  
this.gfn_setAutoSelectEdit = function(oReq_jumin_pre, oReq_jumin_mask)
{  
	//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [TEST_01] [�ֹι�ȣ1]"+ oReq_jumin_pre +"[�ֹι�ȣ2]"+ oReq_jumin_mask );
 
 	if( oReq_jumin_pre.value.length == 6 )  // �ֹι�ȣ1 Edit�� ���̰� 6�ڸ� �̸�
	{ 
		//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_02] [oReq_jumin_pre.value.length]"+ oReq_jumin_pre.value.length );
	 
 		if( !nexacro._isNull(oReq_jumin_mask.value ))  // �ֹι�ȣ2 Edit�� �����ϸ� ==> �� ��ü ��Ŀ�� ó��
		{
			//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_60] [�ֹι�ȣ2 Edit�� �����ϸ� ===> �� ��ü ��Ŀ�� ó��]");
			oReq_jumin_mask.set_autoselect(true);	// Edit ������Ʈ�� ��Ŀ���� ���� �� �ڵ����� ��ü ������ ���� ���θ� ����
			oReq_jumin_mask.setFocus(); 	// �ֹι�ȣ2 Edit ��Ŀ�� ó�� 
		}
		else
		{
			//trace("[/CommLibUtil.xjs] [gfn_setAutoSelectEdit()] ==> [ontextchanged] [TEST_70] [�ֹι�ȣ2 Edit�� ���� ���ϸ�]");
			oReq_jumin_mask.setFocus(); 	// �ֹι�ȣ2 Edit ��Ŀ�� ó�� 
		}
	}  
} 
==============================================================================================================

-���ݿ�� ��ȸ ���� ó��  ==> ���� �Ϸ�[����]
this.BIZTX_S0102_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{
	//alert("[/BIZTX_S0102.xfdl] [BIZTX_S0103_onload()] ==> [�ε�] [TEST_01]" );
  
	// ���ݿ�� ��ȸ ���� ó�� ==> // �߰�: 2018.03.09, by ���¸�  
	this.fn_setTaxSearhCond(); 
}

this.BIZTX_S0102_onactivate = function(obj:Form, e:nexacro.ActivateEventInfo)
{
	//alert("[/BIZTX_S0102.xfdl] [BIZTX_S0102_onactivate()] ==> [TEST_01]" );
	
	// ���ݿ�� ��ȸ ���� ó��
	this.fn_setTaxSearhCond(); 
}

// ���ݿ�� ��ȸ ���� ó�� �â�
this.fn_setTaxSearhCond = function()
{  
	//alert("[/BIZTX_S0102.xfdl] [fn_setTaxSearhCond()] ==> [���ݿ�� ��ȸ ���� ó��] [TEST_01]" );
	
	if( !nexacro._isNull(application.gfv_search_tp_cd))  this.div_search.cmb_search_tp_cd.set_value(application.gfv_search_tp_cd);		// ��ȸ���� gfv ����
	if( !nexacro._isNull(application.gfv_realIdNo))  this.div_search.edt_req_jumin.set_value(application.gfv_realIdNo);					// �ֹι�ȣ gfv ����
	if( !nexacro._isNull(application.gfv_reqJuminPre))  this.div_search.edt_req_jumin_pre.set_value(application.gfv_reqJuminPre);		// �ֹι�ȣ1 gfv ����
	if( !nexacro._isNull(application.gfv_reqJuminMask))  this.div_search.edt_req_jumin_mask.set_value(application.gfv_reqJuminMask);	// �ֹι�ȣ2 gfv ����
	if( !nexacro._isNull(application.gfv_sav_knd_cd))  this.div_search.edt_sav_knd_cd.set_value(application.gfv_sav_knd_cd);			// ���������ڵ� gfv ����
	if( !nexacro._isNull(application.gfv_search_tp_cu))  this.div_search.cmb_search_tp_cu.set_value(application.gfv_search_tp_cu);		// ��ȸ�����ڵ� gfv ����
	if( !nexacro._isNull(application.gfv_search_tp))  this.div_search.edt_search_tp_cu.set_value(application.gfv_search_tp);			// ��ȸ���� gfv ���� 
	//alert("[/BIZTX_S0101.xfdl] [fn_setTaxSearhCond()] ==> [�ε�] [TEST_91] [��ȸ���� gfv]"+ application.gfv_search_tp_cd +"[�ֹι�ȣ gfv]"+ 
	application.gfv_realIdNo +"[�ֹι�ȣ1 gfv]"+ application.gfv_reqJuminPre +"[�ֹι�ȣ2 gfv]"+ application.gfv_reqJuminMask 
	//	+"[���������ڵ� gfv]"+ application.gfv_sav_knd_cd +"[��ȸ�����ڵ� gfv]"+ application.gfv_search_tp_cu +"[��ȸ���� gfv]"+ application.gfv_search_tp );
}
==============================================================================================================

- Edit ����� 2��° Edit�� �����ϸ� ��ü ����
// Edit ���� Event �â�
this.div_search_edt_req_jumin_pre_ontextchanged = function(obj:Edit,  e:nexacro.TextChangedEventInfo)
{
	trace("[/eDIT.xfdl] [div_search_edt_req_jumin_pre_ontextchanged()] ==> [Edit ���� Event] [TEST_01] =====> @@@@" ); 
	
	//set JuminNo
	this.div_search.edt_req_jumin.set_value(this.div_search.edt_req_jumin_pre.value);
	//trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [Edit ���� Event] [TEST_02] [div_search.edt_req_jumin_pre.value]"+ this.div_search.edt_req_jumin_pre.value ); 
  
	if( obj.value.length == 6 )   // �ֹι�ȣ1�� ���̰� 6�ڸ� �̸�
	{
		trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [Edit ���� Event] [TEST_41] [�ֹι�ȣ1�� ����]"+ obj.value.length 
		+"[div_search.edt_req_jumin_pre.value]"+ this.div_search.edt_req_jumin_pre.value ); 
 
		if (!nexacro._isNull(this.div_search.edt_req_jumin_mask.value)) 	// �ֹι�ȣ2�� ���� �����ϸ� ==> �� ��ü�� ��Ŀ�� ó�� 
		{
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [�ֹι�ȣ2�� ���� �����ϸ�] [TEST_61] [�ֹι�ȣ2]"+ this.div_search.edt_req_jumin_mask.value ); 
			this.div_search.edt_req_jumin_mask.set_autoselect(true);		// Edit ������Ʈ�� ��Ŀ���� ���� �� �ڵ����� ��ü ������ ���� ���θ� ����
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [�ֹι�ȣ2�� ���� �����ϸ�] [TEST_62] [�ֹι�ȣ2]"+ this.div_search.edt_req_jumin_mask.autoselect );
			this.div_search.edt_req_jumin_mask.setFocus();		 // �ֹι�ȣ2 Focusó�� 
		}
		else
		{
			trace("[/shu_kosyou_sagyo.xfdl] [fn_search()] ==> [�ֹι�ȣ2�� ���� �����ϸ�] [TEST_60] [�ֹι�ȣ2]"+ this.div_search.edt_req_jumin_mask.value );
			this.div_search.edt_req_jumin_mask.setFocus();		 // �ֹι�ȣ2 Focusó�� 
		}  
	}
} 
==============================================================================================================

������������������� 2018.03.10(��) �۾� �������������������
---> 07:00 ~ 19:00 ==> �ָ��ٹ�, ��ü ���(PL ������ ���Դٰ� 14�� ��� �ִٰ� ���)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- �Խ��� ����
1. ���� ���� ���� ==> ���� �Ϸ�[����]
==============================================================================================================

- ��ť�� �ڵ�(����� ����) ���� ==> ���� �Ϸ�[����]
 1) SPARROW-A Semantic-based Static Code Analysis Tool ==> admin1, / b1234567!,
http://10.1.19.125:18080/login.spw;jsessionid=90C4F58E005BEC9E9D6261CD642063A6?nextUrl=http%3A%2F%2F10.1.19.125%3A18080%2Freport.spw%3FdefectId%3D97.159.65
 2) ���� ����
/BiztxS0101Controller.java, /BiztxS0102Controller.java, /BiztxS0103Controller.java, /BiztxS0104Controller.java, /BiztxS0105Controller.java 
/BizUtil.java
--------------------------------------------------------------------------------------------------------------

- /BiztxS0101Controller.java ���Ͽ���
public NexacroResult selectTaxDetailHistManageList(@ParamDataSet(name = "ds_search", required = false) Map map) throws Exception {
	// reqMap.put("REAL_NM_NO", 				nullCheck(map.get("REAL_NM_NO"))			); //CompUtil.getValue(context, "txtTopIdNum"));	//�Ǹ��ȣ 
  reqMap.put("REAL_NM_NO", 				BizUtil.nullCheck(map.get("REAL_NM_NO"))			); //CompUtil.getValue(context, "txtTopIdNum"));	//�Ǹ��ȣ    ===> @@@ 
	if(map.get("REAL_NM_NO") != null) 	reqMap.put("REAL_NM_NO", map.get("REAL_NM_NO").toString()); else reqMap.put("REAL_NM_NO", ""); 	// �Ǹ��ȣ ==>
	// ����[UNCHECKED_NULL ����]: 2018.03.010, by ���¸�   ===> TEST�� ó����
} 

- /BizUtil.java ���Ͽ���
public static HashMap<String, String> makeEaiCommomData(HashMap<String, String> targetMap, Map sourceMap
	,String docCd,String bizCd, String fnIttCd, String InUserYn)
{
	if(sourceMap.get("USER_ID") != null) 	targetMap.put("USER_ID", sourceMap.get("USER_ID").toString()); else targetMap.put("USER_ID", ""); 			
	// �����ID ==> 
	// ����[UNCHECKED_NULL ����]: 2018.03.10, by ���¸�   
	if(sourceMap.get("USER_NM") != null) 	targetMap.put("USER_NM", sourceMap.get("USER_NM").toString()); else targetMap.put("USER_NM", ""); 	
	//����ڸ� ==> 
	// ����[UNCHECKED_NULL ����]: 2018.03.10, by ���¸�
	/*targetMap.put("USER_ID"        , 	nullCheck(sourceMap.get("USER_ID"))				); 	//sourceMap.getEmp_no());
}

// sController : "biztxS0101SelectTaxDetailHistManageList.do",  
==============================================================================================================
 
- �˾� �м�
1. ��޸��� ==> open, ��� ==> showModal
- /TI10301.xfdl ���Ͽ��� @@@
// B/L ��� ��ư Ŭ�� Event �â�
this.btnBLReg_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{   
	trace("[/TI10301.xfdl] [btnBLReg_onclick()] ==> [B/L ��� ��ư Ŭ�� Event] [TEST_01]" );  
	
	var nCheckRowCnt = 0; 		var P_QNANO = 333;
	this.dsET_LIST_CHK.clearData();
	
	if(this.dsET_LIST.getRowCount() > 0)
	{     
		for (var i=0; i < this.dsET_LIST.getRowCount(); i++) 
		{	 
			if(this.dsET_LIST.getColumn(i, "CHK") == 1)
			{
				nCheckRowCnt = nCheckRowCnt + 1 ;
				this.dsET_LIST_CHK.addRow();
				this.dsET_LIST_CHK.copyRow(this.dsET_LIST_CHK.getRowCount()-1,this.dsET_LIST,i);		// dsET_LIST_CHK�� dsET_LIST���� ����					
			}
		}
	}
 
	var params = {		 // popup parameter
		pDs: this.dsET_LIST_CHK	// dsET_LIST_CHK Ds
		, P_MODE:"C"						// ���� ���(S:��ȸ, C:���, M:����, D:����) �Ķ����
		, P_QNANO: P_QNANO		//  QnA NO.
	}

	//var sOption = "titletext=, popupType=modal, resizable=false";	 // Modal �˾�(showModal ó��) 
	var sOption = "titletext=, popupType=modeless, resizable=false";   // Modeless �˾�(open ó��) 
	trace("[/TI10301.xfdl] [btnBLReg_onclick()] ==> [(B/L ��� ��ư Ŭ�� Event] [TEST_41] [params]"+ params +"[sOption]"+ sOption ); 
	
	this.gfn_openPopup("modeless_popup", "TI::TI10301_Popup.xfdl", params, sOption, "fn_openpopCallback");   // Modeless �˾�(open ó��)
}
--------------------------------------------------------------------------------------------------------------

// PopUp CallBack  Event �â�
this.fn_openpopCallback = function(id, objRtn)
{    
	trace("[/TI10301.xfdl] [fn_openpopCallback()] ==> [�˾� �ݹ�] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
 
	if(objRtn) 	// Pop up���� ���� ���� �̸�
	{ 
		this.fn_search(); 		// ��ȸ �Լ� ȣ��
	}
 
	switch(id) 
	{
		case "modal_popup":  	// id�� modal_popup �̸�
			break;
			
		case "modeless_popup": 	// id�� modeless_popup �̸�
			break; 
	}
}
--------------------------------------------------------------------------------------------------------------

- /TI10301_Popup.xfdl ���Ͽ��� ��â ���� @@@
this.pDs  = "";			// p Ds
this.v_Qnano  = "";			// Qna��ȣ
this.v_Pmode  = "";			// mode
// �� �ε� �â�
this.fn_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{	
	this.pDs = this.gfn_getParameter("pDs");	
	this.v_Qnano = this.gfn_getParameter("P_QNANO");	// QnA NO.
	this.v_Pmode = this.gfn_getParameter("P_MODE");		// ���� ���(S:��ȸ, M:����, S:��ȸ) 
}
------------------------------------------------------------------------

// ���� �â�
this.btnSave_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{  
	var strSvcId = "TI10301_PopupRfcSave";
	var strSvcUrl = "/TI/selectTiBlSaveA.do";
	var inData = "dsIMS_ZTITBLK=dsEXS_ZTITBLK ��=dsEXT_ZTITBLP";	 	// inData
	var outData = "dsET_RETURN=dsET_RETURN" ; 	// outData:
	var strArg = "IP_MODE=C";  					// IP_MODE(����: 'C', ����: 'M', ����: 'D')
	var callBackFnc = "fn_callback";
  
	this.gfn_transaction(strSvcId, strSvcUrl, inData, outData, strArg, callBackFnc, svcType, isAsync, bWait);
} 
------------------------------------------------------------------------

// ���� �� �ݹ� �â�
this.fn_callback = function(sTrId, nErrorCode, sErrorMsg)
{ 
	var strMessage = ""; 
 
	switch(sTrId)
	{ 
		case "TI10301_PopupRfcSave":  
			//this.gfn_showMsgBox("0014", "fn_msgCallback", "");   	// alert msg ==> 0014: ������ �Ϸ�Ǿ����ϴ�.   
			this.gfn_closePopup("S"); 	 //  â �ݱ�
			break;
	}
} 
--------------------------------------------------------------------------------------------------------------

- /HoilForm.js ���Ͽ��� @@@
/**
 * @class ModalSync �˾� �ݰ� Global Valiable(GV_POPRTN, GDSL_M_POPUP)�� �� ���� 
 */
LIB_FORM.gfn_closePopup = function(rtnval) 
{
    var strPopupID = application.getActiveForm().getOwnerFrame().name;
 
	if( this._gfn_isDataset2(rtnval) ) {
		var rtnDataset = new Dataset();
		rtnDataset.assign(rtnval);
		rtnval = rtnDataset;
	}		
	
	this._gfn_setVariable(strPopupID+"_POPUP_RETURN_VALUE_",     rtnval);
	this._gfn_setVariable(strPopupID+"_POPUP_RETURN_VALUE_ARGC", 1);

	this.close();
};

/**
 * @class �˾�â ȣ�� (���/��޸��� ����) 
 */
LIB_FORM.gfn_openPopup = function (sPopupId, sUrl, oArg, sOption, sPopupCallback, isMsgBox)
{ 
	trace("[/HoilForm.js] [gfn_openPopup()] ==> [�˾�â ȣ��] [TEST_01] [sPopupId]"+ sPopupId +"[sUrl]"+ sUrl +"[sOption]"+ sOption 
		+"[sPopupCallback]"+ sPopupCallback +"[isMsgBox]"+ isMsgBox ); 
 
    if (popupType == "modeless") 		// Modeless �˾�
    { 
		application.open(sPopupId, sUrl, application.mainframe, oArg, sOpenStyle.trim(), nLoginLeft, nLoginTop, nWidth, nHeight-20, this);		// open ó��
	} 
    else	  // Modal, showModalWindow, ModalSync �˾�
    {  
		if (popupType == "modal") 		// Modal �˾�
		{			
			// Modal(html5�⺻, cllback���θ� ���� ���� �� ����)	
			newChild.showModal(sPopupId, objParentFrame, oArg, this, ""); 	// showModal ó��
		}
	}
};
==============================================================================================================

- �Ｚ���ڼ��񽺼��� �����޴������� �湮(13��, ���� �Ｚ����BD 10��)
1. ������ ��Ʈ5 ���� �ʸ� ���� ==> ���� ���(����� CS����)�� ���� �ʸ�(�� ��) ��ü ����(���� ����)
==============================================================================================================
 
������������������� 2018.03.11(��) �۾� �������������������
---> 07:00 ~ 19:00 ==>  

�� �౸
10:00 ���(�ǰ�)
10:30 �߽�
11:10 �����(������): ����
11:20 �븲��(6511�� ����, ����)
12:10 ����� ������ ���� 
12:30 ���ǵ�����(1��, ����)
13:00 ���ǵ�����(3��)
13:10 ����
13:20 ����� ������ ���� 
14:00 �븲��(6511�� ����, ����)
14:10 �߽�(ġ�����: ������ �Ĵ�): ���� 
14:10 ����
14:20 ���θ� ����(����)
15:10 �Ͱ�
15:50 �����(������)
16:08 �븲��� ==> ����������ȸ��� ���� ��ȸ ���� ��
		==> ������������ ��ȭ --> 6�� ~ 8��: ��ô������� �����
16:50 �Ͱ�
17:30 �����(������)
18:00 ��ô���(��ô��ī�̵� �� �౸�� ==> ���� �ܵ�, ����Ʈ �ü� �� �Ǿ� ����) ����
18:10 �ֻ�� ��δ� ����(������ȸ��, �븲3�� ����ȸ)
16:30 ����(������ȸ��, ��︲FC����: ��� ��������[����]: ���� ������ ����) 
		==> 2���� ��: ������� ���� �н��� ���Ƽ� ������
20:00 ����
20:10 ��ô��� ���(������) ==> ������ �ʹ� ������ �޷��� �ٸ��� �㰡 ��
20:40 �Ͱ� 
21:00 ����
23:00 ��ħ
==============================================================================================================
 
������������������� 2018.03.12(��) �۾� �������������������
---> 07:00 ~ 22:30 ==>  

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- �˾� ����
- /BIZTX_S0101.xfdl ���Ͽ���[���ݿ�� ���� �� �ѵ� ��ȸ(TAB_01)]
// ���γ��� ���� ��ư Ŭ�� Event  �â�
this.btn_register_manage_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{  
	var	oArgs  = { arg1 	: 'new',		// ����(Args �߰�]: 2018.03.08, by ���¸�					  
					  arg21 : ltmHsngSavQlfcCd, 
					 P_MODE : 'M',		// ���� ���(S:��ȸ, C:���, M:����, D:����) �Ķ����	// TEST @@@ ===>
					 P_QNANO : '12345'	// Qna��ȣ	// TEST @@@ ===>
	
	var nFormWidth = 671;		// �˾�â ����
	var nFormHeight = 746;		// �˾�â ����
	
	//�˾�
	//Iject.open(this, "BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", oArgs);	// ���γ��� ���� �˾� ==> ����(Iject.open �߰�]: 2018.03.08, by ���¸� 
	
	// var sOption = "titletext=, popupType=modal, resizable=false";	// modal ����
	var sOption = "titletext=, popupType=modeless, resizable=false";   	// modeless ���� 
	//alert("[/BIZTX_S0101.xfdl] [btn_register_manage_onclick()] ==> [���γ��� ���� ��ư Ŭ�� Event] [TEST_41] [nFormWidth]"+ 
	nFormWidth +"[nFormHeight]"+ nFormHeight +"[sOption]"+ sOption +"[oArgs]"+ oArgs );  
	
	// this.gfn_openModeless("BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", nFormWidth, nFormHeight, sOption, oArgs);	
	// �˾�â ȣ��(��޸���: Callback ����) 
	
	this.gfn_openPopup("BIZTX_P0111", "BIZTX::BIZTX_P0111.xfdl", oArgs, sOption, "fn_openpopCallback");   	// �˾�â ȣ��(���, ��޸���)}
}

this.fn_openpopCallback = function(id, objRtn)
{    
	trace("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [�˾� �ݹ�] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
	alert("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [�˾� �ݹ�] [TEST_01] [id]"+ id +"[objRtn]"+ objRtn ); 
 
	if(objRtn)  // �˾� �ݹ� ��� �����̸�
	{ 
		trace("[/BIZTX_S0101.xfdl] [fn_openpopCallback()] ==> [�˾� �ݹ� ��� �����̸�] [TEST_70] [id]"+ id +"[objRtn]"+ objRtn ); 
		
		// this.fn_search(); 		// ��ȸ �Լ� ȣ��
	}
	
	switch(id)
	{
		case "modal_popup":  
			break;
			
		case "modeless_popup": 
			break;
			
		default:
			break;
	}
}
==============================================================================================================

- ���� ���ε� �뷮 ����(100M�� 20M�� ���� ==> ���� �Ϸ�[����]
0. ���� ���ε� ��� ==> /jeus/app/jeus2/bizinfonew/upload/bbs
0. ���� ���ε� ��� ==> C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\bizinfo_branch\WebContent\upload
1. ���� ���ε�(/BIZCM_P0103.xfdl) ���Ͽ��� 
this.fileConfig = { 
	//maxSize       : "100MB",	// ���� ũ��['':�ڷ��, ��������, ���ֹ��� ����, RA':�⺻���,'AE':�����Ǹ��ȣ, 'LI':�α���, 'FI':����]  	
	// ����(100MB�� ����]: 2018.03,05, by ���¸�
	maxSize       : "20MB",	// ���� ũ��['':�ڷ��, ��������, ���ֹ��� ����, RA':�⺻���,'AE':�����Ǹ��ȣ, 'LI':�α���, 'FI':����]  	
	// ����(20MB�� ����]: 2018.03,12, by ���¸� 
}; 
==============================================================================================================

- DB ���̺� DROP
17:30 ���࿬��ȸ ���(����� ����)
17:50 ����(��ġ�: �����н�)
18:10 ���࿬��ȸ ����
18:50 �ֻ�� ������ ��ȭ�ͼ� ���� ��ٰ� ��(���� ����� ���� ���� ��� ���� ��)
20:00 �ֻ�� ������ 15�� ���ڸ� ��(�ڰ��� �븮 �ڸ�) �ͼ� � DB ���� ���� ���̺� DROP ��Ű�� ����ħ
21:00 �ֻ�� ������ ���� ���� ���̺� ���谡 �̻��ϴٰ� �ٽ� ���� ����
23:00  ���� ���� ���̺� ���� �Ϸ� �Ǳ� ������ �ù� � �ߴ� ����
==============================================================================================================
  
������������������� 2018.03.13(ȭ) �۾� �������������������
---> 07:00 ~ 22:10 ==> �繫�� Ŀ�� �� ����(��а� �� ��� ���� �� ����)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- �˾� ����(Tab���� �˾� �ݹ� ó�� �ȵ�: �������Ʈ�� ����]
==============================================================================================================

-  IE ���� ���� �� â�ݱ� ����(�������Ʈ�� ����]
1. [JTM] IE ���� ���� �� â�ݱ� ���� ��� �������Ʈ���� �뺸 ���� --> ���ϰ� ����(whomi352@naver.com)���� ���Ϸ� ����
==============================================================================================================

- IE(HTML5) ���������� ���� ���� �� alert ����(�������Ʈ�� ����]
==============================================================================================================
 
������������������� 2018.03.14(��) �۾� �������������������
---> 07:00 ~ 22:30 ==> ������ ������ ǳ���� �Ҹ��� �ò����� �ؼ� ���ϰ� ����ħ(17��: �����)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- IE ������� ���� ���� �� �α׾ƿ� Ŭ���� undefined ���� �߻� ==> ���� �Ϸ�[����]
1. application_onerror �Լ� �߰� ==> �������� ���� ���� �̸�[e.statuscode == 499]
- /biz.xadl ���Ͽ���
// application ���� ó�� �â�
this.application_onerror = function(obj:Application, e:nexacro.ErrorEventInfo) 
{ 
	//alert("[/biz.xadl] [application_onerror()] ==> [TEST_01] [e.errorcode]"+ e.errorcode +"[e.statuscode]"+ e.statuscode 
	+"[e.errormsg]]"+ e.errormsg +"[e.errortype]]"+ e.errortype +"[e.locationuri]]"+ e.locationuri );
  
	// http �Ǵ� socket �����ڵ� 404�� ���н�
	if (e.errorcode == -2147418085) { 
		if (e.statuscode == 10060) { 
			//"�������� ����� ��Ȱ���� �ʽ��ϴ�."  
			application.alert(e.statuscode +"\n"+"�������� ����� ��Ȱ���� �ʽ��ϴ�."+"\n"+ e.errormsg);
		} else if (e.statuscode == 0) {  
			application.alert(e.statuscode +"\n"+"timeout."+"\n"+ e.errormsg); 
		} else if (e.statuscode == 404) {  	//404 ������ ó�� ��� 
			application.alert(e.statuscode +"\n"+"Page Not Found"+"\n"+ e.errormsg);
		} else if (e.statuscode == 408) {  //408 Request Timeout 
			application.alert(e.statuscode +"\n"+"Request Timeout"+"\n"+ e.errormsg); 
		} else if (e.statuscode == 500) { 
			application.alert(e.statuscode +"\n"+"Internal Server Error"+"\n"+ e.errormsg); 
		} else if (e.statuscode == 503) {  	//"System is unavailable. Please reconnect after a while." 
			application.alert(e.statuscode+"\n"+"The service is unavailable" + "\n"+e.errormsg); 
		} else if (e.statuscode == 12029) {  //"Has failed to communicate with the current system. Please use it after a while.." 
			application.alert(e.statuscode+"\n"+"A connection with the server could not be established" + "\n"+e.errormsg); 
		} else { 
			alert(e.statuscode + ":" + e.errormsg); 
		}
	}
	if (e.statuscode == 499) { 	// �������� ���� ���� �̸�
		application.alert("[499] �������� ������ �߻��߽��ϴ�. �ý��� �����ڿ��� �����ϼ���.");
		//application.alert(e.statuscode +"\n"+"Commnication Error"+"\n"+ e.errormsg);
	}
}
--------------------------------------------------------------------------------------------------------------

- //Html5.js ���Ͽ���
logout : function(o)
{ 
	//alert("[/Html5.js] [logout()] ==> [logout ó��] [TEST_01] [gds_userInfo.saveXML()]"+ application.gds_userInfo.saveXML() );
 
	var oDatas = {
		svcid       : "search",
		sController : "bizliS0102Logout.do",
		inds        : ["gds_userInfo=ds_search"],
		outds       : ["gds_userInfo=ds_list"],
		args        : [],
		bAsync      : true,
		nDataType   : 0,
		bCompress   : false
	};
	
	Iject.transaction(o, oDatas, function() {
		//alert("[/Html5.js] [logout()] ==> [logout ó��] [TEST_70] [this.errorcode]"+ this.errorcode ); 
	 
		if (this.errorcode < 0)   // ���� ���� �̸� ==> �������� ���� �ڵ带 ����
		{ 
			//Iject.alert(this.errorMsg);	 // ����[Iject �ּ� ó��]: 2018.03.14, by ���¸�  
			return;
		}
		
		window.top.location.reload(true);
	});
}, 
==============================================================================================================

- �˾��ϴ� �ڽ�â width, height ���ϱ�
- /HoilForm.js ���Ͽ��� Ȯ�� �Ұ�
LIB_FORM.gfn_openModeless = function(sPopupId, sUrl, nFormWidth, nFormHeight, sOptions, oArgs)
{ 
	var objForm = this.getOwnerFrame().form;   // getOwnerFrame: ���� VFrameSet�� �����ϰ� �ִ� �������� �������� �޼ҵ� 
		trace("[/HoilForm.js] [gfn_openModeless()] ==> [�˾�â ȣ��_00] [TEST_02] [application.popupframes.length]"+ application.popupframes.length ); 
		// application.popupframes.length��  0���� ������  ==> ���� @@@
		
	for(var i=0; i < application.popupframes.length; i++)  // 
	{	     
		// popupform = application.popupframes[i].form;
		trace("[/HoilForm.js] [gfn_openModeless()] ==> [�� �ε�] [TEST_990] [i_��°]"+ i +"[popupform.name]"+ application.popupframes[i].form.name
		+"[getOwnerFrame.width]"+ application.popupframes[i].form.getOwnerFrame().width +"[getOwnerFrame.height]"+ 
		application.popupframes[i].form.getOwnerFrame().height ); 
	}
}

- /testPopUp.xfdl ���Ͽ���
this.fn_onload = function(obj:Form, e:nexacro.LoadEventInfo)
{ 
	trace("[/testPopUp.xfdl] [fn_onload()] ==> [�� �ε�] [TEST_01] [application.popupframes.length]"+ application.popupframes.length ); 
	// application.popupframes.length�� 1�� ������   ==> ���� @@@
 
	for(var i=0; i < application.popupframes.length; i++)
	{	 
		//popupform = application.popupframes[i].form;         
		trace("[/testPopUp.xfdl] [gfn_openModeless()] ==> [�� �ε�] [TEST_20] [i_��°]"+ i +"[popupform.name]"+ application.popupframes[i].form.name 
		+"[getOwnerFrame.width]"+ application.popupframes[i].form.getOwnerFrame().width +"[getOwnerFrame.height]"+ 
		application.popupframes[i].form.getOwnerFrame().height ); 
	}	 
	
	// this.gfn_initForm(obj);	 
}
==============================================================================================================

- IE(HTML5) ���������� ���� ���� �� alert ����(�������Ʈ�� ����]	 ==> ���� �Ϸ�[����]
1. �ҽ� ����
==============================================================================================================

 - ���� ó��
1. \\211.216.2.161\���࿬��ȸ\100. PM-�������\140. CO-����\��ü�׽�Ʈ���\�ֻ�� ����
 ==============================================================================================================
 
- DB ������ ��й�ȣ ����
1. kfbdev.13
==============================================================================================================
 
������������������� 2018.03.15(��) �۾� �������������������
--> 07:00 ~ 22:30 ==> ������ ���� ����(9��): ���ü�� ���� �۾�: �������� �����ϰ� ö����

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ���ݿ�� ���� �� �ѵ� ��ȸ(TAB_01)(/BIZTX_S0101.xfdl)���� �ֹι�ȣ 13�ڸ� alert ���� ==> ���� �Ϸ�[����]
==> ���������ڵ�: 10, 41,  ��ȸ����: ���࿬��ȸ �ǿ���,
this.fn_search = function() 
{
	var idNum			=	""; 
	var idNum2			=	"";			// �߰�[�ֹι�ȣ2]: 2018.03.15, by ���¸� 
	var idNumJumin_pre_view  =	"";		// �߰�[�ֹι�ȣ pre view]: 2018.03.15, by ���¸�
	
	if(this.div_search.edt_req_jumin_pre.visible) 	// �ֹι�ȣ1�� visible �̸�  ==> // ����[�ֹι�ȣ1 ó��]: 2018.03.15, by ���¸�  
	{ 
		idNumJumin_pre_view  =	"1";	// �ֹι�ȣ pre view
	}
	
	if(!this.gfn_isNull(this.div_search.edt_req_jumin_pre.value)) 	// �ֹι�ȣ1�� �����ϸ�  ==> // ����[�ֹι�ȣ1 ó��]: 2018.03.15, by ���¸�  
	{ 
		idNum			=	this.div_search.edt_req_jumin_pre.value;	// �ֹι�ȣ1
  
		if(!this.gfn_isNull(this.div_search.edt_req_jumin_mask.value))	// �ֹι�ȣ2�� �����ϸ�
		{
			idNum2	 =	this.div_search.edt_req_jumin_mask.value;		// �ֹι�ȣ2
		} 
	} 
	else 
	{ 
		if(!this.gfn_isNull(this.div_search.edt_req_jumin.value)) 	// �ֹι�ȣ�� �����ϸ�
		{ 
			idNum		=	this.div_search.edt_req_jumin.value;	// �ֹι�ȣ
		} else {
			idNum		=	"";
		}
	}
	
	var searchTpCdNm	=	this.div_search.cmb_search_tp_cd.value; 	// ��ȸ���� 
	
	if(idNumJumin_pre_view.length > 0)	// �ֹι�ȣ Edit�� 2�� �̸�   ==> // ����[�ֹι�ȣ1 ó��]: 2018.03.15, by ���¸�  
	{ 
		if(idNum.length != 6)	// �ֹι�ȣ1�� 6�ڸ��� �ƴϸ�
		{  
			if(searchTpCdNm == 2) 	// ����ڵ�Ϲ�ȣ �̸�
			{
				alert("����ڵ�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			}
			else if(searchTpCdNm == 3) 	// ���ε�Ϲ�ȣ �̸�
			{
				alert("���ε�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			}
			else	// �ֹι�ȣ �̸�
			{
				alert("�ֹε�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			} 
			this.div_search.edt_req_jumin_pre.setFocus();
			return;
		}
 
		if(idNum2.length != 7)	// �ֹι�ȣ2�� 7�ڸ��� �ƴϸ�
		{   
			if(searchTpCdNm == 2) 	// ����ڵ�Ϲ�ȣ �̸�
			{
				alert("����ڵ�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			}
			else if(searchTpCdNm == 3) 	// ���ε�Ϲ�ȣ �̸�
			{
				alert("���ε�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			}
			else	// �ֹι�ȣ �̸�
			{
				alert("�ֹε�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			} 
			this.div_search.edt_req_jumin_mask.setFocus();
			return;
		}
	}
	else	// �ֹι�ȣ Edit�� 1��(edt_req_jumin) �̸� 
	{
		if(idNum.length != 13){
			alert("�ֹε�Ϲ�ȣ�� 13�ڸ��� �Է��ϼ���");
			this.div_search.edt_req_jumin.setFocus();
			return;
		}
	}  
	
	var strMsg = "";
  
	if(idNumJumin_pre_view.length > 0)	// �ֹι�ȣ Edit�� 2�� �̸�   ==> // ����[�ֹι�ȣ1 ó��]: 2018.03.15, by ���¸�  
	{ 
		strMsg = "�Է��Ͻ� ��ȸ��û �ĺ���ȣ�� [" + idNum +" - "+ idNum2 +"] �Դϴ�.\n ��� �����Ͻðڽ��ϱ�?";
		idNum = idNum + idNum2;
		this.div_search.edt_req_jumin.set_value(idNum + idNum2);	// �ֹι�ȣ �� ����
		realIdNo = this.div_search.edt_req_jumin.value;	// �ֹι�ȣ
	} else {
		strMsg = "�Է��Ͻ� ��ȸ��û �ĺ���ȣ�� [" + idNum +"] �Դϴ�.\n ��� �����Ͻðڽ��ϱ�?";
		this.div_search.edt_req_jumin.set_value(idNum);	// �ֹι�ȣ �� ����
		realIdNo = this.div_search.edt_req_jumin.value;	// �ֹι�ȣ
	}
	// alert("[/BIZTX_S0101.xfdl] [fn_search()] ==> [��ȸ] [TEST_51] [��ȸ����]"+ searchTpCdNm +"[�ֹι�ȣ_Re]"+ realIdNo 
		+"[�ֹι�ȣ pre]"+ idNumJumin_pre_view +"[idNumJumin_pre_view_L]"+ idNumJumin_pre_view.length  +"[�ֹι�ȣ_1]"+ idNum 
		+"[�ֹι�ȣ_1_�ڸ���]"+ idNum.length +"[�ֹι�ȣ_2]"+ idNum2 +"[�ֹι�ȣ_2_�ڸ���]"+ idNum2.length );
 }
--------------------------------------------------------------------------------------------------------------

// ��ȸ���� �޺� ���� Event ó�� �â� ==> // �߰�: 2018.03.15, by ���¸�
this.div_search_cmb_search_tp_cd_onitemchanged = function(obj:Combo, e:nexacro.CanCharEventInfo)
{
	//alert("[/BIZTX_S0101.xfdl] [div_search_cmb_search_tp_cd_onitemchanged()] ==> [��ȸ] [TEST_01]" );
	
	var searchTpCdNm = this.div_search.cmb_search_tp_cd.value; // ��ȸ����
 
	if(searchTpCdNm == 1){ 	// �ֹε�Ϲ�ȣ �̸� 
		this.div_search.edt_req_jumin_pre.set_value("");	// �ֹ�(�����, ����) ��Ϲ�ȣ1
		this.div_search.edt_req_jumin_mask.set_value("");	// �ֹ�(�����, ����) ��Ϲ�ȣ2
	}
	else
	{
		this.div_search.edt_req_jumin_pre.set_value("999");	// �ֹ�(�����, ����) ��Ϲ�ȣ1
		this.div_search.edt_req_jumin_mask.set_value("");	// �ֹ�(�����, ����) ��Ϲ�ȣ2  
	} 
	this.div_search.edt_req_jumin_pre.setFocus();
}
==============================================================================================================

- svn���� bizinfo_branch �ޱ�
1. eclipse���� bizinfo_branch ���� ����
 1) DeleTe project contents on disk  ==> OK: Ŭ��
2. eclipse > SVN Repository����==> svn > branches > bizinfo_branch: ���콺 �� Ŭ�� --> CheckOut Ŭ��
 1) Override Project/Data Folder(��â) > bizinfo_branch: üũ ==> OK: Ŭ��
==> commit�� �� Nexacro ���α׷� ������ ��
3. Nexacro���� generate Application�� ��
==============================================================================================================

- �˾� �޴� ����
1. 1���� �޴� ==> 2���� �޴��� �и�(gds_menu)
==============================================================================================================

- ���� �ٿ�ε� ���� ���� �м�
==============================================================================================================

- SW ���� ���� ���̵� ����(16��, ������ ���Կ� �븮)
1. ������ŷ ����.zip, SW���ߺ��Ȱ��̵�_��������.pdf
2. �����ʿ� ���� ������ ����� �� �Ǿ� ����
==============================================================================================================
 
������������������� 2018.03.16(��) �۾� �������������������
---> 07:00 ~ 21:00 ==>   

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ���� �ٿ�ε� 
0. ���� ���ε��� �� DRM ������ ������ �ɸ� ������ ���ε��� ��
1. ���� ��ȣȭ�Ǵ� ����
 1) .doc, .hwp, .xls, .hwp, .pdf,  
2. ���� ��ȣȭ �ȵǴ� ����
 1) .txt, .pdf,   
----------------------------------------------------------------------------------------------------

// ���� �ٿ�ε� ó�� �â�
this.downloadFile = function(row)
{ 
	alert("[/CommCompDownload.xfdl] [downloadFile()] ==> [���� �ٿ�ε�] [TEST_01]");	
	
		if (!this.confirm("�ٿ�ε� �Ͻðڽ��ϱ�?")) 	// ����[confirm]: 2018.02.23, by ���¸� 
	{
		return;
	}
	
	var ds_download = this.ds_download;
	var	fileId, fileName, fileSize = 0, fileInfo, downloadUrl, fileSaveName;
	var tranFiles = this.tranFiles;
		tranFiles.downloaded = [];
	
	//progressbar �ʱ�ȭ
	ds_download.setColumn(row, "PROG", 0);
	fileId   = ds_download.getColumn(row, "FILE_ID");			// ���� ID
	fileDir  = ds_download.getColumn(row, "PHY_FILE_PATH");		// ���� ��� ����
	fileName = fileDir + "/" + ds_download.getColumn(row, "PHY_FILE_NM");		// ���ϸ�(FULL)
	fileRealName = ds_download.getColumn(row, "FILE_NM");	// ���ϸ�
	fileSize = ds_download.getColumn(row, "FILE_SIZE");		// ���� ũ��
	fileInfo = {"id": fileId, "name": fileName, "size": fileSize, "row": row};		// ���� ����
	
	tranFiles.downloaded.push(fileInfo);
	var downloadUrl = this.fileConfig.host + this.fileConfig.downloadUrl;	// �ٿ�ε� URL
 
	var encodeFileName = escape(encodeURIComponent(fileName));		// ���ϸ�(encode)
	
	var downloadFileName = downloadUrl + encodeFileName;	// �ٿ�ε� ���ϸ�(FULL)
	alert("[/CommCompDownload.xfdl] [downloadFile()] ==> [���� �ٿ�ε�] [TEST_91] [fileName_ORI]"+ fileName +"[downloadUrl]"+ downloadUrl 
	+"[���ϸ�(encode)]"+ encodeFileName +"[�ٿ�ε� ���ϸ�(FULL)]"+ downloadFileName +"[fileRealName]"+ fileRealName );
	
	this.extDown.download(downloadUrl + encodeFileName, fileRealName);
}
--------------------------------------------------------------------------------------------------------------

- /CommLibFile.xjs ���Ͽ���
this.gfv_fileConfig = {
					host          : application.services["svcurl"].url,
					uploadUrl     : "advancedUploadFiles.do",
					downloadUrl   : "advancedDownloadFile.do?fileName=",	  // �ٿ�ε� URL
					downloadUrl_2   : "advancedDownloadFile.do?fileId=",	  // �ٿ�ε� URL2
					deleteUrl     : "advancedDeleteFiles.do",
					downImage     : "CommImg::fileUpDownload/img_file.png",
					delImage      : "CommImg::fileUpDownload/btn_del.png",
					allowTypes    : ["jpg","jpeg","gif","png","bmp","tif","txt","zip","7z","gzip","doc","docx","ppt","pptx","xls","xlsx","pdf"],
					allowTypes_ra : ["jpg","jpeg","gif","png","bmp","tif","xls","xlsx","pdf"],
					allowTypes_ae : ["jpg","jpeg","gif","png","bmp","tif","pdf"],
					allowTypes_li : ["jpg","jpeg","gif","png","bmp","tif","pdf"],
					allowTypes_fi : ["jpg","jpeg","gif","png","bmp","tif","txt","zip","7z","gzip","doc","docx","ppt","pptx","xls","xlsx","pdf"],
					maxCount      : 10,			// ���� �ִ� ��
					maxCount_c5   : 10,			// ���� �ִ� ��(�Խ���: ��������)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����) 
					maxCount_c3   : 10,			// ���� �ִ� ��(�Խ���: �ڷ��)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����) 
					maxCount_c2   : 10,			// ���� �ִ� ��(�Խ���: ���ֹ��� ����)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����) 
					maxCount_ra   : 10,
					maxCount_ae   : 10,
					maxCount_li   : 1,
					maxCount_fi   : 1,   
					maxSize       : "20MB",		// ���� ũ��(�Խ���)['':�ڷ��, ��������, ���ֹ��� ����, RA':�⺻���,'AE':�����Ǹ��ȣ, 'LI':�α���, 'FI':����]  	
					// ����(100MB�� ����]: 2018.03,05, by ���¸� ==> // ����(20MB�� ����]: 2018.03,12, by ���¸� 
					maxSize_c5    : "20MB",		// ���� ũ��(�Խ���: ��������)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����) 
					maxSize_c2    : "20MB",		// ���� ũ��(�Խ���: �ڷ��,)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����)
					maxSize_c3    : "20MB",		// ���� ũ��(�Խ���: ���ֹ��� ��)('C5':��������, 'C2':�ڷ��, 'C3':���ֹ��� ����)
					maxSize_ra    : "20MB",		// ���� ũ��(�⺻���) ['RA':�⺻���, 'AE':�����Ǹ��ȣ, 'LI':�α���]
					maxSize_ae    : "20MB",		// ���� ũ��(�����Ǹ��ȣ) ['RA':�⺻���, 'AE':�����Ǹ��ȣ, 'LI':�α���]
					maxSize_li    : "5MB",		// ���� ũ��(�α���) ['RA':�⺻���, 'AE':�����Ǹ��ȣ, 'LI':�α���]
					maxSize_fi    : "100MB",	// ���� ũ��(����) ['RA':�⺻���, 'AE':�����Ǹ��ȣ, 'LI':�α���, 'FI':����]
					maxTotalSize  : "200MB"		// ��ü ���� ũ��
				  };
--------------------------------------------------------------------------------------------------------------

1. ��������  ���� �ٿ�ε�
==> /advancedDownloadFile.do?fileName=bbs%252F201803%252F20180315_1.xls

2. �ڷ�� ���� �ٿ�ε�
==> http://localhost:8080/advancedDownloadFile.do?fileName=%252Ffiles%252F0%252F486%252F2016%252F09%252F26%252F1474882230274_0_88411.fileUploadList
=====================================================================================

- ����� �μ��ΰ�(�ڱ��� �븮���� �μ��ΰ� ����(19��))
1. STEP01_���Ͼ��ε�(/BIZTX_F0801.xfdl)
2. STEP02_�Է� ���� ��ȸ(/BIZTX_S0802.xfdl)
3. STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl)
 1) STEP03_�˾��ٿ�ε�(/BIZTX_P0803.xfdl)
 2) STEP03_�˾��ٿ�ε�(/BIZTX_P0803.xfdl)
4. ����� ���� ��� Ȯ��(/BIZTB_S0804.xfdl) 
==============================================================================================================

- �ְ�����(10��)
1. ������ ���̼� ������ ���� ���� ==> 2018�� 3�� 21��(��)����.03.26(��)
==============================================================================================================

- File Download ����
1. http://www.egovframe.go.kr/wiki/doku.php?id=egovframework:rte:fdl:file_download
2. http://www.playnexacro.com/index.html#show:article
==============================================================================================================

������������������� 2018.03.17(��) �۾� �������������������
---> 07:00 ~ 19:00 ==> �ָ��ٹ�, �߽�(��ġ�, �����Ĵ� -> ���غ� ����[���� ��], ������ ����): ���� ��

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ����� �м� 
1. STEP01_���Ͼ��ε�(/BIZTX_F0801.xfdl)
 1) �������� ���ϸ� ==> ���� ������ �¾ƾ� ��  

2. STEP02_�Է� ���� ��ȸ(/BIZTX_S0802.xfdl)
 1) ��������(���ϳ���) ==> TEST�� ��¥ Ǯ�� ����
 2) �ڵ��� ���� ��ư Ŭ��(/div_search_btn_Print2_onclickl): 478��
 
3. STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl)
 1) IQ9011 ������ üũ(/BIZTX_P0804.xfdl)   	==> Grid���� ���ڵ�üũ Į�� Ŭ��('check' ���� ������ �˾���) --> 0219
 2) STEP03_�˾��ٿ�ε�(/BIZTX_P0803.xfdl) 	==> Grid���� �ٿ�ε� Į�� Ŭ��
 3) ����� ���� ��� Ȯ��(/BIZTX_P0805.xfdl) ==> ��ȸ ���� ���� --> 0219
	 1. Grid���� ���ۿϷ� 
	==> �̹� ó�� �Ǿ����ϴ�. ���۾��� ����η� ���� ��Ź �帳�ϴ�.
	2. Write[enable] 
 
4. STEP04_������� ��ȸ��� ���� ����(/BIZTB_S0804.xfdl)
==> 4. ����� ���� ��� Ȯ��(/BIZTB_S0804.xfdl)
3. STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl)
==============================================================================================================
 
������������������� 2018.03.18(��) �۾� �������������������
---> 07:00 ~ 19:00 ==>  

�� �౸
10:00 ���
10:30 ����(��������ũ)
12:10 �����(������): ���� 
13:00 ����
14:20 ���θ� ����(����)
15:30 �߽�(���ܹ�, ġ�����: ���õ��)
15:30 ����Ʈ(����, ��)
16:10 �Ͱ�
16:20 ����(���̱�, ����): ����, �翺
16:30 �����(������)
17:08 ��������п�� ����[����� ��õ�� ���굿 459-18)
		(�����ν��� > ������� ���ϵ� > ������������� > ��ܺ��� �ǳʱ� > ���μ�ȯ�� �������� �� ȸ�� > 3�Ÿ� > 
		���ؾ���APT > ���� ���ؾ��� ������(����) > ��������з�(�Ե�������� ����) > ��ȣ�� 1�� ���� > ��������п��
17:30 ����(������ȸ��: ��� �������� ==> 2�� ��: ������� ����, ��� �о �������, ������ ���Ϳ� ����� ��
19:00 ����
19:10 ��������п�� ���(������) ==> ������� �ͳο��� ���� ���� �� ã�� ���(�Ե� ��� �ٽ� ��)
20:00 �Ͱ� 
20:20 ����(�� ���)
23:00 ��ħ
==============================================================================================================
 
������������������� 2018.03.19(��) �۾� ������������������� 
--> 07:00 ~ 23:00 ==> ���غ� �븮 ����(9��): ö��, ������ ����, ������ ���� ����(15��): ���ü�� ���� �۾�: 1����(����, ����)
								, ����(������, ����: �ŵ��� �Ĵ� -> ������, ������, ������, �ڴ븮)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- ����� ����
- STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl)
==> STEP03_1. ��ȸ[/biztxS0803List.do]
biztxS0803Mapper.biztxS0803insert(map);		// ��� ���� ���� ���	
<update id="biztxS0803insert"  parameterType="hashMap" >
	<![CDATA[
		/* STEP03_��� ���� ���� ���[kfb.biz.biztx.dao.BiztxS0803Mapper.biztxS0803insert] */
		INSERT INTO HEIR_BANK_LIST
		(	INPT_DATE,
			INPT_BANK,
			INPT_RDATE,
			INPT_FLAG
		 )
		(
			SELECT #{_SEARCH3_DATE},
					 A.BANK,
					'00000000',
					'0'
			 FROM BIZINFO.HEIR_BANK A
			 WHERE 1=1
					AND A.BANK NOT IN( 	SELECT INPT_BANK
													FROM BIZINFO.HEIR_BANK_LIST
													WHERE INPT_DATE= #{_SEARCH3_DATE})
				   AND RETIRE= '0'
				   AND A.BANK != '9999'
				   AND (( #{_SEARCH3_DATE} < '20151113' AND RANK < '0051') 
						OR #{_SEARCH3_DATE} > '20151116')
			GROUP BY A.BANK
		)
	]]>	
</update>
--------------------------------------------------------------------------------------------------------------

1. STEP01_���Ͼ��ε�(/BIZTX_F0801.xfdl)
 1) �������� ���ϸ� ==> ���� ������ �¾ƾ� ��(������ ���ó�¥)
- /AdvancedFileController.java ���Ͽ���
public synchronized List<Map> UploadInsertService(Map map)throws Exception{		
	msg_mgr.log_master(conn);		// ���Ͼ��ε� ���� ����
}
--------------------------------------------------------------------------------------------------------------

- /BizFileInputData.java ���Ͽ���
public int insert_HEIR_master(
	pstmt = conn.prepareStatement("insert into BIZINFO.HEIR_MASTER_NEW#("
	+ "			?,?,?,?,?,?,?,?,?,XX1.ENC_VARCHAR_INS(?,11,'KFB_EN','HEIR_MASTER_NEW#','ances_phone'))");

	pstmt.setString(1, inpt_date);
	pstmt.setString(2, kfb_seq);
	pstmt.setString(40, ances_phone);

	rtn_val = pstmt.executeUpdate();

	conn.commit();
}		
==============================================================================================================
 
[/AdvancedFileController.java] [uploadFiles()] ==> [���ε� ����_�Ϸ�] [TEST_71] [resultDs.saveXml()]<Dataset id="ds_output">
	<ColumnInfo>
		<Column id="FILE_MAST_CD" type="string" size="32"/>
		<Column id="FILE_NM" type="string" size="32"/>
		<Column id="PHY_FILE_NM" type="string" size="32"/>
		<Column id="FILE_SIZE" type="int" size="4"/>
		<Column id="TRAN_FILE_SIZE" type="int" size="4"/>
		<Column id="PROG" type="int" size="4"/>
	</ColumnInfo>
	<Rows>
		<Row>
			<Col id="FILE_MAST_CD">9040000_20180319_7590</Col>
			<Col id="FILE_NM">20180318.txt</Col>
			<Col id="PHY_FILE_NM">20180319_5.txt</Col>
			<Col id="FILE_SIZE">8310</Col>
			<Col id="PROG">0</Col>
		</Row>
	</Rows>
</Dataset>
==============================================================================================================

- MYBATIS���� SELECT INSERT�� �� ��
1. <update> </update>�� �ؾ���. 
<update ....>
INSERT INTO TEST_DB
(
  Į����
)
SELECT Į�� AS Į��_����
    , Į�� AS Į��_����2....
FROM   ���̺��
WHERE  ������
</update>
==============================================================================================================
 
������������������� 2018.03.20(ȭ) �۾� �������������������
---> 07:00 ~ 23:00 ==> 

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl)
 1) IQ9011 ������ üũ(/BIZTX_P0804.xfdl)   	==> Grid���� ���ڵ�üũ Į�� Ŭ��('check' ���� ������ �˾���) --> 0219
 2) STEP03_�˾��ٿ�ε�(/BIZTX_P0803.xfdl) 	==> Grid���� �ٿ�ε� Į�� Ŭ��
1. 3�ܰ�... ����� ������ ��ܿ���... �ش������� ������ üũ�մϴ�..
���� ���� üũ�� GetLossListService�� checkIQData �Լ��� �����Ͻþ�
 ������ ������ ����� ȭ�鿡�� Ȯ�� �����ϵ��� ���� ��Ź�帳�ϴ�.

1. �����ŷ�����
2. ���ڵ� ���� üũ
3. �ݾ� üũ �� 
ps. ���� ȫ������� ����(0054) 3�� 12�� ���� ������ ���ٰ� ���ɴϴ�..
�����մϴ�.
==============================================================================================================

public NexacroResult biztxS0803List(@ParamDataSet(name = "ds_search", required = false) Map map) throws Exception { 
	System.out.println("[/BiztxS0101Controller.java] [biztxS0803List()] ==> [��ȸ] [TEST_01] [STEP03_1. ��ȸ]"  );
	
	returnFile = biztxS0803Service.GetTandemListService(map);		// ���� ��������  
}

public List<Map> GetTandemListService(Map map) throws Exception {
	System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [���� ��������] [TEST_01]"  );
  
	try {
		// �ſ�����Ȩ�������� ����ó�� -> Ȩ������ ���ϰ�������κ���(����, HSBC)
		processWebcifData(year, month, day);
		System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [�ſ�����Ȩ�������� ����ó��] [TEST_02] [date]"+ date );

		// anylink ����ó��
		processAnyLinkData(year, month, day);
		System.out.println("[/BiztxS0803ServiceImpl.java] [GetTandemListService()] ==> [anylink ����ó��] [TEST_02]"  );

		map.put("_RESULT", "SUCESS");		
	} 
}

public void processWebcifData(int year, int month, int day) {
	System.out.println("[/BiztxS0803ServiceImpl.java] [processWebcifData()] ==> [�ſ�����Ȩ�������� ����ó��] [TEST_01]"  );
}
==============================================================================================================

- �ڵ��� ���� �ֹ�
1. �߰���_������S8_64G(RE_SM-G950N_64G)-���
2. ��û�� ���� Ȯ�� ==> https://online.cjhellodirect.com/onlineForm/newApplylist.do, ���: t*ario*1@
==============================================================================================================

������������������� 2018.03.21(��) �۾� �������������������
---> 07:00 ~ 20:30 ==> ����(��ġ�: �����Ĵ� -> ������, ������, ������, �ڴ븮), ���κ��� ���� ����(���� �� �α��� ��): ���

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl) 
=====================================================================================

- 31.  biiz ���߼���(����) ===> PuTTY ����ؾ� ��
1. Host Name: 10.1.12.31, 23, anylink, anylink
--------------------------------------------------------------------------------------------------------------

- 10.1.12.31 ���ϼ��� ���
testfep:/files/FEP/TAX/20180219/01/recv> cd /files/FEP/TAX/20180219/01/recv 
testfep:/files/FEP/TAX/20180219/01/recv> find ./ -name '*_20180219'       -- ���� ����, ���� ���� ���� ���� �˻�
==============================================================================================================
 
������������������� 2018.03.22(��) �۾� �������������������
--> 07:00 ~ 23:00 ==> �߽�(����: �¸�� ����), ����(��ġ�, ����[�����Ĵ�]: ������, ������, �ڴ븮)
								, ȸ��(������� ���ϰ� ����, ����� ����): 22�� ���� ���� �շ�[���� �� ��]

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]
- STEP03_����� ����� ���� ���� ��� ��ȸ(/BIZTX_S0803.xfdl) 
==============================================================================================================

������������������� 2018.03.23(��) �۾� �������������������
---> 07:00 ~ 23:00 ==>  

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- ���� ���� �� ���� �� â ������ ���� ȭ�� ���� ���� ��(3��) �ڵ� ������Ʈ ó��   
/CommLibForm.js] [gfn_initForm()	==>  ȭ�� ���� �ʱ�ȭ
/CommLibForm.js] [gfn_openPopup() ==> �˾�â ȣ�� (���/��޸��� ����)
this.gfn_closePopup(params); 	 // â �ݱ�	

if ( sPopupId.substr(0, 11) == "bizbbNotice")		// ���� ���� ��ȸ �˾� �̸�  ==> ȭ�� ��ġ, Option ���� ó��
	{ 
	
this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_",     rtnval);

this._gfn_setVariable(sPopupId+"_POPUP_CALLBACK_",     sPopupCallback); 	 // �˾� �ݹ�
this._gfn_setVariable(sPopupId+"_POPUP_RETURN_VALUE_", ""            );		 // �˾� ���ϰ�
this._gfn_setVariable(sPopupId+"_POPUP_PARAMS_",       oArg          );	  // �˾� �Ķ����

var popupwinid = this._gfn_getChildFrameVariable("_CURRENT_POPUP_WINDOWID_"); 
 this._gfn_setVariable(popupwinid+"_POPUP_RETURN_VALUE_", "");
	alert("[/CommLibForm.js] [gfn_openPopup()] ==> [�˾�â ȣ��] [TEST_20] [�˾� �ݹ�]"+ sPopupCallback );  
--------------------------------------------------------------------------------------------------------------


this.BIZBB_S0101_onbeforeclose = function(obj:Form, e:nexacro.CloseEventInfo)
{
	alert("[/BIZBB_S0101.xfdl] [BIZBB_S0101_onbeforeclose()] ==> [â�ݱ�] [TEST_01]");
	 
	//popup parameter
	var params = {		
		//"RECV_DS": this.dsET_LIST_CHK		// dsET_LIST_CHK Ds
		"RECV_MODE": "S"			// ���� ���(S:��ȸ, C:���, M:����, D:����) �Ķ����	// TEST @@@ ===>
		//"RECV_MODE": this.v_Pmode			// ���� ���(S:��ȸ, C:���, M:����, D:����) �Ķ����	// TEST @@@ ===>
		//, "RECV_QNANO": this.v_Qnano		// Qna��ȣ	// TEST @@@ ===> 
	};
	//alert("[/BIZTX_S0101.xfdl] [btn_close_onclick()] ==> [â�ݱ�] [TEST_91] [params]"+ params +"[v_Pmode]"+ this.v_Pmode +"[v_Qnano]"+ this.v_Qnano ); 
 
	this.gfn_closePopup(params); 	 // â �ݱ�	
}


 this._gfn_setVariable(sPopupId+"_POPUP_CALLBACK_",     sPopupCallback);

this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_",     arguments);
        this._gfn_setVariable(strPopupID +"_POPUP_RETURN_VALUE_ARGC", arguments.length);
		
==============================================================================================================

- elisep ���� ����
1. ����: 
 exist in file [C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps
 \bizinfo_branch\WEB-INF\classes\sqlmap\mappers\kfb\biz\bizli\BizliS0102Mapper.xml]
### The error may involve kfb.biz.bizli.dao.BizliS0102Mapper.getMenu-Inline
### The error occurred while setting parameters
### SQL: SELECT      MENU_ID    , MENU_NM     , MENU_ENM     , MENU_SEQ     , UP_MENU_ID     , MENU_GROUP     , MENU_LVL    
 , MENU_DESC    , PAGE_URL    , PAGE_ID    , USE_YN    , '' MENU_AUTH    , '' PATH      FROM        GTP_MENU   
 START WITH UP_MENU_ID = 'MENU00'   CONNECT BY PRIOR MENU_ID = UP_MENU_ID   ORDER SIBLINGS BY MENU_ID
### Cause: java.sql.SQLException: JDBC-8033:Specified schema object was not found.   
at line 16, column 8:
    		GTP_MENU
    		^
; uncategorized SQLException for SQL []; SQL state [JDBC-8033:42S02]; error code [-8033]; JDBC-8033:Specified schema object was not found.   
2. ����: DB Safer �α��� �ȵ�
3. ��ġ: DB Safer �α��� 
==============================================================================================================

������������������� 2018.03.24(��) �۾� �������������������
---> 07:00 ~ 19:00 ==> �ָ� �ٹ�,  �̹�(����3�� ���̹߰�: 4õ��), �߽�(��ġ�: �����Ĵ� -> �ڴ븮, ��ö�� PM, ���غ� ����)
								, ����(���κ�: �����Ĵ� -> ������, ������, ������)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ���� ���� �� ���� �� â ������ ���� ȭ�� ���� ���� ��(3��) �ڵ� ������Ʈ ó��  ==> ���� �Ϸ�[����] 
 // ���� ���� �� �˾� ó��  
this.fn_sta_noticePopup = function()
{ 
	//alert("[/BIZLI_S0114.xfdl] [fn_sta_noticePopup()] ==> [���� ���� �� �˾�] [TEST_01] [fv_bbsPostCode]"+ this.fv_bbsPostCode 
	+"[fv_postNowNum]"+ this.fv_postNowNum );
	
	//�˾��� ���� ������ �ݱ�
	if (Eco.isEmpty(this.getOwnerFrame().all["bizbbNotice"])==false)
	{
		this.getOwnerFrame().all["bizbbNotice"].form.close();
	}
	
	var args = {fv_flag : "A", 
	             bbs_post_code : this.fv_bbsPostCode,		// �Խ��� Post �ڵ�
	             bbs_post_nowNum : this.fv_postNowNum  		// �Խ��� Post ��ȣ  
				};    
  
	// 01. modeless �˾�[�ݹ� ����]	
	// 	var nFormWidth = 1160;
	// 	var nFormHeight = 860; 
	// 	var sOption = "popupType=modeless, resizable=false";   	// �˾� �ɼ� ����(popupType�� modeless�μ���) 
	// 	this.gfn_openModeless("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", nFormWidth, nFormHeight, args, sOption);   	
	// ���� ���� �� �˾�(modeless: Callback ����)

	// 02. modeless �˾�[�ݹ�]
	//var sOption = "popupType=modeless, resizable=false";   	// �˾� �ɼ� ����(popupType�� modeless�μ���) 
	// Iject.open(this, "bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args);		// ���� ���� ��ȸ �˾�
	//this.gfn_openPopup("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args, sOption, "fn_openpopCallback");   	
	// ���� ���� �� �˾�(modeless) ==> // ����[��޸���: �ݹ�]: 2018.03.22, by ���¸�
  
	// 03. modal �˾�[�ݹ�]
	var sOption = "popupType=modal, resizable=false";   	// �˾� �ɼ� ����(popupType�� modeless�μ���) 
	this.gfn_openPopup("bizbbNotice", "BIZBB::BIZBB_S0101.xfdl", args, sOption, "fn_openpopCallback");   	
	// ���� ���� �� �˾�(modal) ==> // ����[��޸���: �ݹ�]: 2018.03.22, by ���¸�
}
============================================================================================================== 
 
������������������������ 2018.03.25(��) ���������������������������
---> 07:20 ~ 23:00 ==> �ָ� �ٹ�, �߽�(��ġ�: �����Ĵ�), ����(�Һ�: �ŵ��� �Ĵ� -> ������, (��)������ ���� ����)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��] 
- ���� ȭ�� F5�� ���ΰ�ħ
==============================================================================================================

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj � �ݿ�(14�� ~ )
1. ���ϰ��� ���̺� ����
 1) ���� ���̺�(����÷�����ϸ�� TB)�� �����ϰ� ���ο� ���̺�(���ϰ��� TB TB) �����ؼ� ������ �� ==> ������
 ==> �Խ����� ó�� ���� ��û�� ����(UI ����)�� AS-IS �м� ���� ���Ƿ� ���� ������ ������
2. ���� ����
 1) http(8080)�� https(443) ������ ���ܼ� � �ݿ� �ȵ�
==============================================================================================================

-- ���ϰ��� ��ȸ @@@
SELECT *
FROM  UXJP_COMMON_FILE_LIST   -- ����÷�����ϸ�� TB  ==> AS IS
; 
---------------------------------------------------------------------------------------------------------------

-- ���ϰ��� ��ȸ @@@
SELECT *
FROM  GTP_COMM_FILE   -- ���ϰ��� TB ==> TO BE
; 
==============================================================================================================

- /BizbbMapper.xml ����(����)
<select id="selectBoardFileList" parameterType="hashMap" resultType="hashMap">
  <![CDATA[
  SELECT * FROM
	   ( 
	   SELECT FL.FILE_MAST_CODE AS FILE_MAST_CD,       -- �����ڵ�(FILE_MAST_CODE --> FILE_MAST_CD)           
			  FL.FILE_NAME AS FILE_NM,     		 			 -- ���ϸ�(FILE_NAME --> FILE_NM)           
			  FL.FILE_SEQ ,
			  FL.PHY_FILE_NAME AS PHY_FILE_NM,       	 -- �������ϸ�(PHY_FILE_NAME --> PHY_FILE_NM)                              
			  FL.PHY_FILE_PATH,                          
			  FL.FILE_SIZE,                              
			  FL.FILE_DESC                               
		 FROM UXJP_COMMON_FILE_LIST FL,                  
			  UXJP_BBS_POST BP                           
		WHERE BP.FILE_MAST_CODE = FL.FILE_MAST_CODE     
		]]>	        
		<if test="BBS_BOARD_CODE != null">
		<![CDATA[
			AND BBS_BOARD_CODE = #{BBS_BOARD_CODE}
			]]>
		</if>
		<if test="BBS_POST_CODE != null">
		<![CDATA[
			AND BBS_POST_CODE = #{BBS_POST_CODE}
			]]>
		</if>
		<![CDATA[
		  AND DISPLAY_YN='Y'       
				)
 ORDER BY FILE_SEQ
			]]>	                               
</select>
--------------------------------------------------------------------------------------------------------------

- /FileServiceImpl.java ����
- ���� �ٿ�ε�
public File downloadFile(HttpServletRequest request) 
{ 
	String name = request.getParameter("fileName");
	List<Map> fileName = fileMapper.getFileName(name);
	
	String PHY_FILE_NM = (String) fileName.get(0).get("PHY_FILE_NM");
	String PHY_FILE_PATH = (String) fileName.get(0).get("PHY_FILE_PATH");
	String FILE_MAST_GB = (String) fileName.get(0).get("FILE_MAST_GB");		// ����(request: ��û��, files: �����, bbsold: �� �Խ���, bbs: �� �Խ���)
	
	if(fileName == null) {
		throw new NexacroException("No input fileName specified.");
	} 
	String realFileName = null;
	
	if("files".equals(FILE_MAST_GB))
	{
		realFileName = sRootDirTx + PHY_FILE_PATH + PHY_FILE_NM;	// �����
	}
	else if("bbsold".equals(FILE_MAST_GB))
	{
		realFileName = sRootDirTx + PHY_FILE_PATH + "/" + PHY_FILE_NM;		// �� �Խ���
	}
	else
	{
		realFileName = sRootDir +"/"+ PHY_FILE_PATH + "/" + PHY_FILE_NM; 	// �� �Խ���
	}
	
	File file = new File(realFileName);
	
	return file;
}
==============================================================================================================

������������������� 2018.03.26(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ���� ����ȸ Prj ���� ����(14��, ��),  CJ ����� �˶��� �޴��� �� S8 �߰��� ����(2�� ����)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- ���� ȭ�� F5�� ���ΰ�ħ 
==============================================================================================================

- eclipse �� ��ġ
1. ���� �������� eGovFrameDev-3.6.0-64bit �����ؼ� �ٽ� ��ġ
==============================================================================================================

- �������׿��� ���� ó��
<if test='BBS_BOARD_CODE != null and BBS_BOARD_CODE.equals("CRM_005")'> 	 
<!--// ����[�Խ��� �ڵ�(CRM_005: �������� �̸�)]: 2018.03.01, by ���¸� //-->
	<![CDATA[
		DBMS_LOB.SUBSTR(POST_CONTENTS, 100) AS POST_CONTENTS,     /* �� ���� */ 
	]]>	
</if>   
==============================================================================================================

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj � �ݿ� �Ϸ�(14��)
1. �ϴ� �ݿ� �ߴٰ� ��
==============================================================================================================

- 01. biz_eclipse.exe �ٷΰ���
1. ���(T): C:\eGovFrameDev-3.6.0-64bit\eclipse\eclipse.exe -vm C:/eGovFrameDev-3.6.0-64bit/jdk1.7.0_80/bin/javaw.exe 
-data C:\eGovFrameDev-3.6.0-64bit\eclipse\workspace
==============================================================================================================

- �ҽ� ���
1. eGovFrameDev-3.6.0-64bit������ eGovFrameDev-3.6.0-64bit.7z�� �����ؼ� FTP�� ���ۿϷ�(/jeus/app/jeus2/bizinfonew/install)
==> ȸ�� ��Ʈ������ �ٿ�ε� ����
==============================================================================================================

- KT �˶��� �޴��� �� S8 �߰� ����(2�� ����)
CJ ����� KT �˶��� �޴��� �� S8 �߰� ����(2�� ����)
1. KT �˶��� �޴��� �� S8 �߰� ����(2�� ����) ==> 2018�� 3�� 20��(ȭ)
2. KT �˶��� �޴��� �� S8 �߰� �ù� ����) ==> 2018�� 3�� 26��(��)
3. KT �˶��� �޴��� �� S8 �߰� ����(2�� ����) ==> 2018�� 3�� 26��(��)
======================================================================================================

- CJ ����� KT �˶��� �޴��� �� S8 �߰� ����(2�� ����) 
�� �⺻ ���Գ��� �ȳ�
0. ������: 2018�� 3�� 26��(��)
�� �𵨸� : �߰���_������ S8_64G(SM-G950BU)
�� ����� : The ���� ������ 10GB[60,390��]
				==> ����(����200��), SMS�⺻���� / ������ 10GB (�� 2GB �ʰ� ��, 3Mbps�� �⺻����) 
�� ���� �Ⱓ : 24����
�� �ڵ��� �ݾ� : 244,440��(�Ե�ī��� �Ͻú� ����)
�� ���ι�� : �ſ� ī��(����) - ��ī��
                  ==> �Ѵ޿� 70���� �̻� 3���� ����ؾ� ��
�� �ΰ����� : ����ΰ����� ����
�� �÷������ : ���� 
�� ����븮�� : �����ڷ���(02-3452-0701)
12. ���� ������: 2017-08-31(��ȣ�̵�)
13. ������� ��Ÿ�: KT ��Ÿ�
14. �Ե�ī�� �� 40���� �̻� ���� �� �� 7õ�� ��� ����
=====================================================================================================
  
- ������ S8_64G5(SM-G950B �޴��� ���  ==> https://www.sktinsight.com/86830
1. �𵨸�: S8_64G5( ������ S8)
1. CPU: ���ó뽺9 8895 2.5+1.7GHz ��Ÿ�ھ�
2. RAM: 4GB(64G ����, ����޸�: 64GB)
	Micro SD Slot : �ִ� 256GB
3. OS: �ȵ���̵� 7.0 ����
4. ũ��: 148.9mm x 68.1mm x 8.0mm
5. ����: 155g 
7. ���÷���: 5.77��ġ QHD super AMOLED / 570ppi
8. ���͸�(��ü��): 3,000mA 
9. ī�޶�: �ĸ� : 12MP Dual Pixel (F1.7) ����Ʈ OIS / ���� : 8MP AF (F1.7) 
10. ��Ʈ��ũ: 	3Band LTE-A
11. ����: ������� (����, ����), ��������(WPC, Airfuel), USB Type - C
12. ���/����: IP68
13. ��ü����: ȫä, ����, ��
14. �Ｚ ����: NFC, MST
15. Ư�� ���: �򽺺�, �Ｚ DeX 
--------------------------------------------------------------------------------------------------------

- ������ S8_64G(SM-G950BU) �ܸ��� ����
���� ��ȭ��: 2017.09.25
�Ϸù�ȣ: 0005606
IMEI: 356358082603665
S/N: R39J70B6KJ(7�ڸ�)
------------------------------------------------

- USIM ����
1. ���ڵ�: 8982 3012 1700 0258 5489
2. PUK: 26864155
======================================================================================================

- CJ ����� �˶��� �޴��� �� S8 �߰��� ����(2�� ����)   
10:00 �ڵ��� �� S8 �߰� �ù� ���� ==> ��ü�� ���(���� ����)
11:40 �Ｚ���ڼ��� �������޴�������(����� �߱� ������ 51 �������ܺ��� 5��) �湮
		==> ������ S ��Ʈ5���� �ִ� ����Ÿ, ���� ������ S8�� �̵����� ���� ��û, ������ ���� �ʸ� ��ü�� ��û)
12:00 �߽�(�¸�� ����)
12:30 �Ｚ���ڼ��� �������޴������� ��湮
12:45 ������ S8�� ����Ÿ, �� �̵� �Ϸ�
13:10 ȸ�� ����
13:30 CJ ����� �˶��� ���� �õ�( 
		==> 1. ������ S8 ��(�ű���)�� ������ ����(�ڰ��� �븮 ������)
		==> 2. �����ڷ���(02-3452-0701)�� ��ȭ�ؼ� ���� �õ�)
	    ==> 3. ������ S ��Ʈ5 ���� ������(��ȭ �ȵ�)
		==> 4. ������ S8 ��(�ű���) ��� ���� �õ��ص� �ȵ�
		==> 5. CJ ����� �ݼ���(1855-1144)�� ��ȭ�ؼ� ���� �õ�
17:00  CJ ����� �˶��� ���� �Ϸ�
==============================================================================================================

- ���� ����Ʈ 101�� 101ȣ �Ե�ī�� ���� ����
1. �Ե�ī�忡�� ��ȭ�ͼ� ���� �Ե�ī�� Ȩ���������� �ڵ���ü �߸� ����ؼ� 2017.12, 2018.01 ������ 101�� 101ȣ�� 
�����Ǿ��ٰ� ��
2. 101�� 101ȣ�� ���ܸ��� �Ե�ī�忡 ���� ��ȭ ��
3. ���� ����Ʈ ���������� ��ȭ�ͼ� �Ե�ī��_2017.12, 2018.01 ������ �����϶�� ��
3. �Ե�ī�忡�� ��ȭ�ͼ� 2018.01 ������ 3�� 26�� ~ 27�� ���̿� ������ �Ǵ� ī�� �����϶�� ��
  ==> �Ե�ī�� ������(��ٽÿ� �ڰ��� �븮 ī�� ������ ����: �����(���Ƚ�) ����)
4. 101�� 101ȣ�� ���ܸ����� ��ȭ�ؼ� ����ϰ� �Ե�ī��� �볳�� 2017.12, 2018.01 ������ 335,300�� �۱� ��û
==============================================================================================================

- ������ �����޺� MK240 NANO WHITE(Ű����, ���콺) ���콺 �嵥�� ����
1. ������: 2018.01.21(��)
==============================================================================================================

������������������� 2018.03.27(ȭ) �۾� �������������������
---> 07:00 ~ 21:30 ==> ����(��ġ�:�����н� -> ������, ������, �ڴ븮: ��ġPay)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- ���� �۾�
1. UI ����
2. ���� ����
==============================================================================================================

- ���� ����Ʈ 101�� 101ȣ �Ե�ī�� ���� ���� ���� ����
1. 101�� 101ȣ�� �Ե�ī��_2017.12, 2018.01 ������ �볳 �� �۱� ��û
==============================================================================================================

- ���� ����(�뵿�� ���� ��ġ����)
1. ���� ����: �������࿹Ź��, ���¹�ȣ: 356-1274-9556-83,  ������: ���¸�
==> 10���� �۱�(�ĺ� �߰���, ���к� ������ ���)
==============================================================================================================

- TYPE C ���̺� ����
1. TYPE C, ��Ÿ�� ������ ���̺�(������� ����), ����: 3,000��, ���̼� ������
==============================================================================================================

������������������� 2018.03.28(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ����(�����屹: �ŵ��� �Ĵ� -> ������,  ������, ������, �ڴ븮)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- ����(8.����.pptx) �۾� ==> �۾� �Ϸ�[����]
1. UI ����
2. ���� ����
==============================================================================================================

- 2018�� 3�� ������Ǽ� �ۼ�
==============================================================================================================

- MAIN ���� @@@
- /BizbbController.java ���� 
- /BizbbServiceImpl.java ���� 
- /FileServiceImpl.java ����
- /BizbbMapper.xml ����
- /FileMapper.xml ����
-------------------------------------------------------------------------------------------------------------- 

- / BizbbController.java ���Ͽ���
@SuppressWarnings("rawtypes")
@RequestMapping(value = "/bizbbBoardViewSelect.do")
public NexacroResult selectBoardView(@ParamDataSet(name = "ds_search", required = false) Map map) {
	// System.out.println("[/BizbbController.java] [selectBoardView()] ==> [����ȸ ó��] [TEST_01]" );
}
==============================================================================================================

- �츮ī�� ���� APT ������ �ڵ���ü ����
1. �츮ī�� �ݼ��Ϳ� ��ȭ�ؼ� �ڵ���ü ���� ó��(ī�� ���� �ƴµ� �ڵ���ü ���� ó�� �ȵǾ� �־���)
==============================================================================================================

- ���� ����Ʈ 101�� 101ȣ ���ܸ��� ������ ����
1. 101�� 101ȣ�� �Ե�ī��_2017.12, 2018.01 ������ 335,300���ε� �հ�: 325,300�� �� �۱���(���� ���� �۱�)
 1) ����, �Ե�ī�忡 ��ȭ�� ������� ���� �̶�� ������
2. �� 11�� 30�п� ���� ���� ã�ƿͼ� ����ϸ� ���� ���� �شٰ� ��
 1) ���� ����, �Ե�ī�忡 ��ȭ�� ����� û�������� û���ϸ� ���� �شٰ� ��
3. ���� ����Ʈ �����ǿ� ��ȭ�ؼ� �� ������ ����Ѵٰ� �뺸
4. �� 11�� �ݿ� 101ȣ�� �湮�ؼ� ���� �޾ƿ� ==> ���� ����
  ==> �Ե�ī�� ���� ������(16��)
==============================================================================================================

- LocalStorage, SessionStorage Ŭ���̾�Ʈ�� ���� ����
1. ���� ���丮���� ���� ���丮���� HTML5���� �߰��� �����
2. ���� ���丮���� �����ʹ� ����ڰ� ������ �ʴ� �̻� ��� �������� ���� �ֽ��ϴ�. ������ ���� ���丮���� �����ʹ� �����쳪 
������ ���� ���� ��� ���ŵ˴ϴ�.
==> ���� ���丮��: F5 ������ ������
https://www.zerocho.com/category/HTML/post/5918515b1ed39f00182d3048
3. SessionStorage
window.sessionStorage.setItem("domain", "http://www.tobesoft.com"); 
trace(window.sessionStorage.getItem("domain")); 
==============================================================================================================

������������������� 2018.03.29(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> ���� ����ȸ Prj �׷��� ����(9��, ��)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- ���� ȭ�鿡�� F5�� ���ΰ�ħ ==> �۾� �Ϸ�[����]
1. ���� ȭ�鿡�� F5�� ���ΰ�ħ�� �ϸ� alert�� ���� �α��� ȭ������ �Ȱ��� �������� �̵���
==============================================================================================================

- /biz.xadl ���Ͽ���
//Application ���� �ε��� �߻��ϴ� �̺�Ʈ
this.application_onload = function(obj:Application, e:nexacro.LoadEventInfo)
{ 
	alert("[/biz.xadl] [application_onload()] ==> [���� �ε�] [TEST_01] [application.ls_userId]"+ this.fn_isNull(application.getPrivateProfile("ls_userId")) );  
	// alert("F5 ���� ���Դϴ�.....");  
    
    var sUserId = "";
	var sUserNm = "";
 
	if(!this.fn_isNull(application.getPrivateProfile("ls_userId")))		// 01. �����ID[Local Storage)�� �����ϸ�
	{ 
		//alert("[/biz.xadl] [application_onload()] ==> [���� �ε�] [01. �����ID(Local Storage)�� ���� �ϸ�] [TEST_71_1] 
		[application.ls_userId]"+ application.getPrivateProfile("ls_userId") +"[sUserId]"+ sUserId +"[sUserNm]"+ sUserNm ); 
	  
		var sRst = application.mainframe.VFrameSet.BottomFrame.form.fn_sessionNew();	  // ���� ��ȸ ó��(bottom Frame) 
 
		if(sRst == "1")	  // 11. ������ �����ϸ�
		{
			//alert("[/biz.xadl] [application_onload()] ==> [���� �ε�] [11. ������ ���� �ϸ�] [TEST_91] [sRst]"+ sRst ); 
			
			//�ʱ� application onload setting
			Iject.appOnloadLs(obj);
		 
			Iject.$["loginFrame"].form.fn_loginNew();		// �α��� ó��New
		 
		else	// 12. ������ ���� ���ϸ�
		{ 
			//alert("[/biz.xadl] [application_onload()] ==> [���� �ε�] [12. ������ ���� ���ϸ�] [TEST_91] [sRst]"+ sRst ); 
			
			//�ʱ� application onload setting
			Iject.appOnload(obj);
		} 
	}
	else	// 02. �����ID[Local Storage)�� ���� ���ϸ�[ó�� �α��� ���� ��]
	{
		//alert("[/biz.xadl] [application_onload()] ==> [���� �ε�] [02. �����ID(Local Storage)�� ���� ���ϸ�] [TEST_72] 
		[application.ls_userId]"+ this.fn_isNull(application.getPrivateProfile("ls_userId")) ); 
		
		//�ʱ� application onload setting
		Iject.appOnload(obj);
    }
}
==============================================================================================================

- ���࿬��ȸ ���վ����ý���
1. � ==> https://bizinfo.kfb.or.kr/index_biz.html
2. ���� ==> https://new.bizinfo.kfb.or.kr/index_biz.html
3. ���� ==> https://loclahost:8080/index_biz.html
==============================================================================================================

- �̹��� ������ũ ó��(���ȿ���)
1. Ȩ > ���� > ��������� ����(Alt + S)
2. ���ϴ� �̹��� ����
3. ������: Ŭ��
4. ������ũ ó��(0 --> 30)
==============================================================================================================

������������������� 2018.03.30(��) �۾� �������������������
---> 07:00 ~ 18:00 ==> ���� ����ȸ Prj ö��(18��, ��)

- ���࿬��ȸ ���ͳݼ��� �ý��� ��ȭ Prj[��]  
- TOP �޴� ���� ==> ���� �Ϸ�[����]
1. Grid 2���� �и�
- /CommCompSubMenu.xfdl ���Ͽ���
// ����޴� ����
this.fn_createSubMenu = function(oObj)
{
	//alert("[/CommCompSubMenu.xfdl] [fn_createSubMenu()] ==> [03. ����޴� ����] [TEST_01_3]");

	if (!Eco.isEmpty(this.fv_dsSubMenuLevel1)) this.closePopup();
	if (!Eco.isEmpty(this.fv_dsSubMenuLevel2)) this.closePopup();
	
	var dsMenu   = oObj.ds; // �Ѿ�� menu dataset(��޴�)
	var sMenuId  = oObj.id; // ���õ� ���� ��޴� ���̵�
	var sMenuGrp = dsMenu.lookup("MENU_ID", sMenuId, "MENU_GROUP");
	var sPageUrl = dsMenu.lookup("MENU_ID", sMenuId, "PAGE_URL"); 
	
	dsMenu.filter("MENU_GROUP=='"+sMenuGrp+"' && MENU_LVL > 0");	// �޴�
	
	var dsSubMenu = new Dataset();		// �߸޴�
	dsSubMenu.copyData(dsMenu, true);	// true : ���͸��� �����͸� ����
	dsMenu.filter(""); 
	
	dsSubMenu.filter("MENU_LVL==2 && USE_YN=='Y'");	 // �߸޴�
 
	var dsSubMenuLv2 = new Dataset();
	dsSubMenuLv2.copyData(dsSubMenu, true);
	dsSubMenu.filter(""); 
	
	this.fv_dsSubMenuLevel1 = new Dataset();
	this.fv_dsSubMenuLevel1.copyData(dsSubMenu, true); 
	dsSubMenu.filter(""); 
	this.fv_dsSubMenuLevel1.clearData();
	
	if (this.fv_dsSubMenuLevel1.getRowCount() < 1) this.closePopup();		// grd_subMenu2  
 
	this.fv_dsSubMenuLevel2 = new Dataset();
	this.fv_dsSubMenuLevel2.copyData(dsSubMenu, true);
	dsSubMenu.filter(""); 
	this.fv_dsSubMenuLevel2.clearData();
	
	var bSucc;
	var nRow = 0;
	var nRow2 = 0;
 
	for(var i = 0; i < dsSubMenuLv2.getRowCount(); i++)
	{  
		if (i < 8)	// 8�� ����
		{  
			nRow = this.fv_dsSubMenuLevel1.addRow();	
			bSucc = this.fv_dsSubMenuLevel1.copyRow(this.fv_dsSubMenuLevel1.getRowCount() - 1, dsSubMenuLv2, i);	
			// ���� �����ͼ��� ������ ���� ��ġ�� ����
			//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [����޴� ����] [TEST_34] [i_��°]"+ i +"[nRow]"+ nRow 
			+"[bSucc]"+ bSucc +"[this.fv_dsSubMenuLevel1.getRowCount()]"+ this.fv_dsSubMenuLevel1.getRowCount() );
		} 		
		else if (i > 7)		// 8�� ����
		{  
			nRow2 = this.fv_dsSubMenuLevel2.addRow();
			bSucc = this.fv_dsSubMenuLevel2.copyRow(this.fv_dsSubMenuLevel2.getRowCount() - 1, dsSubMenuLv2, i);	
			// ���� �����ͼ��� ������ ���� ��ġ�� ����
			//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [����޴� ����] [TEST_35] [i_��°]"+ i +"[nRow]"+ nRow 
			+"[bSucc]"+ bSucc +"[this.fv_dsSubMenuLevel2.getRowCount()]"+ this.fv_dsSubMenuLevel2.getRowCount() );
		}
	} 
	//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [����޴� ����] [TEST_51] [dsSubMenuLv2.CNT]"+ 
	dsSubMenuLv2.getRowCount() +"[this.fv_dsSubMenuLevel1.CNT]"+ this.fv_dsSubMenuLevel1.getRowCount() 
	+"[fv_dsSubMenuLevel1.saveXML()]"+ this.fv_dsSubMenuLevel1.saveXML() );
	//alert("[/BIZTX_S0101.xfdl] [fn_createSubMenu()] ==> [����޴� ����] [TEST_52] [dsSubMenuLv2.CNT]"+
	dsSubMenuLv2.getRowCount() +"[this.fv_dsSubMenuLevel2.CNT]"+ this.fv_dsSubMenuLevel2.getRowCount() 
	+"[fv_dsSubMenuLevel2.saveXML()]"+ this.fv_dsSubMenuLevel2.saveXML() );
 
	this.grd_subMenu.setBindDataset(this.fv_dsSubMenuLevel1);		// ���� GFrid�� Ds ����
	this.grd_subMenu2.setBindDataset(this.fv_dsSubMenuLevel2);		// ������ GFrid�� Ds ����
	this.grd_subMenu2.setFocus();   
}
==============================================================================================================
 
 - �ҽ� ���
1. eGovFrame_03.30.zip  ���
https://new.bizinfo.kfb.or.kr/install/eGovFrame_03.30.zip  	==>  29.4MB
--------------------------------------------------------------------------------------------------------------

- �ҽ� ��� ���  @@@
1. TEST������ TEST.7z�� ����, ����
2. FTP �ش� ���(/jeus/app/jeus2/bizinfonew/install)�� �ٿ��ֱ�
 1) FTP �ּ�: 10.1.35.12, jeus/ jeus ==> /jeus/app/jeus2/bizinfonew/install
3. ȸ�� ��Ʈ������ �ٿ�ε� ����
 1) https://new.bizinfo.kfb.or.kr/install/TEST.7z 
==============================================================================================================

- ���� ȭ�鿡�� F5�� ���ΰ�ħ �׽�Ʈ
1. 00. TEST_F5.zip �ٿ����
2. ���� �ݼ��Ϳ� �� ���� ==> [JTM] ���� ȭ���� F5�� ���ΰ�ħ �� �� �α��� ȭ������ �̵� ����
==============================================================================================================

- ��Ʈ�� ����(17:30 ~ 18:00)
1. HP ProBook 450 G3 ��Ʈ�� USB 3.0���� ���˵� ==> ���� �� USB�� ���� �ν��� �ȵ�
2. ����� �ڽ��� ���� ==> ���¹� �̻� ���� ����(�����ϳ� ���� �繫�ǿ� ���� �شٰ� ��)
3. 13�� ����ȸ ���� �λ�(18:00) ==> ���ü���� �˼��� �� ������ ��(������ ������ �� �ִ� ���� ����)
 ==> ö�� �ο�: 4��(��, ���ϰ� ����, ������ ����, ������ �븮)
==============================================================================================================

- ȸ��
19:00 ���
19:30 ����(������ �Ĵ�) ==> LG ���ý� PM�� ���غ� ������ ���� �ߴٰ� ��
20:30 ���� ����
23:00 ����
24:20 �Ͱ�
==============================================================================================================

������������������� 2018.03.31(��) �۾� �������������������
---> 07:00 ~ 23:00 ==> �޽�

- ȸ��
10:00 ���
12:00 �߽�
13:00 ����
16:00 ���θ� ����(����)
19:00 ����
19:10 �Ͱ�
19:30 ����
24:20 ��ħ
==============================================================================================================
���������������������������������������������������������� 
+----------------------------------------------------// End //----------------------------------------------------+
����������������������������������������������������������
