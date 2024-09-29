#> data:entity
# エンティティの個人ストレージ
# @within function data:please

## 個人ストレージを呼ぶ
  function data.entity:please
## データを移す
  data modify storage data: _ set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4]
## 実行者情報
  data modify storage data: Selector set value "Entity"
