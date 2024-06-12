#> asset.lib:magic/tick/
# 魔法のtickでの確定処理
# @within function asset:magic/*/tick/

## 持続時間
  scoreboard players remove @s Mgc.Duration 1
## 魔法を消す
  execute if entity @s[scores={Mgc.Duration=..0}] run function asset.lib:magic/extinguish
