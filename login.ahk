#singleInstance, Force 
 
FileDelete, C:\Users\CBriggs\Desktop\TFTest\scripts\temp\user.csv
 
2:
gui, Add, Picture, w379 h127 x300,C:\Users\CBriggs\Desktop\TFTest\scripts\files\logo.png

gui,add,text,x300,User Name
gui,1:add,edit,vuser x300

gui,add,text,x300,Password
gui,1:add,edit,vpword x300 Password

gui,add,button,default,Submit
gui,add,button,default,Register

gui, show, w1024 h768, RX Login
return

ButtonRegister:
run C:\Users\CBriggs\Desktop\TFTest\register.ahk
gui, Destroy
return

ButtonSubmit:
gui, Submit

FileRead, valid, C:\Users\CBriggs\Desktop\TFTest\test.csv
if not ErrorLevel
{
		FileRead, text, C:\Users\CBriggs\Desktop\TFTest\scripts\user.txt
		FileDelete, C:\Users\CBriggs\Desktop\TFTest\scripts\user.bat
		FileAppend, %text% ,C:\Users\CBriggs\Desktop\TFTest\scripts\user.bat
}
sleep 200
run C:\Users\CBriggs\Desktop\TFTest\scripts\user.bat
sleep 200



;FileGetSize, usercheck, C:\Users\CBriggs\Desktop\TFTest\scripts\temp\user.csv */

msgbox you entered %user%
msgbox you entered %pword%
#include C:\Users\CBriggs\Desktop\TFTest\scripts\user.ahk 
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
		run C:\Users\CBriggs\Desktop\TFTest\login.ahk
	}
	IfEqual, pword, % Array[k]
	{
		msgbox Welcome
		run	C:\Users\CBriggs\Desktop\TFTest\gui.ahk
	}
	else 
	{
		msgbox Invalid Username/Password Combination Please Try Again.
		run C:\Users\CBriggs\Desktop\TFTest\login.ahk
	}




