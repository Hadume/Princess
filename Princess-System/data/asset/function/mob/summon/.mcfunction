#> asset:mob/summon/
# MOBを召喚
# @within tag/function asset:mob/summon

## IDを移す
    $data modify storage asset:mob ID set value $(ID)

##
    $function asset:mob/$(ID)/summon/
