del user.ahk

echo Array := {} >> user.ahk

for /f "tokens=1,2 delims=," %%x in (user.csv) do (
echo Array["%%x"]^:="%%y" >> user.ahk
)

