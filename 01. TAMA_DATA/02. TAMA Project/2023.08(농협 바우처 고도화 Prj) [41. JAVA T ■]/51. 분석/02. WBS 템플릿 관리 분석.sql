

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------// 02. WBS 템플릿 관리 분석 //-----------------/ ) /-----+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 02. WBS 템플릿 관리 분석 ●●●
- /ProjectWbsTemplateMgtListR.script.jsp 파일에서 @@@
<!--
#####################################################################
파일명 : ProjectWbsTemplateMgtListR.script.jsp]
프로그램명 : WBS 템플릿 관리 화면[시스템관리 > 코드관리)
설 명 : WBS 템플릿 관리를 조회하는 화면
작성자 : 진태만
작성일 : 2022.10.28
수정일자	  수정자			 수정내용
=====================================================================

2022.10.28		진태만			최초작성
#####################################################################
-->

<script type="text/javascript">
    any.ready(function() {
        console.log("\n\n\n\n [@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [ready()] ==> [T_01] [WBS 템플릿 관리 화면[시스템관리 > 코드관리) ■■■");

        fnReadList();   // 목록 조회
    });

    	/**
     * 목록 조회
     *
     * @author 진태만
     * @return
     */
	function fnReadList()
    {
        console.log("\n\n [@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_01] [목록 조회] ■■■");
        console.log("[@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_11] [조회 조건] [개발 분류]"+ $("#devCl").val() +"[개발 등급]"+ $("#devGrade").val() +"[최종 버전]"+ $("#lastVersion").val() );

        var prx = $('#projectWbsTemplateMgtList').prop("loader").proxy();
        prx.url("/prjct/wbsmgt/tmplatmgt/ProjectWbsTemplateMgt/readList"); 	// 목록 화면 조회(프로젝트 WBS 템플릿 관리) URL 셋팅
		// ==> /ProjectWbsTemplateMgt + Controller  --> /ProjectWbsTemplateMgtController.java 파일 조회 ■■■
        prx.data("cond");   // 조회 조건 bind 셋팅(bind="cond")

        prx.on("onSuccess", function() {   // 조회 성공 이면
             var  list1 = prx.response.model;

             for(i = 0; i < list1.length; i++)
             {
                console.log("[@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [목록 조회 결과] [조회수]"+ list1.length +"[[i_번째]"+ i +"", list1[i] );				 
				// [@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [목록 조회 결과] [조회수]2[[i_번째]0 {rowNum: 1, wbsTmplVerId: '761EP9LZA00000HKD0', tmplCd: 'A-0000003', tmplNm: 'A등급_금형개발_샘플기', devCl: '1',?…}
				// [@_T] ■■■ [/ProjectWbsTemplateMgtListR.script.jsp] [fnReadList()] ==> [T_51] [목록 조회 결과] [조회수]2[[i_번째]1 {rowNum: 2, wbsTmplVerId: '761ERP36W00000IRO0', tmplCd: 'A-0000004', tmplNm: '시스템 등급 A', devCl: '1',?…}
            }	// end of for()
        });

        prx.on("onError", function() {
            this.error.show();
        });

        prx.execute();
    } 	
</select>
---------------------------------------------------------------------------------------------------------------------------------------------------------

- /ProjectWbsTemplateMgtListR.form.jsp 파일에서 @@@
<div any-jqgrid id="projectWbsTemplateMgtList" fullHeight></div>    <!--// jq Grid 기본 설정 //-->
<script ${AI}>
    this.addColumn({ width:100, align:"left"  , sortable:true , name:"tmplCd"               , label:"<n:message code="lbl.tmplatCode" text="템플릿 번호"  escape="js" />" });
    this.addColumn({ width:200, align:"left"  , sortable:true , name:"tmplNm"              , label:"<n:message code="lbl.tmplNm" text="템플릿 명" escape="js" />" });  // 링크 ==> ■■■
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"devClNm"        , label:"<n:message code="lbl.devCl" text="개발 분류" escape="html" />", fixed:true });
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"devGradeNm", label:"<n:message code="lbl.prjctrGade" text="프로젝트 등급" escape="html" />", fixed:true });
    this.addColumn({ width:250, align:"left"  , sortable:true , name:"tmplDc"               , label:"<n:message code="lbl.tmplDc" text="템플릿 설명" escape="html" />", fixed:true });
    this.addColumn({ width:100, align:"center"  , sortable:true , name:"tmplVer"        , label:"<n:message code="lbl.ver" text="버전" escape="html" />", fixed:true });
    this.addColumn({ width:80 , align:"center", sortable:true , name:"dcsnPsnNm"   , label:"<n:message code="lbl.dcsnPsnNm" text="확정자" escape="js" />" , fixed:true});
    this.addColumn({ width:80 , align:"center", sortable:true , name:"dcsnDt"           , label:"<n:message code="lbl.dcsnDe" text="확정일자" escape="js" />", formatter:"any-date", fixed:true });
    this.addColumn({ name:"wbsTmplVerId" , hidden:true});   // WBS템플릿버전ID 히든 처리
    this.addColumn({ width:80 , align:"center", sortable:true , name:"useYnNm"          , label:"<n:message code="lbl.useYn" text="사용 여부" escape="js" />", fixed:true });
    this.setOption({ rownumbers:true, shrinkToFit:true });
    this.setPaging();
   //  this.addSorting("creatDt", "DESC");   // 정렬 설정(CREAT_DT: 등록일자)      /* 생성일자 Sorting 주석 처리[22.10.14, by 진태만] */
    this.addAction("tmplNm", fnViewCodeList);       // 특정 열 클릭(템플릿 명 칼럼)
</script>
==============================================================================================================

- /ProjectWbsTemplateMgtController.java 파일에서 @@@
/**
* Version : 1.0
* 파일명: ProjectWbsTemplateMgtController.java
* 작성일자 : 2022-10-31
* 작성자 : 진태만
* 설명 : [메뉴] 시스템관리 > 코드관리 > 프로젝트 WBS 템플릿 관리
*/
@Controller
@RequestMapping(value = "/prjct/wbsmgt/tmplatmgt/ProjectWbsTemplateMgt")
public class ProjectWbsTemplateMgtController {
    static final Logger logger = LoggerFactory.getLogger(ProjectWbsTemplateMgtController.class);

    // 시스템관리 > 코드관리 > 프로젝트 WBS 템플릿 관리의 공통 패키지 경로
    private final String VIEW_PREFIX = "tiles:/prjct/wbsmgt/tmplatmgt";

    @Autowired
    private ProjectWbsTemplateMgtServiceImpl projectWbsTemplateMgtService;      // 프로젝트 WBS 템플릿 관리 Service

  /**
     * 목록 조회
    *
     * @author 진태만
     * @param commandData
     * @param model
     * @return
     */
    @RequestMapping(value = "/readList", method = RequestMethod.POST)
    public String readList(CommandData commandData, Model model)
    {
          logger.debug("\n\n\n\n [@_T] ■■■ [/ProjectWbsTemplateMgtController.java] [readList()] ==> [T_01] [목록 조회(프로젝트 WBS 템플릿 관리) ■■■ [조회 조건]"+ commandData.getAnyData("cond"));
		//   System.out.println("\n\n\n\n [@_T] ■■■ [/ProjectWbsTemplateMgtController.java] [readList()] ==> [T_01] [목록 조회(프로젝트 WBS 템플릿 관리) ■■■ [조회 조건]"+ commandData.getAnyData("cond"));

        model.addAttribute(projectWbsTemplateMgtService.readList(commandData));

        return Views.GRID_VIEW;
    }
}	
==============================================================================================================

- /ProjectWbsTemplateMgtServiceImpl.java 파일에서 @@@
/**
* Version : 1.0
* 파일명: ProjectWbsTemplateMgtServiceImpl.java
* 작성일자 : 2022-10-31
* 작성자 : 진태만
* 설명 : [메뉴] 시스템관리 > 코드관리 > 프로젝트 WBS 템플릿 관리
*/
@Service
public class ProjectWbsTemplateMgtServiceImpl
{
    /**
     * 목록 조회
     *
     * @author 진태만
     * @param commandData
     * @return
     */
    public AnyDataList readList(CommandData commandData)
    {
        System.out.println("\n\n[@_T] ■■■ [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_01] [목록 조회(프로젝트 WBS 템플릿 관리)] [조회 조건]"+ commandData.getAnyData("cond"));
		// [@_T] ■■■ [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_01] [목록 조회(프로젝트 WBS 템플릿 관리)] [조회 조건]AnyData[cond_0]={
		//	ParentList.KeySet=[devCl, devGrade, lastVersion]
		//	Data[U]={devCl=1, devGrade=2, lastVersion=1}
		// }

        GridDataResultHandler resultHandler = new GridDataResultHandler(commandData);

        projectWbsTemplateMgtMapper.readList(resultHandler, commandData.getPaging(), commandData.getAnyData("cond"));
        System.out.println("[@_T] ■■■ [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_61] [목록 조회(프로젝트 WBS 템플릿 관리 조회 결과]"+ resultHandler.getDataList() );
		// [@_T] ■■■ [/ProjectWbsTemplateMgtServiceImpl.java] [read()] ==> [T_61] [목록 조회(프로젝트 WBS 템플릿 관리 조회 결과]AnyDataList[RESULT_SET]={
		// 	Meta={_TOTAL_COUNT_=2}
		// 	KeySet=[rowNum, wbsTmplVerId, tmplCd, tmplNm, devCl, devClNm, devGrade, devGradeNm, cndTy, cndTyNm, tmplDc, dcsnPsnNm, dcsnDt, tmplVer, creatDt, useYnNm]
		// 	AnyData[RESULT_SET_0][N]={rowNum=1, wbsTmplVerId=761EP9LZA00000HKD0, tmplCd=A-0000003, tmplNm=A등급_금형개발_샘플기, devCl=1, devClNm=시스템/기구, devGrade=2, devGradeNm=A, cndTy=20, cndTyNm=한국, tmplDc=기능 확인 - PSK, dcsnPsnNm=75IW16M395B8C990F0, dcsnDt=2022-10-20 08:43:59.0, tmplVer=1, creatDt=2022-10-20 08:43:59.0, useYnNm=사용}
		// 	AnyData[RESULT_SET_1][N]={rowNum=2, wbsTmplVerId=761ERP36W00000IRO0, tmplCd=A-0000004, tmplNm=시스템 등급 A, devCl=1, devClNm=시스템/기구, devGrade=2, devGradeNm=A, cndTy=10, cndTyNm=공통, tmplDc=시스템 A 등급, dcsnPsnNm=75IW16M395B8C990F0, dcsnDt=2022-10-24 16:57:38.0, tmplVer=1, creatDt=2022-10-24 16:57:38.0, useYnNm=사용}
		// }

        return resultHandler.getDataList();
    }
}
==============================================================================================================

- /ProjectWbsTemplateMgtMapper.xml 파일에서 @@@
<!--
 프로젝트 WBS 템플릿 관리 Mapper
 -->
<mapper namespace="com.anyfive.ebrain.pms.prjct.wbsmgt.tmplatmgt.mapper.ProjectWbsTemplateMgtMapper">

    <!-- 목록 조회 -->
    <select id="readList" resultType="com.anyfive.framework.core.support.collection.CamelKeyData">
        /* [@_T] [T_01] 목록 조회(프로젝트 WBS 템플릿 관리) ==> [/ProjectWbsTemplateMgtMapper.xml.readList()] [22.09.22, by 진태만] */
        <![CDATA[
         SELECT B.WBS_TMPL_VER_ID        /* WBS 템플릿 버전 ID */
                    , A.TMPL_CD
                    , FN_TITLE(A.TMPL_NM, 'ko_KR', 'ko_KR') AS TMPL_NM      /* 템플릿 이름 */
                    , A.DEV_CL     /* 개발분류 */
                    , NVL(FN_CODE_NAME('DEV_CL', A.DEV_CL,   'ko_KR', 'ko_KR'),'해당없음') AS DEV_CL_NM     /* 개발분류명 */
                    , A.DEV_GRADE   /* 개발등급(프로젝트 등급)  */
                    , NVL(FN_CODE_NAME('DEV_GRADE', A.DEV_GRADE,   'ko_KR', 'ko_KR'),'해당없음') AS DEV_GRADE_NM    /* 개발등급(프로젝트 등급)  */
                    , A.CND_TY      /* 캘린더 유형 */
                    , NVL(FN_CODE_NAME('CND_TY', A.CND_TY,   'ko_KR', 'ko_KR'),'해당없음') AS CND_TY_NM     /* 캘린더 유형 */
                    , A.TMPL_DC    /* 템플릿설명 */
               --  , (CASE B.DCSN_YN WHEN '1' THEN '확정' WHEN '0' THEN '미확정' ELSE B.DCSN_YN END) AS DCSN_YN_NM   /* 확정 여부 */
                    , FN_PERSON_NAME(B.DCSN_USER_ID, 'ko_KR') AS DCSN_PSN_NM  /* 확정자 */
                    , B.DCSN_DT         /* 확정일자 */
                    , B.TMPL_VER     /* 버전 */
                    , A.CREAT_DT     /* 생성일자 추가[22.10.14, by 진태만] */
                    , (CASE A.USE_YN WHEN '1' THEN '사용' WHEN '0' THEN '미사용' ELSE A.USE_YN END) AS USE_YN_NM    /* 사용여부 */
        FROM TB_COM_WBS_TMPL_VER B          /* 02. 공통_WBS_템플릿_버전 TB */
            INNER JOIN TB_COM_WBS_TMPL A     /* 01. 공통_WBS_템플릿 TB */
                ON A.WBS_TMPL_ID = B.WBS_TMPL_ID
        WHERE  1 = 1
        ]]>

        <!-- 개발분류 -->
        <if test='cond != null and cond.devCl != null and cond.devCl != ""'>
            AND A.DEV_CL = #{cond.devCl}      /* 개발분류 */
        </if>

        <!-- 개발등급 -->
        <if test='cond != null and cond.devGrade != null and cond.devGrade != ""'>
            AND A.DEV_GRADE = #{cond.devGrade}      /* 개발등급 */
        </if>

        <!-- 최종 버전 -->
        <if test='cond != null and cond.lastVersion == "1"'>
        <![CDATA[
            AND B.TMPL_VER = (
                    SELECT MAX(B.TMPL_VER)
                    FROM TB_COM_WBS_TMPL_VER B     /* 02. 공통_WBS_템플릿_버전 TB */
                    WHERE B.WBS_TMPL_ID = A.WBS_TMPL_ID
               )
            ORDER BY  A.CREAT_DT        /* 생성일자 Sorting 추가[22.10.14, by 진태만] */
        ]]>
        </if>
    </select>
</mapper>
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
