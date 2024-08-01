#> inv.ui:asset/magic/0/
# 何番目のスロットかをチェック 
# @within function inv.ui:pages/_/magic/caster/set_display

# スロットごとに実行
	execute if data storage inv.ui: {Magic:{Loop:0}} run function inv.ui:asset/magic/0/1
	execute if data storage inv.ui: {Magic:{Loop:1}} run function inv.ui:asset/magic/0/2
	execute if data storage inv.ui: {Magic:{Loop:2}} run function inv.ui:asset/magic/0/3
	execute if data storage inv.ui: {Magic:{Loop:3}} run function inv.ui:asset/magic/0/4
