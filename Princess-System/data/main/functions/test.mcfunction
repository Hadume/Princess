## シュルカーボックス内を空にする
  data remove block 0 0 0 Items
## アイテムをセットする
  data modify block 0 0 0 Items append value {id:"stone",Count:1b}
## プレイヤーにアイテムを渡す
  loot give @s mine 0 0 0 debug_stick
