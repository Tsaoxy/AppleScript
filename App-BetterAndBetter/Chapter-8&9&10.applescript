-- 获取访达窗口名称-- tell application "Finder" to get the name of window 1-- 报错声音--try--	set x to "hello" as integer--on error--	beep--end try-- 对话框-- display dialog "嗯哼?"--对话框 按钮-- display dialog "Today is a good day!" buttons {"OK"}-- 对话框-- display dialog "Today is Tuesday. Although every day is a good day to learn more about AppleScript, Tuesdays are especially good for expanding your horizons. Keep up the good work!" buttons {"Right On!"}----display dialog "Who should get the money?" buttons {"Sal", "Bill"}--set the chosen_person to the button returned of the result--display dialog "You chose " & the chosen_person & " to get the money!"----display dialog ("Rotate the image in which direction?") ¬--	buttons {"Cancel", "Left", "Right"}----display dialog ("Translate the selected text to which language?") ¬--	buttons {"English", "French", "German"} default button "German"--display dialog "Continue?" buttons {"Quit", "Continue"} ¬--	default button "Continue" cancel button "Quit"--beep----display dialog "Do you want to continue?" giving up after 5--if gave up of the result is true then error number -128--display dialog "OK, here we go!"-- 图标: note/caution/stop--display dialog "This script encountered a file naming problem. " & ¬--	"The problem has been fixed." buttons {"OK"} default button 1 ¬--	with icon stop-- 用户输入-- display dialog "Please enter your name:" default answer ""--用户输入，默认输入--display dialog ("Please enter your name:") ¬--	default answer "last name, first name"-- 输入与反馈--display dialog "What is your name?" default answer ""--set the user_name to the text returned of the result--set the response_text to "Hello " & the user_name & "!"--display dialog response_text buttons {"OK"} default button 1










































