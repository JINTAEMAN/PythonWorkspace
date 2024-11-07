
 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+----------------------------// 96. 원격 저장소에서 저장된 소스 gitignore 처리 //-----------------------/ 24.11.07(목) /---+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 96. 원격 저장소에서 저장된 소스 gitignore 처리  @@@
$ touch /d/PythonWorkspace/90_etc/post_text_02.sh		# post_text_02.sh 파일 생성 ♣
$ echo "test" >> /d/PythonWorkspace/90_etc/post_text_02.sh	# post_text_02.sh 파일에 est 입력 ♣
$ cat /d/PythonWorkspace/90_etc/post_text_02.sh  		# post_text_02.sh 파일 내용 확인♣■
 
$ git add .;
git commit -m "▶[24.11.06 09:50] 02. 소스 올리기(by 진태만[PC 명: TAMA-MSI-A10SD-I7-21Y])";	# 커밋 ♣
git push origin main 		# 원격 저장소(main)에 소스 올리기 ♣

$ git log --oneline --all --graph -5   	# 커밋 로그 보기(최근 5개만 보여 주기) ♣

git rm -r --cached  /d/PythonWorkspace/90_etc/post_text_02.sh	;
git add .;
git commit -m "Remove post_text_02.sh from index and update .gitignore"	# 커밋 ♣
$ git push origin main 		# 원격 저장소(main)에 소스 올리기 ♣
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


$ echo "" >> .gitignore;			# gitignore 파일에 post_text_02.sh 입력 ♣ 
echo "# 01. 특정 파일 제외(24.11.07) ■" >> .gitignore;	# gitignore 파일에 post_text_02.sh 입력 ♣ 
echo "post_text_02.sh" >> .gitignore;		# gitignore 파일에 post_text_02.sh 입력 ♣
echo "#==============================================================================================================" >> .gitignore		
# gitignore 파일에 post_text_02.sh 입력 ♣

$ cat .gitignore  		# gitignore 파일 내용 확인♣
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

$ git rm -r --cached  /d/PythonWorkspace/90_etc/post_text_02.sh	# git 캐시(Cache) 삭제(이미 추적되고 있는 파일을 git의 인덱스에서 제거) ♣
=============================================================================================================

$ git add .;
git commit -m "▶[24.11.07 14:50] Remove post_text_02.sh from index and update .gitignore";	# 커밋 ♣
git push origin main 		# gitHub에 소스 올리기 ♣
==> 원격 서버에서 post_text_02.sh 파일은 안 없어짐(다시 업데이트 안됨) @@@
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 



- 96. 원격 저장소에서 저장된 소스 gitignore 처리  @@@   ==> 03. Dev(개발계) ■■■
$ touch /app/client/text/post_text.sh		# post_text.sh 파일 생성 ♣
$ echo "test" >> /app/client/text/post_text.sh	# post_text.sh 파일에 est 입력 ♣
$ cat /app/client/text/post_text.sh  		# post_text.sh 파일 내용 확인♣■
 
$ git add .;
git commit -m "▶[24.11.06 09:50] 02. 소스 올리기(by 진태만[PC 명: TAMA-MSI-A10SD-I7-21Y])";	# 커밋 ♣
git push origin main 		# 원격 저장소(main)에 소스 올리기 ♣

$ git log --oneline --all --graph -5   	# 커밋 로그 보기(최근 5개만 보여 주기) ♣

git rm -r --cached  /app/client/text/post_text.sh	;
git add .;
git commit -m "Remove post_text.sh from index and update .gitignore"	# 커밋 ♣
$ git push origin main 		# 원격 저장소(main)에 소스 올리기 ♣
=============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


$ echo "" >> .gitignore;			# gitignore 파일에 post_text.sh 입력 ♣ 
echo "# 01. 특정 파일 제외(24.11.07) ■" >> .gitignore;	# gitignore 파일에 post_text.sh 입력 ♣ 
echo "post_text.sh" >> .gitignore;		# gitignore 파일에 post_text.sh 입력 ♣
echo "#==============================================================================================================" >> .gitignore		
# gitignore 파일에 post_text.sh 입력 ♣

$ cat .gitignore  		# gitignore 파일 내용 확인♣
===============================================================================================XUUXUU==============
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

$ git rm -r --cached  /app/client/text/post_text.sh	# git 캐시(Cache) 삭제(이미 추적되고 있는 파일을 git의 인덱스에서 제거) ♣
=============================================================================================================

$ git add /app/client/text/post_text.sh
git commit -m "▶[24.11.07 14:50] Remove post_text.sh from index and update .gitignore";	# 커밋 ♣
# git push origin main 		# gitHub에 소스 올리기 ♣  ==> 원격 서버(dev)에 올리지 않기
==> 원격 서버에서 post_text.sh 파일은 안 없어짐(다시 업데이트 안됨) @@@
=============================================================================================================
 
$ git reset --merge ORIG_HEAD   # 바로 직전 병합을 취소 ♣ ==> 커멋한 소스 되돌리기 ■■■
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //--------------------------------------------------+ 
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ 

