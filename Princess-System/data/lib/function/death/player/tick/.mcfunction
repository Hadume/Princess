#> lib:death/player/tick/
# プレイヤーの死亡時の常時処理
# @within function main:tick/player

## スコアを減らす
    scoreboard players remove @s deathTime 1

## スポーン地点に戻す
    execute if entity @s[scores={deathTime=..0}] run function lib:death/player/spawn/
