use "C:\MyFPSRStataFiles\nes2004subset.dta", clear

* Here's the dependent variable
tab bush

* Estimate the LPM
reg bush partyid eval_WoT eval_HoE

* Predicted values for the LPM:
predict yhat, xb
summarize yhat, detail

* Estimate the BNL and calculate predicted values
logit bush partyid eval_WoT eval_HoE
predict p_BNL, p

* Estimate the BNP and calculate predicted values
probit bush partyid eval_WoT eval_HoE
predict p_BNP, p


* Summarize the predicted values from the BNL and BNP
summarize p_BNL, det
summarize p_BNP, det





* here's a cross tab of predictions by actual values for the lpm:
gen p_vote_LPM=yhat
recode p_vote_LPM -.1/.5=0 .5000001/1.2=1
tab2 bush p_vote_LPM, cell

* We can do the same for the bnl:
gen p_vote_BNL=p_BNL
recode p_vote_BNL -.1/.5=0 .5000001/1.2=1
tab2 bush p_vote_BNL, cell

* We can do the same for the bnp:
gen p_vote_BNP=p_BNP
recode p_vote_BNP -.1/.5=0 .5000001/1.2=1
tab2 bush p_vote_BNP, cell
