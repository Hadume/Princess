#> data:player
# プレイヤーの個人ストレージ
# @within function data:please

## 個人ストレージを呼ぶ
  function data.player:please
## データを移す
  data modify storage data: _ set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4]
## 実行者情報
  data modify storage data: Selector set value "Player"
