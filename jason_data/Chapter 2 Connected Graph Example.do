use "C:\MyFPSRStataFiles\presap9505.dta", clear

graph twoway connected presap year_month , /*
*/ xlabel(420(6)540, angle(45)) ytitle("Presidential Approval") /*
*/ xtitle("Year/Month") legend(off) scheme(s1mono) 
