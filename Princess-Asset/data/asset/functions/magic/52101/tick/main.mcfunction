#> asset:magic/52101/tick/main
# 
# @within function asset:magic/52101/tick/

## パーティクル
  execute anchored eyes run particle flame ^ ^ ^ 0.125 0.125 0.125 0 3 force
## ダメージ
  function asset.lib:magic/action/
  function asset.lib:magic/action/damage/
## パーティクル
  #execute as @e[tag=DamageTaken] at @s run particle 
# Effectの場合(*はどのfunctionにも必要なやつ)
# *個人ストレージ
# *Amount取得
# Amount分の効果をMOBに
# パーティクル表示
# 音
