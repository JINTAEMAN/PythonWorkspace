

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.02) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.02.01(��) �۾� �����������������
---> 06:50 ~ 02:00 --> ö��(���� ����) 

- ����. ���� Prj
- �������Ƿ� ��û(/con_deptRegisterN.jsp) 
���缱, ���������� ���� 
/src/com/cmp/cnt/bean 
BPM17011.java(�������Ƿ� ����),  BPM17015.java���(���������� ����)  
/src/com/cmp/cnt/bean 
ComplianceDAO.java(�������Ƿ� ���� ó�� �۾�) 
- ��༭ ���(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
- ����ǰ� �������(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_comPreviewM.jsp) 

http://190.190.183.223:8888/sbm/bpmportal/cp/TrueFriend/ulogin.jsp  
- ���� ó���� �� 
http://190.190.183.223:8888/sbm/appportal/myhome/tasksDone.jsp    
- ���� �� �� 
http://190.190.183.223:8888/sbm/appportal/myhome/tasks.jsp  
- ������� 
http://190.190.183.223:8888/sbm/BizSolo/TF_GEN_AA_1200_Milestone/MilestoneStep.jsp?deptcd=010920&bizno=200801-00019&frominfo=plan  

Logger.debug.println("[/CERDAO.java/insertRSCInfo()]:[rcvno]"+ rcvno +"[BPM17012.getSave_gubun()]"+ BPM17012.getSave_gubun());  
Logger.err.println("[/CERDAO.java/insertRSCInfo()]:[rcvno]"+ rcvno +"[BPM17012.getSave_gubun()]"+ BPM17012.getSave_gubun()); 

Logger.debug.println("[========>] VALUES ('"+ rcvno +"', '"+ BPM17011.getSave_gubun() +"' ,'"+ BPM17011.getContr_type() +"', '
"+ BPM17011.getContr_nm() +"', '"+ BPM17011.getConcearn_legal() +"',"); 
Logger.debug.println("    '"+ BPM17011.getContr_partner() +"', '"+ BPM17011.getContr_expect_dt() +"', '"+ BPM17011
.getContr_return_dt() +"', '"+ BPM17011.getContr_contents() +"', '"+ BPM17011.getPreserve_grade() +"',"); 
Logger.debug.println("    '"+ display_regno +"', '"+ BPM17011.getApprvstep() +"', '"+ BPM17011.getPiNo() +"', '"+ 
BPM17011.getRempno() +"', '"+ BPM17011.getRempnm() +"',"); 
Logger.debug.println("    '"+ BPM17011.getRdeptcd() +"', '"+ BPM17011.getRdeptnm() +"', '"+ BPM17011.getDutyCd() +"', '"+
BPM17011.getDutyNm() +"')");  
---------------------------------------------------------------------------------------------  
�ý����� ä�� ����(BPM10099):  
ORDCD(ä������): (10:IT�������, 11:ȫ����, 12:��༭, 14:��������) 
�������� ������ ����(BPM17002) --> �������� ������(BPM14006) 
�������� �� ����(BPM17003) --> �������� ��(BPM14007) 
÷������ ����(BPM17007) --> ÷������ ����(BPM10005) 
-- �������� ������ ���� ��ȸ 
SELECT * FROM BPM14006 ORDER BY REGDT DESC;  
-- �������� �� ���� ��ȸ 
SELECT * FROM BPM14007; 
-- ÷������ ���� ��ȸ 
SELECT * FROM BPM10005 ORDER BY RGTDT DESC;  
==============================================================================================================

- ����Ŭ ���� 
ORA-00904: ������ �������մϴ� 
ORA-01400: Null ���� ���� ���ƾ� �� �ڸ��� Null ���� ���� ���� �����Դϴ�.  
ORA-01401: Inserted value too large for column 
ORA-00936: ������ ǥ�����̶� ���� 
ORA-00933: SQL ��ɾ �ùٸ��� ������� �ʾҽ��ϴ� 
==============================================================================================================

- ���� ���� ����(2008.02.01(��)) 
�� ���� ����  
 1. �������Ƿ� ��û(/con_deptRegisterN.jsp) ���� ��(��ô�� 80%) 
   
��  ������ ��ȹ  
 1. �������Ƿ� ��û(/con_deptRegisterN.jsp) ����: �Ϸ� ���� 
 2. ��༭ ���(/con_listL.jsp) ���� 
 ������ �븮(*@*.*), �̱��� ����(*@*.*) 
==============================================================================================================

- ��ӹ��� ����: �Ϸ� 
2008.02.05(ȭ) 23:45  ���� -> ���뱸  �ɾ� ���: 23,800�� 
2008.02.08(��) 24:00  ���� -> ����     �ɾ� ���: 30,500��(�Ϲ�:18,600��, ���: 27,700��) 
==============================================================================================================

������������������� 2008.02.02(��) �۾� �����������������
---> 04:00~ 09:00 --> ö��(���� ����) 

- ����. ���� Prj
- ��༭ ���(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
==============================================================================================================

- LG�Ŀ��� ��ġ 
���� 10�� ��簡 �ͼ� ��ġ �Ϸ� 
3�� ����: �� 26,500��(����� 30% ����) 
==============================================================================================================

- �̹��� �۾�(���伥) 
/sbm/bpmportal/ap/voc/images/milestone01.gif --> ������ȹ���� 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> �������� 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> ������ȹ���� 
-------------------------------------------------------------------------------- 
/sbm/bpmportal/ap/voc/images/compliance01.gif --> �������� 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> �������� 
/sbm/bpmportal/ap/voc/images/milestone02.gif --> �������� 

������ �ǰ�(compliance01.gif), ����Ƿ� ���䳻��(compliance02.gif), �ĺ� �ǰ�(compliance02.gif)  
==============================================================================================================

������������������� 2008.02.04(��) �۾� �����������������
---> 05:30 ~ 00:00 --> ö��(���� ����) 

- ����. ���� Prj
- �������Ƿ� ��û(/con_deptRegisterN.jsp) 
÷������ ���� 
- ��༭ ���(/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_listL.jsp) 
- ����ǰ� �������(/con_comPreviewM.jsp)  
--------------------------------------------------------------------------------------- 
- ������ �Ҹ� ���(/sbm/ebmsapps/TF_VOC_AB_1000/jsp/EmpEntryStart.jsp) 
3. ���ϵ��(�˾�) 
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/jsp_common/comFile/comFileUploadP.jsp?fromPage=CPL&atchFlSeq= 
3. ���ϵ�� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_VOC_AB_1000/jsp/EmpEntryStart.jsp 
==============================================================================================================

- ���� ���װ�� ���� 
1. 2008.01.26   290,000 �� ���(�ڵ��� ���� ������� ���) 
2. 2008.02.04(��) 34���� �Ա�(29���� + 5���� ����)  
==============================================================================================================

- ���伥 �۾�(���� �����: ���� ���) 
1. Mage--> Mode-->RGB color�� ��� ��ȯ 
2. ���� ���̾� ���� 
3. ���� ������� ���� ����� 
4. ���ο� ���� ���� 
==============================================================================================================

- 2008�� 1�� �ǰ������: �Ϸ� 
46,900�� ����ȣ(���ڳ��ι�ȣ(11�ڸ�)): 21017603269 
==============================================================================================================

- �¿� �뿩�� �ϳ� 
õ 5�� ���� 
==============================================================================================================

- ��Ʈ�� �ϵ� �߰� ���� 
�Ｚ SATA2 500G (7200/16M) HD501LJ ��ǰ  100,000�� 
HDD (PC��) / S-ATA 2 / 500GB / 7,200RPM / 16MB / 8.9cm (3.5)  
����������ũ ��걸 �Ѱ���2�� ���λ� 21�� 182ȣ Tel) 706-7342 
http://balacom.co.kr/product/productView.php?nProdCode=396255&service_id=pcdn 
==============================================================================================================

 - ���� ���� ����(2008.02.04(��)): ��༭(���¸�) 
�� ���� ����  
 1. �������Ƿ� ��û(/con_deptRegisterN.jsp) ����: �Ϸ� 
 2. ��༭ ���(/con_listL.jsp) ����: �Ϸ� 
   
��  ������ ��ȹ  
 1. ����ǰ� �������(/con_comPreviewM.jsp) ���� 
==============================================================================================================

������������������� 2008.02.05(ȭ) �۾� �����������������
---> 04:00 ~ 22:00 --> ö��(���� ����) 

- ����. ���� Prj
- ����ǰ� �������(/con_comPreviewM.jsp) 
- ������ ����ȸ �� ������(/con_comPreviewM.jsp) 
- 1. �������Ƿ� �μ�����(/con_deptSetN.jsp) 
- 2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp) 
- 3. �������Ƿ�Ȯ�� �� �ǰߵ��(/con_comPreviewN.jsp) 

- �������Ƿ� �� �ǰ߰���(/con_comSetN.jsp) 
- ����ǰ� �������(/con_comPreviewM.jsp) 
==============================================================================================================

- ���� �뼱 
���ǵ��� -> �����͹̳�(362��) 
==============================================================================================================

 - ���� ���� ����(2008.02.05(ȭ)): ��༭(���¸�) 
�� ���� ����  
 1. �������Ƿ� ��û(/con_deptRegisterN.jsp) ����: �Ϸ� 
 2. ��༭ ���(/con_listL.jsp) ����: �Ϸ� 
   
��  ������ ��ȹ  
 1. ����ǰ� �������(/con_comPreviewM.jsp) ���� 
==============================================================================================================

������������������� 2008.02.09(��) �۾� �����������������
---> 12:30 ~ 13:30 

- ����. ���� Prj
- ��ӹ��� ���Ϲ� 
1. �������� : �����ӹ����͹̳�(��) �Ű�1��(���� �λ� ������ ������ġ) Tel) 535-2591  
2. ����ȭ�� : 02-535-2592, 2593 
http://www.exterminal.co.kr/07/baggage/baggage_01.asp  
3. ū���� �ּ�: ���ֽ� ����� ���帮 ���� ���ú�APT 101�� 307ȣ  
4. ��������ù�(GS25�� ����): GS25 ������ȭ��  745-6867 
==============================================================================================================

- �Ÿ� ��� 
�����뿪 -> �̼��� -> �̼������� -> �ű��ʵ��б�: 10.7km 
�����뿪 -> ���μ�ȯ�� -> ����IC -> �ѳ�IC -> �ű��ʵ��б�: 12.5km 
==============================================================================================================

������������������� 2008.02.11(��) �۾� �����������������
---> 06:40 ~ 23:00 

- ���� ���ö��̾� Prj
- 1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
- 2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
- 3. �������Ƿ�Ȯ�� �� �ǰߵ��(/con_comPreviewN.jsp): �Ϸ� 
==============================================================================================================

- null String ���� 
String p_apprvstep = StrUtil.toUTF8(StrUtil.nullToSpace(p_apprvstep)); 
if(request.getAttribute("rtnCode") == null  "0".equals(request.getAttribute("rtnCode"))){ 
==============================================================================================================

- ���� ���װ�� ���� 
1. 2008.02.11   161,000�� ���� CMA�� �۱�(�� ���� ���� ��) 
==============================================================================================================

- Source Safe(�ҽ� ������ ���� ���) 
1. ���� ���� �߰�: ��(T) --> Add to VSS 
2. �� ���� �ޱ�: ��(T) --> Get Latest Version 
==============================================================================================================

- BPM �۾� 
���: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000  
/con_deptRegisterN.jsp �����̸� 
html �������� �����ؼ� �ڵ����� ����(�ؽ�Ʈ ���� ���ڵ�: UTF-8) 
TF_CMP_AB_1000: ��༭(�¶���), TF_CMP_AB_1100: ��༭(�ǰ� ���), TF_CMP_AB_1200: ��༭(��Ȳ��ȸ) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> ���� 

- �������Ƿ� ��û(/con_deptRegisterN.jsp)  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp  
==============================================================================================================

 - ���� ���� ����(2008.02.11(��)): ��༭(���¸�) 
�� ���� ����  
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. �������Ƿ�Ȯ�� �� �ǰߵ��(/con_comPreviewN.jsp): �Ϸ� 
   
��  ������ ��ȹ  
 1. ����ǰ� �������(/con_comPreviewM.jsp) ���� 
==============================================================================================================

������������������� 2008.02.12(ȭ) �۾� �����������������
---> 07:00 ~ 23:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
1. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp): �Ϸ� 
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):   
5. ����ǰ߼� ����(/con_comPreviewM.jsp):   
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp):  
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):    
----------------------------------------------------------------------------------- 

- BPM �۾� 
���: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000  
/con_deptRegisterN.jsp �����̸� 
html �������� �����ؼ� �ڵ����� ����(�ؽ�Ʈ ���� ���ڵ�: UTF-8) 
TF_CMP_AB_1000: ��༭(�¶���), TF_CMP_AB_2000: ��༭(�ǰ� ���) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> ���� 
String p_pcv_no2  = bean.getPropString("PT_NO");   //������ȣ(���μ��� ����Ÿ �� ��������) 
==============================================================================================================

- ��Ŭ��� ����Ÿ �ѱ�� 
<jsp:include page="include/include_generalForm.jsp" flush="true">  
<jsp:param name="p_title_nm" value="<%=p_title_nm%>"/> 
<jsp:param name="p_save_sort" value="<%=p_save_sort%>"/> 
</jsp:include> 
==============================================================================================================

������������������� 2008.02.13(��) �۾� �����������������
---> 08:00 ~ 23:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
0. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp): �Ϸ� 
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp): �Ϸ� 
5. ����ǰ߼� ����(/con_comPreviewM.jsp): �Ϸ� 
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp): �Ϸ�  
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp): �Ϸ�    
------------------------------------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. �ǰߵ�ϰ� �������Ƿ� ��û(/con_offLoadOnComRegisterN.jsp):    
------------------------------------------------------------------------------------------------------------ 
  
- BPM �۾� 
���: /_BPM_TF_Comp/web/ebmsapps/TF_CMP_AB_1000 
/con_deptRegisterN.jsp �����̸� 
html �������� �����ؼ� �ڵ����� ����(�ؽ�Ʈ ���� ���ڵ�: UTF-8) 
TF_CMP_AB_1000: ��༭(�¶���), TF_CMP_AB_2000: ��༭(�ǰ� ���) 

/_BPM_TF_Comp/web/ebmsapps/TF_VOC_AA_1000  --> ���� 
String p_pcv_no2  = bean.getPropString("PT_NO");   //������ȣ(���μ��� ����Ÿ �� ��������) 
==============================================================================================================

- BPM ����(jsp ���Ͽ���) 
 <bizsolo:when test="<%=request.getParameter(\"bizsite_saveTask\") !=null %>" >  
<bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKUpdateDS" perfMethod="commit" mode="BizSite" dsi="ApprStep,SetGbn"/> 
</bizsolo:when> 
<bizsolo:otherwise >  
 <jsp:include page="include/con_MasterRegisterS.jsp"/>  
  
</script> 
<%bean.setPropString("ApprStep",  "1");%> <!--// �������� //---> 
<%bean.setPropString("SetGbn", request.getParameter("damgubun"));%> <!--// ���籸�� //---> 
   <script language=javascript>   
alert("[/con_deptRegisterM.jsp]:[TEST_DONE_2]");  
</script>  
<bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKSetDS" perfMethod="commit" > 
</bizsolo:otherwise> 
</bizsolo:choose> 
<% /* Workaround, retAddr will disappear in the future */ %> 
<% String retAddr = bean.getPropString("returnPage"); %> 
<% if(retAddr != null) { %> 
  <bizsolo:redirectURL page="<%= retAddr %>" /> 
<% } %>  
</bizsolo:if> 
==============================================================================================================

- ��¥ ����(JSP) 
ds_regdt = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd 17:00"); 
String Sday = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd"); 
String ds_contrexpectdt = (request.getParameter("CONTREXPECTDT")!=null) ? request.getParameter("CONTREXPECTDT"):Sday; /* �ŷ�ü�� ������ */ 
String ds_contrreturndt = (request.getParameter("CONTRRETURNDT")!=null) ? request.getParameter("CONTRRETURNDT"):Sday; /* ȸ�ſ�û�� 
-----------------------------------------------------------------------------------  
Calendar calendar = Calendar.getInstance();  
String tmpYY = String.valueOf( calendar.get(Calendar.YEAR) );  
String tmpMM = String.valueOf( calendar.get(Calendar.MONTH) + 1 ); 
String tmpDD = String.valueOf( calendar.get(Calendar.DAY_OF_MONTH));  
if( tmpMM.length() < 2 ) tmpMM = "0" + tmpMM;  
if( tmpDD.length() < 2 ) tmpDD = "0" + tmpDD;  
ds_regdt = tmpYY +"."+ tmpMM +"."+ tmpDD;//�����  
==============================================================================================================

- ����ȯ(jsp����): long -> String 
String str_ApprSeq = ""+ p_ApprSeq; 
argValue.add(str_ApprSeq); /* ���� ����  */ 
p_ApprSeq  = bean.getPropLong("ApprSeq");   //�������(BPM���� ���� ����) 
==============================================================================================================

������������������� 2008.02.14(��) �۾� �����������������
---> 06:30 ~ 23:00 

- ���� ���ö��̾� Prj
- BPM �۾� 
0. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp):  
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp):   
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):   
5. ����ǰ߼� ����(/con_comPreviewM.jsp):   
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp):    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):    
==============================================================================================================

- ���� Prj �߰� �ÿ�(ȭ�� ������ ��) 
1. ���� �ǰ� ũ�� ���̱� 
2. �ϴ� ������ ���� 
3. �ٴ� ���� �ڸ��� 
==============================================================================================================

������������������� 2008.02.15(��) �۾� �����������������
---> 06:50 ~ 23:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
0. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp):   
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):   
5. ����ǰ߼� ����(/con_comPreviewM.jsp):   
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp):    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):     
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ߰���(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_deptRegisterM.jsp):  
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ� 
4. ����Ƿ� ����(/con_offDeptSetN.jsp):   
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp):   
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp):    
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp):     
8. ����Ƿ� �� �ݷ� Ȯ��(/con_offComRePreviewM.jsp) 
==============================================================================================================

- ���ö��̾� TEST ����� 
��� �Ƿ���(����): �ڰ泲 
�μ� ������:  ������ �μ���, �̺��� ���� 
�ĺ� �����: �����, ������ 
�ĺ� ������: ����ȣ 
==============================================================================================================

- BPM �ѱ�� 
<%-- AP ó�� �� ���μ��� �ν��Ͻ� ���� --%> 
<bizsolo:otherwise > 
<jsp:include page="include/con_MasterRegisterS.jsp"/>   
<%bean.setPropLong("ApprStep", new Long(request.getAttribute("p_apprvstep").toString()));%> <!--// �������� //---> 
<%bean.setPropString("SetGbn", request.getParameter("opinapprogubun"));%> <!--// ���籸�� //---> 
<%bean.setPropString("COM_PERFORMER", bean.getPropString("COM_PERFORMER"));%> <!--// �ĺν����� //---> 
  <script language=javascript>   
alert("[/con_comPreviewN.jsp]:[�������Ƿ�Ȯ�� �� �ǰߵ��]:[���� ����]"); 
</script> 
==============================================================================================================

- ���� ���� 
2�� 25��(��) ���� ��ȭ�� �Ｚ���ǿ� ���� 
SAS(ETL2)�� ����.. 
==============================================================================================================

������������������� 2008.02.16(��) �۾� �����������������
---> 06:50 ~ 20:00  --> ��� 

- ���� ���ö��̾� Prj
- BPM �۾� 
1. ����ǰ� ȭ�� �ۼ�(ȭ�� 8��) 
----------------------------------------------------------------------------------------------------------- 

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp):   
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):   
5. ����ǰ߼� ����(/con_comPreviewM.jsp):   
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp):    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):     
----------------------------------------------------------------------------------------------------------- 
0. ����ǰ� ���(/con_offComRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ� 
4. ����Ƿ� ����(/con_offDeptSetN.jsp):  �Ϸ� 
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp):  �Ϸ� 
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp):     
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp):      
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp) 
==============================================================================================================

2. �����˻�(�˾�): ���� ���� Ȯ�� 
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/jsp_genCommon/deptSearch/userDeptSearchP.jsp?fromPop=APPR&deptCd=010920 
 --���� ���: (�ڰ泲, 100375) (������, 087079) (������, 101399) (����ȣ, 100818) (892213: �̱���) (001170: ������)  
==============================================================================================================

������������������� 2008.02.17(��) �۾� �����������������
---> 08:40 ~ 21:30  --> ��� 

- ���� ���ö��̾� Prj
- BPM �۾� 
1. �������Ƿ� ��û(/con_deptRegisterN.jsp): �ӽ����� �۾� --> �Ϸ� 
2. ������ ����ȸ �� ����(/con_detailD.jsp):  
3. ��༭ ��� ���(/con_docUpLoad.jsp): �Ϸ� 
4. ��༭ ��� �ٿ�ε�(/con_docDownLoad.jsp): �Ϸ� 
5. ��༭ ��ĵ ���(/con_docImageN.jsp): �Ϸ� 
6. ��༭ ��ĵ ���(/con_docImagelistL.jsp): �Ϸ� 
----------------------------------------------------------------------------------- 

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp):   
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):   
5. ����ǰ߼� ����(/con_comPreviewM.jsp):   
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp):    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):     
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ� 
4. ����Ƿ� ����(/con_offDeptSetN.jsp):  �Ϸ� 
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp):  �Ϸ� 
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp):     
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp):      
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp) 
==============================================================================================================

������������������� 2008.02.18(��) �۾� �����������������
---> 08:30 ~ 00:00  --> ö��(3�ð� ��) 

- ���� ���ö��̾� Prj
- BPM �۾� 
1. �������Ƿ� ��û(/con_deptRegisterN.jsp): �ӽ����� �۾� --> �Ϸ� 
2. ������ ����ȸ �� ����(/con_detailD.jsp):  
3. ��༭ ��� ���(/con_docUpLoad.jsp): �Ϸ� 
4. ��༭ ��� �ٿ�ε�(/con_docDownLoad.jsp): �Ϸ� 
5. ��༭ ��ĵ ���(/con_docImageN.jsp): �Ϸ� 
6. ��༭ ��ĵ ���(/con_docImagelistL.jsp): �Ϸ� 
----------------------------------------------------------------------------------- 

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp): �Ϸ�  
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):  �Ϸ� 
5. ����ǰ߼� ����(/con_comPreviewM.jsp):  �Ϸ� 
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp): �Ϸ�    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):�Ϸ�     
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ�  
4. ����Ƿ� ����(/con_offDeptSetN.jsp): �Ϸ�  
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp): �Ϸ�    
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp): �Ϸ�     
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp): �Ϸ�    
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp): �Ϸ�  
==============================================================================================================

- �������� ���� 
<%bean.setPropLong("ApprStep", new Long(bean.getPropLong("ApprStep") + 1));%> <!--// �������� //---> 
==============================================================================================================

tab01_off.gif tab01_on.gif<!-- ����� ���� Tab  -->tab02_off.gif tab02_on.gif<!-- ���� �̷� Tab -->  
tab03_off.gif tab03_on.gif   <!-- ���䳻�� Tab  -->  tab04_off.gif tab04_on.gif<!-- ���� ���� Tab -->   
/tab_approval_o.gif" name="Image22"  height="32" border="0"></td><!-- ���� ���� Tab -->    
==============================================================================================================

������������������� 2008.02.19(ȭ) �۾� �����������������
---> 04:30 ~ 22:30 

- ���� ���ö��̾� Prj
- BPM �۾�
1. ������ ����ȸ �� ����(/con_detailD.jsp):   
----------------------------------------------------------------------------------- 

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp): �Ϸ�  
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):  �Ϸ� 
5. ����ǰ߼� ����(/con_comPreviewM.jsp):  �Ϸ� 
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp): �Ϸ�    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):�Ϸ�     
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ�  
4. ����Ƿ� ����(/con_offDeptSetN.jsp): �Ϸ�  
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp): �Ϸ�    
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp): �Ϸ�     
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp): �Ϸ�    
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp): �Ϸ�  
==============================================================================================================

������������������� 2008.02.20(��) �۾� �����������������
---> 06:30 ~ 23:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
----------------------------------------------------------------------------------- 

- ���� ����(�׽�Ʈ): 2�� �ʾ��� 
1�� �׽�Ʈ �Ϸ� 
----------------------------------------------------------------------------------- 

1. ������ ����ȸ �� ����(/con_detailD.jsp):    
0. �������Ƿ� ��û(/con_deptRegisterN.jsp) ���� 
 ��) �ӽ�����: ä��(������ȣ)�� ��, BPM ���μ��� �� Ž 
0. ����ǰ� ���(/con_offComRegisterN.jsp) ���� 
 ��) ����ǰ�: ä��(������ȣ)�� ��, BPM ���μ��� Ž(����Ƿ� ������ ����� ���� ���μ��� �� Ž)  
----------------------------------------------------------------------------------- 

2. ������ ����ȸ �� ����(/con_detailD.jsp):  
3. ��༭ ��� ���(/con_docUpLoad.jsp): �Ϸ� 
4. ��༭ ��� �ٿ�ε�(/con_docDownLoad.jsp): �Ϸ�  
5. ��༭ ��ĵ ���(/con_docImageN.jsp): �Ϸ�   
6. ��༭ ��ĵ ���(/con_docImagelistL.jsp): �Ϸ� 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_docUpLoad.jsp 
 ==============================================================================================================

- �����ڵ� ��� ��ȸ 
SELECT a.dtlcd AS DTL_CD, a.dtlcdnm AS DTL_NM FROM bpm10008 a WHERE a.maincd = '701' 
==============================================================================================================

- long�� ���� 
 long p_apprstep_lng  = bean.getPropLong("ApprStep");   //��������(���μ��� ����Ÿ �� ��������)   
==============================================================================================================

������������������� 2008.02.21(��) �۾� �����������������
---> 06:30 ~ 23:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
2. ������ ����ȸ �� ����(/con_detailD.jsp): �Ϸ� 
==============================================================================================================

- ��༭��� �ٿ�ε� 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_docDownLoad.jsp ���� 
<td>&nbsp;<a href="/sbm/bpmportal/ap/voc/jsp_cmp/cnt/include/comFileDownload.jsp?atchFlSeq=<%=p_atchflseq%>&subSeq=1"><%=p_file_nm_nm%></a> 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/include/comFileDownload.jsp 
==============================================================================================================

-  2�� ���� ���� ���� 
1. ���� �˻� ��ü ����, �μ��� ��ȸ ����: �Ϸ� 
/sbm/bpmportal/ap/voc/jsp_genCommon/deptSearch/userDeptSearchAllP.jsp 
2. ���� �⺻ ���� ���(Active X ���α׷� ��ġ) 
==============================================================================================================

������������������� 2008.02.22(��) �۾� �����������������
---> 06:00 ~ 23:10 

- ���� ���ö��̾� Prj
- BPM �۾�
1. �������� ���(/raw_deptRegisterOrgN.jsp): 
2. �������� �ǰ߼� ���(/raw_deptRegisterN.jsp): ������(�Ϸ�) 
2.1 �������� �ǰ߼� ��ȸ(/raw_deptResultL.jsp): 
2.2 �������� �ǰ߼� ��(/raw_deptResultD.jsp): 
2.3 �������� �ǰ߼� ����(/raw_comResultM.jsp): 
3. ���ȵ�޼������� ����(/raw_authConfigN.jsp): 
==============================================================================================================

- �����ȣ ���� 
sbm/bpmportal/ap/voc/jsp_common/comCode/ZipCodeSearch_info.jsp?dongnm=%EC%9A%B0%ED%98%84  
==============================================================================================================

-  ���ӵ���Ÿ �ѱ�(���� �⺻ ���� ���)  
1. ��Ͻ�  
<script>  
checkCntr_contents();   //���� Ŭ���� ===> ��� ���� Ȯ�� �Լ� ȣ�� 
</script>  
<script>  
function checkCntr_contents(){   
var f = document.fm;  
f.contr_contents.value =  f.Wec.MimeValue;    //���� �⺻�� ���尪�� �����鼭 ���� �� 
}  
</script>  

<script language="javascript" src="/sbm/bpmportal/ap/voc/js/conNamoWec.js"></script>  
<input type="hidden" name="contr_contents" style="width:600;" value="testdddd">< !-- ��� ����(�ѱ� ����Ÿ) --> 
<script>  
----------------------------------------------------------------------------------- 

2. ������ 
<body topmargin='0' leftmargin='20' onload='setFilLoadValue'> < !-- �ڵ� �ε� -->   
<script>  
function setFilLoadValue(){   
showTxt();  
} 
</script>  
   

function showTxt(){   
var fm2 = document.form;   
fm2.Wec.Value = fm2.contr_contents.value;     //��� ����(DB���� �ѿ� �� Active���۳�Ʈ�� �ֱ�)  
//��� ����Ÿ�� �ݵ�� Form ���� submit �� �� 
}     
</script>  
----------------------------------------------------------------------------------- 
   
3. ����� 
import com.sbm.common.namo.*;   // ���� �⺻ ���� ������Ʈ 

  String uploadDir = "/sbm/bpmportal/ap/voc/images_namo"; 
  String p_html = null;' 

  try { 
 p_html = NamoMime.decodeMime(BPM17011.getContr_contents(), uploadDir);  
  } catch (Exception e) { 
   e.printStackTrace(); 
  } 
----------------------------------------------------------------------------------- 

4. ��ȸ�� 
<body topmargin='0' leftmargin='20' onload='setFilLoadValue'> < !-- �ڵ� �ε� -->  

function setFilLoadValue(){  
var f = document.htmlForm;   //htmlForm ���� action URL�� ������ 
f.submit();  
}  

<form name="htmlForm" action="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" target="htmlFrame"> 
<textarea name="htmlContents" style="display:none"><%=ds_contrcontents_off%></textarea> 
</form> 

<iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:600;height:300;"> 
</iframe> < !-- ��� ����(iframe) -->  
==============================================================================================================

- ���� TEST����(70��) 
http://190.190.155.70:8888/sbm/appportal/ulogin.jsp  
190.190.155.70  weblogic/bpms01  
cd bpm_bin 
tail -f portal.out 
------------------------------------------------ 
EV_UNIX = 
  (DESCRIPTION = 
    (ADDRESS_LIST = 
      (ADDRESS = (PROTOCOL = TCP)(HOST = 190.190.151.102)(PORT = 1521)) 
    ) 
    (CONNECT_DATA = 
      (SERVICE_NAME = INFODEV) 
    ) 
  )  
adbms/adbms2007 or adbms2006 
==============================================================================================================

������������������� 2008.02.23(��) �۾� �����������������
---> 07:40 ~ 21:00 

- ���� ���ö��̾� Prj
- BPM �۾� 
1. �������� ���(/raw_deptRegisterOrgN.jsp): �Ϸ� 
2. �������� �ǰ߼� ���(/raw_deptRegisterN.jsp): �Ϸ� 
2.1 �������� �ǰ߼� ��ȸ(/raw_deptResultL.jsp): �Ϸ� 
2.2 �������� �ǰ߼� ��(/raw_deptResultD.jsp): �Ϸ� 
2.3 �������� �ǰ߼� ����(/raw_comResultM.jsp): �Ϸ� 
3. ���ȵ�޼������� ����(/raw_authConfigN.jsp):  
- 70���� ���� �ڵ� 
 <%@ include file="/bpmportal/common"%>  ==> ��� ���� 
==============================================================================================================

������������������� 2008.02.24(��) �۾� �����������������
---> 11:30~ 22:00 

- ���� ���ö��̾� Prj
- BPM �۾�
1. ���ȵ�޼������� ����(/raw_authConfigN.jsp): �Ϸ� 
2. ���� �ٿ� �ε� �߰�: �Ϸ� 
==============================================================================================================

������������������� 2008.02.25(��) �۾� �����������������
---> 06:30~ 23:30  --> �̸�� ����� ���ӽ�(���ǵ�: ������������ �İ�) 

- ���� ���ö��̾� Prj
- BPM �۾�
1. ���� ���� �� ���� ���� 
��ȸ ����, ���ȵ�� ���� ���� �ֱ� ���� 
==============================================================================================================

 - ��¥ ��ȸ(��¥ Ÿ�� �ƴ�( REGDT VARCHAR2(14)))  
SELECT  A.REGDT  
FROM BPM17011 A   
WHERE A.REGDT >=  TO_CHAR(TO_DATE('08-02-22'), 'YYYYMMDDHH24MISS')  
AND A.REGDT <=  TO_CHAR(TO_DATE('08-02-25'), 'YYYYMMDDHH24MISS')    
==============================================================================================================

- ���� �޴� ���� �ֱ� 
/sbm/appportal/frame/left.jsp?BizPassUserPassword=knpark77&BizPassUserID=100375 
==============================================================================================================

- ���� TEST����(70��) 
/inetadm/weblogic/sbm65/applications/sbm/ebmsapps  
==============================================================================================================

-- �޴��������� ��ȸ 
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE  ('372') in ( select '372' AS SECRGUBUN_1 from BPM17018 B WHERE B.SECRGUBUN ='1' 
AND B.SEQNO ='1' AND B.EMPNO ='100375' ) 
      AND a.mnuseq IN ('372', '373', '389', '390', '391', '392')  
UNION ALL  
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE  ('377') in ( select '377' AS SECRGUBUN_1 from BPM17018 B WHERE B.SECRGUBUN ='2' 
AND B.SEQNO ='2' AND B.EMPNO ='100375' ) 
AND a.mnuseq IN ('377', '378', '379', '380', '393') 
UNION ALL  
SELECT SUBSTR(a.imgPthNm,3,1) ord, a.mnuseq, a.upmnuseq, a.mnunm, a.mnutxt, a.mnuordseq, a.pageseq,   
              (SELECT popYn FROM adbms.bpm10016 WHERE pageseq = a.pageseq) popYn, 
    (SELECT pagepthnm FROM adbms.bpm10016 WHERE pageseq = a.pageseq) pageurl,      a.imgPthNm, 
              (SELECT mnuordseq FROM adbms.bpm10014 WHERE mnuseq = a.upmnuseq)submnu1, a.mnuordseq submnu2 ,    
      DECODE((select count(mnuseq) from adbms.bpm10014 where upmnuseq = a.mnuseq ) ,0,'F','T') isParent 
FROM adbms.bpm10014 a    
WHERE a.mnuseq in (select mnuseq from adbms.bpm10015 
where authseq in ( select authseq from adbms.bpm10012 where empcd ='100375')) 
AND a.mnuseq NOT IN ('377', '378', '379', '380', '393','372', '373', '389', '390', '391', '392') 
-- AND a.mnunm LIKE '%��༭%' 
ORDER BY imgPthNm   
==============================================================================================================

- ���ȵ�� ���� ���� ��ȸ 
SELECT  '1'  AS SEQNO,  
( SELECT  MAX(A.EMPNO)   FROM BPM17018 A  
WHERE  A.SECRGUBUN ='1' /* ���ȱ���(1:��༭, 2:��������) */  
    AND A.SEQNO ='1' 
AND A.EMPNO ='101016' ) AS SECRGUBUN_1,  
  ( SELECT MAX(B.EMPNO) FROM BPM17018 B 
WHERE  B.SECRGUBUN ='2' /* ���ȱ���(1:��༭, 2:��������) */  
    AND B.SEQNO ='2' 
AND B.EMPNO ='101016'  
)  AS  SECRGUBUN_2 
FROM DUAL 
----------------------------------------------------------------------------------------- 

- ���ȵ�� ���� ����(�޴���������) ��ȸ 
SELECT M.SEQNO, MAX(M.SECRGUBUN_1),  MAXM.SECRGUBUN_2) 
FROM( SELECT A.SEQNO, A.EMPNO AS SECRGUBUN_1, '' AS SECRGUBUN_2  FROM BPM17018 A  
WHERE  A.SECRGUBUN ='1' /* ���ȱ���(1:��༭, 2:��������) */  
    AND A.SEQNO ='1' 
AND A.EMPNO ='101016'  
GROUP BY A.SEQNO 
UNION ALL  
SELECT B.SEQNO, '' AS SECRGUBUN_1, B.EMPNO AS SECRGUBUN_2 FROM BPM17018 B 
WHERE  B.SECRGUBUN ='2' /* ���ȱ���(1:��༭, 2:��������) */  
    AND B.SEQNO ='2' 
AND B.EMPNO ='101016'  
GROUP BY B.SEQNO 
) M GROUP BY M.SEQNO 
==============================================================================================================

������������������� 2008.02.26(ȭ) �۾� ����������������� 
---> 06:50~ 23:20  

- ���� ���ö��̾� Prj
- BPM �۾�
1. ���� ���� �� ���� ���� 
  �޴��������� 
2. ��༭ ��� ���(/con_docUpLoad.jsp) 
�����ڵ� ����(��Ż���� -> ������ ���� -> �����ڵ� ����)���� ��� 
(/sbm/bpmportal/ap/voc/jsp_common/comCode/ComCodeF.jsp) 
701  ��༭����(01: �ŸŰ�༭ 02: �μ���༭) 
-- SELECT a.dtlcd AS DTL_CD, a.dtlcdnm AS DTL_NM FROM bpm10008 a WHERE a.maincd = '701' 
------------------------------------------------------------------------------------------------------------------------

- null�� ����(Unix �������� Ư�� ���� �� ��) 
 if(p_right == null  p_right.equals("")) {} 
==============================================================================================================

- �����ȣ ���� 
SELECT * FROM adbms.BPM10039 
==============================================================================================================

- 1��  �˼� ���� ����(���ý��ۺ�: �̱��� ����, ������ �븮, �ĺ�: ����� �븮, ��������) 
A. ��༭ 
 1) ��� ���� ȭ���� ���� ���� ���� ��� ���� ������ �������� �� ��: �Ϸ�  
 2) ��� ���� Į��(���� ���� ��)�� ȭ�� �����ؼ� �а� ���̵��� �� ��: �Ϸ�  
 3) ��� �ְ��μ��� ���� ������ �ְ� ����� ������ ��: �Ϸ� 
 4) ��༭ ��Ͽ� ������� ���ϰ� ǥ���� ��: �Ϸ�  
 5) ÷�� ���� ����� ������ ��� ���� �ϵ��� �� �� 

B. �������� 
 1) ��� ȭ���� ���, ��ȸ ȭ������ �а��� ��: �Ϸ�  
 2) ����Ʈ ȭ���� ������ ó���� ��: �Ϸ� 
 3) ��ȸ ȭ�� ��ȸ ���� ǥ��ȭ�� ��(���� �Ҹ� ����): �Ϸ�  
 4) �������� �ǰ߼� Ű����� ī�װ��� ��ȸ �����ϵ��� �� ��: �Ϸ�  
 (����� �븮���� ���� �ڷ� ���� ��)  
 5) ��ĵ ���ȭ�� ���� �޴����� �� ��: �Ϸ� 
 6) ���ȵ�޼������� ���� ȭ���� ���Ѻ� ����� ���� ȭ��� ���� ���� ��  
==============================================================================================================

������������������� 2008.02.27(��) �۾� �����������������
---> 06:40~ 21:00  

- ���� ���ö��̾� Prj
- BPM �۾�
1. ó���ܰ� ���� 
�������� ������ ���� TB�� ó���ܰ�(APPRVPROCSTEP) ���� 
(101: �������Ƿ� �μ�����, 102: ����ǰ� �ݷ�Ȯ��, 201: ����ǰ� ����)  
==============================================================================================================

- ���� ����� 
190.190.155.70  weblogic/bpms01   
rsbpmdev /inetadm/weblogic/bpm_bin> ./startup.sh Start_PORTAL.sh* 
EJB Start, SMB Start 
==============================================================================================================

 - �޽��� �߼� ����(����: ���� Class ���) 
com.cmp.app.dao.CMPMsg.msgSend(CMPMsg.java:78) 
----------------------------------------------------------------------------------------- 
  
- ���� ����Ƽ�� ���� 
�ڻ��� ���� * 
���� ���� ��� ������ ����: * 
==============================================================================================================

������������������� 2008.02.28(��) �۾� �����������������
---> 05:20~ 22:30  

- ���� ���ö��̾� Prj
- BPM �۾�
1. ó���ܰ� ���� 
�������� ������ ���� TB�� ó���ܰ�(APPRVPROCSTEP) ���� 
(101: �������Ƿ� �μ�����, 102: ����ǰ� �ݷ�Ȯ��, 201: ����ǰ� ����) 
 <input type='hidden' name='apprvresult'>   <!-- ���籸�� --> 
<input type='hidden' name='apprvmemo'>   <!-- ����޸� -->  
2. ���� ��â���� ����� �ϱ� 

2. �������� �ǰ߼�(raw_deptRegisterN.jsp) ����   
- �������� �з� �߰� 
(* ������� * ���ڱ��� * �ؿܻ�� * �Ҽ� * ��Ÿ)  
//��¥ ������ setting 
 gs_ordStartDt = DateUtil.dtos(DateUtil.strTotimeDate(gs_ordStartDt),"yyyy-MM-dd HH:mm");  
 ------------------------------------------------------------------------------------------------------------------- 
  
 - ���� �ؽ�Ʈ ������ ���� 
 ���� ġ�� ���ڰ� ���� �����Ŵ�. --> Shift +���͸� ġ��  
<textarea name="contr_contents" style="display:none"> 
<html> 
<link rel="stylesheet" href="<%=cssPath%>/style.css" type="text/css"><%=ds_contrcontents%> 
</html> 
</textarea> 
 ------------------------------------------------------------------------------------------------------------------- 
  
- BMP ���� �α� �м�  
\\190.190.183.223\sbm65\logs/sbm.log ���� Ȯ�� 
==============================================================================================================

������������������� 2008.0229(��)) �۾� ����������������� 
---> 05:40~ 23:10  

- ���� ���ö��̾� Prj
- BPM �۾� 
1. �����ǰ� ���� ÷�� ����(����): �Ϸ� 
2. �Խ��� ������ ����: �Ϸ� 
3. �������� ���� ����: �Ϸ� 
4. ����ǰ� ���(/con_offComRegisterN.jsp) ����: �Ϸ�  
==============================================================================================================

- ���ڼ� �������� 
 int p_title_lens = ds_contrnm.length();    //���ڼ� ���� 
 if(p_title_lens >20) {  ds_contrnm = ds_contrnm.substring(0,20) +"..."; }  else { ds_contrnm = ds_contrnm; }   
==============================================================================================================

- ���        : ����� ��� ~ �߰������� ���� ���� 
- ���        : �߰������� ���� ���� ~ �μ��� ���� ���� 
- �ĺ� �߼� : �μ��� ���� �� ~ �ĺ� ����� ���ű�� ���� 
- �ĺ� ���� : �ĺ� ����� ���ű�� ���� ~ �ĺμ��� �������� ���� 
- ���� �Ϸ� : �ĺμ��� �������� ��  
http://190.190.183.223:8888/sbm/bpmportal/ap/voc/images/btn_img/btn_list.gif 
==============================================================================================================

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. �������Ƿ� �μ�����(/con_deptSetN.jsp): �Ϸ�  
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ�  
3. ����Ƿڰ��� �� �ǰ߼����(/con_comPreviewN.jsp): �Ϸ�  
4. ����Ƿڼ� �� �ǰ߼� ����(/con_comSetN.jsp):  �Ϸ� 
5. ����ǰ߼� ����(/con_comPreviewM.jsp):  �Ϸ� 
6. �������Ƿ� �ǰ�Ȯ��(/con_deptResultViewReqN.jsp): �Ϸ�    
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):�Ϸ�     
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ�  
4. ����Ƿ� ����(/con_offDeptSetN.jsp): �Ϸ�  
5. �������Ƿڰ��� �� �ǰߵ��(/con_offComRePreviewN.jsp): �Ϸ�    
6. ����Ƿ� �� �ǰ� ����(/con_offComReSetN.jsp): �Ϸ�     
7. ����Ƿ� �� �ǰ߹ݷ� Ȯ��(/con_offComRePreviewM.jsp): �Ϸ�    
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp): �Ϸ�  
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------------+
�����������������������������������������������������������