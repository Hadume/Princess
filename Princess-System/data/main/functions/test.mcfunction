## シュルカーボックス内を空にする
  data remove block 0 0 0 Items
## アイテムをセットする
  data modify block 0 0 0 Items append value {id:"stone",Count:1b}
## プレイヤーにアイテムを渡す
  loot give @s mine 0 0 0 debug_stick

#######
## シュルカーボックス内を空にする
  data remove block 0 0 0 Items
## 
  data modify block 0 0 0 Items set value [{id:"stone",Count:1b,Slot:0b},{id:"dirt",Count:1b,Slot:1b}]
## プレイヤーにアイテムを渡す
  loot replace entity @s inventory.0 mine 0 0 0 debug_stick
