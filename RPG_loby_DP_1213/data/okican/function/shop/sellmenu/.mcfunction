#function okican:shop/sellmenu/

#ショッピング中のタグ
    tag @s add shopping_open
    advancement revoke @s only okican:shop/sell

#トロッコ内をリセット
    data modify entity @n[tag=sellshop] Items set from storage ok_empty 00

#ページ数のスコア
    scoreboard players set @s ok_page 0
    
#持っているものをクリアする
    item replace entity @s player.cursor with air

## 種類選択を先に選択してもらう
    #リストリセット
    item replace entity @n[tag=sellshop] container.0 with air
    item replace entity @n[tag=sellshop] container.1 with air
    item replace entity @n[tag=sellshop] container.2 with air
    item replace entity @n[tag=sellshop] container.3 with air
    item replace entity @n[tag=sellshop] container.4 with air
    item replace entity @n[tag=sellshop] container.5 with air
    item replace entity @n[tag=sellshop] container.6 with air
    item replace entity @n[tag=sellshop] container.7 with air
    item replace entity @n[tag=sellshop] container.8 with air
    item replace entity @n[tag=sellshop] container.9 with air
    item replace entity @n[tag=sellshop] container.10 with air
    item replace entity @n[tag=sellshop] container.11 with air
    item replace entity @n[tag=sellshop] container.12 with air
    item replace entity @n[tag=sellshop] container.13 with air
    item replace entity @n[tag=sellshop] container.14 with air
    item replace entity @n[tag=sellshop] container.15 with air
    item replace entity @n[tag=sellshop] container.16 with air
    item replace entity @n[tag=sellshop] container.17 with air
    #食料
    item replace entity @n[tag=sellshop] container.11 with apple[custom_name='[{"color":"yellow","text":"食料"}]',custom_data={ok_buy:0}] 1
    #素材
    item replace entity @n[tag=sellshop] container.13 with flint[custom_name='[{"color":"gold","text":"素材"}]',custom_data={ok_buy:0}] 1
    #装備
    item replace entity @n[tag=sellshop] container.15 with carrot_on_a_stick[custom_model_data=1,custom_name='[{"color":"aqua","text":"装備"}]',custom_data={ok_buy:0}] 1
    
    #戻る
    item replace entity @n[tag=foodshop] container.20 with air
    #item replace entity @n[tag=foodshop] container.20 with blue_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"前のページ"}]',custom_data={ok_buy:0}] 1
    #進む
    item replace entity @n[tag=sellshop] container.24 with air
    #item replace entity @n[tag=sellshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=sellshop] container.22 with black_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1

    #function okican:shop/sellmenu/
    