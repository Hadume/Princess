#> player:effects/tick/remove.stat
# Statsから削除
# @within function player:effects/tick/loop

## 効果によって
    execute if data storage temp: {Effect:{Name:"hpMax"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"mpMax"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"def"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"atk"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
    execute if data storage temp: {Effect:{Name:"mgcamount"}} run function player:effects/tick/remove.effect/stat with storage temp: Effect
