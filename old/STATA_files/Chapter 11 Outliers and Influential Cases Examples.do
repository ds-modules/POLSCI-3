use "C:\MyFPSRStataFiles\florida2000.dta", clear

* Command for the initial regression:
regress BUCHANAN GORE

* To produce lvr2plots:
lvr2plot
lvr2plot, mlabel(COUNTY)

* Now to produce Figure 11.5 in FPSR:
predict yhat, xb

twoway (scatter BUCHANAN GORE, mlabel(COUNTY)) (line yhat GORE)/*
*/, ytitle("Buchanan Vote") xtitle("Gore Vote") legend(off)

* To produce and display the DFBETA scores:
predict dfgore, dfbeta(GORE)
sort dfgore
list COUNTY dfgore

