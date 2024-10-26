

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

for i in range(1, 13): 
    ws.merge_cells(start_row=addRow, start_column=1, end_row=addRow, end_column=4)     # '2024.06 �ڻ�' �� ����("A3:D3")  ==> 22
    addRow2 = int(addRow) + int(addRow2)    # �� �߰�_03 = 19 + 19 = 57 
    print("[@_T] ���� [/ast_vrfc.py] ==> [T_71_51] [item_��°]"+ str(i) +"[01. start_row]"+ str(addRow) +"[02. addRow2]"+ str(addRow2) )
    # print("[@_T] ���� [/ast_vrfc.py] ==> [T_71_51] [item_��°]"+ str(i) +"[01. start_row]"+ str(addRow+3) +"[02. add]"+ str(add) )


==============================================================================================================


def wait_until(xpaht_str):      # ��ȸ ����� ���� ������ 30�� ����ϴ� �Լ�()
    # print("[@_T] ���� [/rsvtPlaneTicket.py] [wait_until] ==> [T_01] [xpaht_str]"+ str(xpaht_str) )

    WebDriverWait(browser, 30).until(EC.presence_of_element_located((By.XPATH, xpaht_str)))    # URL(��ȸ ���)�� ���� ������ 30�� ���
    
    print("[@_T] ���� [/rsvtPlaneTicket.py] [wait_until] ==> [T_91] [xpaht_str]"+ str(xpaht_str) )
# ---------------------------------------------------------------------------------------------------------------------->


print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_01] ������� [######################### [�װ��� ���� TEST Start] #########################] ������� ")

options = Options() 
options.add_experimental_option("detach", True)  # ������ �ٷ� ���� ����
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # ���ʿ��� �޽��� ���� 

# service = Service(ChromeDriverManager().install())
# browser = webdriver.Chrome(service=service, options=options)
browser = webdriver.Chrome(options=options)

url = "https://flight.naver.com/flights/"     # ���̹� �װ��� �ּ�
browser.get(url)     # �� ����Ʈ ����
time.sleep(1)   # 1�� ���
print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_02] [�ּ�]"+ url )

btn_go_date = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/div[2]/button[1]')    # ���� �� button
btn_go_date.click()      # ���� �� ��ư Ŭ��  
print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_04]" )  
time.sleep(1)   # 1�� ���

wait_until('//b[text() = "18"]')      # ���� ������ 30�� ���
go_date = browser.find_elements(By.XPATH, '//b[text() = "18"]')      # ���� ��(09�� 16��) 
print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_04_2] [���� ��_����]"+ str(len(go_date)) )  
go_date[0].click()      # ���� �� Ŭ�� 

# �װ��� �˻� Ŭ��
wait_until('//*[@id="__next"]/div/div/div[4]/div/div/div[2]/button')    # ���� ������ **�� ���
search = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/button')   # vehicle1 checkbox Ŭ�� 
# print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_05_2] [search]"+ str(search) )
search.click()      # ���� Ŭ��  
print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_05_3] [��ȸ ��� Ȯ��_�� @@@@]" )  

try:  
    wait_until('//*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]/div')     # ���� ������ **�� ���
    search_rslt = browser.find_elements(By.CSS_SELECTOR, '.domestic_Flight__sK0eA.result')      # �װ��� ����Ʈ

    i = 0
    print("\n\n [�װ��� ��ȸ ���].....����:"+ str(len(search_rslt)) )   

    for item in search_rslt:  
        # print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_51_1] [item_��°]"+ str(i) )
        # time.sleep(5)   # 5�� ���
        
        airline = item.find_element(By.CSS_SELECTOR, ".airline").text     # 01. �װ����
        # print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_51_2] [item_��°]"+ str(i) +"[01. �װ����]"+ name )

        startTime = item.find_elements(By.CSS_SELECTOR, ".route_airport__3VT7M")[0].text.replace('\n', ' ')      # 02. ���� �ð�  route_time__-2Z1T
        returnTime = item.find_elements(By.CSS_SELECTOR, ".route_airport__3VT7M")[1].text.replace('\n', ' ')       # 03. ���� �ð�     
        price = item.find_element(By.CSS_SELECTOR, ".domestic_num__2roTW").text     # 04. ����
        # print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_51_3] [item_��°]"+ str(i) +"[01. �װ����]"+ airline +"[02. ���� �ð�]"+ startTime +"[03. ���� �ð�]"+ returnTime +"[04. ����]"+ price )

        print(f'No. {i + 1}')
        print(f'�װ���: {airline}')
        print(f'���� �ð�: {startTime}')
        print(f'���� �ð�: {returnTime}')
        print(f'����: {price}��')
        print('-' * 100)
        
        # try:
        #     go_time = item.find_element(By.CSS_SELECTOR, ".route_airport__3VT7M").text      # 02. ���� �ð�  route_time__-2Z1T
        #     # //*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]/div/div[1]/div/div[2]/span[1]/b
        # except:
        #     go_time = ""     # 02. ���� -->
        # link = item.find_element(By.CSS_SELECTOR, ".adProduct_title__amInq > a").get_attribute('href')   # 03. ��ũ
        #  print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_51_3] [item_��°]"+ str(i) +"[01. �װ����]"+ name +"[02. ���� �ð�]"+ go_time )
        
        #  csvWriter.writerow([name, price, link])    # ����Ÿ ����
        i = i + 1
except:
    print("��ȸ �����߾��")
    print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_52]" )
print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_61]" ) 
# ----------------------------------------------------------------------------------------------------------------

print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_90]" )
input("�����Ϸ��� Enter Ű�� �Է��ϼ���.")
browser.quit()

print("[@_T] ���� [/rsvtPlaneTicket.py] ==> [T_99] ������� [######################### [�װ��� ���� TEST End] #########################] �������\n\n\n\n")
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
�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������


- ��(null) ó�� @@@
print("[@_T] ���� [/ast_vrfc.py] ==> [T_21_22] [01. ���� ��. ����_2]"+ str(type(deposit_savings_2)) +"[01. ���� ��. ����_3]"+ 
str(type(deposit_savings_3)) )

if deposit_savings_sh == None or deposit_savings_sh == '' :   # 02. �뿩���� �� �̸� ����
    deposit_savings_sh = 0
if int(deposit_savings_sh) > 0  :   # 02. �뿩���� �����ϸ�
    deposit_savings_sh_nm = "01. ��������[��. ����]"
	
if deposit_savings_2 == None or deposit_savings_2 == '' :   # 01. ���� ��. ����_2�� �� �̸� ����
    deposit_savings_2 = 0

if deposit_savings_3 == None or deposit_savings_3 == '' :   # 01. ���� ��. ����_3�� �� �̸� ����
    deposit_savings_3 = 0
deposit_savings = int(deposit_savings_sh) + int(deposit_savings_2) + int(deposit_savings_3)
deposit_savings_nm = "01. ���� ��. ����([06])"
print("[@_T] ���� [/ast_vrfc.py] ==> [T_21_32] [01. ��������[��. ����]]"+ str(deposit_savings_sh) +"[01. ���� ��. ����_2]"+ 
str(deposit_savings_2) +"[01. ���� ��. ����_3]"+ str(deposit_savings_3) )
print("[@_T] ���� [/ast_vrfc.py] ==> [T_21_41] [01. ���� ��. ����]"+ str(deposit_savings) )
--------------------------------------------------------------------------------------------------------------------------

--Output:
[@_T] ���� [/ast_vrfc.py] ==> [T_21_22] [01. ���� ��. ����_2]<class 'NoneType'>[01. ���� ��. ����_3]<class 'NoneType'> 
[@_T] ���� [/ast_vrfc.py] ==> [T_21_32] [01. ��������[��. ����]]3826751[01. ���� ��. ����_2]0[01. ���� ��. ����_3]0     
[@_T] ���� [/ast_vrfc.py] ==> [T_21_41] [01. ���� ��. ����]3826751
����������������������������������������������������������


- replace()�� Ư�� ���� ����
str = "Hello, World, Python"
new_str = str.replace(',', '')
print(new_str)

--Output:
Hello World Python
----------------------------------------------------------------------------------------------------------------------------------

- Ư�� ���� ����
str = "2024.03;2024.04"
new_str = str.split(";")   # �ڻ� ��� parameters[01. ���� ���[�Է�]]
print(new_str[0])

--Output:
2024.03
����������������������������������������������������������


- /ast_vrfc.py ���� �α� @@@
print("\n\n [@_T] ���� [/ast_vrfc.py] ==> [T_01] ������� [######################### [�ڻ� ���� ���� TEST Start] 
print("[@_T] ���� [/ast_vrfc.py] ==> [T_01_01]" )

openFileNm = "02. �ڻ� ����("+ str(input_astYY) +"."+ format(input_astMM, '02') +").xlsx"   # ���� ���� ��(02. �ڻ� ����(23.08).xlsx) 
print("[@_T] ���� [/ast_vrfc.py] ==> [T_02_04] [���� ����]"+ str(openFileNm) +"[wb]"+ str(wb) )
# ---------------------------------------------------------------------------------------------------------------------->
# ����������������������������������������������������������
���������������������������������������������������� ------------------->


print("\n\n [@_T] ���� [/ast_vrfc.py] ==> [T_01] ������� [######################### [11. ���º��ܰ� Tab(���� ����) �۾� Start] 
#########################] ������� ")

ws_01_actBalnc = wb["���º��ܰ�"]   # "���º��ܰ�" Sheet(Tab)�� ���� @@@@@@@@ ===========>
print("[@_T] ���� [/ast_vrfc.py] ==> [T_11_0] [���º��ܰ� Tab Sheet(Tab)�� ���� @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ����������������������������������������������������������
���������������������������������������������������� ------------------->


print("\n\n [@_T] ���� [/ast_vrfc.py] ==> [T_01] ������� [######################### [21. ������Ź Tab(���� ����) �۾� Start]
 #########################] ������� ")
 
ws_02_irp = wb["������Ź"]   # "������Ź" Sheet(Tab)�� ���� @@@@@@@@ ===========>
print("[@_T] ���� [/ast_vrfc.py] ==> [T_21_01] [������Ź Tab Sheet(Tab)�� ���� @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ����������������������������������������������������������
���������������������������������������������������� ------------------->


print("\n\n [@_T] ���� [/ast_vrfc.py] ==> [T_01] ������� [######################### [51. ���ڻ�(24Y) Tab �۾� Start] 
#########################] ������� ")
 
totAstYear = "00. ���ڻ�("+ str(astYYM[2:4]) +"Y)"
wsTot = wb[totAstYear]    # "00. ���ڻ�(24Y)" Sheet(Tab)�� ���� @@@@@@@@ ===========> 
print("[@_T] ���� [/ast_vrfc.py] ==> [T_51_01] [�ڻ�(202*) Sheet(Tab)�� ���� @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ����������������������������������������������������������
���������������������������������������������������� ------------------->


print("\n\n [@_T] ���� [/ast_vrfc.py] ==> [T_01] ������� [######################### [71. �ڻ�(24Y) Tab �۾� Start] 
#########################] ������� ")

astYear = "�ڻ�("+ str(astYYM[2:4]) +"Y)" 
ws = wb[astYear]    # "�ڻ�(2023)" Sheet(Tab)�� ���� @@@@@@@@ ===========>   
print("[@_T] ���� [/ast_vrfc.py] ==> [T_71_01] [71. �ڻ�(24Y) Tab Sheet(Tab)�� ���� @@@@@@@@ ===========>]") 
# ---------------------------------------------------------------------------------------------------------------------->
# ����������������������������������������������������������
���������������������������������������������������� ------------------->


�����������������������������������������������������������
+--------------------------------------------------------// End //----------------------------------------------------------+
�����������������������������������������������������������

