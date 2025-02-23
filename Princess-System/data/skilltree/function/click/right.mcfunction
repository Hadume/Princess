#> skilltree:click/right
# スキルツリー内で右クリックしたら
# @within advancement skilltree:right_click

## 持っているアイテムに依って
	execute if items entity @s weapon.mainhand *[custom_data~{SkillTree:{Back:1b}}] run function skilltree:back/

## 進捗を剥奪
	advancement revoke @s only skilltree:right_click
