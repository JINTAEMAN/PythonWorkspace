
  
����������������������������������������������������������
+---------------------------------------------// 96. git conflict //---------------------------------------/ 24.11.07(��) /---+ 
����������������������������������������������������������


- 95. git conflict �ذ� @@@
- git conflict - �˸� ���, �𸣸� ���[��Ȱ �ڵ�] 
https://www.youtube.com/watch?v=wVUnsTsRQ3g 
1. merge: ���� �������� ����(�浹�� 3 way merge ���� ����)
��A(1, 2, 3, 4) [base��]	===> ��B1(1, E2, 3, 4)		===> ��C1(1, E2, 3, E4) [dev]		===> ��D(1, E2, M3, ME4) [main(HEAD)]
									===> ��B2(1, 2, M3, 4)		===> ��C2(1, 2, M3, M4)
git merge dev
----------------------------------------------------------------------------------------------------------------------

2. cherry-pick: Ư�� ������ ���� ���� �� �������� ����
��A(1, 2, 3, 4) [base]	===> ��B1(1, E2, 3, 4) [base��]	===> ��C1(1, E2, 3, E4) [dev]		===> ��D(1, 2, M3, ME4) [main(HEAD)]
								===> ��B2(1, 2, M3, 4)					===> ��C2(1, 2, M3, M4) 
git reset --hard Commit ID
git cherry-pick dev
----------------------------------------------------------------------------------------------------------------------

3. rebase: �۾��� ������ �����ϴ� ����(�۾� ������ �Ϸķ� ����)
��A(1, 2, 3, 4) [base��]	===> ��B1(1, E2, 3, 4)		===> ��C1(1, E2, 3, E4) [dev]		===> ��D(1, E2, M3, E4)
	===> ��E(1, E2, M3, ME4) [main(HEAD)]
									===> ��B2(1, 2, M3, 4)		===> ��C2(1, 2, M3, M4) 
git reset --hard Commit ID
git rebase dev
----------------------------------------------------------------------------------------------------------------------

4. revert: Ư�� ������ ����� ���� �� �������� ����
��A(1, 2, 3, 4) [base]		===> ��B1(1, E2, 3, 4)  				===> ��C1(1, E2, 3, E4) [dev]		 
									===> ��B2(1, 2, M3, 4)	[base��]	===> ��C2(1, 2, M3, M4) 	===> ��D(1, 2, M3, M4) [main(HEAD)]
	===> ��E(1, E2, ME3, M4) [main(HEAD)]								
git reset --hard Commit ID
git revert Commit ID(B2)
git revert Commit ID
-------------------------------------------------------------------------------------------

- test.txt ���� ����
1
-
E2
-
=============================================================================================================


- conflict �׽�Ʈ ����
$ git branch dev		# dev Branch ���� ��  ==> git branch -d premium 	# dev Branch ������  
$ git switch dev		# dev Branch�� �̵� ��  ==> git branch
$ git status			# ����� ���� Ȯ�� ��  ==> git branch

$ touch /d/PythonWorkspace/90_etc/test.txt			# test.txt ���� ���� ��
$ echo "1" >> /d/PythonWorkspace/90_etc/test.txt;	# test.sh ���Ͽ� 1 �Է� ��
echo "-" > /d/PythonWorkspace/90_etc/test.txt;
echo "2" > /d/PythonWorkspace/90_etc/test.txt;
echo "-" > /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" > /d/PythonWorkspace/90_etc/test.txt;		#  test.sh ���Ͽ� 3 �Է� ��
echo "-" > /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" > /d/PythonWorkspace/90_etc/test.txt;

$ cat /d/PythonWorkspace/90_etc/test.txt; 		# test.txt ���� ���� Ȯ�΢�
 
$ git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "A";	# Ŀ�� ��
git push origin main; 		# ���� �����(main)�� �ҽ� �ø��� ��
-------------------------------------------------------------------------------------------

 $ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh ���Ͽ� 1 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "M3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh ���Ͽ� 3 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "B2";	# Ŀ�� ��
git push origin main;		# ���� �����(main)�� �ҽ� �ø��� ��
-------------------------------------------------------------------------------------------

$ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh ���Ͽ� 1 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "M3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh ���Ͽ� 3 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "M4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "C2";	# Ŀ�� ��
git push origin main;	# ���� �����(main)�� �ҽ� �ø��� ��
 ---------------------------------------------------------------------------------------------------------------

$ git switch dev		# dev Branch�� �̵� ��  ==> git branch

 $ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh ���Ͽ� 1 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "E2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh ���Ͽ� 3 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "B1";	# Ŀ�� ��
git push origin dev;		# ���� �����(main)�� �ҽ� �ø��� ��
-------------------------------------------------------------------------------------------

$ echo "1" > /d/PythonWorkspace/90_etc/test.txt;	# test.sh ���Ͽ� 1 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;
echo "E2" >> /d/PythonWorkspace/90_etc/test.txt;
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	 
echo "3" >> /d/PythonWorkspace/90_etc/test.txt;		#  test.sh ���Ͽ� 3 �Է� ��
echo "-" >> /d/PythonWorkspace/90_etc/test.txt;	  
echo "E4" >> /d/PythonWorkspace/90_etc/test.txt;

git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "C1";	# Ŀ�� ��
git push origin dev 		# ���� �����(main)�� �ҽ� �ø��� ��
-------------------------------------------------------------------------------------------

 
$ git switch main		# dev Branch�� �̵� ��  ==> git branch
$ git merge dev		# dev Branch�� ���� ó�� �� 
$ git merge dev
Auto-merging 90_etc/test.txt
CONFLICT (add/add): Merge conflict in 90_etc/test.txt
Automatic merge failed; fix conflicts and then commit the result.

- /test.txt ���Ͽ���
1
-
2
-
M3
-
ME4
----------------------------------------------------------------------------------------------------------------------

$ git merge dev
fatal: You have not concluded your merge (MERGE_HEAD exists).
Please, commit your changes before you merge.

$ git add /d/PythonWorkspace/90_etc/test.txt;
git commit -m "D";	# Ŀ�� ��
git push origin main 		# ���� �����(main)�� �ҽ� �ø��� ��
----------------------------------------------------------------------------------------------------------------------

 
 
�����������������������������������������������������������




����������������������������������������������������������
+-----------------------------------------// 95. git conflict �ذ� //-------------------------------------/ 24.10.29(ȭ) /---+ 
����������������������������������������������������������


- 95. git conflict �ذ� @@@
- [�ڵ���] Git���� conflict(�浹) �ذ��ϱ�|�ۼ��� �ڵ���
https://blog.naver.com/codeitofficial/221938658754


-- $ git branch  -v 	 #���� branch�� ������ ������ Ŀ�� ���� Ȯ��
-- $ git branch -r	 	# ����Ʈ ������� branch ���� Ȯ��
git branch branch_name		# Branch ���� ����
-- $ git branch -m old_name new_name		# Branch ����
-- $ git branch -d branch_name		# Branch ����

$ git branch premium		# premium Branch ����

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git checkout premium	# premium Branch�� ��ȯ

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (premium)
$ 
-----------------------------------------------------------------------

01. main �귣ġ���� sample.txt
Good morning!
Add line for main
-----------------------------------------------------------------------

$ git add .;
git commit -m "�� [24.10.29 13:25] ����(by tamario)";
git push origin;		# ���� ������ �ҽ� �ø��� ��
[premium 10f3153] �� [24.10.29 13:22] ���(by tamario)
 1 file changed, 2 insertions(+)
 create mode 100644 01_ast_vrfc/sample.txt
fatal: The current branch premium has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin premium

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.
------------------------------------------------------------------------------


01. main �귣ġ���� sample.txt
Good morning!
Add line for main 
------------------------------------------------------------------------------

$ git add .;
git commit -m "�� [24.10.29 13:25] ����(by tamario)";
git push origin;                # ���� ������ �ҽ� �ø��� ��
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

01. main �귣ġ���� sample.txt
Good morning!
Add line for main
-----------------------------------------------------------------------

02. premium �귣ġ���� sample.txt
Good Afternoon~
Add line for premium
----------------------------------------------------------------------------------------
 
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (premium)
$ git checkout main		# main Branch�� ��ȯ

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git merge premium   # main �귣ġ�� premium �귣ġ�� ����
----------------------------------------------------------------------------------------

$ git merge branch2	# branch2 main �귣ġ�� ����
Auto-merging file.txt
CONFLICT (content): Merge conflict in file.txt
Automatic merge failed; fix conflicts and then commit the result.
------------------------------------------------------------------

$ git merge branch2	# branch2 main �귣ġ�� ����
#  $ git merge abort		# ���� ���
=============================================================================================================
 
tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main)
$ git merge premium   # main �귣ġ�� premium �귣ġ�� ����
Auto-merging 01_ast_vrfc/sample.txt
CONFLICT (add/add): Merge conflict in 01_ast_vrfc/sample.txt
Automatic merge failed; fix conflicts and then commit the result
 ----------------------------------------------------------------------------

/ sample.txt ���Ͽ��� @@@
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
$ git merge premium   # main �귣ġ�� premium �귣ġ�� ����
error: Merging is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.

tamar@TAMA-MSI-A10SD-I7-21Y MINGW64 /d/PythonWorkspace (main|MERGING)
$  git add .;
git commit -m "���� ����";
git push origin main;  
[main 0ed4597] ���� ����
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
$  git checkout premium         # premium Branch�� ��ȯ
Switched to branch 'premium'
=============================================================================================================
�����������������������������������������������������������


- Git merge���� �߻��ϴ� �浹 �ذ��ϱ�
https://otzslayer.github.io/git/2023/08/12/conflict-resolving-when-merge.html

01. main �귣ġ���� file.txt
Commit A
Commit B

02. branch1 �귣ġ���� file.txt
Commit A
Commit B
Add line for branch1

03. branch2 �귣ġ���� file.txt
Commit A
Commit B
Add line for branch2
----------------------------------------------------------------------------------------

$ git checkout main
$ git merge branch1  # branch1 main �귣ġ�� ����
----------------------------------------------------------------------------------------

$ git merge branch2	# branch2 main �귣ġ�� ����
Auto-merging file.txt
CONFLICT (content): Merge conflict in file.txt
Automatic merge failed; fix conflicts and then commit the result.
------------------------------------------------------------------

/ file.txt ���Ͽ��� @@@
Commit A
Commit B
<<<<<<< HEAD
Add line for branch1
=======
Add line for branch2
>>>>>>> branch2
----------------------------------------------------------------------------------------

/ file.txt ���Ͽ��� @@@
Commit A
Commit B
Add line for branch1
Add line for branch2
----------------------------------------------------------------------------------------

$ git statuS		# branch2 main �귣ġ�� ����
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
git commit -m "�� [24.10.28 09:33] �浹 �ذ�(by tamario)";
git push origin;		# ���� ������ �ҽ� �ø��� ��
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //--------------------------------------------------+ 
����������������������������������������������������������� 
