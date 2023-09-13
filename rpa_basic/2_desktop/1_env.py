# ! /ast_vrf.py		# 파일 

import pyautogui

print("[@_T] ■■■ [/1_env.py] ==> [T_01] ■■■■■■ [######################### [TEST Start] #########################] ■■■■■■ ")

size = pyautogui.size() # 현재 화면의 스크린 사이즈를 가져옴

print("[@_T] ■■■ [/1_env.py] ==> [T_02] [size]"+ str(size) +"[width]"+ str(size[0]) +"[height]"+ str(size[1]) ) 

# size[0] : width
# size[1] : height

print("[@_T] ■■■ [/1_env.py] ==> [T_99] ■■■■■■ [######################### [TEST End] #########################] ■■■■■■\n\n\n\n")