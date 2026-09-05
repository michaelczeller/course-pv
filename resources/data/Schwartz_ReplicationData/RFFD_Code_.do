
Doctor(2021)Code **** FOREIGN FIGHTERS AND CONFLICT-RELATED SEXUAL VIOLENCE. Austin C. Doctor. 2020. International Studies Quarterly. 

clear
use "/Users/austincdoctor/Documents/Working Papers/Foreign Fighters and CRSV/ISQ Manuscript/Replication Files (Doctor ISQ 2020)/replication_doctorISQ_crsvFF.dta"

gen time2 = time^2
gen time3 = time^3

sum



########## Generate Predicted Probabilities for Figure 1 ###########
* Model 5
ologit SVAC_reb_ordinal i.foreign_f secessionist islamist rel_strength forced_recruit loot duration govtbestfatal_ln lnpop SVAC_reb_lag time time2 time3, cluster(dyadid)
margins, dydx(foreign_f)


****Rebel Foreign Fighter Database*****

clear

gen time2 = time^2
gen time3 = time^3

sum


########## Generate Predicted Probabilities for Figure 7 ###########

ologit SVAC_reb_ordinal i.OrdinalCode secessionist islamist rel_strength forced_recruit loot duration govtbestfatal_ln lnpop SVAC_reb_lag time time2 time3, cluster(dyadid)
margins, dydx(OrdinalCode)
