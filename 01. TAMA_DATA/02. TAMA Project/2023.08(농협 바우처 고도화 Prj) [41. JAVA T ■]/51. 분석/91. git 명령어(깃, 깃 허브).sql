

����������������������������������������������������������
+-----------------------------------------// Git ���� ����ҿ� push �ϴ� ���� //-------------------------/ 23.08.03(��) /---+ 
����������������������������������������������������������


-- Git ���� ����ҿ� push �ϴ� ����
https://ikcoo.tistory.com/44

1. ���� ����� init or clone
$ git clone https://github.com/JINTAEMAN/PythonWorkspace.git
2. Git ���� �ۼ�
$ git config --global user.name "tamario";
git config --global user.email "tamario@naver.com"
3. Git �������� ������ �߰�
>nbsp; git add -A;	# 3. Git �������� ������ �߰�
4. Git ���� ����� ������ �߰�
>nbsp; git commit -m "Add to Python Work space[22. 07.19(T_02), by ���¸�];";	 # 4. Git ���� ����� ������ �߰�, �ڸ�Ʈ �ۼ�
5. ���� ����ҿ� �ݿ�
>nbsp; git remote add origin https://github.com/JINTAEMAN/PythonWorkspace.git	# 5. ���� ����ҿ� �ݿ�(���� �ۼ���)
>nbsp; git push origin main     # 5. ���� ����ҿ� �ݿ�(main: �귣ġ)
--------------------------------------------------------------------------------------------------------------


git status		# 0. Git ����� ���� Ȯ��
git pull  origin  main     # ���� ����� ����Ÿ ���� ����(main: �귣ġ)

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



- git ��������� �߰� - git remote add
https://shanepark.tistory.com/284
---------------------------------------------------------------------------------------------------------------------------

- Repository ����
PythonWorkspace ==> D:\PythonWorkspace

- 02. Git repository �����
https://ojui.tistory.com/16

- git remote add origin ī���� �ּ� : ���� ����ҿ� ����
- git remote -v : ����� ���� ����� Ȯ��

- git pull origin master : ����������� master �귣ġ�� pull�Ͽ� ������ master�귣ġ�� ����
- git add . : ��� ������ ���������� �ø�
- git commit -m "Ŀ�Ը޼���" : ���������� �ø� ���ϵ��� Ŀ��
- git push origin master : ����������� master �귣ġ�� push
---------------------------------------------------------------------------------------------------------------------------

- ���� ����� �߰�
git remote add origin [�߰��� ���� git ����� �ּ�]
# �Ʒ��� �� ���ô� ���� https �� ssh �Դϴ�.
git remote add origin https://github.com/Shane-Park/playddit.git
git remote add origin git@github.com:Shane-Park/playddit.git
-------------------------------------------------------------------------------------------------

- ���� ����� �߰�
git add .
git commit -m "Ŀ�Ը޽���"
git push origin master
---------------------------------------------------------------------------------------------------------------------------

- ��������� ��� ��ȸ
tamar@TAMA-INO-PC MINGW64 /d/PythonWorkspace (main)
$ git remote -v
origin https://github.com/JINTAEMAN/01_TAMA_Work.git (fetch)
origin https://github.com/JINTAEMAN/01_TAMA_Work.git (push)
-------------------------------------------------------------------------------------------------

- ���� ��������Ҹ� �����ϰ� ���� �߰�
git remote remove origin;
git remote add origin https://github.com/JINTAEMAN/PythonWorkspace.git


- git pull origin main 		: ����������� master �귣ġ�� pull�Ͽ� ������ master�귣ġ�� ����
- git add . : ��� ������ ���������� �ø�
- git commit -m "Add to Python Work space[22. 07.19(T_01)], by ���¸�];" 		: ���������� �ø� ���ϵ��� Ŀ��
- git push origin master : ����������� master �귣ġ�� push
- git pull origin main;
git add -A;
git commit -m "Add to Python Work space[22. 07.19(T_01)], by ���¸�];";
git push

=========================================================================================================== 


����������������������������������������������������������
+----------------------------------------------------// End //------------------------------------------------------------+
����������������������������������������������������������








