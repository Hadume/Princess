#> api:get.nbt/selected_item/
# SelectedItemを保存
# @input as player
# @output storage api: SelectedItem
# @within tag/function api:get.nbt/selected_item

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.selectedItem.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run function api:get.nbt/selected_item/update

## SelectedItemをコピー
    data modify storage api:nbt selectedItem set from storage dat: _.NBT.selectedItem
