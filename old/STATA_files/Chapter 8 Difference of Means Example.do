use "C:\MyFPSRStataFiles\govts.dta", clear

graph box govttime, /*
*/ over(mingov, relabel(1 "majority" 2 "minority")) /*
*/ ytitle("Number of Days in Government") scheme(s1mono)


twoway kdensity govttime if mingov==1 || kdensity govttime if mingov==0, /*
*/ legend(label(1 "minority") label(2 "majority")) /*
*/ xtitle("Number of Days in Government") scheme(s1mono)

ttest govttime, by(mingov)

