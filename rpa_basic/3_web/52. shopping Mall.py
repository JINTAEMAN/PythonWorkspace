# ! /52. shopping Mall.py		# 로그인 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 로그인에서  
import csv		# CSV 파일 Lib 
import time

print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_01] ■■■■■■ [######################### [쇼핑몰 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# 크롬이 자동화된 테스트 소프트웨어에 의해 제어 알람 제거

driver = webdriver.Chrome(options=options)

url = "https://shopping.naver.com/home"    # 네이버 쇼핑몰 주소
driver.get(url)    # 웹 사이트 열기
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# 검색창 버튼
search = driver.find_element(By.XPATH, '//*[@id="gnb-gnb"]/div[2]/div/div[2]/div/div[2]/form/div[1]/div[1]/input')  # 검색어 text
search.click()

# 검색창 입력
search.send_keys("아이폰 13")
search.send_keys(Keys.ENTER)
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_05]" )

# 스크롤 전 높이
prev_height = driver.execute_script("return window.scrollY")
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_06] [스크롤 전 높이]"+ str(prev_height) )

i = 0

# 무한 스크롤 
while True: 
    # 스크롤을 화면 가장 아래로 내림
    driver.find_element(By.CSS_SELECTOR, "body").send_keys(Keys.END)
    print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_51] [스크롤을 화면 가장 아래로 내림] [i번째]"+ str(i) )
    
    # 페이지 로딩 대기 (2초)
    time.sleep(1)

    # 스크롤 후 높이
    curr_height = driver.execute_script("return window.scrollY")

    if curr_height == prev_height: # 직전 높이와 같으면, 높이 변화가 없으면
        print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_52] [탈출 ####] [i번째]"+ str(i) +"[스크롤 후 높이]"+ str(curr_height) +"[스크롤 전 높이]"+ str(prev_height) )
        break   # 반복문 탈출 (모든 스크롤 동작 완료)

    prev_height = curr_height
    i = i + 1
    print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_53] [i번째]"+ str(i) +"[스크롤 후 높이]"+ str(curr_height) +"[스크롤 전 높이]"+ str(prev_height) )
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_61]" )

fpath = r"D:\PythonWorkspace\rpa_basic\3_web\52. shopping Mall Data.csv"    # CSV 파일

# 파일 생성
f = open(fpath, 'w', encoding='CP949', newline='')
csvWriter = csv.writer(f)

# 상품 정보 DIV
items = driver.find_elements(By.CSS_SELECTOR, ".adProduct_info_area__dTSZf")    # 상풍 리스트
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_63_2] [CSS_SELECTOR 갯수 ■■■]"+ str(len(items)) ) 

i = 0

for item in items:  
    name = item.find_element(By.CSS_SELECTOR, ".adProduct_title__amInq").text     # 01. 상품명

    try:
        price = item.find_element(By.CSS_SELECTOR, ".price_num__S2p_v").text      # 02. 가격
    except:
        price = "판매 중단"     # 02. 가격 -->
    link = item.find_element(By.CSS_SELECTOR, ".adProduct_title__amInq > a").get_attribute('href')   # 03. 링크
    print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_71] [item_번째]"+ str(i) +"[01. 상품명]"+ name +"[02. 가격]"+ price +"[03. 링크]"+ link )
    
    csvWriter.writerow([name, price, link])    # 데이타 쓰기
    i = i + 1

# 파일 닫기
f.close()

time.sleep(90)   # 10초 대기
print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_90]" )

# driver.quit()

print("[@_T] ■■■ [/52. shopping Mall.py] ==> [T_99] ■■■■■■ [######################### [쇼핑몰 TEST End] #########################] ■■■■■■\n\n\n\n")
