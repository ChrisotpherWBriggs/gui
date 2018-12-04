#SingleInstance force

;-----Menu
Menu, FileMenu, Add, New, FileNew
Menu, FileMenu, Add, Open, MenuHandler
Menu, FileMenu, Add, Save, MenuHandler

Menu, EditMenu, Add, Copy, MenuHandler


Menu, MyMenuBar, Add, &File, :FileMenu
Menu, MyMenuBar, Add, &Edit, :EditMenu

;---------

;----layout

gui, Menu, MyMenuBar
gui, add, tab2, buttons top, Home| Claim Search | Accumulator 
;---------

;------Home Tab

gui, tab, 1
gui, Add, Picture, w379 h127,C:\Users\CBriggs\Desktop\TFTest\scripts\files\logo.png

;--------------

;--------Search Tab
gui, tab,2
gui,Font,s12 c0x008c91
gui, add,text,, This is the Claim Search

gui,add,text,,First Name
gui,add,Edit, vFName w200


;------------------

;----------Accumulator Tab
gui, tab,3
gui,Font,s16 c0x008c91
gui,add,text,, This is the Accumulator
;------------------------

gui, show, w1024 h768, RX Database

;----------

return
;-----labels
FileNew:
	FileSelectFile, newFile
	run %newFile%

;-----------


;-----Functions


;--------------





MenuHandler:
return

Exit:
ExitApp