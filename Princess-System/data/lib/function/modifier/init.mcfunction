#> lib:stats/init
#
# @within function main:init/

## 複合tagを用意
    data modify storage lib: Physic set value ["hpMax","hpRgnPer","hpRgnIntrvl","mpMax","mpRgnPer","mpRgnIntrvl","atk","def","speed"]
    data modify storage lib: Magic set value ["mgcMp","mgcCooltime","mgcmultiple","mgcamount","mgcDuration","mgcPierce","mgcspread","mgcrange","mgcSpeed"]
    data modify storage lib: Element set value ["atkFlamme","atkWasser","atkWind","atkLicht","atkDunkel","defFlamme","defWasser","defWind","defLicht","defDunkel"]
