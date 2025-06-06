#> lib:stats/update/main
# ステータスを計算
# @within function lib:stats/update/

#> ScoreHolder
# @within function lib:stats/update/**
    #declare score_holder #Amount

## 複合tagより、どのステータスを取得するか
    execute if data storage lib: {Stats:["Physic"]} run data modify storage lib: Stats append from storage lib: Physic[]
    execute if data storage lib: {Stats:["Magic"]} run data modify storage lib: Stats append from storage lib: Magic[]
    execute if data storage lib: {Stats:["Element"]} run data modify storage lib: Stats append from storage lib: Element[]

## Statsデータから取得
    data modify storage temp: Stats set from storage dat: _.Stats

## 更新
    function lib:stats/update/calc/loop

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Amount Temp

## 一時使用Storageを削除
    data remove storage temp: Armor
    data remove storage temp: Weapon
    data remove storage temp: Stats
    data remove storage lib: Stat
