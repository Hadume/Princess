#> lib:stats/init
#
# @within function main:init/

## 複合tagを用意
	data modify storage lib: Physic set value ["HP.Max","MP.Max","ATK","DEF","Speed"]
	data modify storage lib: Magic set value ["Mgc.MP","Mgc.Cooltime","Mgc.Multiple","Mgc.Amount","Mgc.Duration","Mgc.Pierce","Mgc.Spread","Mgc.Range","Mgc.Speed"]
	data modify storage lib: Element set value ["ATK.Flamme","ATK.Wasset","ATK.Wind","ATK.Licht","ATK.Dunkel","DEF.Flamme","DEF.Wasset","DEF.Wind","DEF.Licht","DEF.Dunkel"]
