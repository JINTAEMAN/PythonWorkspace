

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+------------------------------------------// 01. 파이썬 분석 //--------------------------------------/ 23.09.06(수) /-----+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 01. 파이썬 분석 ●●●
- 셀레니움4 예제(/3_selenium_V4.py) 수정
from selenium import webdriver   # 웹드라이버 Lib
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_01] ■■■■■■ [######################### [셀레니움4 TEST Start] #########################] ■■■■■■ ")

options = Options()
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거
# options.add_experimental_option("excludeSwitches", ["enable-automation"])	# 크롬이 자동화된 테스트 소프트웨어에 의해 제어 알람 제거

browser = webdriver.Chrome(options=options)

url = "https://naver.com"       # 네이버 주소
browser.get(url)	# 웹 사이트 열기
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_02] [url]"+ url )
time.sleep(1)   # 1초 대기

# browser.find_element(By.XPATH, '//*[@name="query"]').send_keys("에스파")     # 검색어 input에 '에스파'라는 키 입력 ■■■
# time.sleep(1)   # 1초 대기
# print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_03]" )

elem = browser.find_element(By.XPATH, '//*[@id="sform"]/fieldset/button').click()    # 검색 button 클릭 ■■■
# time.sleep(5)   # 5초 대기
elem.click()
# print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_04]" )

try:
    elem = WebDriverWait(browser, 10).until(EC.presence_of_element_located((By.LINK_TEXT, "검색").click()))     # URL(조회 결과)이 나올 때까지 10초 대기
    print(elem.text)
except:
    print("실패했어요")
# ---------------------------------------------------------------------------------------------------------------------->

url = "https://naver.com"       # 네이버 주소
browser.get(url)

navs = browser.find_elements(By.CSS_SELECTOR, ".shortcut_item")     # CSS
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_12]" )
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR 갯수 ■■■]"+ str(len(navs)) )  	#  ■■■

i = 0

for nav in navs:
	# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[outerHTML]"+ nav.get_attribute("outerHTML") ) 	#  ■■■
	# print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[outerHTML]"+ nav.get_attribute("outerHTML") ) 	#  ■■■
    print("[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]"+ str(i) +"[nav CSS text]"+ nav.text.replace("\n", "") )		#  ■■■
    print()
    i = i + 1
# [출처] 파이썬 셀레니움4 최신 버전 find_element 사용법 마스터|작성자 김플

[@_T] ■■■ [/3_selenium_V4.py] ==> [T_02] [url]https://naver.com
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_12]
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_13] [CSS_SELECTOR 갯수 ■■■]10
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]0[nav CSS text]메일
[@_T] ■■■ [/3_selenium_V4.py] ==> [T_51] [nav_번째]1[nav CSS text]카페
# ---------------------------------------------------------------------------------------------------------------------->

time.sleep(10)   # 10초 대기
print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_90]" )

# browser.quit()

print(" [@_T] ■■■ [/3_selenium_V4.py] ==> [T_99] ■■■■■■ [######################### [셀레니움4 TEST End] #########################] ■■■■■■\n\n\n\n")

==============================================================================================================

for i in range(1, 13):
    ws.merge_cells(start_row=addRow, start_column=1, end_row=addRow, end_column=4)     # '2024.06 자산' 셀 병합("A3:D3")  ==> 22
    addRow2 = int(addRow) + int(addRow2)    # 줄 추가_03 = 19 + 19 = 57
    print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_71_51] [item_번째]"+ str(i) +"[01. start_row]"+ str(addRow) +"[02. addRow2]"+ str(addRow2) )
    # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_71_51] [item_번째]"+ str(i) +"[01. start_row]"+ str(addRow+3) +"[02. add]"+ str(add) )


==============================================================================================================


def wait_until(xpaht_str):      # 조회 결과가 나올 때까지 30초 대기하는 함수()
    # print("[@_T] ■■■ [/rsvtPlaneTicket.py] [wait_until] ==> [T_01] [xpaht_str]"+ str(xpaht_str) )

    WebDriverWait(browser, 30).until(EC.presence_of_element_located((By.XPATH, xpaht_str)))    # URL(조회 결과)이 나올 때까지 30초 대기

    print("[@_T] ■■■ [/rsvtPlaneTicket.py] [wait_until] ==> [T_91] [xpaht_str]"+ str(xpaht_str) )
# ---------------------------------------------------------------------------------------------------------------------->


print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_01] ■■■■■■ [######################### [항공권 예약 TEST Start] #########################] ■■■■■■ ")

options = Options()
options.add_experimental_option("detach", True)  # 브라우저 바로 닫힘 방지
options.add_experimental_option("excludeSwitches", ["enable-logging"])  # 불필요한 메시지 제거

# service = Service(ChromeDriverManager().install())
# browser = webdriver.Chrome(service=service, options=options)
browser = webdriver.Chrome(options=options)

url = "https://flight.naver.com/flights/"     # 네이버 항공권 주소
browser.get(url)     # 웹 사이트 열기
time.sleep(1)   # 1초 대기
print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_02] [주소]"+ url )

btn_go_date = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/div[2]/button[1]')    # 가는 날 button
btn_go_date.click()      # 가는 날 버튼 클릭
print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_04]" )
time.sleep(1)   # 1초 대기

wait_until('//b[text() = "18"]')      # 나올 때까지 30초 대기
go_date = browser.find_elements(By.XPATH, '//b[text() = "18"]')      # 가는 날(09월 16일)
print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_04_2] [가는 날_갯수]"+ str(len(go_date)) )
go_date[0].click()      # 가는 날 클릭

# 항공권 검색 클릭
wait_until('//*[@id="__next"]/div/div/div[4]/div/div/div[2]/button')    # 나올 때까지 **초 대기
search = browser.find_element(By.XPATH, '//*[@id="__next"]/div/div/div[4]/div/div/div[2]/button')   # vehicle1 checkbox 클릭
# print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_05_2] [search]"+ str(search) )
search.click()      # 제주 클릭
print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_05_3] [조회 결과 확인_전 @@@@]" )

try:
    wait_until('//*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]/div')     # 나올 때까지 **초 대기
    search_rslt = browser.find_elements(By.CSS_SELECTOR, '.domestic_Flight__sK0eA.result')      # 항공권 리스트

    i = 0
    print("\n\n [항공권 조회 결과].....갯수:"+ str(len(search_rslt)) )

    for item in search_rslt:
        # print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_51_1] [item_번째]"+ str(i) )
        # time.sleep(5)   # 5초 대기

        airline = item.find_element(By.CSS_SELECTOR, ".airline").text     # 01. 항공사명
        # print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_51_2] [item_번째]"+ str(i) +"[01. 항공사명]"+ name )

        startTime = item.find_elements(By.CSS_SELECTOR, ".route_airport__3VT7M")[0].text.replace('\n', ' ')      # 02. 가는 시각  route_time__-2Z1T
        returnTime = item.find_elements(By.CSS_SELECTOR, ".route_airport__3VT7M")[1].text.replace('\n', ' ')       # 03. 오는 시각
        price = item.find_element(By.CSS_SELECTOR, ".domestic_num__2roTW").text     # 04. 가격
        # print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_51_3] [item_번째]"+ str(i) +"[01. 항공사명]"+ airline +"[02. 가는 시각]"+ startTime +"[03. 오는 시각]"+ returnTime +"[04. 가격]"+ price )

        print(f'No. {i + 1}')
        print(f'항공사: {airline}')
        print(f'가는 시각: {startTime}')
        print(f'오는 시각: {returnTime}')
        print(f'가격: {price}원')
        print('-' * 100)

        # try:
        #     go_time = item.find_element(By.CSS_SELECTOR, ".route_airport__3VT7M").text      # 02. 가는 시각  route_time__-2Z1T
        #     # //*[@id="__next"]/div/div[1]/div[6]/div/div[2]/div[2]/div/div[1]/div/div[2]/span[1]/b
        # except:
        #     go_time = ""     # 02. 가격 -->
        # link = item.find_element(By.CSS_SELECTOR, ".adProduct_title__amInq > a").get_attribute('href')   # 03. 링크
        #  print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_51_3] [item_번째]"+ str(i) +"[01. 항공사명]"+ name +"[02. 가는 시각]"+ go_time )

        #  csvWriter.writerow([name, price, link])    # 데이타 쓰기
        i = i + 1
except:
    print("조회 실패했어요")
    print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_52]" )
print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_61]" )
# ----------------------------------------------------------------------------------------------------------------

print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_90]" )
input("종료하려면 Enter 키를 입력하세요.")
browser.quit()

print("[@_T] ■■■ [/rsvtPlaneTicket.py] ==> [T_99] ■■■■■■ [######################### [항공권 예약 TEST End] #########################] ■■■■■■\n\n\n\n")
==============================================================================================================

- /ast_vrfc.py 파일에서
def readParameters():    # 파일에서 파라미터 가져오는 함수()
    file = open("01_pram_properties.txt", 'rt', encoding='utf-8-sig')	# properties.txt 파일 내용 ---> 2023.09[자산 년월(오늘 년월)]
    # print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_51] [file]"+ str(file) )

    parameters = file.read().split(";")		# 자산 년월 parameters
    print("[@_T] ■■■ [/ast_vrfc.py] [readParameters]==> [T_92] [자산 년월]"+ str(parameters[0]) )

    return parameters
# ---------------------------------------------------------------------------------------------------------------------->

parameters = readParameters()   # 파일에서 파라미터 가져오는 함수()
astYYM = str(parameters[0])     # 자산 년월
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_02_2] [parameters[0]]"+ str(parameters[0]) +"[자산 년월]"+ str(astYYM) )

astYYM = astYYM         # 자산 년월 ■■■■■■ (2023.08)
astYM = astYYM[2:8]     # 자산 년월(23.08)
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_02_3] [자산 년월_7]"+ str(astYYM) +"[자산 년월_5]"+ str(astYM) )
# ---------------------------------------------------------------------------------------------------------------------->

ws_stock = wb["91. 주식"]   # "91. 주식" Sheet에 접근 @@@@@@@@ ===========>
prev_B3 = ws_stock["B3"].value   # 이전 일자(예) 2023.08.31)
prev_B3 = prev_B3[0:7]     # 이전 일자[년월) (2023.08)

ws_stock.insert_rows(3, 8)       # 월별 자산 제목(3번째 줄 위치에 8줄을 추가)
ws_stock.merge_cells("A8:B8")    # A8부터 B9까지 셀을 싱글 셀로 병합
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_2] [91. 주식 Sheet] [오늘 년월]"+ now_ym.lstrip() +"[오늘 년월_타입]"+
	str(type(now_ym)) +"[오늘 년월_갯수]"+ str(len(now_ym.lstrip())) )
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_3] [91. 주식 Sheet] [자산 년월]"+ astYYM.lstrip() +"[자산 년월_타입]"+
	str(type(astYYM)) +"[자산 년월_갯수]"+ str(len(astYYM.lstrip())) )

if str(astYYM.strip()) != str(now_ym.strip()) :   # 입력한 자산 년월와 오늘 년월이 다르면
    result = pyautogui.alert("[91. 주식 Sheet] 입력한 자산 년월["+ str(astYYM) +"]와 오늘 년월["+ str(now_ym) +"]이 다릅니다.",
		title='[자산 년월 입력 오류]', button='OK')
    sys.exit()    # 종료
else :   # 입력한 자산 년월와 오늘 년월이 같으면
    # print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_04_4_2] [자산 년월]"+ str(astYYM) +"[오늘 년월]"+ str(now_ym) )
==============================================================================================================

# 콘솔창 없이 하나의 실행 파일 만들기  ==> D:\PythonWorkspace_setUpFile\dist\ast_vrfc.exe
$ pyinstaller -w -F 01_실행_파일_만들기/ast_vrfc.py
===============================================================================================================

- Python 모듈 목록 확인
$ pip list
Package            Version
------------------ ------------------
attrs                            23.1.0
certifi                           2023.7.22
cffi                               1.15.1
selenium                      4.12.0
webdriver-manager     4.0.0
------------------------------------------------------------------------

$  pip show selenium		# selenium 버전 확인

$  pip install -upgrade selenium	# selenium 버전 업그레이드
==============================================================================================================


- 비전공자를 위한 파이썬 자동화 완벽 가이드
https://wikidocs.net/book/4706
==============================================================================================================
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- 널(null) 처리 @@@
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_22] [01. 은행 예. 적금_2]"+ str(type(deposit_savings_2)) +"[01. 은행 예. 적금_3]"+
str(type(deposit_savings_3)) )

if deposit_savings_sh == None or deposit_savings_sh == '' :   # 02. 대여금이 널 이면 ■■■
    deposit_savings_sh = 0
if int(deposit_savings_sh) > 0  :   # 02. 대여금이 존재하면
    deposit_savings_sh_nm = "01. 신한은행[예. 적금]"

if deposit_savings_2 == None or deposit_savings_2 == '' :   # 01. 은행 예. 적금_2이 널 이면 ■■■
    deposit_savings_2 = 0

if deposit_savings_3 == None or deposit_savings_3 == '' :   # 01. 은행 예. 적금_3이 널 이면 ■■■
    deposit_savings_3 = 0
deposit_savings = int(deposit_savings_sh) + int(deposit_savings_2) + int(deposit_savings_3)
deposit_savings_nm = "01. 은행 예. 적금([06])"
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_32] [01. 신한은행[예. 적금]]"+ str(deposit_savings_sh) +"[01. 은행 예. 적금_2]"+
str(deposit_savings_2) +"[01. 은행 예. 적금_3]"+ str(deposit_savings_3) )
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_41] [01. 은행 예. 적금]"+ str(deposit_savings) )
--------------------------------------------------------------------------------------------------------------------------

--Output:
[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_22] [01. 은행 예. 적금_2]<class 'NoneType'>[01. 은행 예. 적금_3]<class 'NoneType'>
[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_32] [01. 신한은행[예. 적금]]3826751[01. 은행 예. 적금_2]0[01. 은행 예. 적금_3]0
[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_41] [01. 은행 예. 적금]3826751
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- replace()로 특정 문자 제거
str = "Hello, World, Python"
new_str = str.replace(',', '')
print(new_str)

--Output:
Hello World Python
----------------------------------------------------------------------------------------------------------------------------------

- 특정 문자 제거
str = "2024.03;2024.04"
new_str = str.split(";")   # 자산 년월 parameters[01. 현재 년월[입력]]
print(new_str[0])

--Output:
2024.03
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


- /ast_vrfc.py 파일 로그 @@@
print("\n\n [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [자산 검증 파일 TEST Start]
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_01_01]" )

openFileNm = "02. 자산 검증("+ str(input_astYY) +"."+ format(input_astMM, '02') +").xlsx"   # 오픈 파일 명(02. 자산 검증(23.08).xlsx)
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_02_04] [오픈 파일]"+ str(openFileNm) +"[wb]"+ str(wb) )
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


print("\n\n [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [11. 계좌별잔고 Tab(기준 정보) 작업 Start]
#########################] ■■■■■■ ")

ws_01_actBalnc = wb["계좌별잔고"]   # "계좌별잔고" Sheet(Tab)에 접근 @@@@@@@@ ===========>
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_11_0] [계좌별잔고 Tab Sheet(Tab)에 접근 @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


print("\n\n [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [21. 퇴직신탁 Tab(기준 정보) 작업 Start]
 #########################] ■■■■■■ ")

ws_02_irp = wb["퇴직신탁"]   # "퇴직신탁" Sheet(Tab)에 접근 @@@@@@@@ ===========>
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_21_01] [퇴직신탁 Tab Sheet(Tab)에 접근 @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


print("\n\n [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [51. 총자산(24Y) Tab 작업 Start]
#########################] ■■■■■■ ")

totAstYear = "00. 총자산("+ str(astYYM[2:4]) +"Y)"
wsTot = wb[totAstYear]    # "00. 총자산(24Y)" Sheet(Tab)에 접근 @@@@@@@@ ===========>
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_51_01] [자산(202*) Sheet(Tab)에 접근 @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


print("\n\n [@_T] ■■■ [/ast_vrfc.py] ==> [T_01] ■■■■■■ [######################### [71. 자산(24Y) Tab 작업 Start]
#########################] ■■■■■■ ")

astYear = "자산("+ str(astYYM[2:4]) +"Y)"
ws = wb[astYear]    # "자산(2023)" Sheet(Tab)에 접근 @@@@@@@@ ===========>
print("[@_T] ■■■ [/ast_vrfc.py] ==> [T_71_01] [71. 자산(24Y) Tab Sheet(Tab)에 접근 @@@@@@@@ ===========>]")
# ---------------------------------------------------------------------------------------------------------------------->
# ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ ------------------->


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
+--------------------------------------------------------// End //----------------------------------------------------------+
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

