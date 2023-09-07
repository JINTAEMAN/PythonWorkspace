

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


