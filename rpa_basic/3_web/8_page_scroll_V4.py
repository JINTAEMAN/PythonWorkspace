# ! /8_page_scroll_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서
import time

print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_01] ■■■■■■ [######################### [8_page_scroll_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

url = "https://shopping.naver.com/home/p/index.nhn"     # 네이버 쇼핑
driver.get(url)
print(" [@_T] ■■■ [/6_check_box_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# browser.get('https://shopping.naver.com/home/p/index.nhn')

# '무선마우스' 입력
# elem = browser.find_element_by_xpath('//*[@id="autocompleteWrapper"]/input[1]')
elem = driver.find_element(By.XPATH, '//*[@id="gnb-gnb"]/div[2]/div/div[2]/div/div[2]/form/div[1]/div/input')  # '무선마우스' 입력 
elem.send_keys('무선마우스')
time.sleep(1)
elem.send_keys(Keys.ENTER)  # 검색 버튼 클릭을 위해 Enter 처리
print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_03]" )

# 스크롤
# 지정한 위치로 스크롤 내리기
# 모니터 (해상도) 높이인 1080 위치로 스크롤 내리기
# driver.execute_script('window.scrollTo(0, 1080)') # 1920 * 1080 (모니터 해상도)
# driver.execute_script('window.scrollTo(0, 2080)')

# 화면 가장 아래로 스크롤 내리기
# driver.execute_script('window.scrollTo(0, document.body.scrollHeight)')

# 동적 페이지에 대해서 마지막까지 스크롤 반복 수행
interval = 2 # 2초에 한번씩 스크롤 내리기

# 현재 문서 높이를 가져와서 저장
prev_height = driver.execute_script('return document.body.scrollHeight')
print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_11]" )

i = 0

# 반복 수행
while True:
    i = i + 1
    # 스크롤을 화면 가장 아래로 내림
    driver.execute_script('window.scrollTo(0, document.body.scrollHeight)')
    print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_51] [스크롤을 화면 가장 아래로 내림] [i번째]"+ str(i) )
    
    # 페이지 로딩 대기 (2초)
    time.sleep(interval)

    # 현재 문서 높이 가져와서 저장
    curr_height = driver.execute_script('return document.body.scrollHeight')

    if curr_height == prev_height: # 직전 높이와 같으면, 높이 변화가 없으면
        print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_52] [탈출 ####] [i번째]"+ str(i) +"[curr_height]"+ str(curr_height) +"[prev_height]"+ str(prev_height) )
        break # 반복문 탈출 (모든 스크롤 동작 완료)

    prev_height = curr_height 
    print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_53] [i번째]"+ str(i) +"[curr_height]"+ str(curr_height) +"[prev_height]"+ str(prev_height) )
print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_61]" )

# 맨 위로 올리기
driver.execute_script('window.scrollTo(0, 0)')
print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_71] [스크롤을 화면 위맨 위로 올리기]" )

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/8_page_scroll_V4.py] ==> [T_99] ■■■■■■ [######################### [8_page_scroll_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
