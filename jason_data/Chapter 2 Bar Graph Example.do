use "C:\MyFPSRStataFiles\milspend_pct_05.dta", clear

help graph bar

graph bar milspend_pct, over(nation) 

graph bar milspend_pct , over(nation, label(angle(45)))

graph bar milspend_pct /* 
*/ , over(nation, label(angle(45)) sort(milspend_pct)) /*
*/ scheme(s1mono) /*
*/ ytitle("Military Expenditures as a Percentage of GDP")

