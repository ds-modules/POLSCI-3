use "C:\MyFPSRStataFiles\FairFPSR3.dta", clear

regress inc_vote growth goodnews

regress inc_vote growth if year != 1876

regress inc_vote growth if goodnews != 1876

regress inc_vote goodnews if growth != 1876

regress inc_vote growth goodnews if year > 1945

regress inc_vote growth goodnews if year < 1945

regress inc_vote growth goodnews, beta
