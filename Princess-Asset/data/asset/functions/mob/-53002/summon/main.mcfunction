#> asset:mob/-53002/summon/main
# 
# @within function asset:mob/-53002/summon/

## 元になるEntityを召喚
  summon zombie ~ ~ ~ {Tags:["MOB.Init"]}
## 名前; JsonText
  data modify storage asset:mob Name set value '{"text":"ゾンビ将軍"}'
## タイプ; String; ["Enemy"]
  data modify storage asset:mob Type set value "Enemy"
## 装備; Compound
###   id; String => Default
###   ID; Int => Asset.Items
###   id < ID
  #### 防具
    ##### 頭
      data modify storage asset:mob Armor.Head set value {ID:-54002}
    ##### 胸
      data modify storage asset:mob Armor.Chest set value {ID:-54003}
    ##### 脚
      data modify storage asset:mob Armor.Legs set value {ID:-54004}
    ##### 足
      data modify storage asset:mob Armor.Feet set value {ID:-54005}
  #### 武器
    ##### メインハンド
      data modify storage asset:mob Weapon.Mainhand set value {ID:-54006}
    ##### オフハンド
      data modify storage asset:mob Weapon.Offhand set value {ID:-54001}
## ステータス; Int
  ### レベル
    data modify storage asset:mob Status.Lvl set value 1
  ### ドロップ経験値
    data modify storage asset:mob Status.Exp set value 10
  ### ドロップマネー
    data modify storage asset:mob Status.Money set value 10
  ### 体力
    data modify storage asset:mob Status.HP set value 100
  ### 魔力
    data modify storage asset:mob Status.MP set value 100
  ### 攻撃力
    data modify storage asset:mob Status.ATK set value 1
  ### 防御力
    data modify storage asset:mob Status.DEF set value 0
  ### スピード
    data modify storage asset:mob Status.Speed set value 100
  ### 運
    #data modify storage asset:mob Status.Luck set value 1
## NBT; Compound
  #data modify storage asset:mob NBT set value {}
## MOBを生成
  function asset.lib:mob/summon/check.condition
