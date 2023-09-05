# ! /7_select_option_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_01] ■■■■■■ [######################### [7_select_option_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_option"
driver.get(url)
print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

driver.switch_to.frame('iframeResult')  # frame 전환
print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_03]" )

# 01. cars 에 해당하는 element 를 찾고, 드롭다운 내부에 있는 4번째 옵션을 선택
# elem = driver.find_element(By.XPATH, '//*[@id="cars"]/option[4]')     # cars option Audi 선택 클릭  <option value="audi">Audi</option>
# 02. 옵션 중에서 텍스트가 Audi 인 항목을 선택
# elem = driver.find_element(By.XPATH, '//*[@id="cars"]/option[text()="Audi"]')     # cars option Audi 선택
# 03. 텍스트 값이 부분 일치하는 항목 선택하는 방법
elem = driver.find_element(By.XPATH, '//*[@id="cars"]/option[contains(text(), "Au")]')   # cars option Audi 선택
elem.click()
print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_04] [cars option Audi 선택 여부]"+ str(elem.click()) )

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/7_select_option_V4.py] ==> [T_99] ■■■■■■ [######################### [7_select_option_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
