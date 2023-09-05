# ! /5_radio_button_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_01] ■■■■■■ [######################### [5_radio_button_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio"
driver.get(url)
print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

driver.switch_to.frame('iframeResult')  # frame 전환
print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_03]" )

elem = driver.find_element(By.XPATH, '//*[@id="html"]')    # Radio 클릭
time.sleep(1)   # 1초 대기

# HTML
# CSS
# JavaScrip
driver.find_element(By.XPATH, '//*[@id="html"]').click()      # HTML Radio 버튼 체크 클릭
print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_04] [Radio 버튼 체크 여부]"+ str(elem.is_selected()) )

# 선택이 안되어 있으면 선택하기
if elem.is_selected() == False:     # 라디오 버튼이 선택되어 있지 않으면
    print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_11]" )
    print("선택 안되어 있으므로 선택하기")
    elem.click()    # HTML Radio 버튼 체크 클릭
    # driver.find_element(By.XPATH, '//*[@id="html"]').click()      # HTML Radio 버튼 체크 클릭
    print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_12] [elem.is_selected()]"+ str(elem.is_selected()) )

else: # 라디오 버튼이 선택되어 있다면
    print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_21]" )
    print("선택 되어 있으므로 아무것도 안함")

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/5_radio_button_V4.py] ==> [T_99] ■■■■■■ [######################### [5_radio_button_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
