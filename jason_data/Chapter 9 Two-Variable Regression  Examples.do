use "C:\MyFPSRStataFiles\FairFPSR3.dta", clear

regress inc_vote growth


twoway lfit inc_vote growth, scheme(s1mono)

twoway (scatter inc_vote growth) /*
*/(lfit inc_vote growth), scheme(s1mono)

summarize inc_vote growth

twoway (scatter inc_vote growth) /*
*/(lfit inc_vote growth), /*
*/ xline(.7635) yline(51.92569) /*
*/ scheme(s1mono)


twoway (scatter inc_vote growth) /*
*/(lfit inc_vote growth, lcolor(black)), /*
*/ ytitle("Incumbent Party Vote Percentage") /*
*/ xtitle(Percentage Change in Real GDP Per Capita) /*
*/ legend(off) /*
*/ xline(.7635, lcolor(black) lpattern(dash) lwidth(thin)) /*
*/ yline(51.92569, lcolor(black) lpattern(dash) lwidth(thin)) /*
*/ scheme(s1mono)


