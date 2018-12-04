del user.ahk

echo Array := {} >> user.ahk

for /f "tokens=1,2 delims=," %%x in (C:\Users\CBriggs\Desktop\TFTest\test.csv) do (
echo Array["%%x"]^:="%%y" >> user.ahk
)

