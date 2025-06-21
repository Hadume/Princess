#> asset.lib:init
# AssetLibの初期化
# @within function main:init/

## scoreboard
    scoreboard objectives add assetID dummy

## 各機能で
    function asset.lib:dungeon/init
    function asset.lib:spawner/init
    function asset.lib:mob/init
