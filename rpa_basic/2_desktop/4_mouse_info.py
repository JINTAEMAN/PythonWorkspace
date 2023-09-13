# ! /4_mouse_info.py    # 파일 

import pyautogui

print("[@_T] ■■■ [/4_mouse_info.py] ==> [T_01] ■■■■■■ [######################### [TEST Start] #########################] ■■■■■■ ")

#pyautogui.FAILSAFE = False
pyautogui.PAUSE = 1     # 모든 동작에 1초씩 sleep 적용
pyautogui.mouseInfo()
print("[@_T] ■■■ [/4_mouse_info.py] ==> [T_02] [좌표로 이동 후 마우스 클릭]"+ str(pyautogui.mouseInfo()) ) 

for i in range(5):
    pyautogui.move(100, 100)
    # print("[@_T] ■■■ [/4_mouse_info.py] ==> [T_51] [좌표로 이동 후 마우스 클릭]"+ str(pyautogui.position()) ) 
    print("[@_T] ■■■ [/4_mouse_info.py] ==> [T_51] [i_번째]"+ str(i) +"[좌표로 이동 후 마우스 move]"+ str(pyautogui.position()) ) 

print("[@_T] ■■■ [/4_mouse_info.py] ==> [T_99] ■■■■■■ [######################### [TEST End] #########################] ■■■■■■\n\n\n\n")
