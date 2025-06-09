#> api:e_dat/write
# データの書き込み
# @within function api:e_dat/please

## 書き込み
    $data modify storage dat:$(lastId) _ set from storage dat: _

## 読み込み
    $data modify storage dat: _ set from storage dat:$(id) _

## 読み込まれたidを保存
    data modify storage dat: lastId set from storage temp:api dat.id
