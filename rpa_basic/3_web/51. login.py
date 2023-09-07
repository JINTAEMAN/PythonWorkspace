# ! /51. login.py		# 로그인 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 로그인에서 
import pyautogui    # 마우스와 키보드 제어 Lib
import pyperclip    # 파이썬 클립보드 사용 Lib
import time

print("[@_T] ■■■ [/51. login.py] ==> [T_01] ■■■■■■ [######################### [로그인 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# 크롬이 자동화된 테스트 소프트웨어에 의해 제어 알람 제거

driver = webdriver.Chrome(options=options)

url = "https://nid.naver.com/nidlogin.login"    # 네이버 로그인 주소
driver.get(url)    # 웹 사이트 열기
print("[@_T] ■■■ [/51. login.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# 아이디 입력 창 
id = driver.find_element(By.CSS_SELECTOR, "#id_line")
id.click()
pyperclip.copy("tamario")       # 아이디를 클립보드에 복사
pyautogui.hotkey("ctrl", "v")   # 아이디를 붙여넣기
time.sleep(2)   # 2초 대기
print("[@_T] ■■■ [/51. login.py] ==> [T_03]" )

# 비밀번호 입력 창 
pw = driver.find_element(By.CSS_SELECTOR, "#pw_line")
pw.click()
pyperclip.copy("2020dhtlqh@")   # 비밀번호를 클립보드에 복사
pyautogui.hotkey("ctrl", "v")   # 비밀번호를 붙여넣기
time.sleep(2)   # 2초 대기
print("[@_T] ■■■ [/51. login.py] ==> [T_04]" )

# 로그인 버튼
login_btn = driver.find_element(By.CSS_SELECTOR, "#log\.login")
login_btn.click() 
print("[@_T] ■■■ [/51. login.py] ==> [T_05]" )
# ---------------------------------------------------------------------------------------------------------------------->

time.sleep(10)   # 10초 대기
print("[@_T] ■■■ [/51. login.py] ==> [T_90]" )

# driver.quit()

print("[@_T] ■■■ [/51. login.py] ==> [T_99] ■■■■■■ [######################### [로그인 TEST End] #########################] ■■■■■■\n\n\n\n")
