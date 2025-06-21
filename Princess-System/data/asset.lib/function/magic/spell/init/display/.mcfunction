#> asset.lib:magic/spell/init/display/
# 表示用Entityを初期化
# @within function asset.lib:magic/spell/init/

## Rotation を取得
    function #api:get.nbt/rotation

##
    execute as @e[type=block_display,tag=spellInit] run function asset.lib:magic/spell/init/display/main
