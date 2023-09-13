

����������������������������������������������������������
+------------------------------------------// 01. ���̽� �м� //--------------------------------------/ 23.09.06(��) /-----+
����������������������������������������������������������


- 01. ���̽� �м� �ܡܡ�
- �����Ͽ�4 ����(/3_selenium_V4.py) ����
from selenium import webdriver   # ������̹� Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
import time

print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_01] ������� [######################### [�����Ͽ�4 TEST Start] #########################] ������� ")

options = Options() 
options.add_experimental_option("detach", True)  # ������ �ٷ� ���� ����
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # ���ʿ��� �޽��� ���� 
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# ũ���� �ڵ�ȭ�� �׽�Ʈ ����Ʈ��� ���� ���� �˶� ����
 
browser = webdriver.Chrome(options=options)

url = "https://naver.com"       # ���̹� �ּ� 
browser.get(url)	# �� ����Ʈ ����
print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1�� ���

# browser.find_element(By.XPATH, '//*[@name="query"]').send_keys("������")     # �˻��� input�� '������'��� Ű �Է� ����
# time.sleep(1)   # 1�� ���
# print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_03]" )

elem = browser.find_element(By.XPATH, '//*[@id="sform"]/fieldset/button').click()    # �˻� button Ŭ�� ����
# time.sleep(5)   # 5�� ���
elem.click()
# print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_04]" )

try:
    elem = WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.LINK_TEXT, "�˻�").click()))     # URL(��ȸ ���)�� ���� ������ 10�� ���
    print(elem.text)
except:
    print("�����߾��") 
# ---------------------------------------------------------------------------------------------------------------------->

url = "https://naver.com"       # ���̹� �ּ�
browser.get(url)

navs = browser.find_elements(By.CSS_SELECTOR, ".shortcut_item")     # CSS
print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_12]" )
print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR ���� ����]"+ str(len(navs)) )  	#  ����

i = 0

for nav in navs: 
	# print("[@_T] ���� [/3_selenium_V4.py] ==> [T_51] [nav_��°]"+ str(i) +"[outerHTML]"+ nav.get_attribute("outerHTML") ) 	#  ����
    print("[@_T] ���� [/3_selenium_V4.py] ==> [T_51] [nav_��°]"+ str(i) +"[nav CSS text]"+ nav.text.replace("\n", "") )		#  ����
    print()
    i = i + 1
# [��ó] ���̽� �����Ͽ�4 �ֽ� ���� find_element ���� ������|�ۼ��� ����

[@_T] ���� [/3_selenium_V4.py] ==> [T_02] [url]https://naver.com
[@_T] ���� [/3_selenium_V4.py] ==> [T_12]
[@_T] ���� [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR ���� ����]10
[@_T] ���� [/3_selenium_V4.py] ==> [T_51] [nav_��°]0[nav CSS text]����
[@_T] ���� [/3_selenium_V4.py] ==> [T_51] [nav_��°]1[nav CSS text]ī��
# ---------------------------------------------------------------------------------------------------------------------->

time.sleep(10)   # 10�� ���
print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ���� [/3_selenium_V4.py] ==> [T_99] ������� [######################### [�����Ͽ�4 TEST End] #########################] �������\n\n\n\n")

==============================================================================================================
 
- /ast_vrfc.py ���Ͽ���
def readParameters():    # ���Ͽ��� �Ķ���� �������� �Լ�() 
    file = open("01_pram_properties.txt", 'rt', encoding='utf-8-sig')	# properties.txt ���� ���� ---> 2023.09[�ڻ� ���(���� ���)]
    # print("[@_T] ���� [/ast_vrfc.py] [readParameters]==> [T_51] [file]"+ str(file) )

    parameters = file.read().split(";")		# �ڻ� ��� parameters 
    print("[@_T] ���� [/ast_vrfc.py] [readParameters]==> [T_92] [�ڻ� ���]"+ str(parameters[0]) )
	
    return parameters
# ---------------------------------------------------------------------------------------------------------------------->

parameters = readParameters()   # ���Ͽ��� �Ķ���� �������� �Լ�()
astYYM = str(parameters[0])     # �ڻ� ���
print("[@_T] ���� [/ast_vrfc.py] ==> [T_02_2] [parameters[0]]"+ str(parameters[0]) +"[�ڻ� ���]"+ str(astYYM) ) 

astYYM = astYYM         # �ڻ� ��� ������� (2023.08)
astYM = astYYM[2:8]     # �ڻ� ���(23.08)
print("[@_T] ���� [/ast_vrfc.py] ==> [T_02_3] [�ڻ� ���_7]"+ str(astYYM) +"[�ڻ� ���_5]"+ str(astYM) )
# ---------------------------------------------------------------------------------------------------------------------->

ws_stock = wb["91. �ֽ�"]   # "91. �ֽ�" Sheet�� ���� @@@@@@@@ ===========> 
prev_B3 = ws_stock["B3"].value   # ���� ����(��) 2023.08.31)
prev_B3 = prev_B3[0:7]     # ���� ����[���) (2023.08)

ws_stock.insert_rows(3, 8)       # ���� �ڻ� ����(3��° �� ��ġ�� 8���� �߰�)
ws_stock.merge_cells("A8:B8")    # A8���� B9���� ���� �̱� ���� ����
print("[@_T] ���� [/ast_vrfc.py] ==> [T_04_2] [91. �ֽ� Sheet] [���� ���]"+ now_ym.lstrip() +"[���� ���_Ÿ��]"+ 
	str(type(now_ym)) +"[���� ���_����]"+ str(len(now_ym.lstrip())) )
print("[@_T] ���� [/ast_vrfc.py] ==> [T_04_3] [91. �ֽ� Sheet] [�ڻ� ���]"+ astYYM.lstrip() +"[�ڻ� ���_Ÿ��]"+ 
	str(type(astYYM)) +"[�ڻ� ���_����]"+ str(len(astYYM.lstrip())) )

if str(astYYM.strip()) != str(now_ym.strip()) :   # �Է��� �ڻ� ����� ���� ����� �ٸ���
    result = pyautogui.alert("[91. �ֽ� Sheet] �Է��� �ڻ� ���["+ str(astYYM) +"]�� ���� ���["+ str(now_ym) +"]�� �ٸ��ϴ�.", 
		title='[�ڻ� ��� �Է� ����]', button='OK')
    sys.exit()    # ����
else :   # �Է��� �ڻ� ����� ���� ����� ������
    # print("[@_T] ���� [/ast_vrfc.py] ==> [T_04_4_2] [�ڻ� ���]"+ str(astYYM) +"[���� ���]"+ str(now_ym) )	
==============================================================================================================

# �ܼ�â ���� �ϳ��� ���� ���� �����  ==> D:\PythonWorkspace_setUpFile\dist\ast_vrfc.exe
$ pyinstaller -w -F 01_����_����_�����/ast_vrfc.py
===============================================================================================================

- Python ��� ��� Ȯ��
$ pip list
Package            Version
------------------ ------------------
attrs                            23.1.0
certifi                           2023.7.22
cffi                               1.15.1
selenium                      4.12.0
webdriver-manager     4.0.0
------------------------------------------------------------------------

$  pip show selenium		# selenium ���� Ȯ��

$  pip install -upgrade selenium	# selenium ���� ���׷��̵�
============================================================================================================== 


- �������ڸ� ���� ���̽� �ڵ�ȭ �Ϻ� ���̵�
https://wikidocs.net/book/4706
============================================================================================================== 




 
==============================================================================================================
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������


