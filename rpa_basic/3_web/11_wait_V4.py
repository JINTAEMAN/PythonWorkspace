# ! /11_wait_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
# from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
# from selenium.webdriver.chrome.service import Service 
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
# from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_01] ■■■■■■ [######################### [11_wait_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

# service = Service(ChromeDriverManager().install())
# browser = webdriver.Chrome(service=service, options=options)
browser = webdriver.Chrome(options=options)

url = "https://flight.naver.com/flights/"     # 네이버 항공권 주소
browser.get(url)     # 웹 사이트 열기
time.sleep(1)   # 1초 대기
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_02] [주소]"+ url )

# 가는 날 클릭
browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/div[2]/button[1]').click()    # 가는 날 button 클릭   
#  browser.find_element(By.LINK_TEXT, "가는 날").click()    # 가는 날 버튼 클릭 
# <button type="button" class="tabContent_option__2y4c6 select_Date__1aF7Y" aria-selected="false">가는 날</button>
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04]" )  # //*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button/b

elem = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button/b')  # 가는 날(09월 27일) 버튼 클릭   
# browser.find_element(By.XPATH, '//*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button/b')  # 가는 날(09월 27일) 버튼 클릭   
# elem = browser.find_elements('27')[0]
time.sleep(10)     # 10초 대기
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_2]" ) 
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_3] [elem_outerHTML]"+ elem.get_attribute("outerHTML") )
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_4] [elem text]"+ elem.text.replace("\n", "") )
# str(elem)]<b class="sc-evZas dDVwEk num">27</b>
# <b class="sc-evZas dDVwEk num">27</b>    //*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button/b
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_5]" )
elem.click()
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_6]" )
time.sleep(1)     # 1초 대기

# browser.find_element(By.LINK_TEXT, "30")[0].click()  //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button
# browser.find_elements_by_link_text('30')[0].click()  //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/div[2]/table/tbody/tr[5]/td[4]/button/b
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_04_5]" )

# 오는 날   
elem = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[3]/button/b')   # 오는 날(10월 03일) 버튼 클릭   
# browser.find_element(By.LINK_TEXT, '5')[1].click()   //*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[3]/button/b
# browser.find_element(By.LINK_TEXT, "30")[0].click()   # 오는 날[다음달 30일]  //*[@id="__next"]/div/div[2]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[3]/button/b
# <b class="sc-evZas dDVwEk num">3</b>   //*[@id="__next"]/div/div/div[10]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[3]/button/b
# //*[@id="__next"]/div/div/div[11]/div[2]/div[1]/div[2]/div/div[3]/table/tbody/tr[1]/td[3]/button/b
time.sleep(10)     # 5초 대기
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_05]" )
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_05_1] [str(elem)]"+ elem.get_attribute("outerHTML") ) 
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_05_1]" )
elem.click()
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_05_3]" )
time.sleep(1)     # 1초 대기


# 제주도 클릭  --> //*[@id="__next"]/div/div/div[4]/div/div/div[2]/div[1]/button[2]/i
elem = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/div[1]/button[2]/i')  # 제주 선택 클릭'
elem.click()
# <i class="select_name__1L61v">제주</i>
# ==> [str(elem)]<i class="select_name__1L61v">선택</i>
# browser.find_element_by_xpath('//*[@id="recommendationList"]/ul/li[1]').click() 
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_06_1] [elem text]"+ elem.text.replace("\n", "") )
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_06_2] [str(elem)]"+ elem.get_attribute("outerHTML") )

# 항공권 검색 클릭
# browser.find_element(By.LINK_TEXT, "항공권 검색").click()  
browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/button').click()   # vehicle1 checkbox 클릭
# browser.find_element_by_link_text('항공권 검색').click()    //*[@id="__next"]/div/div/div[4]/div/div/div[2]/button

# time.sleep(10)    # 10초 대기
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_07]" )

try:
    elem = WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.XPATH, '//*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]')))    # URL(조회 결과)이 나올 때까지 10초 대기
    print(elem.text)
    print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_51]" )        #  //*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]
except:
    print("실패했어요")
    print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_52]" )
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_61]" )

# 첫 번째 결과 출력
# elem = browser.find_element_by_xpath('//*[@id="content"]/div[2]/div/div[4]/ul/li[1]')
# print(elem.text) # element 내에 있는 text 부분을 출력
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_71]" )

time.sleep(50)   # 50초 대기
print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_90]" )
# ----------------------------------------------------------------------------------------------------------------


# navs = browser.find_elements('27')

# for nav in navs: 
#     print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_90_1] [outerHTML]"+ nav.get_attribute("outerHTML") )
#     print()

# print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_90_2]" )
# ----------------------------------------------------------------------------------------------------------------


# browser.quit()

print("[@_T] ■■■ [/11_wait_V4.py] ==> [T_99] ■■■■■■ [######################### [11_wait_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
