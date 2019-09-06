use "C:\MyFPSRStataFiles\FairFPSR3.dta", clear

summarize inc_vote, detail

summarize inc_vote growth, detail

summarize, detail

summarize 



sort inc_vote
list year inc_vote

graph box inc_vote, ytitle("Incumbent Vote Percentage") scheme(s1mono)

histogram inc_vote, xtitle("  "  "Incumbent Vote Percentage") ytitle("Density" "   ") scheme(s1mono)

kdensity inc_vote, xtitle("  "  "Incumbent Vote Percentage") ytitle("Density" "   ") scheme(s1mono)

twoway histogram inc_vote || kdensity inc_vote, scheme(s1mono)

twoway histogram inc_vote /*
*/ || kdensity inc_vote /*
*/ , scheme(s1mono) legend(off) ytitle(Density)

