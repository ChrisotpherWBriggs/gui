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

gui,add,text,,Checklist
gui, Add, Picture,,%A_WorkingDir%\scripts\files\images\friday.jpg

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

gui, show, AutoSize, RX Database

;----------

return
;-----labels
FileNew:
	FileSelectFile, newFile
	msgbox, %newFile%

;-----------


;-----Functions


;--------------





MenuHandler:
return

Exit:
ExitApp