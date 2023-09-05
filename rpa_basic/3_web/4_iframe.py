import time
from selenium import webdriver
# from selenium.webdriver.common.by import By 
from selenium.webdriver.chrome.service import Service as ChromeService

print(" [@_T] ■■■ [/4_iframe.py] ==> [T_01] ■■■■■■ [######################### [4_iframe TEST Start] #########################] ■■■■■■ ")

# options = webdriver.ChromeOptions()
# options.add_experimental_option("excludeSwitches", ["enable-logging"])
# browser = webdriver.Chrome(options=options)
browser = webdriver.Chrome()

browser.get('https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio')
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_02]" )

browser.switch_to.frame('iframeResult') # frame 전환
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_03]" )

# elem = driver.find_element(By.NAME, "q")
# title = driver.find_element(By.XPATH, r'//*[@id="bestList"]/ol/li[1]/p[1]').text

elem = browser.find_element_by_xpath('//*[@id="html"]') # 성공  html   //*[@id="html"]
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_04]" )

elem.click() 
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_05]" )

browser.switch_to.default_content() # 상위로 빠져 나옴
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_06]" )

elem = browser.find_element_by_xpath('//*[@id="html"]') # 실패

elem.click()

time.sleep(5) # 5초 대기

browser.quit()

#//*[@id="male"]
print(" [@_T] ■■■ [/4_iframe.py] ==> [T_99] ■■■■■■ [######################### [4_iframe TEST End] #########################] ■■■■■■\n\n\n\n")
