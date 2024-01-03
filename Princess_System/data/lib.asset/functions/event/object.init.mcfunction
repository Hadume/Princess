#> lib.asset:event/object.init
# NPCを初期化
# @within function asset:*/*/**

#> ScoreHolder
# @private
 #declare score_holder $ID.Object.Copy
## 判別tagを追加4^8
  ### 計算
    scoreboard players operation $ID.Object.Copy Temp = $ID.Object Temp
    scoreboard players operation $ID.Object.Copy Temp *= $2^16 Const
  ### 4^7
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.7.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.7.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.7.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.7.0
  ### 4^6
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.6.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.6.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.6.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.6.0
  ### 4^5
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.5.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.5.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.5.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.5.0
  ### 4^4
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.4.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.4.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.4.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.4.0
  ### 4^3
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.3.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.3.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.3.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.3.0
  ### 4^2
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.2.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.2.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.2.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.2.0
  ### 4^1
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.1.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.1.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.1.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.1.0
  ### 4^0
    scoreboard players operation $ID.Object.Copy Temp *= $4 Const
    execute if score $ID.Object.Copy Temp matches -1073741824..-1 run tag @s add NPC.0.3
    execute if score $ID.Object.Copy Temp matches ..-1073741825 run tag @s add NPC.0.2
    execute if score $ID.Object.Copy Temp matches 1073741824.. run tag @s add NPC.0.1
    execute if score $ID.Object.Copy Temp matches 0..1073741823 run tag @s add NPC.0.0
## 自身にIDを移す
  scoreboard players operation @s ID.Object = $ID.Object Temp
## 自身から初期化tagを削除
  tag @s remove Init
## 一時使用ScoreHolderをリセット
  scoreboard players reset $ID.Object
  scoreboard players reset $ID.Object.Copy
