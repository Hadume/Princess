#> asset:mob/summon/
# MOBを召喚
# @within tag/function asset:mob/summon

## idを移す
    $data modify storage asset:mob id set value $(ID)

##
    $function asset:mob/$(ID)/summon/
