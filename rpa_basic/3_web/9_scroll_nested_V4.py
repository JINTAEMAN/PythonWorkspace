# ! /9_scroll_nested_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서
from selenium.webdriver.common.action_chains import ActionChains
import time

print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_01] ■■■■■■ [######################### [9_scroll_nested_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/htmln"     # 네이버 쇼핑]
driver.get(url)
print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# driver.maximize_window() 
print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_03]" )

# 특정 영역 스크롤
elem = driver.find_element(By.XPATH, '//*[@id="leftmenuinnerinner"]/a[65]')  # HTML Tag List ==> 에러 발생(XPATH 인식 못 함) @@@ 
# elem = driver.find_element(By.LINK_TEXT, "HTML Tag List")   #  selector  #leftmenuinnerinner > a:nth-child(83)
print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_04]" )    #  //*[@id="leftmenuinnerinner"]/a[65] #leftmenuinnerinner > a:nth-child(83)

# 방법 1 : ActionChain
actions = ActionChains(driver)
actions.move_to_element(elem).perform()

# 방법 2 : 좌표 정보 이용
# xy = elem.location_once_scrolled_into_view # 함수가 아니니까 () 쓰지 마세요
# print("type : ", type(xy))  # dict
# print("value : ", xy)

elem.click()
print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_03]" )

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/9_scroll_nested_V4.py] ==> [T_99] ■■■■■■ [######################### [9_scroll_nested_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
