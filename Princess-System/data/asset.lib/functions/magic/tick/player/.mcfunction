#> asset.lib:magic/tick/player/
# 
# @within function main:tick/player

## 個人ストレージを呼ぶ
  function data.player:please
## IDをコピー
  data modify storage asset:temp MagicCopy set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## あったら実行
  function asset.lib:magic/tick/player/action.loop
## 一時使用Storageを削除
  data remove storage asset:temp MagicCopy
