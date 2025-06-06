#> skilltree:set/common/
# スキルツリーマップ設定の共通処理
# @within function skilltree:set/*

## チャンクが読み込まれていたら
    execute store result storage temp: Success byte 1 in overworld if loaded ~-37 ~ ~-37 if loaded ~-37 ~ ~37 if loaded ~37 ~ ~-37 if loaded ~37 ~ ~37

##
    execute if data storage temp: {Success:1b} positioned ~ -59 ~ run function skilltree:set/common/main

## エラーログ
    execute unless data storage temp: {Success:1b} run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},"チャンクが読み込まれていないため、スキルツリーマップの設定ができませんでした。"]

## 一時使用Storageを削除
    data remove storage temp: Success
