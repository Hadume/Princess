#> mob:hurt/ehp/
# MOBがプレイヤーを攻撃したら
# @within advancement mob:entity_hurt_player

## 実行者tagを追加
	tag @s add This

##
	execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.0] if entity @a[tag=This,advancements={mob:entity_hurt_player={0-0=true}}] run function mob:hurt/ehp/1
	execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.1] if entity @a[tag=This,advancements={mob:entity_hurt_player={0-1=true}}] run function mob:hurt/ehp/1
	execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.2] if entity @a[tag=This,advancements={mob:entity_hurt_player={0-2=true}}] run function mob:hurt/ehp/1
	execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.3] if entity @a[tag=This,advancements={mob:entity_hurt_player={0-3=true}}] run function mob:hurt/ehp/1

## 実行者tagを削除
	tag @s remove This

## ステータスを取得
	scoreboard players operation #Lib.DEF Lib = @s DEF

## ダメージを与える
	function #lib:damage

## 進捗を剥奪
	advancement revoke @s only mob:entity_hurt_player
