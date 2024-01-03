#> player:tick
# 
# @within function main:tick/

## 
# title
#execute as @a[nbt={Inventory:[{id:"minecraft:stone_button"}]},gamemode=adventure,scores={ti=0}] run function princess:title

## スコア
    execute if entity @s[scores={Event.Timer=0..}] run function player:event/process
## ストーリーイベント
    #execute positioned 156 66 236 if entity @s[scores={Event=0},distance=..0.5] run function event:title
## イベント発生
    execute if entity @s[gamemode=!spectator] if entity @e[type=marker,tag=Object,distance=..16] run function lib.asset:marker
## ストーリー
#迷路エリア 166 64 -15
#execute if entity @p[x=166,y=65,z=-15,dy=1,gamemode=adventure] run summon zombie 162 65 -6
#execute if entity @p[x=128,y=65,z=-40,dx=1,dy=1,dz=6,gamemode=adventure] run summon creeper 130 65 -35
#execute if entity @p[x=128,y=65,z=-62,dy=1,gamemode=adventure] run summon skeleton 131 65 -69
#execute if entity @p[scores={ti=4,death=1..}] run function princess:meiro/1-1

#謎解きエリア
#execute if entity @p[x=164,y=57,z=-52,dy=1,scores={ti=6},nbt={Inventory:[{id:"minecraft:apple"}]}] run function princess:nazotoki/c
#execute if block 136 58 -14 minecraft:chest{Items:[{Slot:0b,id:"minecraft:emerald",Count:1b},{Slot:1b,id:"minecraft:book",Count:1b},{Slot:2b,id:"minecraft:bone",Count:1b},{Slot:3b,id:"minecraft:clock",Count:1b},{Slot:4b,id:"minecraft:sunflower",Count:1b}]} run function princess:nazotoki/d
#execute if entity @a[scores={ti=7,death=1..},gamemode=adventure] run function princess:nazotoki/e1


#アスレ補助
#execute if entity @a[scores={as=1}] run scoreboard objectives setdisplay sidebar death1
#execute as @a[scores={ti=7,as=1}] run effect give @a night_vision 60 250 true
#execute as @a[scores={death1=10,as=1}] run setblock 131 39 -10 sea_lantern
#execute as @a[scores={death1=20,as=1}] run setblock 145 43 -14 sea_lantern
#execute as @a[scores={death1=30,as=1}] run fill 147 43 -17 147 43 -15 sea_lantern
#execute as @a[scores={death1=40,as=1}] run fill 134 45 -26 135 45 -26 sea_lantern
#execute as @a[scores={death1=50,as=1}] run setblock 130 45 -26 sea_lantern
#execute as @a[scores={death1=60,as=1}] run fill 128 48 -34 129 48 -34 sea_lantern
#execute as @a[scores={death1=70,as=1}] run fill 131 50 -46 133 50 -46 sea_lantern
#execute as @a[scores={death1=80,as=1}] run fill 143 50 -51 143 50 -53 sea_lantern
#execute as @a[scores={death1=90,as=1}] run setblock 143 41 -71 sea_lantern
#execute as @a[scores={death1=100,as=1}] run setblock 152 39 -71 sea_lantern
#execute as @a[scores={death1=110,as=1}] run function princess:110

#ブロックイズエリア
#execute if entity @a[tag=a,tag=b,tag=c,tag=d,scores={ti=7}] run function princess:blockq/g

#最深部
#execute if entity @p[x=150,y=0,z=-5,dx=2,dy=2,dz=2,gamemode=adventure,scores={ti=8}] run function princess:tik/a
#execute if entity @p[scores={death=1..,ti=9}] run function princess:tik/a-1
#execute at @p[x=146,y=0,z=-37,dx=10,dy=0,dz=10,scores={ti=9},nbt={Inventory:[{id:"minecraft:saddle"}]}] run function princess:tik/a-2
#execute at @a[x=148,y=0,z=-37,dx=2,dy=1,dz=2,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run function princess:tik/b
#execute at @p[x=152,y=0,z=-37,dx=0,dy=0,dz=0] run function princess:tik/b1

#襲撃イベント
#execute if entity @p[scores={ti=10}] run function princess:syuu/a
#execute if entity @p[scores={ti=11,kill=15..}] run function princess:syuu/b
#execute if entity @p[scores={ti=12,kill=15..}] run function princess:syuu/c
#execute if entity @p[scores={ti=13,kill=20..}] run function princess:syuu/d
