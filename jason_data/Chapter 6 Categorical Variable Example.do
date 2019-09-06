use "C:\MyFPSRStataFiles\ANES2004small.dta", clear

* We're going use religion as an example of a categoric variable:
tabulate V043247

* Initial pie figure
graph pie, over(V043247) scheme(s1mono)

* To recreate FPSR Figure 6.1
graph pie, over(V043247) /*
*/ legend(label (1 "Protestant") label (2 "Catholic") label (3 "Jewish")/*
*/ label (4 "Other") label (5 "None")) /*
*/ scheme(s1mono)



* Intial bar graph
gen V043247A=V043247

graph bar (count) V043247, over(V043247A, sort((count) V043247) descending) scheme(s1mono)

* To recreate FPSR Figure 6.2
graph bar (count) V043247, /*
*/ ytitle("Number of Cases") scheme(s1mono) /*
*/ over(V043247A, sort((count) V043247) descending /*
*/ relabel(1 "Protestant" 2 "Catholic" 3 "None" 4 "Jewish" 5 "Other")) 
