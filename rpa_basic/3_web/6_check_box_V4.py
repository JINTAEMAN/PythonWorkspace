# ! /6_check_box_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_01] ■■■■■■ [######################### [6_check_box_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
browser = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/TagS/tryit.asp?filename=tryhtml5_input_type_checkbox"      # WS checkbox
browser.get(url)
print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

browser.switch_to.frame('iframeResult')  # frame 전환
print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_03]" )

elem = browser.find_element(By.XPATH, '//*[@id="vehicle1"]')    # vehicle1 checkbox 클릭
time.sleep(1)   # 1초 대기

#  I have a bike    # <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
#  I have a car
#  I have a boat
# browser.find_element(By.XPATH, '//*[@id="vehicle1"]').click()      # vehicle1 checkbox 클릭
print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_04] [checkbox 버튼 체크 여부]"+ str(elem.is_selected()) )

if elem.is_selected() == False:
    print("선택 안되어 있으므로 선택")
    print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_11]" )
    elem.click()
    print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_12] [elem.is_selected()]"+ str(elem.is_selected()) )
else:
    print("선택 되어 있으므로 아무것도 안함")
    print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_21]" )

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_99] ■■■■■■ [######################### [6_check_box_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
