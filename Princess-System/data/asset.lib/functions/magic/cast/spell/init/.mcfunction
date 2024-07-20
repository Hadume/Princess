#> asset.lib:magic/cast/spell/init/
# 魔法で初期化
# @within function asset.lib:magic/cast/spell/main

## IDを保存
  execute store result score @s ID.Asset run data get storage asset:magic ID
## データを保存
  ### データを移行
    data modify storage asset:temp Magic.Name set from storage asset:magic Name
    data modify storage asset:temp Magic.Amount set from storage asset:magic Amount
    data modify storage asset:temp Magic.Range set from storage asset:magic Range
    execute if data storage asset:magic Pierce run data modify storage asset:temp Magic.Pierce set from storage asset:magic Pierce
    execute if data storage asset:magic Targets run data modify storage asset:temp Magic.Targets set from storage asset:magic Targets
    execute if data storage asset:magic Elements run data modify storage asset:temp Magic.Elements set from storage asset:magic Elements
  ###
    function data.entity:please
    data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic set from storage asset:temp Magic
## スコアを代入
  execute store result score @s Duration run data get storage asset:magic Duration
## 速度を代入
  execute if data storage asset:magic Speed run function asset.lib:magic/cast/spell/init/speed
## プレイヤーのIDを保存
  execute store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.CasterID int 1 run scoreboard players get @a[tag=This,limit=1] PlayerID
## 向きを変更
  execute positioned as @s run tp @s ~ ~ ~ ~ ~
## NBT
  data modify entity @s {} merge value {FallDistance:-4096f,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b}
## Display君にIDを渡す
  scoreboard players operation @e[type=block_display,tag=Spell.Init] EntityID = @s EntityID
## 初期化tagを削除
  tag @s remove Spell.Init
## 一時使用Storageを削除
  data remove storage asset:temp Magic
