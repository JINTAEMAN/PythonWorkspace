

����������������������������������������������������������
+------------------------------------------// 00. Git �м� //--------------------------------------/ 24.10.26(��) /-----+
����������������������������������������������������������


-00. Git �м� �ܡܡ�
https://github.com/JINTAEMAN/PythonWorkspace,.   ----> INTAEMAN/asas1212!!tama


1. ghtHub���� �ҽ� �ٿ�ε� ��
$ cd /d
$ git clone https://github.com/JINTAEMAN/PythonWorkspace
============================================================================================================-

1. ghtHub���� �ҽ� �޾� ���� ��
# git fetch -a		# dev �귣ġ�� ��ȯ 
# git pull origin main	# main �귱ġ���� �ҽ� �޾� ���� ��
============================================================================================================-

1. ghtHub�� �ø��� �޾� ���� ��
$ git add .
$ git commit -m "Add to 77_����_����_�����, 97. ���̽� �ڷ�_�� ���� �ø���[24.10.26(T_01)], by tamario]";
$ git commit -m "Add to origin. ���̽� �ڷ�_�� ���� �ø���[24.10.26(T_01)], by tamario]"; 	
$ git commit -m "Add to origin. ���̽� �ڷ�_�� ���� �ø���[24.10.26(T_01)], by tamario]"; 	



$ git push origin		# main �귱ġ�� �ҽ� �ø��� ��
$ git log --all --oneline  		# log �ð������� ����
==============================================================================================================  

 

�����������������������������������������������������������


$ git log --all --oneline  		# log �ð������� ����
$ git status		# git ���� Ȯ��
 
$ git clone http://gitlab.lguplus.co.kr/project/nedp/dlk airflow 01.git		# dik_airflow_01 ������Ʈ Clone �ޱ� --> ���ʿ��� ���� ��
$ cd /c/Users/tamario/Pycharm Projects/dik_airflow_01 	# ��ġ���� gitrbash ����
$ git pull origin master
$ git checkout develop		-- develop �귣ġ�� ��ȯ
$ git pull
--------------- ============================================================================================================-
�����������������������������������������������������������
 

$ git status	# git ���� Ȯ��
�� On branch dev
�� Your branch is up to date with 'origin/dev'.

�� Changes not staged for commit:  # staged�� �� �ö� ����
  (use "git add <file>..." to uddate what will be commited)"
	modified:   app/api/vi/llm_model.py
 
$ git clean -fd  	# untracked ����, ���� ��� ���� ��
�� Removing app/api/vi/llm_model.py

$ git clean -fd --dry-run	# untracked ����, ���� ��� ���� �� �̸� ���� ��
-----------------------------------------------------------------------------------------------

$ git status    # git ���� Ȯ��
�� On branch dev
�� Changes to be committed:  	# ���� ���� staged�� �ö� ����
  (use "git restore --staged <file>..." to unstage)
        modified:   app/api/vi/llm_model.py
		
$ git reset HEAD -- app/api/vi/llm_model.py	 	# Staged�� ���� ���� ��  
-- $ git checkout  -- 01_ast_vrfc/bmi_calculate.py	 # Staged�� ���� ���� ��( Modified���� ������ �ֱ� Ŀ���� ����(�Ǵ� clone���� �� ����)�� �ǵ�����
 
�� Unstaged changes after reset:
M       app/api/vi/llm_model.py
--------------- ============================================================================================================-
�����������������������������������������������������������


 - ��Ʃ��� ���� �ڵ� Git ���� ��û
https://www.youtube.com/watch?v=JZJQ4_8XoPM&list=PLHF1wYTaCuixewA1hAn8u6hzx5mNenAGM
 - 03.����� ������ Ŀ��(Commit) �ϱ�
> git init
> git add filename
> git commit
> git status
> gitk    # �ð������� ����
> git log --all --oneline 	 # log �ð������� ����
---------------------------------------------------------------------------------------

> git branch  -v 	 	# ��ϵ� �귣ġ�� ���� ���� Ȯ��
> git branch --merged 		# �귣ġ ���� Ȯ��(-merged,  --no-merged ) 
> git checkout main # master�� üũ �ƿ�  
> git merge test		#  test�귣ġ�� �ڵ带 main�� ��ħ
---------------------------------------------------------------------------------------

# git clone			# ���� ����ҿ��� ���� ����
# git fetch -a		# ���� ����ҿ��� ���� ���� ��� ��������
# git pull		 		# ���� ����ҿ��� ���� ��������
# git push			# ���� ����ҿ��� ���� ������
---------------------------------------------------------------------------------------

- [Git] Branch�� Merge
https://velog.io/@marksen/Git-Branch%EC%99%80-Merge
==============================================================================================================


- ��Ʃ��� ���� �ڵ� Git ����[���� ��Ʃ���]
https://www.youtube.com/watch?v=JZJQ4_8XoPM&list=PLHF1wYTaCuixewA1hAn8u6hzx5mNenAGM

- Visual Studio Code �� �ٷ�� Git[��Ȱ �ڵ�]
https://www.youtube.com/watch?v=SZclqh4GpEI&list=PLuHgQVnccGMAQvSVKdXFiOo51HUD8iQQm&index=3
============================================================================================================- 
�����������������������������������������������������������


3. GITLAB ���ε�(=> Git Bash���� ������ �͡�)
���� ��ũ(C:)/�����/����/PycharmProjects�� ������Ʈ clone �ޱ�

tamario@PCPC13S195 MINGW64 / (master)
$ cd /c/Users/tamario/Pycharm Projects
$ git clone http://gitlab.lguplus.co.kr/project/nedp/dlk airflow 01.git		# dik_airflow_01 ������Ʈ Clone �ޱ� --> ���ʿ��� ���� ��
$ cd /c/Users/tamario/Pycharm Projects/dik_airflow_01 	# ��ġ���� gitrbash ����
$ git pull origin master
$ git checkout develop		-- develop �귣ġ�� ��ȯ
$ git pull
============================================================================================================- 
�����������������������������������������������������������



https://github.com/JINTAEMAN/PythonWorkspace,.   ----> INTAEMAN/asas1212!!tama

==============================================================================================================


�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������

 
 - 03.����� ������ Ŀ��(Commit) �ϱ�
> git init
> git add filename
> git commit
> git status
> gitk    # �ð������� ����
> git log --all --oneline 	 # log �ð������� ����
---------------------------------------------------------------------------------------

> git branch  -v 	 	# ��ϵ� �귣ġ�� ���� ���� Ȯ��
> git branch --merged 		# �귣ġ ���� Ȯ��(-merged,  --no-merged ) 
> git checkout main # master�� üũ �ƿ�  
> git merge test		#  test�귣ġ�� �ڵ带 main�� ��ħ
---------------------------------------------------------------------------------------

# git clone			# ���� ����ҿ��� ���� ����
# git fetch -a		# ���� ����ҿ��� ���� ���� ��� ��������
# git pull		 		# ���� ����ҿ��� ���� ��������
# git push			# ���� ����ҿ��� ���� ������
---------------------------------------------------------------------------------------

- [Git] Branch�� Merge
https://velog.io/@marksen/Git-Branch%EC%99%80-Merge
==============================================================================================================
 
$ git status	# git ���� Ȯ��
�� On branch dev
�� Your branch is up to date with 'origin/dev'.

�� Changes not staged for commit:  # staged�� �� �ö� ����
  (use "git add <file>..." to uddate what will be commited)"
	modified:   app/api/vi/llm_model.py
 
$ git clean -fd  	# untracked ����, ���� ��� ���� ��
�� Removing app/api/vi/llm_model.py

$ git clean -fd --dry-run	# untracked ����, ���� ��� ���� �� �̸� ���� ��
-----------------------------------------------------------------------------------------------

$ git status    # git ���� Ȯ��
�� On branch dev
�� Changes to be committed:  	# ���� ���� staged�� �ö� ����
  (use "git restore --staged <file>..." to unstage)
        modified:   app/api/vi/llm_model.py
		
$ git reset HEAD -- app/api/vi/llm_model.py	 	# Staged�� ���� ���� ��  
-- $ git checkout  -- 01_ast_vrfc/bmi_calculate.py	 # Staged�� ���� ���� ��( Modified���� ������ �ֱ� Ŀ���� ����(�Ǵ� clone���� �� ����)�� �ǵ�����
 
�� Unstaged changes after reset:
M       app/api/vi/llm_model.py
==============================================================================================================
 
 
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������

 
 