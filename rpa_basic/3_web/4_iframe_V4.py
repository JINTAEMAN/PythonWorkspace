# ! /4_iframe_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_01] ■■■■■■ [######################### [4_iframe_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio"
driver.get(url)
print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

driver.switch_to.frame('iframeResult')  # frame 전환
print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_03]" )

driver.find_element(By.XPATH, '//*[@id="html"]').click()    # Radio 클릭
time.sleep(2)   # 2초 대기
print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_04]" )

driver.switch_to.default_content() # 상위로 빠져 나옴 
time.sleep(5) # 5초 대기
print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_06]" )

driver.quit()
print(" [@_T] ■■■ [/4_iframe_V4.py] ==> [T_99] ■■■■■■ [######################### [4_iframe_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
