

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------// 01. 파이썬 분석 //--------------------------------------/ 23.09.06(수) /-----+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 01. 파이썬 분석 ●●●
- 셀레니움4 예제(/3_selenium_V4.py) 수정
from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC 
import time

print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_01] ■■■■■■ [######################### [셀레니움4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# 크롬이 자동화된 테스트 소프트웨어에 의해 제어 알람 제거
 
browser = webdriver.Chrome(options=options)

url = "https://naver.com"       # 네이버 주소 
browser.get(url)	# 웹 사이트 열기
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# browser.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파")     # 검색어 input에 '에스파'라는 키 입력 ■■■
# time.sleep(1)   # 1초 대기
# print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_03]" )

elem = browser.find_element(By.XPATH, '//*[@id="sform"]/fieldset/button').click()    # 검색 button 클릭 ■■■
# time.sleep(5)   # 5초 대기
elem.click()
# print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_04]" )

try:
    elem = WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.LINK_TEXT, "검색").click()))     # URL(조회 결과)이 나올 때까지 10초 대기
    print(elem.text)
except:
    print("실패했어요") 
# ---------------------------------------------------------------------------------------------------------------------->

url = "https://naver.com"       # 네이버 주소
browser.get(url)

navs = browser.find_elements(By.CSS_SELECTOR, ".shortcut_item")     # CSS
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_12]" )
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR 갯수 ■■■]"+ str(len(navs)) )  	#  ■■■

i = 0

for nav in navs: 
	# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[outerHTML]"+ nav.get_attribute("outerHTML") ) 	#  ■■■
    print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[nav CSS text]"+ nav.text.replace("\n", "") )		#  ■■■
    print()
    i = i + 1
# [출처] 파이썬 셀레니움4 최신 버전 find_element 사용법 마스터|작성자 김플

[@_T] ■■■ [/3_selenium_V4.py] ==> [T_02] [url]https://naver.com
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_12]
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR 갯수 ■■■]10
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]0[nav CSS text]메일
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]1[nav CSS text]카페
# ---------------------------------------------------------------------------------------------------------------------->

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_99] ■■■■■■ [######################### [셀레니움4 TEST End] #########################] ■■■■■■\n\n\n\n")

==============================================================================================================
 
- /ast_vrfc.py 파일에서
def readParameters():    # 파일에서 파라미터 가져오는 함수() 
    file = open("01_pram_properties.txt", 'rt', encoding='utf-8-sig')	# properties.txt 파일 내용 ---> 2023.09[자산 년월(오늘 년월)]
    # print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_51] [file]"+ str(file) )

    parameters = file.read().split(";")		# 자산 년월 parameters 
    print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_92] [자산 년월]"+ str(parameters[0]) )
	
    return parameters
# ---------------------------------------------------------------------------------------------------------------------->

parameters = readParameters()   # 파일에서 파라미터 가져오는 함수()
astYYM = str(parameters[0])     # 자산 년월
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_02_2] [parameters[0]]"+ str(parameters[0]) +"[자산 년월]"+ str(astYYM) ) 

astYYM = astYYM         # 자산 년월 ■■■■■■ (2023.08)
astYM = astYYM[2:8]     # 자산 년월(23.08)
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_02_3] [자산 년월_7]"+ str(astYYM) +"[자산 년월_5]"+ str(astYM) )
# ---------------------------------------------------------------------------------------------------------------------->

ws_stock = wb["91. 주식"]   # "91. 주식" Sheet에 접근 @@@@@@@@ ===========> 
prev_B3 = ws_stock["B3"].value   # 이전 일자(예) 2023.08.31)
prev_B3 = prev_B3[0:7]     # 이전 일자[년월) (2023.08)

ws_stock.insert_rows(3, 8)       # 월별 자산 제목(3번째 줄 위치에 8줄을 추가)
ws_stock.merge_cells("A8:B8")    # A8부터 B9까지 셀을 싱글 셀로 병합
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_2] [91. 주식 Sheet] [오늘 년월]"+ now_ym.lstrip() +"[오늘 년월_타입]"+ 
	str(type(now_ym)) +"[오늘 년월_갯수]"+ str(len(now_ym.lstrip())) )
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_3] [91. 주식 Sheet] [자산 년월]"+ astYYM.lstrip() +"[자산 년월_타입]"+ 
	str(type(astYYM)) +"[자산 년월_갯수]"+ str(len(astYYM.lstrip())) )

if str(astYYM.strip()) != str(now_ym.strip()) :   # 입력한 자산 년월와 오늘 년월이 다르면
    result = pyautogui.alert("[91. 주식 Sheet] 입력한 자산 년월["+ str(astYYM) +"]와 오늘 년월["+ str(now_ym) +"]이 다릅니다.", 
		title='[자산 년월 입력 오류]', button='OK')
    sys.exit()    # 종료
else :   # 입력한 자산 년월와 오늘 년월이 같으면
    # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_4_2] [자산 년월]"+ str(astYYM) +"[오늘 년월]"+ str(now_ym) )	
==============================================================================================================

# 콘솔창 없이 하나의 실행 파일 만들기  ==> D:\PythonWorkspace_setUpFile\dist\ast_vrfc.exe
$ pyinstaller -w -F 01_실행_파일_만들기/ast_vrfc.py
===============================================================================================================

- Python 모듈 목록 확인
$ pip list
Package            Version
------------------ ------------------
attrs                            23.1.0
certifi                           2023.7.22
cffi                               1.15.1
selenium                      4.12.0
webdriver-manager     4.0.0
------------------------------------------------------------------------

$  pip show selenium		# selenium 버전 확인

$  pip install -upgrade selenium	# selenium 버전 업그레이드
============================================================================================================== 


- 비전공자를 위한 파이썬 자동화 완벽 가이드
https://wikidocs.net/book/4706
============================================================================================================== 




 
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


