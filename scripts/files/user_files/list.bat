del list.txt

for /f "tokens=1,2 delims=," %%x in (user.csv) do (
pause
echo %%x^,%%y >> list.txt
)