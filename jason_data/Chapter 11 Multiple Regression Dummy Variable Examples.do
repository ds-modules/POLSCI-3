use "C:\MyFPSRStataFiles\ANES1996small.dta", clear

* Here are the data management steps:
rename v960281 hillary_thermo

rename v960701 income

generate female=.
replace female=0 if v960066==1
replace female=1 if v960066==2

tab2 v960066 female, missing

rename v961039 womenmvmt_thermo

* Create the interaction:
gen womenmvmt_thermo_female=womenmvmt_thermo*female

* Here is the first regression:
regress hillary_thermo income female

* Now the regression with the interaction
regress hillary_thermo womenmvmt_thermo female womenmvmt_thermo_female
