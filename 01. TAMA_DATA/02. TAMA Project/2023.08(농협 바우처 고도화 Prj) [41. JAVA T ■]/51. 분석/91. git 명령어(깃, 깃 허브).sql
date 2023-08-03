

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+-----------------------------------------// Git 원격 저장소에 push 하는 과정 //-------------------------/ 23.08.03(목) /---+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


-- Git 원격 저장소에 push 하는 과정
https://ikcoo.tistory.com/44

1. 원격 저장소 init or clone
$ git clone https://github.com/JINTAEMAN/PythonWorkspace.git
2. Git 서명 작성
$ git config --global user.name "tamario";
git config --global user.email "tamario@naver.com"
3. Git 스테이지 영역에 추가
>nbsp; git add -A;	# 3. Git 스테이지 영역에 추가
4. Git 로컬 저장소 영역에 추가
>nbsp; git commit -m "Add to Python Work space[22. 07.19(T_02), by 진태만];";	 # 4. Git 로컬 저장소 영역에 추가, 코멘트 작성
5. 원격 저장소에 반영
>nbsp; git remote add origin https://github.com/JINTAEMAN/PythonWorkspace.git	# 5. 원격 저장소에 반영(최초 작성시)
>nbsp; git push origin main     # 5. 원격 저장소에 반영(main: 브랜치)
--------------------------------------------------------------------------------------------------------------


git status		# 0. Git 저장소 상태 확인
git pull  origin  main     # 원격 저장소 데이타 가져 오기(main: 브랜치)

--------------------------------------------------------------------------------------------------------------



def movefileAndPush():
    try:
        x = subprocess.run(['cp','Project_Repo_Details.csv','bitbucket_repo_report/Project_Repo_Details.csv'])
        print(x.stdout)
        print(x.stderr)

        os.chdir("/dirs/Repo-report_scripts/bitbucket_repo_report")
        subprocess.run(['git','config','--global','user.email','test@gmail.com'])
        subprocess.run(['git','add','Project_Repo_Details.csv'])
        subprocess.run(['git','commit','-m','PQR-99 adding repo report'])
        subprocess.run(['git','push','null','--all'])

    except Exception as e:
        print("Error occured :".format(e))
if __name__ == '__main__':
   movefileAndPush()

===========================================================================================================



- git 원격저장소 추가 - git remote add
https://shanepark.tistory.com/284
---------------------------------------------------------------------------------------------------------------------------

- Repository 생성
PythonWorkspace ==> D:\PythonWorkspace

- 02. Git repository 만들기
https://ojui.tistory.com/16

- git remote add origin 카피한 주소 : 원격 저장소와 연결
- git remote -v : 연결된 원격 저장소 확인

- git pull origin master : 원격저장소의 master 브랜치를 pull하여 로컬의 master브랜치와 연결
- git add . : 모든 파일을 스테이지에 올림
- git commit -m "커밋메세지" : 스테이지에 올린 파일들을 커밋
- git push origin master : 원격저장소의 master 브랜치에 push
---------------------------------------------------------------------------------------------------------------------------

- 원격 저장소 추가
git remote add origin [추가할 원격 git 저장소 주소]
# 아래의 두 예시는 각각 https 와 ssh 입니다.
git remote add origin https://github.com/Shane-Park/playddit.git
git remote add origin git@github.com:Shane-Park/playddit.git
-------------------------------------------------------------------------------------------------

- 원격 저장소 추가
git add .
git commit -m "커밋메시지"
git push origin master
---------------------------------------------------------------------------------------------------------------------------

- 원격저장소 목록 조회
tamar@TAMA-INO-PC MINGW64 /d/PythonWorkspace (main)
$ git remote -v
origin https://github.com/JINTAEMAN/01_TAMA_Work.git (fetch)
origin https://github.com/JINTAEMAN/01_TAMA_Work.git (push)
-------------------------------------------------------------------------------------------------

- 기존 원격저장소를 삭제하고 새로 추가
git remote remove origin;
git remote add origin https://github.com/JINTAEMAN/PythonWorkspace.git


- git pull origin main 		: 원격저장소의 master 브랜치를 pull하여 로컬의 master브랜치와 연결
- git add . : 모든 파일을 스테이지에 올림
- git commit -m "Add to Python Work space[22. 07.19(T_01)], by 진태만];" 		: 스테이지에 올린 파일들을 커밋
- git push origin master : 원격저장소의 master 브랜치에 push
- git pull origin main;
git add -A;
git commit -m "Add to Python Work space[22. 07.19(T_01)], by 진태만];";
git push

=========================================================================================================== 


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------------------------------// End //------------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■








