
  
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+---------------------------------------------// 96. git conflict //---------------------------------------/ 24.11.07(목) /---+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 95. git conflict 해결 @@@
- git conflict - 알면 기능, 모르면 사고[생활 코딩] 
https://www.youtube.com/watch?v=wVUnsTsRQ3g 
1. merge: 가장 전형적인 병합(충돌은 3 way merge 원리 바탕)
■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)		===> ■C1(1, E2, 3, E4) [dev]	 
									===> ■B2(1, 2, M3, 4)		===> ■C2(1, 2, M3, M4)		===> ■D(1, E2, M3, ME4) [main(HEAD)]
$ git switch main		 # main Branch로 이동 ♣		
$ git merge dev	# dev Branch를 main 브랜치로 merge 처리 ♣  ==> 3 way merge(A[base★], C1, C2)
----------------------------------------------------------------------------------------------------------------------

2. cherry-pick: 특정 버전의 변경 사항 만 가져오는 병합(부분 변합)
■A(1, 2, 3, 4) 		===> ■B1(1, E2, 3, 4) [base★]		===> ■C1(1, E2, 3, E4) [dev]		 
							===> ■B2(1, 2, M3, 4)					===> ■C2(1, 2, M3, M4) 		===> ■D(1, 2, M3, ME4) [main(HEAD)]
$ git switch main	 	# main Branch로 이동 ♣		 
$ git cherry-pick C1   # dev Branch를 main 브랜치로 cherry-pick 처리 ♣  --> 전 단계인 B1과 비교해서 C1의 변경 사함 만 병합 
--> 3만 변경됨 ==> 3 way merge(B1[base★], C1, C2)
----------------------------------------------------------------------------------------------------------------------

3. rebase: 작업의 순서를 변경하는 병합(작업 순서를 일렬로 정렬)
■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)						===> ■C1(1, E2, 3, E4) [dev] 	===> ■D(1, E2, M3, E4) [main(HEAD)]
									===> ■B2(1, 2, M3, 4) [base_2★]		===> ■C2(1, 2, M3, M4) [main] 
$ git switch main	 	# main Branch로 이동 ♣
$ git rebase dev	 # dev Branch를 main 브랜치로 rebase 처리 ♣	==> 3 way merge(A[base★], C1, B2)
---------------------------------------------------------------------------------------------------

■A(1, 2, 3, 4) [base★]	===> ■B1(1, E2, 3, 4)		===> ■C1(1, E2, 3, E4) [dev] [base_2★]		===> ■D(1, E2, M3, E4)
	===> ■E(1, E2, M3, ME4) [main(HEAD)]
==> 3 way merge(B2[base_2★], D, C2)
----------------------------------------------------------------------------------------------------------------------

4. revert: 특정 버전의 취소한 내용 만 가져오는 병합
■A(1, 2, 3, 4) 
						===> ■B2(1, 2, M3, 4) [base★]	===> ■C2(1, 2, M3, M4) 	===> ■D(1, 2, 3, M4) [main(HEAD)] 
$ git switch main	 # main Branch로 이동 ♣
$ git rebase B2	 # B2를 main 브랜치로 revert 처리 ♣	 ==> B2단계에서 취소 --> 1) B2, A를 비교해서서 변경된 M3을 3으로 원복시킴
2) B2, C2를 비교해서 변경된 4를 M4로 변경 --> 3 way merge(B2[base★], A, C2)
----------------------------------------------------------------------------------------------------------------------

■A(1, 2, 3, 4) 		 
						===> ■B2(1, 2, M3, 4) [base★]	===> ■C2(1, 2, M3, M4) 	===> ■D(1, 2, M5, M4)
	===> ■E(1, E2, ME3, M4) [main(HEAD)]
3) B2, A를 비교해서서 변경된 M3을 3으로 원복시킴
4) B2, D를 비교해서 변경된 3를 ME3로, 4를 M4로 변경 --> 3 way merge(B2[base★], A, D)
=========================================================================================================

- conflict 테스트 ■■■
$ git branch dev		# dev Branch 생성 ♣  ==> git branch -d premium 	# dev Branch 삭제♣  
$ git switch dev		# dev Branch로 이동 ♣  ==> git branch
$ git status			# 저장소 상태 확인 ♣  ==> git branch

$ touch /d/PythonWorkspace/90_etc/test.txt			# test.txt 파일 생성 ♣
$ echo "1" >> /d/PythonWorkspace/90_etc/test.txt;	# test.sh 파일에 1 입력 ♣
echo "-" > /d/PythonWorkspace/90_etc/test.txt;
echo "2" > /d/PythonWorkspace/90_etc/test.txt;
echo "-" > /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" > /d/PythonWorkspace/90_etc/test.txt;		#  test.sh 파일에 3 입력 ♣
echo "-" > /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" > /d/PythonWorkspace/90_etc/test.txt;

$ cat /d/PythonWorkspace/90_etc/test.txt; 		# test.txt 파일 내용 확인♣
 
$ git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "A";	# 커밋 ♣
git push origin main; 		# 원격 저장소(main)에 소스 올리기 ♣
-------------------------------------------------------------------------------------------

- test.txt 파일 생성 @@@
1
-
2
-
3
-
4
-------------------------------------------------------------------------------------------

 $ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh 파일에 1 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "M3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh 파일에 3 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "B2";	# 커밋 ♣
git push origin main;		# 원격 저장소(main)에 소스 올리기 ♣
-------------------------------------------------------------------------------------------

$ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh 파일에 1 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "M3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh 파일에 3 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "M4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "C2";	# 커밋 ♣
git push origin main;	# 원격 저장소(main)에 소스 올리기 ♣
 ---------------------------------------------------------------------------------------------------------------

$ git switch dev		# dev Branch로 이동 ♣  ==> git branch

 $ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh 파일에 1 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "E2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh 파일에 3 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "B1";	# 커밋 ♣
git push origin dev;		# 원격 저장소(main)에 소스 올리기 ♣
-------------------------------------------------------------------------------------------

$ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh 파일에 1 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "E2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh 파일에 3 입력 ♣
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "E4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "C1";	# 커밋 ♣
git push origin dev 		# 원격 저장소(main)에 소스 올리기 ♣
-------------------------------------------------------------------------------------------
 
$ git switch main		# dev Branch로 이동 ♣  ==> git branch
$ git merge dev		# dev Branch로 머지 처리 ♣ 
Auto-merging 90_etc/test.txt
CONFLICT (add/add): Merge conflict in 90_etc/test.txt		# test.txt 파일에서 충돌 발생 ■■■
Automatic merge failed; fix conflicts and then commit the result.

- /test.txt 파일에서 충돌 수정
1
-
E2
-
M3
-
ME4 		# E4를 ME4로 수정 ■■■
----------------------------------------------------------------------------------------------------------------------

$ git merge dev	# dev Branch로 머지 처리 ♣
git commit -m "D";	# 커밋 ♣
git push origin main 	 # 원격 저장소(main)에 소스 올리기 ♣

- /test.txt 파일에서
1
-
E2
-
M3
-
ME4
============================================================================================================= 

$ git reset --hard Commit ID 		# 작업 돌리기 ♣
$ git log --oneline --all --graph --grep "B*"		# 커밋 로그 검색 ♣

$ git reflog show HEAD -30  	# 커밋 로그(30개 조회) ♣
$ git reset --hard a078229   	# 커밋 복구 ♣
HEAD is now at a078229 C2
=============================================================================================================

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■




■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+-----------------------------------------// 95. git conflict 해결 //-------------------------------------/ 24.10.29(화) /---+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 95. git conflict 해결 @@@
- [코드잇] Git에서 conflict(충돌) 해결하기|작성자 코드잇
https://blog.naver.com/codeitofficial/221938658754


-- $ git branch  -v 	 #로컬 branch의 정보를 마지막 커밋 내역 확인
-- $ git branch -r	 	# 리모트 저장소의 branch 정보 확인
git branch branch_name		# Branch 삭제 생성
-- $ git branch -m old_name new_name		# Branch 수정
-- $ git branch -d branch_name		# Branch 삭제

$ git branch premium		# premium Branch 생성

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git checkout premium	# premium Branch로 전환

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (premium)
$ 
-----------------------------------------------------------------------

01. main 브랜치에는 sample.txt
Good morning!
Add line for main
-----------------------------------------------------------------------

$ git add .;
git commit -m "▶ [24.10.29 13:25] 수정(by tamario)";
git push origin;		# 원격 서버에 소스 올리기 ■
[premium 10f3153] ▶ [24.10.29 13:22] 등록(by tamario)
 1 file changed, 2 insertions(+)
 create mode 100644 01_ast_vrfc/sample.txt
fatal: The current branch premium has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin premium

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.
------------------------------------------------------------------------------


01. main 브랜치에는 sample.txt
Good morning!
Add line for main 
------------------------------------------------------------------------------

$ git add .;
git commit -m "▶ [24.10.29 13:25] 수정(by tamario)";
git push origin;                # 원격 서버에 소스 올리기 ■
bash: $: command not found
On branch premium
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git resetore <file>..." to discard changes in working directory)
        modified:   01_ast_vrfc/sample.txt

no changes added to commit (use "git add" and/or "git commit -a")
fatal: The current branch premium has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin premium

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.
-----------------------------------------------------------------------

01. main 브랜치에는 sample.txt
Good morning!
Add line for main
-----------------------------------------------------------------------

02. premium 브랜치에는 sample.txt
Good Afternoon~
Add line for premium
----------------------------------------------------------------------------------------
 
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (premium)
$ git checkout main		# main Branch로 전환

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git merge premium   # main 브랜치에 premium 브랜치를 머지
----------------------------------------------------------------------------------------

$ git merge branch2	# branch2 main 브랜치로 병합
Auto-merging file.txt
CONFLICT (content): Merge conflict in file.txt
Automatic merge failed; fix conflicts and then commit the result.
------------------------------------------------------------------

$ git merge branch2	# branch2 main 브랜치로 머지
#  $ git merge abort		# 머지 취소
=============================================================================================================
 
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git merge premium   # main 브랜치에 premium 브랜치를 머지
Auto-merging 01_ast_vrfc/sample.txt
CONFLICT (add/add): Merge conflict in 01_ast_vrfc/sample.txt
Automatic merge failed; fix conflicts and then commit the result
 ----------------------------------------------------------------------------

/ sample.txt 파일에서 @@@
<<<<<<< HEAD
?Good morning!
Add line for main
=======
?Good Afternoon~
Add line for premium
>>>>>>> premium
-------------------------------------------------

Good Bye~
----------------------------------------------------------------------------------------
 
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main|MERGING)
$ git merge premium   # main 브랜치에 premium 브랜치를 머지
error: Merging is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main|MERGING)
$  git add .;
git commit -m "오류 수정";
git push origin main;  
[main 0ed4597] 오류 수정
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 12 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 372 bytes | 186.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/JINTAEMAN/PythonWorkspace
   5bb1687..0ed4597  main -> main
   
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$  git checkout premium         # premium Branch로 전환
Switched to branch 'premium'
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- Git merge에서 발생하는 충돌 해결하기
https://otzslayer.github.io/git/2023/08/12/conflict-resolving-when-merge.html

01. main 브랜치에는 file.txt
Commit A
Commit B

02. branch1 브랜치에는 file.txt
Commit A
Commit B
Add line for branch1

03. branch2 브랜치에는 file.txt
Commit A
Commit B
Add line for branch2
----------------------------------------------------------------------------------------

$ git checkout main
$ git merge branch1  # branch1 main 브랜치로 병합
----------------------------------------------------------------------------------------

$ git merge branch2	# branch2 main 브랜치로 병합
Auto-merging file.txt
CONFLICT (content): Merge conflict in file.txt
Automatic merge failed; fix conflicts and then commit the result.
------------------------------------------------------------------

/ file.txt 파일에서 @@@
Commit A
Commit B
<<<<<<< HEAD
Add line for branch1
=======
Add line for branch2
>>>>>>> branch2
----------------------------------------------------------------------------------------

/ file.txt 파일에서 @@@
Commit A
Commit B
Add line for branch1
Add line for branch2
----------------------------------------------------------------------------------------

$ git statuS		# branch2 main 브랜치로 병합
On branch main
You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)
	both modified:   file.txt

no changes added to commit (use "git add" and/or "git commit -a")
----------------------------------------------------------------------------------------
 
$ git add .;
git commit -m "▶ [24.10.28 09:33] 충돌 해결(by tamario)";
git push origin;		# 원격 서버에 소스 올리기 ■
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 
