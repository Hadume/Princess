#> mob:hurt/ehp/main/boss
# ボスが攻撃した時の処理
# @within function mob:hurt/ehp/main/

## 攻撃力を取得
    scoreboard players operation #idDmgFlag temp = @s idDmgFlag
    execute as @e[tag=aj.global.root] if score @s idDmgFlag = #idDmgFlag temp run return run scoreboard players get @s atk
