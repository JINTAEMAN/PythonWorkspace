# ! /12_handle_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서 
import time

print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_01] ■■■■■■ [######################### [12_handle_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
browser = webdriver.Chrome(service=service, options=options)

url = "https://www.w3schools.com/tags/att_input_type_radio.asp"     # WS radio
browser.get(url)

curr_handle = browser.current_window_handle
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_02] [url]"+ url +"[현재 윈도우 핸들 정보]"+ curr_handle )
time.sleep(1)   # 1초 대기

# browser.get('https://www.w3schools.com/tags/att_input_type_radio.asp')
# curr_handle = browser.current_window_handle
# print(curr_handle) # 현재 윈도우 핸들 정보

# Try it yourself
# browser.find_element_by_xpath('//*[@id="main"]/div[2]/a').click() 
elem = browser.find_element(By.XPATH, '//*[@id="main"]/div[2]/a')    # Try it yourself 링크 클릭
elem.click()
time.sleep(1)   # 1초 대기
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_12]" )

handles = browser.window_handles # 모든 핸들 정보

i = 0

for handle in handles:
    print(handle) # 각 핸들 정보
    browser.switch_to.window(handle) # 각 핸들로 이동해서
    print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_12_2] [i_번째]"+ str(i) +"[browser.title]"+ browser.title )

    print(browser.title) # 출력해 보면 현재 핸들(브라우저)의 제목 표시
    print()
    i = i + 1

# 새로 이동된 브라우저에서 뭔가 자동화 작업을 수행..

# 그 브라우저를 종료 
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_13] [현재 핸들 닫기]" )
browser.close() 

# 이전 핸들로 돌아오기 
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_14] [처음 핸들로 돌아오기]" )
browser.switch_to.window(curr_handle)
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_15]" )

print(browser.title) # HTML input type="radio"
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_21] [rowser.title]"+ browser.title )

# 브라우저 컨트롤이 가능한지 확인
time.sleep(5)
browser.get('http://daum.net')
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_51]" ) 

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/12_handle_V4.py] ==> [T_99] ■■■■■■ [######################### [12_handle_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
