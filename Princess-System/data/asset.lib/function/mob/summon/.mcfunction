#> asset.lib:mob/summon/
#
# @within tag/function asset.lib:mob/summon

## 引数が足りなかったら
    execute unless data storage asset:mob name run return run function asset.lib:mob/summon/argument {argument:"name"}
    execute unless data storage asset:mob type run return run function asset.lib:mob/summon/argument {argument:"type"}
    execute unless data storage asset:mob status.lvl run return run function asset.lib:mob/summon/argument {argument:"status.lvl"}
    execute unless data storage asset:mob status.exp run return run function asset.lib:mob/summon/argument {argument:"status.exp"}
    execute unless data storage asset:mob status.money run return run function asset.lib:mob/summon/argument {argument:"status.money"}
    execute unless data storage asset:mob status.hp run return run function asset.lib:mob/summon/argument {argument:"status.hp"}
    execute unless data storage asset:mob status.mp run return run function asset.lib:mob/summon/argument {argument:"status.mp"}
    execute unless data storage asset:mob status.atk run return run function asset.lib:mob/summon/argument {argument:"status.atk"}
    execute unless data storage asset:mob status.def run return run function asset.lib:mob/summon/argument {argument:"status.def"}
    execute unless data storage asset:mob status.speed run return run function asset.lib:mob/summon/argument {argument:"status.speed"}

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## IDを保存
    execute store result score @s assetID run data get storage asset:mob ID

## 名前
    data modify storage dat: _.rawName set from storage asset:mob name

## タイプ
    execute if data storage asset:mob {type:"enemy"} run tag @s add enemy
    execute if data storage asset:mob {type:"boss"} run tag @s add boss
    execute if data storage asset:mob {type:"boss"} run tag @s add enemy

## 装備
    ### Assetから
        execute if data storage asset:mob armor[-4].ID run function asset.lib:mob/summon/equipments {equipment:"armor",index:-4}
        execute if data storage asset:mob armor[-3].ID run function asset.lib:mob/summon/equipments {equipment:"armor",index:-3}
        execute if data storage asset:mob armor[-2].ID run function asset.lib:mob/summon/equipments {equipment:"armor",index:-2}
        execute if data storage asset:mob armor[-1].ID run function asset.lib:mob/summon/equipments {equipment:"armor",index:-1}
        execute if data storage asset:mob weapon[-2].ID run function asset.lib:mob/summon/equipments {equipment:"weapon",index:-2}
        execute if data storage asset:mob weapon[-1].ID run function asset.lib:mob/summon/equipments {equipment:"weapon",index:-1}

    ### データを反映
        data modify entity @s ArmorItems set from storage asset:mob armor
        data modify entity @s HandItems set from storage asset:mob weapon

    ### 保存
        data modify storage dat: _.armor set from storage asset:mob armor
        data modify storage dat: _.weapon set from storage asset:mob weapon


## ステータス
    ### 移行
        execute store result score @s lvl run data get storage asset:mob status.lvl
        execute store result score @s exp run data get storage asset:mob status.exp
        execute store result score @s money run data get storage asset:mob status.money
        execute store result score @s hpMaxBase run data get storage asset:mob status.hp
        execute store result score @s mpMaxBase run data get storage asset:mob status.mp
        execute store result score @s atkBase run data get storage asset:mob status.atk
        execute store result score @s defBase run data get storage asset:mob status.def
        execute store result score @s speedBase run data get storage asset:mob status.speed

    ### 装備の数値を反映
        data modify storage lib:modifier input set value ["PHYSICS","MAGICS"]
        function #lib:modifier/update


## ドロップ品
    data modify storage dat: _.loot set from storage asset:mob loot

## NBT
    ### 共通設定
        data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"asset.lib:mob/empty",CanPickUpLoot:0b,PersistenceRequired:1b,LeftHanded:0b,CustomNameVisible:1b}
        attribute @s attack_damage base set 0.0000001

    execute if data storage asset:mob NBT run data modify entity @s {} merge from storage asset:mob NBT

## ダメージ識別用tag
    execute if data storage asset:mob {type:"enemy"} run function asset.lib:mob/summon/damage_flags/

## Hitboxを保存
    function asset.lib:mob/summon/id/

## 引数を削除
    function asset.lib:mob/summon/argument {argument:"null"}
