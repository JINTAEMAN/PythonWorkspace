

����������������������������������������������������������
+------------------------------------// 02. WBS ���ø� ���� �м� //-----------------/ ) /-----+
����������������������������������������������������������


- 02. WBS ���ø� ���� �м� �ܡܡ�
- /ProjectWbsTemplateMgtListR.script.jsp ���Ͽ��� @@@
<!--
#####################################################################
���ϸ� : ProjectWbsTemplateMgtListR.script.jsp]
���α׷��� : WBS ���ø� ���� ȭ��[�ý��۰��� > �ڵ����)
�� �� : WBS ���ø� ������ ��ȸ�ϴ� ȭ��
�ۼ��� : ���¸�
�ۼ��� : 2022.10.28
��������	  ������			 ��������
=====================================================================

2022.10.28		���¸�			�����ۼ�
#####################################################################
-->

<script type="text/javascript">
    any.ready(function() {
        console.log("\n\n\n\n [@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [ready()] ==> [T_01] [WBS ���ø� ���� ȭ��[�ý��۰��� > �ڵ����) ����");

        fnReadList();   // ��� ��ȸ
    });

    	/**
     * ��� ��ȸ
     *
     * @author ���¸�
     * @return
     */
	function fnReadList()
    {
        console.log("\n\n [@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_01] [��� ��ȸ] ����");
        console.log("[@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_11] [��ȸ ����] [���� �з�]"+ $("#devCl").val() +"[���� ���]"+ $("#devGrade").val() +"[���� ����]"+ $("#lastVersion").val() );

        var prx = $('#projectWbsTemplateMgtList').prop("loader").proxy();
        prx.url("/prjct/wbsmgt/tmplatmgt/ProjectWbsTemplateMgt/readList"); 	// ��� ȭ�� ��ȸ(������Ʈ WBS ���ø� ����) URL ����
		// ==> /ProjectWbsTemplateMgt + Controller  --> /ProjectWbsTemplateMgtController.java ���� ��ȸ ����
        prx.data("cond");   // ��ȸ ���� bind ����(bind="cond")

        prx.on("onSuccess", function() {   // ��ȸ ���� �̸�
             var  list1 = prx.response.model;

             for(i = 0; i < list1.length; i++)
             {
                console.log("[@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [��� ��ȸ ���] [��ȸ��]"+ list1.length +"[[i_��°]"+ i +"", list1[i] );				 
				// [@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [��� ��ȸ ���] [��ȸ��]2[[i_��°]0 {rowNum: 1, wbsTmplVerId: '761EP9LZA00000HKD0', tmplCd: 'A-0000003', tmplNm: 'A���_��������_���ñ�', devCl: '1',?��}
				// [@_T] ���� [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [��� ��ȸ ���] [��ȸ��]2[[i_��°]1 {rowNum: 2, wbsTmplVerId: '761ERP36W00000IRO0', tmplCd: 'A-0000004', tmplNm: '�ý��� ��� A', devCl: '1',?��}
            }	// end of for()
        });

        prx.on("onError", function() {
            this.error.show();
        });

        prx.execute();
    } 	
</select>
---------------------------------------------------------------------------------------------------------------------------------------------------------

- /ProjectWbsTemplateMgtListR.form.jsp ���Ͽ��� @@@
<div any-jqgrid id="projectWbsTemplateMgtList" fullHeight></div>    <!--// jq Grid �⺻ ���� //-->
<script ${AI}>
    this.addColumn({ width:100, align:"left"  , sortable:true , name:"tmplCd"               , label:"<n:message code="lbl.tmplatCode" text="���ø� ��ȣ"  escape="js" />" });
    this.addColumn({ width:200, align:"left"  , sortable:true , name:"tmplNm"              , label:"<n:message code="lbl.tmplNm" text="���ø� ��" escape="js" />" });  // ��ũ ==> ����
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"devClNm"        , label:"<n:message code="lbl.devCl" text="���� �з�" escape="html" />", fixed:true });
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"devGradeNm", label:"<n:message code="lbl.prjctrGade" text="������Ʈ ���" escape="html" />", fixed:true });
    this.addColumn({ width:250, align:"left"  , sortable:true , name:"tmplDc"               , label:"<n:message code="lbl.tmplDc" text="���ø� ����" escape="html" />", fixed:true });
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"tmplVer"        , label:"<n:message code="lbl.ver" text="����" escape="html" />", fixed:true });
    this.addColumn({ width:80 , align:"center", sortable:true , name:"dcsnPsnNm"   , label:"<n:message code="lbl.dcsnPsnNm" text="Ȯ����" escape="js" />" , fixed:true});
    this.addColumn({ width:80 , align:"center", sortable:true , name:"dcsnDt"           , label:"<n:message code="lbl.dcsnDe" text="Ȯ������" escape="js" />", formatter:"any-date", fixed:true });
    this.addColumn({ name:"wbsTmplVerId" , hidden:true});   // WBS���ø�����ID ���� ó��
    this.addColumn({ width:80 , align:"center", sortable:true , name:"useYnNm"          , label:"<n:message code="lbl.useYn" text="��� ����" escape="js" />", fixed:true });
    this.setOption({ rownumbers:true, shrinkToFit:true });
    this.setPaging();
   //  this.addSorting("creatDt", "DESC");   // ���� ����(CREAT_DT: �������)      /* �������� Sorting �ּ� ó��[22.10.14, by ���¸�] */
    this.addAction("tmplNm", fnViewCodeList);       // Ư�� �� Ŭ��(���ø� �� Į��)
</script>
==============================================================================================================

- /ProjectWbsTemplateMgtController.java ���Ͽ��� @@@
/**
* Version : 1.0
* ���ϸ�: ProjectWbsTemplateMgtController.java
* �ۼ����� : 2022-10-31
* �ۼ��� : ���¸�
* ���� : [�޴�] �ý��۰��� > �ڵ���� > ������Ʈ WBS ���ø� ����
*/
@Controller
@RequestMapping(value = "/prjct/wbsmgt/tmplatmgt/ProjectWbsTemplateMgt")
public class ProjectWbsTemplateMgtController {
    static final Logger logger = LoggerFactory.getLogger(ProjectWbsTemplateMgtController.class);

    // �ý��۰��� > �ڵ���� > ������Ʈ WBS ���ø� ������ ���� ��Ű�� ���
    private final String VIEW_PREFIX = "tiles:/prjct/wbsmgt/tmplatmgt";

    @Autowired
    private ProjectWbsTemplateMgtServiceImpl projectWbsTemplateMgtService;      // ������Ʈ WBS ���ø� ���� Service

  /**
     * ��� ��ȸ
    *
     * @author ���¸�
     * @param commandData
     * @param model
     * @return
     */
    @RequestMapping(value = "/readList", method = RequestMethod.POST)
    public String readList(CommandData commandData, Model model)
    {
          logger.debug("\n\n\n\n [@_T] ���� [/ProjectWbsTemplateMgtController.java] [readList()] ==> [T_01] [��� ��ȸ(������Ʈ WBS ���ø� ����) ���� [��ȸ ����]"+ commandData.getAnyData("cond"));
		//   System.out.println("\n\n\n\n [@_T] ���� [/ProjectWbsTemplateMgtController.java] [readList()] ==> [T_01] [��� ��ȸ(������Ʈ WBS ���ø� ����) ���� [��ȸ ����]"+ commandData.getAnyData("cond"));

        model.addAttribute(projectWbsTemplateMgtService.readList(commandData));

        return Views.GRID_VIEW;
    }
}	
==============================================================================================================

- /ProjectWbsTemplateMgtServiceImpl.java ���Ͽ��� @@@
/**
* Version : 1.0
* ���ϸ�: ProjectWbsTemplateMgtServiceImpl.java
* �ۼ����� : 2022-10-31
* �ۼ��� : ���¸�
* ���� : [�޴�] �ý��۰��� > �ڵ���� > ������Ʈ WBS ���ø� ����
*/
@Service
public class ProjectWbsTemplateMgtServiceImpl
{
    /**
     * ��� ��ȸ
     *
     * @author ���¸�
     * @param commandData
     * @return
     */
    public AnyDataList readList(CommandData commandData)
    {
        System.out.println("\n\n[@_T] ���� [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_01] [��� ��ȸ(������Ʈ WBS ���ø� ����)] [��ȸ ����]"+ commandData.getAnyData("cond"));
		// [@_T] ���� [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_01] [��� ��ȸ(������Ʈ WBS ���ø� ����)] [��ȸ ����]AnyData[cond_0]={
		//	ParentList.KeySet=[devCl, devGrade, lastVersion]
		//	Data[U]={devCl=1, devGrade=2, lastVersion=1}
		// }

        GridDataResultHandler resultHandler = new GridDataResultHandler(commandData);

        projectWbsTemplateMgtMapper.readList(resultHandler, commandData.getPaging(), commandData.getAnyData("cond"));
        System.out.println("[@_T] ���� [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_61] [��� ��ȸ(������Ʈ WBS ���ø� ���� ��ȸ ���]"+ resultHandler.getDataList() );
		// [@_T] ���� [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_61] [��� ��ȸ(������Ʈ WBS ���ø� ���� ��ȸ ���]AnyDataList[RESULT_SET]={
		// 	Meta={_TOTAL_COUNT_=2}
		// 	KeySet=[rowNum, wbsTmplVerId, tmplCd, tmplNm, devCl, devClNm, devGrade, devGradeNm, cndTy, cndTyNm, tmplDc, dcsnPsnNm, dcsnDt, tmplVer, creatDt, useYnNm]
		// 	AnyData[RESULT_SET_0][N]={rowNum=1, wbsTmplVerId=761EP9LZA00000HKD0, tmplCd=A-0000003, tmplNm=A���_��������_���ñ�, devCl=1, devClNm=�ý���/�ⱸ, devGrade=2, devGradeNm=A, cndTy=20, cndTyNm=�ѱ�, tmplDc=��� Ȯ�� - PSK, dcsnPsnNm=75IW16M395B8C990F0, dcsnDt=2022-10-20 08:43:59.0, tmplVer=1, creatDt=2022-10-20 08:43:59.0, useYnNm=���}
		// 	AnyData[RESULT_SET_1][N]={rowNum=2, wbsTmplVerId=761ERP36W00000IRO0, tmplCd=A-0000004, tmplNm=�ý��� ��� A, devCl=1, devClNm=�ý���/�ⱸ, devGrade=2, devGradeNm=A, cndTy=10, cndTyNm=����, tmplDc=�ý��� A ���, dcsnPsnNm=75IW16M395B8C990F0, dcsnDt=2022-10-24 16:57:38.0, tmplVer=1, creatDt=2022-10-24 16:57:38.0, useYnNm=���}
		// }

        return resultHandler.getDataList();
    }
}
==============================================================================================================

- /ProjectWbsTemplateMgtMapper.xml ���Ͽ��� @@@
<!--
 ������Ʈ WBS ���ø� ���� Mapper
 -->
<mapper namespace="com.anyfive.ebrain.pms.prjct.wbsmgt.tmplatmgt.mapper.ProjectWbsTemplateMgtMapper">

    <!-- ��� ��ȸ -->
    <select id="readList" resultType="com.anyfive.framework.core.support.collection.CamelKeyData">
        /* [@_T] [T_01] ��� ��ȸ(������Ʈ WBS ���ø� ����) ==> [/ProjectWbsTemplateMgtMapper.xml.readList()] [22.09.22, by ���¸�] */
        <![CDATA[
         SELECT B.WBS_TMPL_VER_ID        /* WBS ���ø� ���� ID */
                    , A.TMPL_CD
                    , FN_TITLE(A.TMPL_NM, 'ko_KR', 'ko_KR') AS TMPL_NM      /* ���ø� �̸� */
                    , A.DEV_CL     /* ���ߺз� */
                    , NVL(FN_CODE_NAME('DEV_CL', A.DEV_CL,   'ko_KR', 'ko_KR'),'�ش����') AS DEV_CL_NM     /* ���ߺз��� */
                    , A.DEV_GRADE   /* ���ߵ��(������Ʈ ���)  */
                    , NVL(FN_CODE_NAME('DEV_GRADE', A.DEV_GRADE,   'ko_KR', 'ko_KR'),'�ش����') AS DEV_GRADE_NM    /* ���ߵ��(������Ʈ ���)  */
                    , A.CND_TY      /* Ķ���� ���� */
                    , NVL(FN_CODE_NAME('CND_TY', A.CND_TY,   'ko_KR', 'ko_KR'),'�ش����') AS CND_TY_NM     /* Ķ���� ���� */
                    , A.TMPL_DC    /* ���ø����� */
               --  , (CASE B.DCSN_YN WHEN '1' THEN 'Ȯ��' WHEN '0' THEN '��Ȯ��' ELSE B.DCSN_YN END) AS DCSN_YN_NM   /* Ȯ�� ���� */
                    , FN_PERSON_NAME(B.DCSN_USER_ID, 'ko_KR') AS DCSN_PSN_NM  /* Ȯ���� */
                    , B.DCSN_DT         /* Ȯ������ */
                    , B.TMPL_VER     /* ���� */
                    , A.CREAT_DT     /* �������� �߰�[22.10.14, by ���¸�] */
                    , (CASE A.USE_YN WHEN '1' THEN '���' WHEN '0' THEN '�̻��' ELSE A.USE_YN END) AS USE_YN_NM    /* ��뿩�� */
        FROM TB_COM_WBS_TMPL_VER B          /* 02. ����_WBS_���ø�_���� TB */
            INNER JOIN TB_COM_WBS_TMPL A     /* 01. ����_WBS_���ø� TB */
                ON A.WBS_TMPL_ID = B.WBS_TMPL_ID
        WHERE  1 = 1
        ]]>

        <!-- ���ߺз� -->
        <if test='cond != null and cond.devCl != null and cond.devCl != ""'>
            AND A.DEV_CL = #{cond.devCl}      /* ���ߺз� */
        </if>

        <!-- ���ߵ�� -->
        <if test='cond != null and cond.devGrade != null and cond.devGrade != ""'>
            AND A.DEV_GRADE = #{cond.devGrade}      /* ���ߵ�� */
        </if>

        <!-- ���� ���� -->
        <if test='cond != null and cond.lastVersion == "1"'>
        <![CDATA[
            AND B.TMPL_VER = (
                    SELECT MAX(B.TMPL_VER)
                    FROM TB_COM_WBS_TMPL_VER B     /* 02. ����_WBS_���ø�_���� TB */
                    WHERE B.WBS_TMPL_ID = A.WBS_TMPL_ID
               )
            ORDER BY  A.CREAT_DT        /* �������� Sorting �߰�[22.10.14, by ���¸�] */
        ]]>
        </if>
    </select>
</mapper>
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������
