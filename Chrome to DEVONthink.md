# Chrome to DEVONthink

[TOC]

## code

```applescript
(*
◸ Veritrope.com
Save Chrome Tabs to DEVONthink Pro
VERSION 1.0
June 16, 2014
)

// UPDATE NOTICES
     ** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
     If this AppleScript was useful to you, please take a second to show your love here: 
     http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
     http://veritrope.com/code/save-chrome-tabs-to-devonthink-pro

// REQUIREMENTS
     More details on the script information page.

// CHANGELOG
    1.0  INITIAL RELEASE

// TERMS OF USE:
     This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
     To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.


*)

(* 
======================================
// MAIN PROGRAM 
======================================
*)

-- PREPARE THE LIST
set url_list to {}
set the date_stamp to ((the current date) as string)
set NoteTitle to "URL List from Chrome Tabs on " & the date_stamp

--PROCESSING FRONTMOST CHROME WINDOW
tell application "Google Chrome"
    activate
    set chromeWindow to the front window
    set tabCount to (count of (tabs of chromeWindow))
    set successCount to 0
    
    --GET TAB INFO
    repeat with w in chromeWindow
        try
            repeat with t in (tabs of w)
                set TabTitle to (title of t)
                set TabURL to (URL of t)
                --set TabInfo to ("" & TabTitle & return & TabURL & return & return)
                set TabInfo to ("<a href="" & TabURL & "">" & TabTitle & "</a><br/>")
                --ADD TO LIST
                copy TabInfo to the end of url_list
                
                --INCREMENT SUCCESS COUNT
                set successCount to (successCount + 1)
            end repeat
        end try
    end repeat
end tell

-- CONVERT URL_LIST TO TEXT
set old_delim to AppleScript's text item delimiters
set AppleScript's text item delimiters to return
set url_list to url_list as text
set AppleScript's text item delimiters to old_delim

--MAKE THE ITEM IN DEVONthink Pro   
tell application "DEVONthink Pro"
    
    create record with {type:html, source:url_list, name:NoteTitle} in current group
end tell

--NOTIFY RESULTS
my notification_Center(successCount, tabCount)

(* 
======================================
// NOTIFICATION SUBROUTINE
======================================
*)

--NOTIFICATION CENTER
on notification_Center(successCount, itemNum)
    set Plural_Test to (successCount) as number
    
    if Plural_Test is -1 then
        display notification "No Tabs Exported!" with title "Send Chrome Tabs to DEVONthink Pro" subtitle "◸ Veritrope.com"
        
    else if Plural_Test is 0 then
        display notification "No Tabs Exported!" with title "Send Chrome Tabs to DEVONthink Pro" subtitle "◸ Veritrope.com"
        
    else if Plural_Test is equal to 1 then
        display notification "Successfully Exported " & itemNum & ¬
            " Tab to DEVONthink Pro" with title "Send Chrome Tabs to DEVONthink Pro" subtitle "◸ Veritrope.com"
        
    else if Plural_Test is greater than 1 then
        display notification "Successfully Exported " & itemNum & ¬
            " Tabs to DEVONthink Pro" with title "Send Chrome Tabs to DEVONthink Pro" subtitle "◸ Veritrope.com"
    end if
    
    set itemNum to "0"
    delay 1
end notification_Center
```

