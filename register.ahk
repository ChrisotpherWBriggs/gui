#SingleInstance, Force
gui, Add, Picture, w379 h127 x300,C:\Users\CBriggs\Desktop\TFTest\scripts\files\logo.png

gui,add,text,x300,User Name
gui,1:add,edit,vuser x300

gui,add,text,x300,Password
gui,1:add,edit,vpword x300 Password

gui,add,text,x300,First Name
gui,1:add,edit,vfname x300

gui,add,text,x300,Last Name
gui,1:add,edit,vlname x300

gui,add,text,x300,Age
gui,1:add,edit,vage x300

gui,add,button,default,Submit
gui, show, w1024 h768, RX Add User
return

ButtonSubmit:
#include C:\Users\CBriggs\Desktop\TFTest\scripts\user.ahk
gui, Submit
for k,v in Array
  k = %user%
  msgbox %k%, %pword%, %fname%, %lname%, %age%
  if Array.HasKey(k)
  {
    msgbox User Already Exists Please Try Again
    run C:\Users\CBriggs\Desktop\TFTest\register.ahk
  }
  else
    
    FileDelete C:\Users\CBriggs\Desktop\TFTest\test.txt
    FileAppend, 
    (
    
%user%,%pword%,%fname%,%lname%,%age%
    ), C:\Users\CBriggs\Desktop\TFTest\test.txt
    run C:\Users\CBriggs\Desktop\TFTest\add.bat
    msgbox User: %user% added please login
    run C:\Users\CBriggs\Desktop\TFTest\login.ahk