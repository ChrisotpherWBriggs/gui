c:

cd c:\program files (x86)\gnuwin32\bin

awk -F"," "{print $3$1substr($7,7,4)substr($7,1,2)substr($7,4,2)\",\"$1\",\"$2\",\"$3\",\"$4\",\"$5\",\"$6\",\"$7\",\"$8\",\"substr($7,7,4)substr($7,1,2)substr($7,4,2)\",\"$9}" "C:\Users\CBriggs\Desktop\rx_accuums\claims.csv" | sort -t"," -k 4,4n > "C:\Users\CBriggs\Desktop\RX_Data\scripts\files\claims_files\claims.csv"





