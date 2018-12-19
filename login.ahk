#singleInstance, Force 

SetWorkingDir %A_ScriptDir%

FileDelete, %A_WorkingDir%\scripts\temp\user.csv
 
2:
gui, Add, Picture, w379 h127 x300,%A_WorkingDir%\scripts\files\images\logo.png

gui,add,text,x300,User Name
gui,1:add,edit,vuser x300

gui,add,text,x300,Password
gui,1:add,edit,vpword x300 Password

gui,add,button,default,Submit
gui,add,button,default,Register

gui, show, w1024 h768, RX Login
return

ButtonRegister:
run %A_WorkingDir%\register.ahk
gui, Destroy
return

ButtonSubmit:
gui, Submit

FileRead, valid, %A_WorkingDir%\files\user_files\list.csv
if not ErrorLevel
{
		FileRead, text, %A_WorkingDir%\scripts\files\user_files\user.txt
		FileDelete, %A_WorkingDir%\scripts\files\user_files\user.bat
		FileAppend, %text% ,%A_WorkingDir%\scripts\files\user_files\user.bat
}
sleep 200
run %A_WorkingDir%\scripts\files\user_files\user.bat
sleep 200



;FileGetSize, usercheck, %A_WorkingDir%\scripts\temp\user.csv */

msgbox you entered %user%
msgbox you entered %pword%
#include C:\Users\CBriggs\Desktop\RX_Data\scripts\files\user_files\user.ahk
 for k,v in Array
	k = %user%
	v = %pword%
	msgbox % Array[k]
	if Array.Haskey(k)
	{
		msgbox user found
	}
	else 
	{
		msgbox user not found
		run %A_WorkingDir%\login.ahk
	}
	IfEqual, pword, % Array[k]
	{
		msgbox Welcome
		run	%A_WorkingDir%\gui.ahk
	}
	else 
	{
		msgbox Invalid Username/Password Combination Please Try Again.
		run %A_WorkingDir%\login.ahk
	}





