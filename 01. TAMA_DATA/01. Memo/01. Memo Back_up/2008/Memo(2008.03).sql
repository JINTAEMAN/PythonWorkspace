

�����������������������������������������������������������
+---------------------------------------------// Memo(2008.03) //----------------------------------------------------------+
�����������������������������������������������������������


������������������� 2008.03.01(��) �۾� �����������������
---> 07:00~ 21:40  

- ���� ���ö��̾� Prj
- BPM �۾� 
A. ����ǰ� ���(/con_offComRegisterN.jsp) ����: �Ϸ� 
1. ����� ����(�μ�/����/��ȭ��ȣ) BPM17011 ���̺� RTELNO �ʵ� �߰�: �Ϸ� 
2. 5. �������Ƿڰ��� �� �ǰߵ�Ͽ��� �ݷ��� ��� ���� ���� �������� ����: �Ϸ� 
3. �������� ����(�����Ͻ� �ֱ� ���� �Ǿ����� ����): �Ϸ� 
4. �ݷ�Ȯ�� ������ ���� ���� ���̺� �߰� 
5. ���� ����(�ݷ�:2, ����ǰ� Ȯ�� ����) 
==============================================================================================================

 - ���� ���� ���(/sbm/bpmportal/ap/voc/jsp_genCommon/comFile/comFileGenUploadP.jsp): �Ϸ� 
BPM17004(÷������ ����) ==> ���� ��: bpm14008 , bpm10005 
������ȹ���(��������)(/sbm/bpmportal/ap/voc/jsp_gen/genAA1000/milestonePlanN.jsp)  
==============================================================================================================

������������������� 2008.03.02(��) �۾� ����������������� 
---> 06:40~ 21:30 

- ���� ���ö��̾� Prj
- BPM �۾� 
A. ����ǰ� ���(/con_offComRegisterN.jsp) ����: �Ϸ� 
1. �ݷ�Ȯ�� ������ ���� ���� ���̺� �߰�: �Ϸ� 
2. ���� ����(�ݷ�:2, ����ǰ� Ȯ�� ����): �Ϸ� 
advDao.insertApprvDetailCopy(rcvno, String.valueOf(bean.getPropLong("ApprStep")+1), "00"); 
advDao.deleteApprvExtDetail(rcvno, apprvstep); //�ݷ��� ���� ��� �� ����(���� ����� ���(9)�� update) 
==============================================================================================================
    
- ���ȵ�޼������� ���� ȭ���� ���Ѻ� ����� ���� ȭ��� ���� ���� ��: 1�� �Ϸ� 
(/sbm/bpmportal/ap/voc/jsp_common/sysMgt/userAuthMgtF.jsp)  
==============================================================================================================

������������������� 2008.03.03(��) �۾� �����������������
---> 05:50~ 23:10 

- ���� ���ö��̾� Prj
- BPM �۾�
1. ���� ����: �Ϸ� 
70�� ���� �׽�Ʈ: ���н� ������ �� �Դ� ��찡 ���� 
�ذ�å: �� �Դ� �ҽ� �տ� �ش� ���� �־� �� 
Logger.warn.println("[/con_MasterRegisterS.jsp]::[TEST_22]");      
==============================================================================================================

2. ��༭ ��� ����Ʈ(/con_docUpLoadL.jsp) ���� 
- �˻� 
-  ��â ����� ����� �ϱ�  
--------------------------------------------------------------------------------------------- 
- page ��ȸ 
SELECT * 
FROM 
(SELECT COUNT(*) OVER() AS cnt, rownum as rnum, total.* 
FROM (   ---//�ҽ� ���� 
 SELECT A.SEQNO, A.CONTRTYPE, A.CONCERNCONTENTS, A.ATCHFLSEQ, A.REMPNO, A.REGDT, A.CHGDT, 
(SELECT B.dtlcdnm FROM bpm10008 B WHERE B.maincd = '701' AND A.CONTRTYPE = B.dtlcd) AS CONTRTYPE_NM, 
(SELECT RTRIM(B.FLNM) FROM BPM17004 B WHERE A.ATCHFLSEQ = B.ATCHFLSEQ) AS FILE_NM_NM, A.REMPNM, 
(SUBSTR(A.REGDT, 1, 4)  '-'  SUBSTR(A.REGDT, 5, 2)  '-'  SUBSTR(A.REGDT, 7, 2)  ' '  SUBSTR(A.REGDT, 9, 2)  
 ':'  SUBSTR(A.REGDT, 11, 2)) AS  REGDT2 
FROM BPM17013 A 
WHERE A.SEQNO IS NOT NULL  --//�ҽ� �� 
) total     
) 
WHERE  rnum >=1  AND rnum <= 12 
==============================================================================================================

������������������� 2008.03.04(ȭ) �۾� �����������������
---> 06:30~ 22:00 

- ���� ���ö��̾� Prj
-  �˼� �� ���� ���� ����: �Ϸ�  
1. ��༭�ǰߵ�� ����(�ֹ��μ� ����� 1�� ���) 
2. ���� ���� ����(���� �ϱ�, ���� �߰�) 

//���糯¥ ���� yy-mm-dd  HH:mm 
String today = DateUtil.dtos(DateUtil.sysdate(), "yyyy-MM-dd"); 
//���糯¥ ����(yyyyMMddHHmmss) 
String approvDay = DateUtil.dtos(DateUtil.sysdate(), "yy-MM-dd HH:mm");   
==============================================================================================================

-- ����� �� ���� ����(���� �������� My DesK_������(AUTHSEQ:10)�� �����ϰ� ������ �����ؾ� ��) 
SELECT *  
FROM ADBMS.BPM10013       
WHERE AUTHSEQ IN (SELECT AUTHSEQ FROM ADBMS.BPM10012 WHERE TRIM(EMPCD) = '101399')   
--;    
==============================================================================================================

- ���� ���� ���� 
- �ӽ����� 
- ���        : ����� ��� ~ �߰������� ���� ���� 
- ���        : �߰������� ���� ���� ~ �μ��� ���� ���� 
- �ĺ� �߼� : �μ��� ���� �� ~ �ĺ� ����� ���ű�� ���� 
- �ĺ� ���� : �ĺ� ����� ���ű�� ���� ~ �ĺμ��� �������� ���� 
- ���� �Ϸ� : �ĺμ��� �������� ��   
==============================================================================================================

- ��â �����鼭 �θ�â ���ε�(��â����  �ݱ� Ŭ����) 
function closeData() {   
opener.location.reload();  //���ε� 
self.close(); 
} 
--------------------------------------------------------------------------------------------- 

- ���ڼ� üũ 
function CheckStr(strOriginal, strFind, strChange){ 
    var position, strOri_Length; 
    position = strOriginal.indexOf(strFind);   
     
    while (position != -1){ 
      strOriginal = strOriginal.replace(strFind, strChange); 
      position    = strOriginal.indexOf(strFind); 
    } 
   
    strOri_Length = strOriginal.length; 
    return strOri_Length; 
} 

function save() 
{ 
var val = document.frmlist.content.innerText; 
var len = val.length; 
if (CheckStr(val, " ", "")==0)  
    { 
      alert("�Ѹ��� �� ���̱���... ��������.."); 
      document.frmlist.content.value=""; 
      document.frmlist.content.focus(); 
      return; 
    } 

==============================================================================================================

 -- ���� ���� 
SELECT A.EMPCD, A.EMPNM, A.EMPTELNO, A.USERREGNO,  A.EMPTELNO, 
A.DEPTCD, A.DUTYCD, A.JIKGUBCD, USERCONTACTS, EMAILADR, 
(SELECT DEPTNM FROM ADBMS.BPM10001 WHERE TRIM(DEPTCD) = TRIM(A.DEPTCD)) DEPTNM, 
(SELECT DUTYNM FROM ADBMS.BPM10002 WHERE TRIM(DUTYCD) = TRIM(A.DUTYCD)) DUTYNM, 
(SELECT JIKGUBNM FROM ADBMS.BPM10003 WHERE TRIM(JIKGUBCD) = A.JIKGUBCD) JIKGUBNM 
FROM ADBMS.BPM10004 A   
WHERE A.RETIREDT IS NULL   
AND A.COTPCD = 'C1'  
AND A.DUTYCD = '110'   --�����ڵ�(110:�μ���) 
==============================================================================================================

- ���� ���� 
3�� 10��(��) ���� ��ȭ�� �Ｚ���ǿ� ���� 
��Ʈ����+������+�÷���, ���� ��  
==============================================================================================================

������������������� 2008.03.05(��) �۾� �����������������
---> 06:50~ 22:00 

- ���� ���ö��̾� Prj
-  �˼� �� ���� ���� ����: �Ϸ� 
1. �ӽ����� �׽�Ʈ  
���� ó���� �� 
http://190.190.183.223:8888/sbm/appportal/myhome/tasksDone.jsp#this 
���� ������ �� 
http://190.190.183.223:8888/sbm/appportal/myhome/status.jsp#this  
2. �������� ���� ���� ����: �Ϸ�  
==============================================================================================================

- 3�� ���� �и��Ͽ� �ٽ� ���̱� 
�޾ƿ� ��(empnm: �̱���^^���α�, deptnm: ���ý��ۺ�^^���ý��ۺ�, dutynm: ����^^�μ���) 
�����(�̱���[���ý��ۺ�/����], ���α�[���ý��ۺ�/�μ���]) 
function setUser(empcd, empnm, deptcd, deptnm, dutycd, dutynm, jikgubcd, jikgubnm, emptelno, idx){  
 var f = document.form; 
var str_tot_name= ""; var str_name_sum3;  
arr_empnm = empnm.split("^^"); //�̸� 
arr_deptnm= deptnm.split("^^"); //�μ��� 
arr_dutynm= dutynm.split("^^"); //������     
for(i=0;i<arr_empnm.length;i++)  // �迭�� �� 
{ 
str_name_sum3 = arr_empnm[i] +"["+ arr_deptnm[i] +"/"+ arr_dutynm[i] +"]";   
if( i < arr_empnm.length -1) {   //,�� ǥ���� �� �ľ� 
str_tot_name += str_name_sum3+", ";   
} else { 
str_tot_name += str_name_sum3;    
}   
}  
} 
--------------------------------------------------------------------------------------------- 

- split ���� ���� �ڸ��� 
<script language="javascript"> 
function insertTable() 
{ 
var retval = "050110,050113,050101,050117,050321,050408"; 
arr = retval.split(",");  
var table_html = "<table>"; 
var row_html;  
for(i=0;i<arr.length;i++) 
{ 
row_html = "<tr><td>" + arr[i] + "</td></tr>"; 
table_html += row_html;  
}  
table_html += "</table>";  
document.getElementById("div_table").innerHTML = table_html; 
} 
</script> 
==============================================================================================================

 - ���� ����Ƽ�� ���� ������ ó�� 
�ڻ��� ���� *(��ȭ ��ȭ: ȯ�漳�� ��ť��Ʈ �����϶�� ��) 
���� �̸��� ����(*@*.*)  
1. ��Ͻ� ����Ű ġ�� 2ĭ ������(Shift + ���͸� ���������� ���ͷθ� �����ϵ��� ���� �䱸): ó�� �Ϸ�  
�ذ�å: ��. ������ ���콺 �����Ŵ����� ���ܰ� ��ϼӼ�(R) Ŭ�� -> �ٰ���: ����(���ܰ��ݾ���) �� �����ø� �ذ� 
(/NamoWec.cab ������ �ٽ� ����� �޶�� ��û) 
��.  [Shift]+[Enter]Ű�� �����ø� �� 
��. ȯ�溯�� ����(/conNamoWec.env)���� ����(���� �ҽ� ����) 
[Edit] 
ReturnKeyActionBR = Yes  
2. ��ȸ�� ���� ���� ���� ���� �޶������� �� ��: ó�� �Ϸ� 
 int p_character_lens = p_contrcontents.length();     //�ŷ�ü�� ���� ���ڼ�  
if(p_character_lens <200) {   
%> <iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:720;height:100;"></iframe> 
<% } else if(p_character_lens <400) {    
<% } else {%><iframe name="htmlFrame" id="htmlFrame" src="/sbm/bpmportal/ap/voc/jsp_common/namo/showHtmlFrame.jsp" style="width:720;height:600;"></iframe> 
<% } %>  
==============================================================================================================

������������������� 2008.03.06(��) �۾� �����������������
---> 06:30~ 22:30 

- ���� ���ö��̾� Prj
-  �˼� �� ���� ���� ����: �Ϸ� 
1. �ӽ����� ����(����Ƿ�, ����ǰ�)  
-. �������Ƿ� ��û���� �����ϵ��� ���� 
��. 3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp)������ ��ä���� �־ ���� �� �� 
��. ����ǰ� �ݷ�Ȯ�ο��� ���� ���� 
==============================================================================================================

������������������� 2008.03.07(��) �۾� �����������������
---> 05:50~ 18:30  --> �������� ��� ȸ��(������), �¿� ������ �湮(�� ������) 

- ����. ���� Prj
-  2�� �˼� �׽�Ʈ(������ �븮): ���� 
-  �˼� �� ���� ���� ����: �Ϸ� 
1.  ����ǰ� �ݷ�Ȯ�ο��� ��� ���� �����ϵ��� ����  
2.  ���� ����(��༭, �������� �ǰ߼�): �Ϸ�  
 - ����������Only �� ���ȵ�޼������� �������� Comple �Ѱ������ڷ� ���� 
 - �ĺ� ����� ���� AP �� �����ΰ����� ���شٰ� �մϴ�   
==============================================================================================================

������������������� 2008.03.08(��) �۾� �����������������
---> 08:00~ 21:30  --> ����, �Ӹ� �����뿪 ����(�����, �籸(2��), ����): ���� 5�ñ��� 

- ����. ���� Prj
-  ���� ��û ���� 
1. �������� ������ ����: �Ϸ� 
2. ���� ���� Ȯ��(��⵵ ��ȸ ����): �Ϸ� 
3. ������� �׽�Ʈ: �Ϸ� 
4. ���翡 ������ �����: �Ϸ� 
5. �����ǰ� ���� ��Ͻ� ����(������): �Ϸ� 
6. �� ��ȸ���� �ǰ� ���� ����: �Ϸ�  
7. ���� ������ ���� ����(��Ƽ�� ������6): ���� ����ڿ��� ���� �߼� 
<P>&nbsp;</P> --> <P>?</P> 
8. ���⹰ �ۼ�: �Ϸ� 
==============================================================================================================

- KTX ����(���)  
2008.03.09(��)   ���� -> ���뱸 06:10  ~ 08:01  
2008.03.09(��)   ���뱸 -> ���� 18:10  ~ 08:01  
[KTX �йи� üũ ī��(ö��ȸ��)] 
ī���ȣ: 0550566830/0**9 
www.qubi.com  --> tamario/ta****9 
==============================================================================================================

������������������� 2008.03.09(��) �۾� �����������������
---> 12:40~ 19:00  --> ȭ���� �౸�� ����(����, ȸ�� ������): ����. ���� Prj �׽�Ʈ ���� 

- ����. ���� Prj
- ���� �׽�Ʈ
- ��¥ Ÿ��(��¥ ������ setting) 
String ds_regdt = isContent ? DateUtil.dtos(DateUtil.strTotimeDate(StrUtil.nullToSpace(drDetail.getString
(1,"REGDT"))),"yyyy-MM-dd") : "";		// �������  
String ds_regdt2 = DateUtil.dtos(DateUtil.strTotimeDate(StrUtil.nullToSpace(drDetail.getString(1,"REGDT"))),"yyyy-MM-dd HH:mm");  
String ds_regdt  = DateUtil.dateChart3(StrUtil.nullToSpace(drDetail.getString(1,"REGDT2")),"-");		// �����2   
==============================================================================================================

- ���� �뼱
������ -> ��õ�� ���ƾ���Ʈ(641��) 
��õ�� ���ƾ���Ʈ-> ������(501��, 506��) 
==============================================================================================================

������������������� 2008.03.10(��) �۾� �����������������
---> 06:00 ~ 23:20  --> ���� ���� 1�� ö�� 

- ����. ���� Prj
-  ���� �׽�Ʈ 
1. ���� ������ ���� ����(��Ƽ�� ������6): �Ϸ� 
2. �������� ���� 
3. ��༭ ��� ��� ����(�˾�), ��ĵ ��� ���� 

<P>&nbsp;</P> --> <P>?</P> 
��Ƽ�� ������6 �����ڰ��̵� : http://www.namo.co.kr/activesquare/techlist/help/devel/  
<%!  
//���ڿ��� ������ ���ڿ��� ã�Ƽ� ���ο� ���ڿ��� �ٲٴ� �Լ� 
    public String replace(String original, String oldstr, String newstr)    
    { 
        String convert = new String(); 
        int pos = 0; 
        int begin = 0; 
        pos = original.indexOf(oldstr); 
        if(pos == -1) 
            return original; 
        while(pos != -1) 
        { 
            convert = convert + original.substring(begin, pos) + newstr; 
            begin = pos + oldstr.length(); 
            pos = original.indexOf(oldstr, begin); 
        } 
        convert = convert + original.substring(begin); 
        return convert; 
    } 
   // ������ HTML Ư����ȣ�� ���ڸ� HTML Ư����ȣ �������� ��ȯ 
    public String convertHtmlchars(String htmlstr)   
    { 
        String convert = new String(); 
        convert = replace(htmlstr, "<", "&lt;"); 
        convert = replace(convert, ">", "&gt;"); 
        convert = replace(convert, "\"", "&quot;"); 
        convert = replace(convert, "&nbsp;", "&amp;nbsp;"); 
        return convert; 
    } 
%>�� 
==============================================================================================================

- ���������� �ݷ�, ���� ���� �ֱ� 
if ((int_result_cnt % 2) == 1) {   //1. �ݷ� ����(������μ�)�� Ȧ�� �̸� 
if(app_stat.equals("2")) { //���� ����� �ݷ� �̸�  
int_ch_can_color += 1;  
}     
if(app_stat.equals("2")) { //���� ����� �ݷ� �̸�  
if ((int_ch_can_color % 2) == 1) {   //Ȧ���̸� 
sclass ="table_brwn02";   
} 
}    
}    
==============================================================================================================

- ���� ���� �׽�Ʈ(BPM���� �Ѿ� �� ��) --> TEST�� ��� 
String p_apprvstep_2  = ""+ bean.getPropLong("ApprStep");   
==============================================================================================================

- ���ȵ�� 
1. ��ü���� 
    - ���� ���� ��ü ���� 
2. ����������Only 
    - �ش� ������ �����, ������ ��� 
    - ����������(������, ����� �� ���� ��ϵ� ���) 
3. ������������ 
    - �ش� ������ �����, ������ ��� 
    - �������� ������  
==============================================================================================================

������������������� 2008.03.11(ȭ) �۾� �����������������
---> 06:00 ~ 21:00  --> �Ｚ���� ����(������ �Ｚ���� ����): (���� �Ⱓ: 03.11 ~ 07.11) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ�� 
AML(Anti Money Laundry): �ڱݼ�Ź���� 
http://www.ddaily.co.kr/news/news_view.php?uid=34888 
CIR(Compliance Information Report):  
��Ʈ����(Struts), ������, SAS AML �ַ��, �÷���  
----------------------------------------------------------------------------------- 

- �Ｚ. SAS AML Proj ȸ��(������ ����) 
1. UI  
 1) KYC(Know Your Customer: �ź� Ȯ��): ���� 
 2) Report 
  ��. AML ����(12��): HTML���� ������� 
  ��. Dash ����: ������ ����, ������ �븮(���������� ����) 
 3) STR(Suspicious Transaction Report: ���� �ŷ� ����) ����(�ѱ�) 
   ��. SAR(Suspicious Actity Report: ���� Ȱ�� ����) ����(�̱�)�� �����Ͽ� JSP�� ����(��Ʈ����, JSTL �±� ���) 
   ��. XML �������� ���α���� ���� 
2. ��Ÿ 
 1) ����(�����) ���� 
  ��. �Ｚ �׷쿡���� Single(SSO)�� ����ϰ� �־� SAS AML �ַ�ǿ� ���� �Ұ��� 
 2) ������ ����ó 
  ��. PM: ������ ����(SAS �ڸ���) ��. UI �Ѱ�: ���¼� ����(SAS �ڸ���) 
  ��. ETL Data: ����� ����  ��. AGP �ַ�� �м�: �տ��� 
  ��. �ַ�� �𵨸�: ������  
==============================================================================================================

- �Ｚ���� 
������ ���� * 
������ ���� * 
==============================================================================================================

������������������� 2008.03.12(��) �۾� �����������������
---> 06:20 ~ 16:00  --> ���� ���� �湮(16:40 ~ 07:20): ���� -> ���ǵ�(160�� ����), ö�� 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ�� 
1. ��Ʈ����(Struts) �м� 
����: ���� �����ӿ�ũ ��ũ�� ���缺 ��  �Ѻ��̵��  2003�� 10��(������ ������ ���� ��) 
JSP(Servlet, Action) --> Manager Ŭ���� --> ������ Ŭ����   --> Business Object Ŭ���� 
--> Data Access Object Ŭ����  --> DB 
-------------------------------------------------------------------------------------------------------- 

- �� 2 
������(1. ��û)  --> ��Ʈ�ѷ�(����)(2. �ν��Ͻ� ����) --> ��(�ڹٺ�) --> ������������ ����/������ �ҽ� 
   <--> (��) JSP(3. ����Ÿ ����, 5. ����) 
-------------------------------------------------------------------------------------------------------- 

1. �����ӿ�ũ ����: ���ø����̼� ���߿� ������ �Ǵ� ���ø��� ���� ������ �ϴ� Ŭ������� �������̽��� ���� 
2. �����ӿ�ũ Ư¡ 
 1) �����ӿ�ũ�� Ư�� ������� �߻�ȭ�� �����ϴ� ���� Ŭ������ ������Ʈ�� ���� 
 2) �����ӿ�ũ�� �̷��� �߻����� ������� ������ �ذ��ϱ� ���� ���� �۾��ϴ� ����� �����Ѵ�. 
 3) �����ӿ�ũ ������Ʈ���� ������ �����ϴ�. 
 4) �����ӿ�ũ�� �� �� ���� ���ؿ��� ���ϵ��� ����ȭ�Ѵ�. 

3. ��Ʈ���� ����: �� 2���� ���뼺�� �����ߴ� ���� �κе��� ������ �����ϰ� �̸� ������ ���� ���� 
�ӿ�ũ 
 1) ��� �� ���̿� ��Ʈ�ѷ� ���̾ ����(��� ���� ������ ���� ����) 
 2) JSP�� Action Ŭ���� ������ ������ �ҽ��� �ƴ� xml(struts-config.xml)�� �̿��Ͽ� �ذ� 
4. Eclipse�� Easy Struts�� �̿��� ���� 
 1) �ʺ��ڿ��� ���� 
5. Ant�� Xdoclet�� �̿��� ���� 
 2) EJB�� ������ ���α׷��� ����(��õ) 
==============================================================================================================

- SAS AML Proj ȸ��(������ ����, SAS �ڸ���: ���¼� ����) 
1. UI 
 1) KYC(Know Your Customer: �ź� Ȯ��): ���� 
 2) Report 
  ��. Dash ����: ������ �����ʿ���4������ ����� �����ؼ� �����ϸ� �� 
 3) STR() ����(�ѱ�): 3�� ������ UI ȭ�� ���� 
 4) Investigation: risk report �ۼ� 
2. ��Ÿ 
 1) �ҽ� �м� ���� 
 2) �ҽ� ���� ǥ��ȭ(������ .war ������ override)   
==============================================================================================================

- ����. ���� Prj
-  ���� ���� ���� 
1. ��༭, ���������ǰ߼� ���� ����: �Ϸ� 
2. ȭ�� ���� ����, �۱� ����: �Ϸ�  
==============================================================================================================

- ������ �ּ� 
�泲 ���� ���ε� ���� �ξ��ũ 102�� 106ȣ 
==============================================================================================================

������������������� 2008.03.13(��) �۾� �����������������
---> 07:50 ~ 22:00  --> ö��(�Ｚ���� �ٽ� ���)--> ���� ���� �湮(14:20 ~ 22:00) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ�� 
1. ��Ʈ����(Struts) �м�  

 - JSTL(JSP Standard Tag Library): ������ Ŀ�����±׵��� ��Ƽ� �̸��� �ٿ��� �� 
 The JSTL Expression Language  
������ jsp �������� ������ JSP ������(scoped)�� �Ӽ��� ��û ���ڸ� �̿��� ���޵ȴ�.  
EL�� �����Ͻ��������� jsp�������� ������ �����ϴ� �Ϲ����� ����� ���������ش�.  
EL�� JSP �� �������� �ϳ��� ����(key�� ����� �����Ҽ� �ۿ� ��.��) �̱� �ϳ� �Ϲ����� ���α׷���  
����� ������ �ƴϴ�.  ��ũ��Ʋ�� ���� �����ϰ� ���ø����̼� �����Ϳ� �����Ҽ� �ִ� ����� ���� �ִ�.  

 1) �ٽ� �±� ���̺귯���� ���� ���� �� ����, �׸� ���� �ݺ�, ���� �׽�Ʈ, �� ����Ʈ ����Ʈ �� ���𷺼� ����  
�ϻ����� �۾��� ���� �Ϲ����� ������ �����մϴ�.  
�ٽ� http://java.sun.com/jstl/core c <c:tagname ...> 
 2) XML �±� ���̺귯������ ���� �м�, XML ��� �ݺ�, XML ����Ÿ�� ����� ���� ��, XSLT(Extensible Style 
Language Transformations) ���� ���� ����� XML ó�� �� ������ ���� ������ ���ԵǾ� �ֽ��ϴ�.  
XML  http://java.sun.com/jstl/xml  x  <x:tagname ...> 
 3) ����ȭ �±� ���̺귯���� �ٱ��� ���ø����̼��� ���� ������ �����մϴ�.  
 ����ȭ http://java.sun.com/jstl/fmt  fmt  <fmt:tagname ...>  
 4) ����Ÿ���̽� �±� ���̺귯���� ����Ÿ���̽� ����Ÿ�� �׼��� �� �����ϱ� ���� ǥ��ȭ�� ������ �����մϴ�. 
����Ÿ���̽� http://java.sun.com/jstl/sql  sql  <sql:tagname ...>  
==============================================================================================================

- �ڹ� �������Ϸ� ���� 
C:\> cdD:\00. TAMA\02. My_Company\03. �����������\02. �Ｚ  SAS AML Proj(�Ｚ����)\91. �ҽ�\aml211 
\web\appl\sasaml\WEB-INF\classes\com\sas\aml\struts\action  
C:\>...\action> jad.exe *.class ===> ��ü ���� �����( jad.exe �ش� ������ ���� ��)  
C:\>...\action> rename *.jad *.java ===> ��ü ����  ���� ��ȯ 
==============================================================================================================

- ����. ���� Prj
-  ���� ���� ���� 
1. �ӽ����� ����: �Ϸ� 
2. �������� ����: �Ϸ� 
3. ����Ƿ� Ȯ�� ����(���缱 �߰�): ���� 
==============================================================================================================

������������������� 2008.03.14(��) �۾� �����������������
---> 07:00 ~ 24:20 

- ����. ���� Prj
- �Ǽ��� ����(20:00  ~ 24:20) 
1. ����Ƿ� Ȯ�� ����(���缱 �߰�): �Ϸ�   
2. �ְ����� �ۼ�: �Ϸ� 
-------------------------------------------------------------------------------------------------------- 

- ��������, ������� 
String p_apprvstep_2 = ""+ bean.getPropLong("ApprStep");     //��������(TEST) 
String p_apprvseq_2 = ""+ bean.getPropLong("ApprSeq"); //������� 

- ���������� ���(NULL �̸� 1 �̰� �� �׷��� MAX�� ��ȸ) 
SELECT DECODE(MAX(APPRVSTEP), NULL, 1, MAX(APPRVSTEP)) +1 AS APPRVSTEP 
FROM ADBMS.BPM17002 
WHERE RCVNO ='20080314-013' 
==============================================================================================================

- ȣ�پ� ��Ʈ�� 
nara/nara123 
==============================================================================================================

0. �������Ƿ� ��û(/con_deptRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ� 
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_1000/jsp/con_deptRegisterN.jsp 
/sbm/bpmportal/ap/voc/jsp_cmp/cnt/con_deptRegisterN.jsp 
1. ����Ƿ� ����(/con_deptSetN.jsp): �Ϸ� 
2. �������Ƿ� �ݷ�Ȯ��(/con_deptRegisterM.jsp): �Ϸ� 
3. ����Ƿڰ���(/con_comPreviewN.jsp): �Ϸ� 
4. ����Ƿ� �ĺ� ����(/con_comSetN.jsp):  �Ϸ� 
5. ����ǰ߼� ����(/con_comPreviewM.jsp):  �Ϸ� 
6. ����Ƿ� Ȯ��(/con_deptResultViewReqN.jsp): �Ϸ� 
7. ����ǰ� Ȯ��(/con_deptResultViewD.jsp):�Ϸ� 
-----------------------------------------------------------------------------------  
0. ����ǰ� ���(/con_offComRegisterN.jsp): ====> BPM �׽�Ʈ �Ϸ�  
http://190.190.183.223:8888/sbm/ebmsapps/TF_CMP_AB_2000/jsp/con_offComRegisterN.jsp  
1. ����ǰ� ����(/con_offComSetN.jsp): �Ϸ� 
2. ����ǰ� �ݷ�Ȯ��(/con_offComRegisterM.jsp): �Ϸ� 
3. ����ǰ� Ȯ��(/con_offDeptRegisterN.jsp): �Ϸ� 
4. ����Ƿ� ����(/con_offDeptSetN.jsp): �Ϸ� 
5. ����Ƿ� ����(/con_offComRePreviewN.jsp): �Ϸ� 
6. ����Ƿ� �ĺ� ����(/con_offComReSetN.jsp): �Ϸ�    
7. ����Ƿ� �������/con_offComRePreviewM.jsp): �Ϸ� 
8. ����Ƿ� �ݷ�Ȯ��(/con_offDeptRegisterM.jsp): �Ϸ� 
==============================================================================================================

������������������� 2008.03.17(��) �۾� ����������������� 
---> 07:00 ~ 22:40 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ������ ��ġ(platform816_win32.exe) 
1) Configuration the Administration Server 
Discard Changes: 
Name: AMLServer 
2) Configuration the Administrative Username and Password 
Discard Changes: 
Username: weblogic 
Password: ssjtm8**  
3) Build Start Menu Entries 
Short link Name: Start AML Server 
4) Create Weblogic Configuration 
Configuration Name: AMLDomain 
5) ��ġ �Ϸ� 

[WebLogic ����] 
1. �ܼ��� �����մϴ�. http://localhost:7001/console  (weblogic/tama0339) 
2. Deployments - Web Application Modules -  Deploy a new Web ����  
3. �ҽ� ��ġ(C:\AML211\web\appl\sasaml) ROOT ���丮�� �����ϰ� Target Module�� Ŭ�� 
4. Default �������� Deploy ��ư�� Ŭ���մϴ�. 
5. Deploy�� ���������� �ƴٸ� �Ʒ��� ���� ǥ�õ� 
6. Connection Pool �� �����մϴ�. 
    Services - JDBC - Connection Pools -Configure a new JDBC Connection Pool... ���� 
7. ����Ŭ ����̹��� �����ϰ� Continue ��ư�� Ŭ�� 
Name: AML KC Connection Pool 
Database Name: DRISKDEV 
Host Name: 45.1.150.215 amlctr/amlctr1  
==============================================================================================================

- ���� ȸ��(������ ����, ���¼� ����, ����� ����, �ۿ���, ������, ������ ����) 
1. ���� �ؼ�(�ְ����� �ۼ�) 
2. ��ü ���� ����(3�� 18��(ȭ)) 
3. ������ ���� 
 1) ETL: 1�� Data �ε�(���� �ݿ��ϱ���) 
 2) �𵨸�: ���� ���� 
 3) UI  
  ��) KYC����(���� üũ) -> KPMG�� ����: ������ �ۼ�(����: 5���ʱ��� ������ ���� 
���� ���⹰: ȭ�� ���̾ƿ�, ���α׷� ��뼭, ���̺� ���Ǽ�) 
  ��) STR: ���̺� ������ ���� ���� -> 4����(Task�� ����) 
ERD ����, Prototype ����(26�� �� ERD����), ���� ǥ�� �۾�(Eclipse CVS, ANT) 
  ��) Dash Board: ��ȯ���� ��� �м� -> Flex������ ����(spring���� ���̾ƿ� ����)  
 4) What's list: KYC�� ���� 
 5) �ý���: AML ������ ������ ������ ����(�ִ� ����� 20��) 
 6) SSO����: Action servlet ����� ���� 
==============================================================================================================

- �Ｚ���� ��Ʈ��(IP �ּ�)  --------- 
IP: 45.10.4.21 
S.M: 255.255.255.0 G.W: 45.10.8.241 
DNS: 203.241.132.34 
------------------------------------------------------------------------------ 
- ���� ���� 
\\45.10.10.155\rms ���⹰���� rms/rms123 
- ������ ���� 
�Ｚ����\Printer Setup\APC4300\XDrivers1.5.exe ���� Ŭ�� 
IP: 45.10.10.156   ����̹���: FX ApeosPort-II C3300 PCL 6 
- FnMessenger ��ġ 
- V3 ��ġ(V3 IS 7.0) 
http://45.12.20.111:8080/apc/AgentInstall/list_agent.asp  
- �Ｚ���� AML TNS DB 
DRISKDEV, HOST = 45.1.150.215 amlctr/amlctr1 
==============================================================================================================

- �޽��� ���� ���� ��� 
�޽����� ���񽺸� ������ ����� �� ȸ���� ��Ʈ��ũ�����ڰ�  
����Ϳ��� ip access list (�ý��� ������� ���) ��°��� �����ؼ�  
�޽����� ip port no�� inbound, outbound ���񽺸� ��������������,  
���� ������ �ƴ� ��� ���� ���� �Ұ��� 
------------------------------------------------------------------------------ 
- �ڹ� �޽��� �ҽ� 
http://www.m2mcomputer.com/project/project3.asp 
==============================================================================================================

������������������� 2008.03.18(ȭ) �۾� �����������������
---> 07:10 ~ 22:30 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ�� 
1. SAS ���α׷� ��ġ 
SAS ��ġ Pack���� �� 5���� CD�� ��õ� Label�� Ȯ�� �� ����ϰ� �� 

2. ������ ��ġ(platform816_win32.exe) 
1) Configuration the Administration Server 
Discard Changes: 
Name: AMLServer 
Listen Port: 7001 
2) Configuration the Administrative Username and Password 
Discard Changes: 
Username: weblogic 
Password: ssjtm8**  
3) Build Start Menu Entries 
Short link Name: Start AML Server 
4) Create Weblogic Configuration 
Configuration Name: AMLDomain 
5) ��ġ �Ϸ� 

[WebLogic ����] 
1. �ܼ��� �����մϴ�. http://localhost:7001/console(weblogic/tama0339) 
2. Deployments - Web Application Modules -  Deploy a new Web ����  
3. �ҽ� ��ġ(C:\AML211\web\appl\sasaml) ROOT ���丮�� �����ϰ� Target Module�� Ŭ�� 
4. Default �������� Deploy ��ư�� Ŭ���մϴ�. 
5. Deploy�� ���������� �ƴٸ� �Ʒ��� ���� ǥ�õ� 
6. Connection Pool �� �����մϴ�. 
    Services - JDBC - Connection Pools -Configure a new JDBC Connection Pool... ���� 
7. ����Ŭ ����̹��� �����ϰ� Continue ��ư  Ŭ��  
- Database type: Oracle 
- Database Driver: Oracle Driver(Thin) Versions 9.0.1.9.2 
8. ������ ���� �Է��ϰ� Continue ��ư�� Ŭ�� 
- Define connection Properties 
Name: AML KC Connection Pool 
- Connection Properties 
Database Name: DRISKDEV 
Host Name: 45.1.150.215 Port: 5121 
Database User name: amlctr Password: amlctr1 
9. �Ʒ��� ���� ������ Ȯ���ϰ� ��Test Driver Configuration���� Ŭ���մϴ�.  
Driver Class name:  
10. �Ʒ��� ���� �׽�Ʈ�� �Ϸ�Ǹ� Create and deploy�� Ŭ���մϴ�. 
11. Connection Pool�� �����Ǹ� �Ʒ��� ���� ǥ�õ˴ϴ�. 
12. Data Source�� �����մϴ�. 
     Services - JDBC - DataSources - Configure a new ... �����մϴ�. 
13. JNDI Name�� �Ʒ��� ����(AML��) �Է��ϰ� Continue�� Ŭ���մϴ�. 
Name: AMLCtrDS 
JNDI Name: AMLCtrDS 
14. Pool Name�� �����ܰ迡�� ������ Connection Pool(AML��)�� �����ϰ� 
     Continue�� Ŭ���մϴ�. 
15. Create ��ư�� Ŭ���մϴ� 
16. Data Source �� �����Ǿ��ٸ� �Ʒ��� ���� ǥ�õ˴ϴ�.  
17. ��ġ/������ �� �̷�������� Ȯ���մϴ�. (http://localhost:7001/tmpl/ComUsrLogin.jsp) 
==============================================================================================================

3. WTP(Web Tools Platform) ��ġ 
WTP������ Tomcat, WebLogic, WebSaphere, JBoss, JOnAS, Oracle OC4J �� ���� �������� ����� �� �ֵ��� 
�پ��� ���񽺸� ���� 
1) apache-tomcat-5.5.15 ��ġ(Port=8081) 
2) Generic BEA weblogic Server v8.1 ��ġ(Port=7001) 
Project name: TestWebProject 
------------------------------------------------------------------------------ 

- ���忡 ���� ������ ����Ǵ� �� 
C:\AML211\web\appl2\sasaml\WEB-INF\web.xml  
C:\Program Files\Java 
jdk1.5.0_11, jre1.5.0_11(J2SE 5.0) 
==============================================================================================================

- 8080 ��Ʈ ���� 
�����۵��ϴ� ���̴� 
���� ����: Tomcat5�� http://localhost:8080 �������� �߸鼭 "XDB�� ���� localhost��(��) ����Ϸ��� �����  
�̸��� ��ȣ�� �ʿ��մϴ�."��� ������ �߻� 
����:  ����Ŭ ���� 9i �̻� ��ġ�ϸ� ����Ŭ Ŭ���̾�Ʈ���� �ƴ� ������ ��� ����Ŭ���� 8080 ��Ʈ��  
����ϹǷ� ��Ĺ�� �����Ͻ� ���� �����ϴ�.  
��ġ: ����Ŭ XDB�� ��Ʈ ���� 
C:\Documents and Settings\geenoo> netstat -ano  
Proto  Local Address          Foreign Address        State           PID  
 TCP    dozuq:8080             dozuq:0                LISTENING        500 
 TCP    dozuq:2100             dozuq:0                LISTENING        500  
:  
PID�� ���μ����� ã�´�.  

C:\Documents and Settings\geenoo> tasklist /SVC /fi "PID eq 500"  
�̹��� �̸� PID ���� 
========================= ====== ============================================= 
TNSLSNR.EXE                  500 OracleOraHome92TNSListener 
  
���� ������� �������� ���� ���¸� ����.  
D:\oracle\ora92\bin>lsnrctl status 
 DESCRIPTION=(ADDRESS=(PROTOCOL=ipc)(PIPENAME=\\.\pipe\EXTPROC0ipc))) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=1521))) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=8080))(Presentation=HTTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=2100))(Presentation=FTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=8080))(Presentation=HTTP)(Session=RAW)) 
  (DESCRIPTION=(ADDRESS=(PROTOCOL=tcp)(HOST=dozuq)(PORT=2100))(Presentation=FTP)(Session=RAW)) 

Oracle XDB �� 8080(HTTP)�� 2100(FTP) ��Ʈ�� ���ٴ� �� Ȯ���ߴ�.  
���� ��Ʈ(Port)�� �����غ���.  
 FTP: 2101, HTTP: 8081   --> ��Ʈ ���� ����  
 ==============================================================================================================

������������������� 2008.03.19(��) �۾� �����������������
---> 07:10 ~ 21:00  --> ���� ����(����:���� ��, �籸: ���� �̱�) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ�� 

1. WTP(Web Tools Platform) ��ġ 
WTP������ Tomcat, WebLogic, WebSaphere, JBoss, JOnAS, Oracle OC4J �� ���� �������� ����� �� �ֵ��� 
�پ��� ���񽺸� ���� 
1) Generic BEA weblogic Server v8.1 ��ġ(Port=7001) 
Project name: TestWebProject 
��������: server port in use 7001- HTTP  
��ġ: 1. ���� Stop    
2. ���� State�� Synchronized�� �ƴ� ������ ���Ḧ �ϰ� �ȵǸ� Eclipse ���� �� ����� 
==============================================================================================================

1. ����->����->cmd-> java -version  
: ����Ȯ�� ��!!! �� 1.3 ���� �ϰ� �����.  
  
2. ����ǻ��->���->ȯ�漳��  
: path �� java_home�� Ȯ���Ѵ�. �� path�� kenu�� ������ oracle/jre�� �����ִ�. �̷� ����....  
�����.  
  
1. �ڹ� ȯ�溯�� ����(Java_Home, Path, Classpath) 
 1) Java_Home 
�ڹٰ� ��ġ�� ��θ� ���ϸ�, Java�� ������������ ����Ѵٸ�, ����Ʈ�� ����� �ڹٷ� �����Ѵ�.  
����â���� set Java_Home ����! 
C:\Program Files\Java\jdk1.5.0_11  
 2) Path 
�������α׷��� �ִ� ��ġ�� �������ִ� ȯ�溯��.  
- �ü���� ���α׷��� �����Ҷ� �����ϴ� ���丮.   
- ���������Ʈ(cmd)�� ������ �� set path �����ϸ� pathȯ�溯���� ���� �� �� ����  
 3) Classpath  
�ڹٰ���ӽ��� �ڹ�Ŭ���� ������ ã�� ���� ȯ�� ����. path�ʹ� �޸� .; ���� ���� ���丮�� �����Ѵ�.  
�ڹٸ� ������ �� ��, �⺻���� �ڹ� Ŭ������(���̺귯��)�� �ʿ��ϴ�. �� Ŭ�������� ��� ��ġ�� �ִٴ�  
���� �ڹ� ���α׷��� �� �� �ֵ��� ��ġ�� �������ִ°�.  
==============================================================================================================

�ٸ� ���μ����� ������ ��� ���̱� ������ ���μ����� �׼��� �� �� �����ϴ�. 
   === Debugging === 
This window is necessary for debugging code using WebLogic Workshop 
java version "1.4.2_11" 
Java(TM) 2 Runtime Environment, Standard Edition (build 1.4.2_11-b06) 
Java HotSpot(TM) Client VM (build 1.4.2_11-b06, mixed mode) 
 ==============================================================================================================

 �ý��� ��ɾ��� netstat �� ����ϴ� ��� 
# netstat -n (���� �ִ� ��� ��Ʈ) 
#netstat -nap (���� �ִ� ��� ��Ʈ) 
#netstat -l �Ǵ� netstat -nap  grep LISTEN (LISTEN �Ǵ� ��� ��Ʈ) 
#netstat -nap  grep ESTABLISHED  wc -l ( ��� ���� ���� ������ ��) 
#netstat -nap  grep :80  grep ESTABLISHED  wc -l ( �� ���� ������ ��) 
  
- ��Ʈ��ĵ ��ɾ�� Ȯ�� �ϴ� ���  
# TCP ��Ʈ Ȯ�� ��� 
nmap -sT -p 1-65535 localhost  
# UDP ��Ʈ Ȯ�� ��� 
nmap -sU -p 1-65535 localhost 
# ��Ʈ��ũ�� ���� ��Ʈ Ȯ��  
nmap -sX -p 22,53,110 211.239.111.*   
lsof ��ɾ�� Ȯ�� ���  
==============================================================================================================

- �ֽ� ����(������ ���� ��õ) 
��������Ƽ��(036180)   ���簡: 4,640�� 
http://www.younginfrontier.com 
http://www.kiwoom.com --> Ű�� ���� ���� 
--> ���� ���� ����(��������): 344990-60-011040(Ű�� �ŷ���� ����: 3537-9861-11) 
==============================================================================================================

- FN �޽��� ��ġ 
ID: 700178/1234 
==============================================================================================================

������������������� 2008.03.20(��) �۾� �����������������
---> 07:10 ~ 23:00 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. Generic BEA weblogic Server v8.1 ��ġ(Port=7001) 

<name>redirect</name> 
<tagclass>org.apache.struts.taglib.logic.RedirectTag</tagclass>  
http://localhost:7001/amlProject/index.jsp  
http://localhost:7001/amlProject/SampleTestServlet 
- java ���� ��ġ 
C:\AML211\web\appl\sasaml\src 
- class ���� ��ġ 
C:\AML211\web\appl\sasaml\build\classes 
----------------------------------------------------------------------------------------- 

C:\AML211\web_2\appl\sasaml\TestWebProject\WebContent\index.jsp 
Buildfile: D:\00. TAMA\02. My_Company\03. �����������\02. �Ｚ  SAS AML Proj(�Ｚ����) 
\92. ��Ÿ �ڷ�\92. ��ġ ���α׷�\51. WTP\wtp-all-in-one-sdk-R-1.5.4-win32 
\eclipse\plugins\org.eclipse.jst.server.generic.weblogic_1.5.1.v200609141504\buildfiles\weblogic.xml 
undeploy.j2ee.web: 
BUILD SUCCESSFUL  
==============================================================================================================

- XML �����⿡ ���� web.xml ���� 
C:\AML211\web\appl\sasaml\WebContent\WEB-INF\web.xml ���Ͽ��� 
<!-- Standard Action Servlet Configuration (with debugging) --> 
<servlet> 
<servlet-name>action</servlet-name> 
<servlet-class>org.apache.struts.action.ActionServlet</servlet-class> 

<init-param> 
    <param-name>config</param-name> 
    <param-value>/WEB-INF/struts-config.xml</param-value> 
</init-param> 

  <!-- The Usual Welcome File --> 
<welcome-file-list> 
<welcome-file>index.jsp</welcome-file>  
</welcome-file-list>  

<servlet> 
<servlet-name>SampleTestServlet</servlet-name> 
<display-name>SampleTestServlet</display-name> 
<description></description> 
<servlet-class> 
wtp.test.SampleTestServlet</servlet-class> 
</servlet> 

  <!-- Struts Tag Library Descriptors --> 
<taglib> 
<taglib-uri>/WEB-INF/struts-bean.tld</taglib-uri> 
<taglib-location>/WEB-INF/struts-bean.tld</taglib-location>  
</taglib> 

<taglib> 
<taglib-uri>/WEB-INF/struts-html.tld</taglib-uri> 
<taglib-location>/WEB-INF/struts-html.tld</taglib-location>  
</taglib> 

  <!-- JSTL Descriptors --> 
<taglib> 
<taglib-uri>http://java.sun.com/jstl/core</taglib-uri> 
<taglib-location>/WEB-INF/c.tld</taglib-location>  
</taglib> 

<taglib> 
<taglib-uri>http://java.sun.com/jstl/fmt</taglib-uri> 
<taglib-location>/WEB-INF/fmt.tld</taglib-location>  
</taglib> 
==============================================================================================================

- [�ְ����� 2008�� 3�� 3°��] 
�� ���� ���� ����(03/17 ~ 03/21)  
1. ����ȯ�� ��ġ 
 1) SAS ���α׷� ��ġ 
 2) ������ ��ġ(Generic BEA weblogic Server v8.1) 
 3) Eclipse WTP(Web Tools Platform) ��ġ 
2. ����ȯ�� ��ġ �Ŵ��� ����ȭ �۾� 
 1) ������, Eclipse WTP  
3. AML �ҽ� �м� 
 1) ��Ʈ����(Struts) �м� 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(03/24 ~ 03/28)  
1. STR 1��, 2�� ȭ�� ���� 
 1) �ܼ� ���������̼� ȭ�� �ÿ�(���� PC)   
==============================================================================================================

������������������� 2008.03.21(��) �۾� �����������������
---> 07:10 ~ 19:00  --> ����,�Ӹ� ����(����:���� ��, �籸:2��(�Ӹ� 3�� ��)) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ��Ʈ����(Struts) �м� 
- ��Ʈ������ Action, ActionForm Ŭ������ JSP ������ ���� ������ struts-config.xml ���Ͽ��� ���� 
- Ŭ���̾�Ʈ�κ��� ��û�� ���� ��� ��Ʈ���� �����ӿ�ũ�� struts-config.xml ������ �о� Action,  
ActionForm Ŭ������ ��Ȯ�ϰ� ã�� ������ 
==============================================================================================================

- ��ȸ 
 SELECT * FROM FSK_USER  -->  
==============================================================================================================

������������������� 2008.03.23(��) �۾� �����������������
---> 11:00 ~ 17:00  --> ����(���¼� ����(��), ����� ����) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ��Ʈ����(Struts) �м� 
==============================================================================================================

- ȭ�� ��ȣ��: ���� 
3M��ǻ��ȭ�麸ȣ��DQC13.3w  28,000�� 
http://www.cjmall.com/prd/detail_cate.jsp?item_cd=11003872&shop_id=9100000002 
- ��Ʈ�� �� �߰�: ���� 
RAM: 2GB(�Ｚ �� DDR2 2G PC2-5300S) --> 3GB 
2G �����ϰ� 1G �Ǹ�(�� 3G�� ��, ����: 30,000��)     
- PC �ϵ� �߰�: ���� 
�Ｚ / HD501LJ(500G,16M)-ST2S-ATAII 500GB 7200RPM 16MB ��ǰ (325094071) , ����: 99,190��) 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A098563975&frm3=V2  
- LG ���콺(3D-320) ���� 
LG 3D-320 2�� 14,040�� 
http://itempage3.auction.co.kr/DetailView.aspx?itemno=A094895587&frm3=V2  
- USB ��Ʈ: ���� 
4��Ʈ USB ���  ����: 4,000�� 
- ���� ���̺�: ����(����: 1,000��) 
- �ּ�: ����� ���α� ����2�� 6���� ����Ÿ�� �Ｚ���� 3�� ������  
����ũ���� ����ȭ ������Ʈ AML��(�����������) Tel) 02-2020-6890 
==============================================================================================================

- XP���� ��Ʈ��ũ ���������� ��ȣ �ο��ϴ� ��� 
1. ����: ����->����(R) -> cmd(O) ->   
> net user guest tama12 
2. ���� Ȯ��: ������(C) -->����� ���� --> ����� ����(�˾�) 
--> Geust(Geust ���� ���) Ŭ�� --> ��ȣ ���� ����(��ȣ ���� ��������) 
==============================================================================================================

������������������� 2008.03.24(��) �۾� �����������������
---> 07:20 ~ 22:10 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ��Ʈ����(Struts) �м� 
- ��Ʈ������ Action, ActionForm Ŭ������ JSP ������ ���� ������ struts-config.xml ���Ͽ��� ���� 
- Ŭ���̾�Ʈ�κ��� ��û�� ���� ��� ��Ʈ���� �����ӿ�ũ�� struts-config.xml ������ �о� Action,  
ActionForm Ŭ������ ��Ȯ�ϰ� ã�� ������ 
==============================================================================================================

1. eclipse WTP ���� 
1) Project ���� 
new --> Other.. --> Web --> Dynamic Web Project --> New Dynamic Web Project 
Project name: AML211 
Directory: D:\Proj_sasaml\sasaml  Default �������� Deploy ��ư�� Ŭ���մϴ�. 
2) ���� ���� 
new --> Other.. --> Server --> Server: Generic BEA weblogic Server v8.1 ���� 
 --> New Server :  
Domain Directory: C:/bea/weblogic81/samples/domains/workshop 
Start Script: C:/bea/weblogic81/samples/domains/workshop/startWeblogic.cmd 
Sop Script: C:/bea/weblogic81/samples/domains/workshop/stopWeblogic.cmd 
Port: 7001 Debug Port: 8453 
 --> Add and Remove Projects 
Available Projects : AML211 ==> Configured Projects: AML211 
 --> Finish   
------------------------------------------------------------------------------------------ 
Name: AML Core Connection Pool Database Name: DRISKDEV 
Host Name: 45.1.150.215 Database User Name: amlctr/amlctr1  
AMLCoreDS 
------------------------------------------------------------------------------------------  
 - Configure mail session 
Name: SAS AML Mail Session 
JNDI Name: SAS AML Mail Session 
==============================================================================================================

- ���� ����: javax.servlet.UnavailableException 
ó������ ������ ��û�� ��� ���� �� �ش� ������ ���� �����̳ʿ� ���� �ڵ����� �޸𸮿� �ε� �Ǿ�  
����. �޸𸮷� ���� Ŭ������ �ε� �� �� �ٷ� ��ü�� �����ϰ� �Ǹ� ��ü ������ ���ÿ� init() �޼��带 ȣ 
���ϰ� �ȴ�. init() �޼���� ���� �ε� �� �� �ѹ� ȣ���ϰ� �Ǹ� ������ �߻����� �� UnavailableException 
�̳� ServletException�� �߻� ��Ű�� �ȴ�. ���� ��ü�� �޸𸮸� �����ϱ� ���ؼ� destroy�޼��带 ȣ���ϰ� �ȴ�. 
1. ������ ���� ���� 
- Ŭ���̾�Ʈ�� ��û 
- ���� Handler 8080��Ʈ���� ��û ���� 
- ���� �����̳ʿ��� �ش� ���� �˻� 
- �ش� ������ �����ͺ��̽� �۾��� �ؾ� �Ѵٸ� DB����, �۾� 
- ��� �۾��� �Ϸ� �Ǿ��ٸ� �������� ����� ���� �Ѵ�.  
==============================================================================================================

- ��������: HTTP 500���� ��� �����󿡼� ���α׷��� �����߿� ������ �߻��ߴٴ� �̴ϴ�. 
����: ��������� �ش� ���� �޼����� �ش� ó���� ���� Ŭ���� ������ ���ٴ� ���Դϴ�.  
 - ��������: HTTP Status 404 - Servlet action is not available 
����: ��Ĺ & ��Ʈ���� ȯ�濡��  404 - servlet action is not available  
����: DB ������ �ȵǼ� �����͸� ������ ���� ����ϼ� ����. DB �����Ϳ� ���õ� �������� ���ҷ��ͼ� 404  
������ �������⵵ �Ѵ�. 
�ذ�: DB ���� �����κ� ���� 
 - ��������: java.io.IOExcetion: Stream closed  
����: �ϵ��� ����� ������ �߻��� �����ϴ� �ñ׳��� �߻���ŵ�ϴ�. 
�ذ�: - �����Ǿ� �ִ� configuration�� �� �¾� ���� ���� 
- weblogic �ܼ� ���������� DB Ŀ���� ����(�ƴ�) 
==============================================================================================================

������������������� 2008.03.25(ȭ) �۾� �����������������
---> 07:10 ~ 22:00  --> ����(�ＺSDS ������: ������(2��), ���������� ��) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ����Ŭ 10g ��ġ ���� 
���� ����: "oraparam.ini ���� �ʿ� ���� �˻縦 ã�� �� ���� �ý��� �ʿ� ���� �˻簡 ������� �ʽ��ϴ�. 
�������� Oracle Universal Installer�� ������ �غ��ϴ� �� C:\Documents and Settings\tama2 
\Local Settings\Temp\OraInstall2008-03-25_08-57-55PM ��ٸ��ʽÿ�."��� 
universal installer���� ���߾��ִ�����... 
------------------------------------------------------------------------------------------  
ó����.. ���� �ֽ� �������� �߾��µ���..  
����Ŭ 8.1.7 �ν��緯 �����ÿ�..  
jre ���̳ʸ� ������ ã�µ�..  
�ֽ� ��������.. �����󱸿�..  
JRE_LOCATION=/usr/local/jre <-- �̳��� ã���󱸿� 
------------------------------------------------------------------------------------------ 

- ����Ŭ ���� 
�켱 ����Ŭ �õ� �־ Oracle Universal Installer�� ���� �մϴ�   
��ǰ ��ġ ���� ��ư�� ������ ����Ŭ�� ���� �մϴ�.   
�̷��� ����Ŭ�� �����ص� ����Ŭ�� ������ �������� �ʽ��ϴ�.    
����Ŭ�� ������ �����ϱ� ���ؼ��� Registry�� �����ؾ� �մϴ�.    
���� ����Ŭ ���񽺸� ���߾�� �մϴ�.    
NT4�� ���� ������ -> ���񽺸� ���ø� �Ǹ�   
����2000 ������ ���� �������� -> ���� �� ���ø� �˴ϴ�.   
����Ŭ ���õǾ� ���۵� �̶�� �Ǿ� �ִ� ���񽺵��� ��� ���߽ñ���..   
���� regedit���� ������Ʈ���� �����Ͻø� �˴ϴ�.    
regedit�� ���� ��Ű�ð�...   
HKEY_LOCAL_MACHINE->SYSTEM->CurrentControlSet->Services    
�� ���ø� Oracle �� ���۵Ǵ� �͵��� �ִµ��� �̺κ��� ���� �����ֽð��,   
������   
HKEY_LOCAL_MACHINE->SOFTWARE->ORACLE   
�κ��� ���� �����ּ���...    
�׷��� ��ǻ�͸� ����� �Ͻð�.. ���� Ž���⸦ �̿��� ���������� �����ϴ� ����Ŭ ���丮�� �����Ͻø� �˴ϴ�.  
C:\Program Files\Oracle  
http://cafe.naver.com/maketruedream.cafe?iframe_url=/ArticleRead.nhn%3Farticleid=110 
==============================================================================================================

������������������� 2008.03.26(��) �۾� �����������������
---> 07:10 ~ 18:00 --> ������ ���� ����(���Ǹ� �����ӿ� ���� ���� ����) 

- �Ｚ AML Prj 
- �Ｚ���� SAS AML �ַ��
1. ����Ŭ 10g ��ġ ����  
XP���� ����Ŭ 10g�� ��ġ�ϴ� �� �Ʒ��� ���� ������ ���鼭 
����ϴ�. 
���� ��Ź �帳�ϴ�.  
(��Ʈ��: �Ｚ ���� NT-Q70A/A1, (����)�ھ�2���(��Ÿ�λ�) / T7250 (2.0GHz))  
---------------------------------------------------------------------------------------------  
- ���� ����: "oraparam.ini ���� �ʿ� ���� �˻縦 ã�� �� ���� �ý��� �ʿ� ���� �˻簡 ������� �ʽ��ϴ�. 
�������� Oracle Universal Installer�� ������ �غ��ϴ� �� C:\Documents and Settings\tama2 
\Local Settings\Temp\OraInstall2008-03-25_08-57-55PM ��ٸ��ʽÿ�."��� 
universal installer���� ���߾��ִ�����...  
�ذ�å: ��Ʈ�� OS �����ϰ� XP Pro �ٽ� �� 
==============================================================================================================

- 2008�� 3�� �ǰ������ �ڵ���ü ��û: �Ϸ� 
41,840�� ����ȣ(���ڳ��ι�ȣ(11�ڸ�)): 21017603269 
==============================================================================================================

������������������� 2008.03.27(��) �۾� ����������������� 
---> 06:50 ~ 22:30  --> AML������ �౸ ����(�� 0:0 ��) �̱�(3���� ��) 

- �Ｚ AML Prj 
- SAS AML ����(user1/user1)  =====> ������ ���� �Ϸ� 
http://45.10.4.21:7001/sasaml/vxi/AlertListUser   
http://45.10.4.21:7001/sasaml/vxi/Auth 
/tiles/alertTable.jsp  --> ����Ʈ ��ũ �� 
  
- SAS AML STR ����(�˾�) 
http://45.10.4.21:7001/sasaml/vxi/AlertSAR?alertId=15&queryType=user  
System.out.println("[/index.jsp]:[test]"); 
==============================================================================================================

- 1) login.jsp ���� 
<form name="logonForm" method="post" action="/sasaml/vxi/Auth;jsessionid=QnJsHrpKg0DzQzqJJJzC67hVc0QL8h2vvGmYSJBY91ScCq7WVcYf!1276577622"> 
[�α��� ������] 
</form>  
--------------------------------------------------------------------------------------------- 
  
- 2) struts-config.xml ���� 
<form-beans type="org.apache.struts.action.ActionFormBean">  
        <form-bean name="logonForm" type="com.sas.aml.struts.form.LogonForm" /> 
</form-beans> 

<action 
attribute="logonForm" 
input="/logon.jsp" 
name="logonForm" 
parameter="/index.jsp" 
path="/Auth" 
scope="request" 
type="org.apache.struts.actions.ForwardAction" /> 
==============================================================================================================

- OS �缳ġ(XP Pro) 
- Video ī�� ��ġ ���� 
1. �Ｚ ��Ʈ�� NT-Q70 XP Geforce ��ġ�� ���� 
 1) ��������: ���� ���� -> "nv4_mini_sys ������ ������ �� �����ϴ�." 
 2) ����: ȣȯ���� �ʴ� ����̹� ���� 
 3) ��ġ: 
  - ���������� 1588-3366������ ���(�������� ���� ����)   
  - ������ Ȩ(http://www.zaigen.co.kr) --> �ڷ�� --> �� �˻�: sens r700  --> �׷��� ī��: Ŭ�� 
  - 20080131170052984_Graphics_Driver_6.14.11.5676.zip �ٿ� �޾Ƽ� ���� Ǯ�� ��ġ   
==============================================================================================================

- ��İ�� �缳ġ, ���� 
�����: ���¸� 
�ڻ��ȣ(Serial Number): AV5293BPC0147Y 
��: NT-Q70A/A1 
==============================================================================================================

 - weblogic ���� 
D:\Proj_sasaml  sasaml.war 
C:\bea\user_projects\domains\AMLDomain\startWebLogic.cmd ���Ͽ��� 
CLASSPATH�� D:\Proj_sasaml\config; �߰�  
------------------------------------------------------------------------------------------------------- 
  - weblogic ���� ���� 
1) ��������: http://localhost:7001/console���� id/pwd ġ�� â�� ���� 
2) ��ġ: jre1.6(java) ���α׷� �߰�/�������� ���� 
==============================================================================================================

 - java ȯ�� ����(oracle\product\10.2.0\client_1�� ����Ŭ ��ġ�� �ڵ����� ���� ��) 
CLASSPATH ==> C:\Program Files\Java\jre1.5.0_11\lib; 
PATH ==> C:\Program Files\Java\jre1.5.0_11\bin;c:\oracle\product\10.2.0\client_1\bin;%SystemRoot%\system32; 
==============================================================================================================

-  [�ְ����� 2008�� 3�� 4°��]   
�� ���� ���� ����(03/24 ~ 03/28)  
1. STR Prototype ȭ�� ����(1��, 2��) 
2. AML �ҽ� �м� 
 1) ��Ʈ����(Struts), JSTL �м� 
------------------------------------------------------------------------------------------ 

�� ���� ���� ��ȹ(03/31 ~ 04/04)
1. STR Prototype ȭ�� ���� �Ϸ� 
2. ����ȯ�� ��ġ �Ŵ��� ����ȭ �۾� 
 1) ������, Eclipse WTP 
==============================================================================================================

������������������� 2008.03.28(��) �۾� �����������������
---> 07:00 ~ 20:00  --> ����, �Ӹ� ���� ����(�����, �籸(3��)): 23�ñ��� 

- �Ｚ AML Prj 
- STR Prototype ȭ�� ����(1��, 2��)  
- SAS AML STR ����(�˾�) 
http://45.10.4.21:7001/sasaml/displaySTRs.jsp 
http://45.10.4.21:7001/sasaml/displaySTRs_step2.jsp 
==============================================================================================================

- Ư������(EditPlus ����: �θ� ����)  
1. �� + ����: ��ǥ,����(��, ��) ����,  ��+ ����: ����ǥ(��)  
(��+����Ű:��, ��,����� �������� �θ����ڤ�  
��, ��, ��,  ��, ��, ��, ��, ��, ��, �� �� 
������ --> ���ۡ��� ���α׷��� �������α׷��� �ý��� ������ ����ǥ 
==============================================================================================================

������������������� 2008.03.29(��) �۾� �����������������
---> 09:20 ~ 17:00  --> �������� ����(�е���, �籸(2��, 4��): 4����, Ƚ��, �籸(4��):�� õ��), �¿� �츮������ �� 

- �Ｚ AML Prj 
- STR Prototype ȭ�� ����(3��, 4��, 5��) 
http://45.10.4.21:7001/sasaml/displaySTRs_step3.jsp 
displaySTRs_step4.jsp, displaySTRs_step5.jsp 
==============================================================================================================

- ������ ȸ�� 
Ŭ���� ����(www.cloud9.co.kr) 
����� �߱� ���굿 3�� 34-5 ����BD 101ȣ 
==============================================================================================================

- �������� 
�Ŀ������� �˷��ִ� ��Ʈ���� ���α׷��� 
���ǻ�: �������ǻ� ��: �۸���, ������ ����: 23,000��(����: 17,300��, 25% DC) 
==============================================================================================================

������������������� 2008.03.31(��) �۾� �����������������
---> 06:45 ~ 22:30 

- �Ｚ AML Prj 
- STR Prototype ȭ�� ���� �ҽ� �м� 
http://45.10.4.21:7001/sasaml/displaySTRs.jsp 
==============================================================================================================

- ���ǰŷ�����2.0 
ID/PWD: ythan327/star0707 
==============================================================================================================

- ���� ���� �ּ�(���� ���п��� ����(�ȭ) �� �� 10���� �۱�) 
���� ������ ������ �������Ʈ 202�� 1509ȣ 
���� 629-12-277540 ������  
==============================================================================================================


   