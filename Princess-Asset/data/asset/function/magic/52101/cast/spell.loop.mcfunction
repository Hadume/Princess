#> asset:magic/52101/cast/spell.loop
# 魔法の本体
# @within function asset:magic/52101/cast/
# @private

## 発動数が0以下なら終了
    execute if score #multiple temp matches 0.. run return 1

## 本体を召喚
    execute anchored eyes run summon armor_stand ^ ^ ^ {Passengers:[{id:"block_display",block_state:{Name:"magma_block"},Tags:["spellInit","spellDisplay"]}],Tags:["spell","spellInit"]}

## 初期化
    function #asset.lib:magic/cast/spell

## 発動数を減らす
    scoreboard players remove #multiple temp 1

## まだ発動する
    function asset:magic/52101/cast/spell.loop
