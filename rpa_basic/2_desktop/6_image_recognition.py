# ! /6_image_recognition.py    # 파일 

import pyautogui
import time
import sys

print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_01] ■■■■■■ [######################### [TEST Start] #########################] ■■■■■■ ")

# 01. 화면 캡처 단축키: (Win) + Shift + S
# file_menu = pyautogui.locateOnScreen("file_menu.png")  # 해당 파일명의 이미지 찾기
# # 화면 상에서 일치하는 영역을 찾아서 왼쪽 위의 위치와 영역의 가로, 세로 크기를 튜플의 형태((left, top, width, height))로 출력
# print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_02] [file_menu]"+  str(file_menu) )    
# # [file_menu]Box(left=48, top=11, width=37, height=22)

# pyautogui.click(file_menu)    # 해당 이미지 클릭
# print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_03] [해당 이미지 클릭 완료]" )
# ---------------------------------------------------------------------------------------------------------------------->

# print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_05] [체크 박스 TEST]" )
# #  Show Checkboxes URL ==> https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_checkbox

# for i in pyautogui.locateAllOnScreen("checkbox.png"):   # 해당 파일명의 모든 이미지 찾기
#     pyautogui.click(i, duration=0.25)    # 해당 이미지들을 차례로 클릭
#     print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_51] [i_번째]"+ str(i) +"[체크 박스_체크 정보]"+ str(pyautogui.locateAllOnScreen("checkbox.png")) ) 

# print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_40] [해당 이미지 클릭 완료]" )


print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_51] [일정 시간 동안 기다리기 TEST]" )

# 3. 일정 시간 동안 기다리기 (TimeOut)
def find_target(img_file, timeout=30):
    print("[@_T] ■■■ [/6_image_recognition.py] [find_target()] ==> [T_42] [img_file]"+ str(img_file) +"[timeout]"+ str(timeout) )

    start = time.time()
    target = None

    while target is None:
        target = pyautogui.locateOnScreen(img_file)
        end = time.time()
        if end - start > timeout:   # 요청한 시간이 지났으면
            # [Timeout 10s] Target not found (file_menu_notepad.png). Terminate program.
            break
    return target

def my_click(img_file, timeout=30):   # 파일 찾기 함수() (img_file: 파일명, timeout: 시간)
    print("[@_T] ■■■ [/6_image_recognition.py] [my_click()] ==> [T_41] [img_file]"+ str(img_file) +"[timeout]"+ str(timeout) )

    target = find_target(img_file, timeout)

    if target:
        pyautogui.click(target)
    else:
        print(f"[Timeout {timeout}s] Target not found ({img_file}). Terminate program.")
        sys.exit()

my_click("file_menu_notepad.png", 10)   # file_menu_notepad.png 파일, 10초 동안 찾기 함수 호출
print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_62] [일정 시간 동안 기다리기 TEST]" )


print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_80] [해당 이미지 클릭 완료]" )
# ---------------------------------------------------------------------------------------------------------------------->





# trash_icon = pyautogui.locateOnScreen("trash_icon.png")
# pyautogui.moveTo(trash_icon)

# screen = pyautogui.locateOnScreen("screenshot.png")
# print(screen)

# for i in pyautogui.locateAllOnScreen("checkbox.png"):
#     print(i)
#     pyautogui.click(i, duration=0.25)


# checkbox = pyautogui.locateOnScreen("checkbox.png")
# pyautogui.click(checkbox)

# trash_icon = pyautogui.locateOnScreen("trash_icon.png")
# pyautogui.moveTo(trash_icon)

# 속도 개선
# 1. GrayScale
# trash_icon = pyautogui.locateOnScreen("trash_icon.png", grayscale=True)
# pyautogui.moveTo(trash_icon)

# 2. 범위 지정
# trash_icon = pyautogui.locateOnScreen("trash_icon.png", region=(1488, 623, 1881 - 1488, 137))
# pyautogui.moveTo(trash_icon)

# 3. 정확도 조정
# run_btn = pyautogui.locateOnScreen("run_btn.png", confidence=0.9)     # 90% 이상 정확도
# pyautogui.moveTo(run_btn)

# 자동화 대상이 바로 보여지지 않는 경우
# 1. 계속 기다리기
#file_menu_notepad = pyautogui.locateOnScreen("file_menu_notepad.png")
# if file_menu_notepad:
#     pyautogui.click(file_menu_notepad)
# else:
#     print("발견 실패")
# while file_menu_notepad is None:
#     file_menu_notepad = pyautogui.locateOnScreen("file_menu_notepad.png")
#     print("발견 실패")
#pyautogui.click(file_menu_notepad)

# 2. 일정 시간동안 기다리기 (TimeOut)
# timeout = 10 # 10초 대기
# start = time.time() # 시작 시간 설정
# file_menu_notepad = None
# while file_menu_notepad is None:
#     file_menu_notepad = pyautogui.locateOnScreen("file_menu_notepad.png")
#     end = time.time() # 종료 시간 설정
#     if end - start > timeout: # 지정한 10초를 초과하면
#         print("시간 종료")
#         sys.exit()

# def find_target(img_file, timeout=30):
#     start = time.time()
#     target = None
#     while target is None:
#         target = pyautogui.locateOnScreen(img_file)
#         end = time.time()
#         if end - start > timeout:
#             break
#     return target

# def my_click(img_file, timeout=30):
#     target = find_target(img_file, timeout)
#     if target:
#         pyautogui.click(target)
#     else:
#         print(f"[Timeout {timeout}s] Target not found ({img_file}). Terminate program.")
#         sys.exit()

#pyautogui.click(file_menu_notepad)

# my_click("file_menu_notepad.png", 10)
# ---------------------------------------------------------------------------------------------------------------------->

print("[@_T] ■■■ [/6_image_recognition.py] ==> [T_99] ■■■■■■ [######################### [TEST End] #########################] ■■■■■■\n\n\n\n")
