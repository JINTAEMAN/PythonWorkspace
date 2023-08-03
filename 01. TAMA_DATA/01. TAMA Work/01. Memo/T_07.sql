 
 - 파이썬(환경 설정: 테마(Theme), 디버깅)
 - launch.json(디버깅 환경설정 파일) 
1. 실행(R) > 디버깅 시작(F5)
D:\PythonWorkspace\.vscode\launch.json(디버깅 환경설정 파일) 
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: 현재 파일",	// Python 현재 파일 ■■
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "console": "integratedTerminal",
            "justMyCode": true
        },
        {
            "name": "Python: File",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "justMyCode": true
        }
    ]
}
==============================================================================================================

- 테마 변경(비주얼 스튜디오 코드에서)
1. 단축키(F1) 누른 후 "theme"라고 입력 ==> "Preferences: Color Theme" 클릭
 1) 어듑게(Visual Studio): 기존에 어듑게(Visual Studio)가 선택 되어 있음 --> 원하는 테마 선택 가능
 2, /settings.json 파일에서(파일 찾기: Ctrl + P --> settings.json) 테마 설정 여부 확인
{
	"workbench.startupEditor": "none",
	"security.workspace.trust.untrustedFiles": "open",
	"editor.fontFamily": "함초롱돋움",	    // 01. 함초롬돋움 폰트 설정 ■■  
	"editor.fontLigatures": false, 
	"workbench.colorTheme": "Visual Studio Dark"  // 테마 설정  ■■
} 
==============================================================================================================
 
 origin
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  


7.20(T_03), by 진태만];




git add -A;	
git commit -m "Add to Python Work space[22.07.20(T_04),, by 진태만];";
git push origin main ;




$ git clone https://github.com/JINTAEMAN/PythonWorkspace.git
2. Git 서명 작성
$ git config --global user.name "tamario";
git config --global user.email "tamario@naver.com"
3. Git 스테이지 영역에 추가
> git add -A;	# 3. Git 스테이지 영역에 추가
4. Git 로컬 저장소 영역에 추가
>nbsp; git commit -m "Add to Python Work space[22. 07.19(T_02), by 진태만];";	 # 4. Git 로컬 저장소 영역에 추가, 코멘트 작성
5. 원격 저장소에 반영
>nbsp; git remote add origin https://github.com/JINTAEMAN/PythonWorkspace.git	# 5. 원격 저장소에 반영(최초 작성시)
>nbsp; git push origin main     # 5. 원격 저장소에 반영(main: 브랜치)
--------------------------------------------------------------------------------------------------------------

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■  


 a@@@@@ ■■■■■■■■■
$ cd /c/Users/tamario/PycharmProjects/dlk_airflow_01/input/l0/bi;			# 01. 커밋할 경로 선택 ■■■■
$ 

git pull						# 02. develop 브런치에 소스 받아 오기 ■■■■
$ mv /d/ob_dsgn/99_sql/grape_odl_cr_002_10bim_dct_calendar_001_bq2gcswithfin.sql /c/Users/tamario/PycharmProjects/dlk_airflow_01/input/l0/bi;
cat grape_odl_cr_002_10bim_dct_calendar_001_bq2gcswithfin.sql  			# 03. 해당 파일을 해당 폴더로 파일 이동하여 파일 상태 확인 ■■■■

$ 


git pull;

git add -A;
git commit -m "Add to Python Work space[22. 07.18(T_01)], by 진태만]"; 
git push;


git add -A;
git commit -m "Add to ast_vrfc.py 수정[22. 07.18(T_01)], by 진태만]"; 
git push;


git add -A;
git commit -m "Add to Python Work space[22.07.19(T_05), by 진태만]";
git push origin master  # origin으로 이름지어진 저장소에 현재 master Branch를 push

asas1212!!tama
				 
============================================================================================================= 
==============================================================================================================
 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------------// End //------------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- Memo(2023.07).sql 수정
cp  /D/'01. TAMA_DATA'/'01. TAMA Work'/'01. Memo'/'Memo(2023.07).sql'  /D/PythonWorkspace/'01. Memo'

git add -A;
git commit -m "Add to Memo(2023.07).sql 수정[22. 07.18(T_01)], by 진태만]"; 
git push;

 ============================================================================================================= 
==============================================================================================================
 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 
 
 
