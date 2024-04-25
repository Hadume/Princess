#> mob:hurt/phe/
# プレイヤーがMOBを攻撃したら
# @within advancement mob:player_hurt_entity

## 実行者tagを追加
  tag @s add This
## 
  execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.0] if entity @a[tag=This,advancements={mob:player_hurt_entity={0-0=true}}] run function mob:hurt/phe/1
  execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.1] if entity @a[tag=This,advancements={mob:player_hurt_entity={0-1=true}}] run function mob:hurt/phe/1
  execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.2] if entity @a[tag=This,advancements={mob:player_hurt_entity={0-2=true}}] run function mob:hurt/phe/1
  execute as @e[type=#mob:living,scores={ID.DmgFlag=..2147483647}] if entity @s[tag=DmgFlag.0.3] if entity @a[tag=This,advancements={mob:player_hurt_entity={0-3=true}}] run function mob:hurt/phe/1
## 実行者tagを削除
  tag @s remove This
## 進捗を剥奪
  advancement revoke @s only mob:player_hurt_entity
