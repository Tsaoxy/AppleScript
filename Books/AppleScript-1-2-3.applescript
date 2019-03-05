-- 	关闭所有访达窗口
-- tell application "Finder" to close every window

-- 打开硬盘
-- tell application "Finder" to open startup disk

-- 获取最前面访达窗口的名称
-- tell application "Finder" to get the name of front Finder window

-- 关闭指定访达窗口
-- tell application "Finder" to close Finder window "Macintosh HD"

-- 多行显示一行的内容¬ `⌥L` `⌥↵`
-- tell application "Finder" to ¬
--	get the index of Finder window "Macintosh HD"

-- 获得访达窗口的名称
-- tell application "Finder" to get the name of Finder window 1

-- tell application "Finder" to ¬
--	get the index of the second Finder window

-- tell application "Finder" to get the index of the Finder window after the front Finder window
-- tell application "Finder" to get the index of the Finder window before the last Finder window

-- Toggle first last Finder window
-- tell application "Finder" to ¬
-- 	set the index of the first Finder window to ¬
-- 		the index of the last Finder window

--
-- tell application "Finder" to get the target of the front window

-- tell application "Finder" to ¬
-- 	set the target of the front Finder window to the startup disk

-- tell application "Finder" to ¬
-- 	set the target of the last Finder window to home

-- tell application "Finder" to ¬
-- 	set toolbar visible of the front Finder window to true

-- tell application "Finder" to ¬
-- get the current view of the front Finder window

-- tell application "Finder" to ¬
-- 	get the position of the front Finder window

-- tell application "Finder" to ¬
-- 	set the position of the front Finder window to {300, 134}

-- {0, 23, 1440, 900}
-- tell application "Finder" to get the bounds of the front window

-- {0, 0, 1440, 900}
-- tell application "Finder" to ¬
--	get the bounds of the window of the desktop
-- 
-- tell application "Finder" to select the last Finder window

-- bundle ID
-- get id of application "Finder"

-- Safari
-- tell application "Safari" to close every window
-- tell application "Safari" to open location "http://automator.us"

-- tell application "Finder"
-- get visible of the front Finder window
-- end tell

-- toggle collapsed
tell application "Finder"
	if collapsed of the front Finder window is false then
		set collapsed of the front Finder window to true
	else
		set collapsed of the front Finder window to false
	end if
end tell


