#> player:effects/tick/remove.stat
# Statsから削除
# @within function player:effects/tick/loop

## 効果によって
    execute if data storage temp: {Effect:{Name:"HP.Max"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"MP.Max"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"DEF"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"ATK"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"Mgc.Amount"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
