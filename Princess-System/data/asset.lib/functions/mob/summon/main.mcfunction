#> asset.lib:mob/summon/main
# 
# @within function asset.lib:mob/summon/check.condition

## 個人ストレージを呼ぶ
  function data.entity:please
## 名前
  data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].rawName set from storage asset:mob Name
## 装備
  ### Assetから
    execute if data storage asset:mob Armor.Head.ID run function asset.lib:mob/summon/equipments/head
    execute if data storage asset:mob Armor.Chest.ID run function asset.lib:mob/summon/equipments/chest
    execute if data storage asset:mob Armor.Legs.ID run function asset.lib:mob/summon/equipments/legs
    execute if data storage asset:mob Armor.Feet.ID run function asset.lib:mob/summon/equipments/feet
    execute if data storage asset:mob Weapon.Mainhand.ID run function asset.lib:mob/summon/equipments/mainhand
    execute if data storage asset:mob Weapon.Offhand.ID run function asset.lib:mob/summon/equipments/offhand
  ### データを用意
    data modify storage asset:temp ArmorItems set value [{},{},{},{}]
    data modify storage asset:temp HandItems set value [{},{}]
  ### データを移行
    execute if data storage asset:mob Armor.Head run data modify storage asset:temp ArmorItems[-1] set from storage asset:mob Armor.Head
    execute if data storage asset:mob Armor.Chest run data modify storage asset:temp ArmorItems[-2] set from storage asset:mob Armor.Chest
    execute if data storage asset:mob Armor.Legs run data modify storage asset:temp ArmorItems[-3] set from storage asset:mob Armor.Legs
    execute if data storage asset:mob Armor.Feet run data modify storage asset:temp ArmorItems[-4] set from storage asset:mob Armor.Feet
    execute if data storage asset:mob Weapon.Mainhand run data modify storage asset:temp HandItems[-2] set from storage asset:mob Weapon.Mainhand
    execute if data storage asset:mob Weapon.Offhand run data modify storage asset:temp HandItems[-1] set from storage asset:mob Weapon.Offhand
  ## データを反映
    data modify entity @s ArmorItems set from storage asset:temp ArmorItems
    data modify entity @s HandItems set from storage asset:temp HandItems
  ## 保存
    data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Armor set from storage asset:temp ArmorItems
    data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Weapon set from storage asset:temp HandItems
## NBT反映
  data modify entity @s {} merge value {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"asset.lib:entities/empty",CanPickUpLoot:0b,PersistenceRequired:0b,LeftHanded:0b}
## ステータスを移行
  execute store result score @s Lvl run data get storage asset:mob Status.Lvl
  execute store result score @s Exp run data get storage asset:mob Status.Exp
  #execute store result score @s Money run data get storage asset:mob Status.Money
  execute store result score @s HP.Max.Base store result score @s HP run data get storage asset:mob Status.HP
  execute store result score @s MP.Max.Base store result score @s MP run data get storage asset:mob Status.MP
  #execute store result score @s ATK.Base run data get storage asset:mob Status.ATK
  #execute store result score @s DEF.Base run data get storage asset:mob Status.DEF
  execute store result score @s Speed.Base run data get storage asset:mob Status.Speed
## HitBoxを保存
  function asset.lib:mob/summon/hitbox/
## ステータスを反映
  function #lib:stats
## 初期化Tagを外す
  tag @s remove Init
## 一時使用Storageを削除
  data remove storage asset:temp ArmorItems
  data remove storage asset:temp HandItems
