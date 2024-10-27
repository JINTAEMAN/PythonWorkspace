

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------// 00. Git 분석 //--------------------------------------/ 24.10.26(토) /-----+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


-00. Git 분석 ●●●
https://github.com/JINTAEMAN/PythonWorkspace,.   ----> INTAEMAN/asas1212!!tama


1. ghtHub에서 소스 다운로드 ●
$ cd /d
$ git clone https://github.com/JINTAEMAN/PythonWorkspace
============================================================================================================-

1. ghtHub에서 소스 받아 오기 ●
# git fetch -a		# dev 브랜치로 전환 
# git pull origin main	# main 브런치에서 소스 받아 오기 ■
============================================================================================================-

1. ghtHub에 올리기 받아 오기 ●
$ git add .
$ git commit -m "Add to main: 77_실행_파일_만들기, 97. 파이썬 자료_■ 폴더 올리기[24.10.26(T_01)], by tamario]";
$ git commit -m "Add to main: 파이썬 자료_■ 폴더 올리기[24.10.26(T_01)], by tamario]"; 	
$ git commit -m "Add to main:  파이썬 자료_■ 폴더 올리기[24.10.26(T_01)], by tamario]"; 	
$ git commit -m "Add to main: 01. /ast_vrfc.py 수정(채권 Tab에서 CMA 금액 없을 경우)[24.10.76(T_01)], by tamario]"; 	
git commit -m "Add to main: 01. /ast_vrfc.py 수정(채권 Tab에서 CMA 금액 없을 경우)[24.10.26(T_03)], by tamario]"; 	

$ git push origin		# main 브런치에 소스 올리기 ■
$ git log --all --oneline  		# log 시각적으로 보기
----------------------------------------------------------------------------------------------

git add .;
git commit -m "Add to main: 01. /ast_vrfc.py 수정[24.10.26(T_05)], by tamario]"; 	
git push origin main;		# main 브런치에 소스 올리기 ■
git status;		# git 상태 확인

==============================================================================================================  
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


$ git log --all --oneline  		# log 시각적으로 보기
$ git status		# git 상태 확인
 
$ git clone http://gitlab.lguplus.co.kr/project/nedp/dlk airflow 01.git		# dik_airflow_01 프로젝트 Clone 받기 --> 최초에만 실행 ■
$ cd /c/Users/tamario/Pycharm Projects/dik_airflow_01 	# 위치에서 gitrbash 열기
$ git pull origin master
$ git checkout develop		-- develop 브랜치로 전환
$ git pull
--------------- ============================================================================================================-
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
 

$ git status	# git 상태 확인
▶ On branch dev
▶ Your branch is up to date with 'origin/dev'.

▶ Changes not staged for commit:  # staged에 안 올라간 상태
  (use "git add <file>..." to uddate what will be commited)"
	modified:   app/api/vi/llm_model.py
 
$ git clean -fd  	# untracked 파일, 폴더 모두 삭제 ■
▶ Removing app/api/vi/llm_model.py

$ git clean -fd --dry-run	# untracked 파일, 폴더 모두 삭제 전 미리 보기 ■
-----------------------------------------------------------------------------------------------

$ git status    # git 상태 확인
▶ On branch dev
▶ Changes to be committed:  	# 변경 이후 staged에 올라간 상태
  (use "git restore --staged <file>..." to unstage)
        modified:   app/api/vi/llm_model.py
		
$ git reset HEAD -- app/api/vi/llm_model.py	 	# Staged된 파일 삭제 ■  
-- $ git checkout  -- 01_ast_vrfc/bmi_calculate.py	 # Staged된 파일 삭제 ■( Modified상태 파일을 최근 커밋한 상태(또는 clone했을 때 상태)로 되돌리기
 
▶ Unstaged changes after reset:
M       app/api/vi/llm_model.py
--------------- ============================================================================================================-
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


 - 유튜브로 배우는 코딩 Git 강좌 시청
https://www.youtube.com/watch?v=JZJQ4_8XoPM&list=PLHF1wYTaCuixewA1hAn8u6hzx5mNenAGM
 - 03.저장소 만들기와 커밋(Commit) 하기
> git init
> git add filename
> git commit
> git status
> gitk    # 시각적으로 보기
> git log --all --oneline 	 # log 시각적으로 보기
---------------------------------------------------------------------------------------

> git branch  -v 	 	# 등록된 브랜치의 상세한 정보 확인
> git branch --merged 		# 브랜치 상태 확인(-merged,  --no-merged ) 
> git checkout main # master에 체크 아웃  
> git merge test		#  test브랜치의 코드를 main에 합침
---------------------------------------------------------------------------------------

# git clone			# 원격 저장소에서 내용 복제
# git fetch -a		# 원격 저장소에서 변경 내용 모두 가져오기
# git pull		 		# 원격 저장소에서 내용 가져오기
# git push			# 원격 저장소에서 내용 보내기
---------------------------------------------------------------------------------------

- [Git] Branch와 Merge
https://velog.io/@marksen/Git-Branch%EC%99%80-Merge
==============================================================================================================


- 유튜브로 배우는 코딩 Git 강좌[영욱 스튜디오]
https://www.youtube.com/watch?v=JZJQ4_8XoPM&list=PLHF1wYTaCuixewA1hAn8u6hzx5mNenAGM

- Visual Studio Code 로 다루는 Git[생활 코딩]
https://www.youtube.com/watch?v=SZclqh4GpEI&list=PLuHgQVnccGMAQvSVKdXFiOo51HUD8iQQm&index=3
============================================================================================================- 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


3. GITLAB 업로드(=> Git Bash에서 실행할 것■)
로컬 디스크(C:)/사용자/계정/PycharmProjects에 프로젝트 clone 받기

tamario@PCPC13S195 MINGW64 / (master)
$ cd /c/Users/tamario/Pycharm Projects
$ git clone http://gitlab.lguplus.co.kr/project/nedp/dlk airflow 01.git		# dik_airflow_01 프로젝트 Clone 받기 --> 최초에만 실행 ■
$ cd /c/Users/tamario/Pycharm Projects/dik_airflow_01 	# 위치에서 gitrbash 열기
$ git pull origin master
$ git checkout develop		-- develop 브랜치로 전환
$ git pull
============================================================================================================- 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■



https://github.com/JINTAEMAN/PythonWorkspace,.   ----> INTAEMAN/asas1212!!tama

==============================================================================================================


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 
 - 03.저장소 만들기와 커밋(Commit) 하기
> git init
> git add filename
> git commit
> git status
> gitk    # 시각적으로 보기
> git log --all --oneline 	 # log 시각적으로 보기
---------------------------------------------------------------------------------------

> git branch  -v 	 	# 등록된 브랜치의 상세한 정보 확인
> git branch --merged 		# 브랜치 상태 확인(-merged,  --no-merged ) 
> git checkout main # master에 체크 아웃  
> git merge test		#  test브랜치의 코드를 main에 합침
---------------------------------------------------------------------------------------

# git clone			# 원격 저장소에서 내용 복제
# git fetch -a		# 원격 저장소에서 변경 내용 모두 가져오기
# git pull		 		# 원격 저장소에서 내용 가져오기
# git push			# 원격 저장소에서 내용 보내기
---------------------------------------------------------------------------------------

- [Git] Branch와 Merge
https://velog.io/@marksen/Git-Branch%EC%99%80-Merge
==============================================================================================================
 
$ git status	# git 상태 확인
▶ On branch dev
▶ Your branch is up to date with 'origin/dev'.

▶ Changes not staged for commit:  # staged에 안 올라간 상태
  (use "git add <file>..." to uddate what will be commited)"
	modified:   app/api/vi/llm_model.py
 
$ git clean -fd  	# untracked 파일, 폴더 모두 삭제 ■
▶ Removing app/api/vi/llm_model.py

$ git clean -fd --dry-run	# untracked 파일, 폴더 모두 삭제 전 미리 보기 ■
-----------------------------------------------------------------------------------------------

$ git status    # git 상태 확인
▶ On branch dev
▶ Changes to be committed:  	# 변경 이후 staged에 올라간 상태
  (use "git restore --staged <file>..." to unstage)
        modified:   app/api/vi/llm_model.py
		
$ git reset HEAD -- app/api/vi/llm_model.py	 	# Staged된 파일 삭제 ■  
-- $ git checkout  -- 01_ast_vrfc/bmi_calculate.py	 # Staged된 파일 삭제 ■( Modified상태 파일을 최근 커밋한 상태(또는 clone했을 때 상태)로 되돌리기
 
▶ Unstaged changes after reset:
M       app/api/vi/llm_model.py
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- Add BookMark 설정 @@@
/ast_vrfc.py
91. URL 경로(01_ast_vrfc/)
00. 자산 검증 파일 TEST Start
01. 자산 Tab
02. 총자산 Tab 
--------------------------------------------------------------

/bmi_calculate.py
01. BMI 계산 Start
02. BMI 계산 함수
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

 