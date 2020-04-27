use "C:\MyFPSRStataFiles\Ch12TS.dta", clear

* ***********************************************************************
* Tell Stata the structure of the data
* ***********************************************************************

generate time=ym(Year,Month)
format time %tm
sort time
tsset time, monthly



