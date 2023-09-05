# ! /10_file_download_V4.py		# iframe 파일 

from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service 
from webdriver_manager.chrome import ChromeDriverManager   # 웹드라이버 매니저 Lib ==> # 셀레니움4에서
import time

print(" [@_T] ■■■ [/10_file_download_V4.py] ==> [T_01] ■■■■■■ [######################### [10_file_download_V4 TEST Start] #########################] ■■■■■■ ")

options = Options() 
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거 
options.add_experimental_option('prefs', {'download.default_directory':r'D:\PythonWorkspace'})

service = Service(ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)

browser = webdriver.Chrome(options=options)

url = "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_a_download"     # URL(3WS download)
driver.get(url) 

driver.switch_to.frame('iframeResult')
print(" [@_T] ■■■ [/10_file_download_V4.py] ==> [T_03]" )

# download 링크 클릭 
elem = driver.find_element(By.XPATH, '/html/body/p[2]/a/img')  # myw3schoolsimage 이미지 @@@  
elem.click()
print(" [@_T] ■■■ [/10_file_download_V4.py] ==> [T_04]" )

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/10_file_download_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/10_file_download_V4.py] ==> [T_99] ■■■■■■ [######################### [10_file_download_V4 TEST End] #########################] ■■■■■■\n\n\n\n")
