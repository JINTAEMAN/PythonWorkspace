# ! /3_selenium_V4.py		# 셀레니움4 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_01] ■■■■■■ [######################### [셀레니움4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# 크롬이 자동화된 테스트 소프트웨어에 의해 제어 알람 제거

browser = webdriver.Chrome(options=options)

url = "https://naver.com"       # 네이버 주소
browser.get(url)    # 웹 사이트 열기
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

browser.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파")     # 검색어 input에 '에스파'라는 키 입력
time.sleep(1)   # 1초 대기
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_03]" )

browser.find_element(By.XPATH, '//*[@id="sform"]/fieldset/button').click()    # 검색 button 클릭
time.sleep(5)   # 5초 대기
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_04]" ) 

try:
    elem = WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.LINK_TEXT, "검색").click()))  # URL(조회 결과)이 나올 때까지 10초 대기
    print(elem.text)
except:
    print("실패했어요") 
# ---------------------------------------------------------------------------------------------------------------------->

 

# driver.find_element(By.ID, "query").send_keys("뉴진스").click()
# time.sleep(2)   # 2초 대기

# driver.find_element(By.LINK_TEXT, "검색").click()
# time.sleep(5)   # 5초 대기
# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_04]" )

# driver.find_element(By.CLASS_NAME, "search_input").send_keys("블랙핑크")
# elem = driver.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파") 

# 다음과 같이 해결
# sample = driver.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파")
# sample.send_keys('\n')
# time.sleep(5)   # 5초 대기
# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_03]" ) 

# 방법 2
# sample = driver.find_elemet(By.XPATH, '//*[@name="query"]').send_keys("에스파")
# sample.execute_script("arguments[0].click();", sample)
# time.sleep(5)   # 5초 대기
# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_03]" ) 

# sample = driver.find_element(By.XPATH, "xpath")
# sample.send_keys('\n')

# driver.find_element(By.ID, "query").send_keys("뉴진스")
# time.sleep(1)

# driver.find_element(By.NAME, "query").send_keys("트와이스")
# time.sleep(1)

# driver.find_element(By.CSS_SELECTOR, "#query").send_keys("에스파")
# time.sleep(1)

# driver.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파")
# time.sleep(1)

# driver.find_element(By.LINK_TEXT, "블로그").click()
# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_11]" ) 
# time.sleep(5)   # 5초 대기

# browser.find_element(By.PARTIAL_LINK_TEXT, "핑LI").click()
# ---------------------------------------------------------------------------------------------------------------------->


url = "https://naver.com"       # 네이버 주소
browser.get(url)

navs = browser.find_elements(By.CSS_SELECTOR, ".shortcut_item")     # CSS
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_12]" ) 
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR 갯수 ■■■]"+ str(len(navs)) ) 

i = 0

for nav in navs:
    # print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[outerHTML]"+ nav.get_attribute("outerHTML") )
    print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[nnv CSS text]"+ nav.text.replace("\n", "") )
    # print()
    i = i + 1
# [출처] 파이썬 셀레니움4 최신 버전 find_element 사용법 마스터|작성자 김플
# ---------------------------------------------------------------------------------------------------------------------->


time.sleep(10)   # 10초 대기
print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_90]" )

# browser.quit()

print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_99] ■■■■■■ [######################### [셀레니움4 TEST End] #########################] ■■■■■■\n\n\n\n")
