#> inv.ui:asset/magic/52101/
# Magic 52101 Asset
# @within function inv.ui:pages/_/magic/caster/set_display

# Typesの参照
    function asset:magic/52101/types
# UICode
    data modify storage inv.ui: Asset.UICode set value 52101
# Id
    data modify storage inv.ui: Asset.ItemID set value "compass"
# Slot
    #data modify storage inv.ui: Asset.Slot set value 0
# Name
    data modify storage inv.ui: Asset.Name set value '{"text":"フレイム","color":"red"}'
# Lore
    ## 説明文
        data modify storage inv.ui: Asset.Lore set value ['[{"text":"一直線上に炎が出る。\\n"}]']
    ## MP
        data modify storage inv.ui: Asset.Lore_MP set value ['[{"text":"消費MP： "},{"storage":"asset:magic","nbt":"Raw.MP"},{"text":"\\n"}]']
    ## Cooltime
        data modify storage inv.ui: Asset.Lore_MP set value ['[{"text":"クールタイム： "},{"storage":"asset:magic","nbt":"Raw.Cooltime"},{"text":"\\n"}]']
    ## Amount?
        execute if data storage asset:magic Raw.Amount run data modify storage inv.ui: Asset.Lore_MP set value ['[{"text":"効果値： "},{"storage":"asset:magic","nbt":"Raw.Amount"},{"text":"\\n"}]']
    ## 属性
        ### 引数のセット
            data modify storage inv.ui: Asset.Argument set from storage asset:magic Raw.Elements
        ### 属性の日本語変換
            function inv.ui:asset/magic/conversion_elements
    ## オプション説明追加
        function inv.ui:asset/magic/option_description

# 各種データ削除
    data remove storage asset:magic Raw.

# アイテムセット
    function inv.ui:pages/set/
