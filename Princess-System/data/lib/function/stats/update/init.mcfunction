#> lib:stats/init
#
# @within function main:init/

## 複合tagを用意
	data modify storage lib: Physic set value ["HP.Max","HP.Rgn.Per","HP.Rgn.Intrvl","MP.Max","MP.Rgn.Per","MP.Rgn.Intrvl","ATK","DEF","Speed"]
	data modify storage lib: Magic set value ["Mgc.MP","Mgc.Cooltime","Mgc.Multiple","Mgc.Amount","Mgc.Duration","Mgc.Pierce","Mgc.Spread","Mgc.Range","Mgc.Speed"]
	data modify storage lib: Element set value ["ATK.Flamme","ATK.Wasser","ATK.Wind","ATK.Licht","ATK.Dunkel","DEF.Flamme","DEF.Wasser","DEF.Wind","DEF.Licht","DEF.Dunkel"]
