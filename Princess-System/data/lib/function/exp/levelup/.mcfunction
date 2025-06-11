#> lib:exp/levelup/
# レベルアップ
# @within function lib:exp/

##
    function lib:exp/levelup/loop

## ステータスを更新
    data modify storage lib:stats stats set value ["hpMax","mpMax","atk","def"]
    function #lib:stats/update

## 体力、魔力を回復
    scoreboard players operation @s hp = @s hpMax
    scoreboard players operation @s mp = @s mpMax
    ### 更新
        function #lib:status/hp/update
        function #lib:status/mp/update


## レベルアップを知らせる
    tellraw @s ["\nレベルが",{"score":{"name": "@s","objective": "lvl"},"color": "yellow","bold": true},"になりました！"]

## 一時使用scoreHolderをリセット
    scoreboard players reset #expNeed temp
