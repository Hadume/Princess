#> lib:hitbox/entity/slime/scale.loop
# 倍率
# @within function lib:hitbox/entity/slime/*
# @private

## ループ終了
    execute if score #size temp matches ..0 run return 1

##
    scoreboard players operation #scale temp *= #2 const

## スコアを減らす
    scoreboard players remove #size temp 1

## ループ
    function lib:hitbox/entity/slime/scale.loop
