# ! /5_screen.py    # 파일 

import pyautogui

print("[@_T] ■■■ [/5_screen.py] ==> [T_01] ■■■■■■ [######################### [TEST Start] #########################] ■■■■■■ ")

# 스크린 샷 찍기
img = pyautogui.screenshot()
img.save("screenshot.png")  # 파일로 저장
print("[@_T] ■■■ [/5_screen.py] ==> [T_02] [스크린 샷 찍기_완료] ===============> " )
# ---------------------------------------------------------------------------------------------------------------------->

pyautogui.mouseInfo()
# 28,18 34,167,242 #22A7F2      ---> x:28, y:18, 픽셀값(RGB Color): 34,167,242, RGB as Hex: #22A7F2 
print("[@_T] ■■■ [/5_screen.py] ==> [T_11] [pyautogui.mouseInfo()]"+ str(pyautogui.mouseInfo()) )

pixel = pyautogui.pixel(28, 18)  
print("[@_T] ■■■ [/5_screen.py] ==> [T_12] [픽셀값]"+ str(pixel) )

# # print(pyautogui.pixelMatchesColor(28, 18, (34,167,242)))
# # print(pyautogui.pixelMatchesColor(28, 18, pixel))
# # print( pyautogui.pixelMatchesColor(28, 18, (34,167,243)) )
print("[@_T] ■■■ [/5_screen.py] ==> [T_51] [pixelMatchesColor_매치 여부]"+ str(pyautogui.pixelMatchesColor(28, 18, (34,167,242))) )
print("[@_T] ■■■ [/5_screen.py] ==> [T_52] [pixelMatchesColor_매치 여부]"+ str(pyautogui.pixelMatchesColor(28, 18, pixel)) )
print("[@_T] ■■■ [/5_screen.py] ==> [T_52] [pixelMatchesColor_매치 여부]"+ str(pyautogui.pixelMatchesColor(28, 18, (34,167,243))) )
# # ---------------------------------------------------------------------------------------------------------------------->

print("[@_T] ■■■ [/5_screen.py] ==> [T_99] ■■■■■■ [######################### [TEST End] #########################] ■■■■■■\n\n\n\n")
