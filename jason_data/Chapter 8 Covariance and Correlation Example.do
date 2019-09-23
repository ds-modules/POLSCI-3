use "C:\MyFPSRStataFiles\FairFPSR3.dta", clear

twoway scatter inc_vote growth, scheme(s1mono)

twoway scatter inc_vote growth, /*
*/ ytitle("Incumbent Party Vote Percentage" "  ") /*
*/ xtitle("   " "Percentage Change in Real GDP Per Capita")  /*
*/ msymbol(Oh)/*
*/ scheme(s1mono)

correlate inc_vote growth, covariance

pwcorr inc_vote growth, sig

