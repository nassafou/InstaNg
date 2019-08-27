
gacces.log | awk '{match($4,/(.*):/) gsub(":","",$4)  tab[$4" - "$1]++ } END { for (datehost in tab) print datehost" - hits: "tab[datehost]}'
