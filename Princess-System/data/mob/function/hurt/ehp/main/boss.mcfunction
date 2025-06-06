#> mob:hurt/ehp/main/boss
# ボスが攻撃した時の処理
# @within function mob:hurt/ehp/main/

## 攻撃力を取得
    tag @s add This
    execute as @e[tag=aj.global.root] if score @s ID.DmgFlag = @e[tag=This,distance=0,limit=1] ID.DmgFlag run scoreboard players operation #Lib.ATK Lib = @s ATK
    tag @s remove This
