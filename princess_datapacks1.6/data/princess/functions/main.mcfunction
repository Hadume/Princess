# 常時実行

# 種を植えられるようにする 
    execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:wheat_seeds",Count:64b}]} run function princess:wheat
    execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:potato",Count:64b}]} run function princess:potato
    execute if block 176 65 183 dispenser{Items:[{Slot:4b,id:"minecraft:carrot",Count:64b}]} run function princess:carrot
    


# title
    execute as @p[nbt={Inventory:[{id:"minecraft:stone_button"}]},gamemode=adventure,scores={ti=0}] run function princess:title

## ストーリー
# タイトル
    execute if entity @p[x=156,y=66,z=236,dy=1,scores={ti=0}] run function princess:title
    execute at @a[scores={ti=1},nbt={Inventory:[{id:"minecraft:paper",tag:{display:{Name:"\"領収書\"",Lore:["\"今月の家賃の支払い証明書\""]}}}]}] run function princess:1/a
    execute if entity @p[x=160,y=75,z=16,dy=2,dz=2,nbt={Inventory:[{id:"minecraft:lever"}]}] run function princess:1/b
    execute if entity @a[scores={talk=1..,ti=2},x=149,y=75,z=20,dx=10,dy=1,dz=10] run function princess:1/c1
    execute if block 174 80 2 dispenser{Items:[{Slot:4b,id:"minecraft:tripwire_hook",Count:1b}]} run function princess:1/d
    execute if entity @p[scores={ti=2},x=171,y=81,z=-21,dy=1] run function princess:2/a1
    execute if block 178 83 -46 dispenser{Items:[{Slot:0b,id:"minecraft:lever"}]} run function princess:2/b

#迷路エリア
    execute if entity @p[x=166,y=65,z=-15,dy=1,gamemode=adventure] run summon zombie 162 65 -6
    execute if entity @p[x=128,y=65,z=-40,dx=1,dy=1,dz=6,gamemode=adventure] run summon creeper 130 65 -35
    execute if entity @p[x=128,y=65,z=-62,dy=1,gamemode=adventure] run summon skeleton 131 65 -69
    execute if entity @p[scores={ti=4,death=1..}] run function princess:meiro/1-1
    execute if entity @p[scores={ti=4},nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run function princess:meiro/2

#謎解きエリア
    execute if entity @p[level=208,x=129,y=57,z=-70,dx=10,dy=1,dz=9,scores={ti=5}] run function princess:nazotoki/a
    execute if entity @p[x=164,y=57,z=-52,dy=1,scores={ti=6},nbt={Inventory:[{id:"minecraft:apple"}]}] run function princess:nazotoki/c
    execute if block 136 58 -14 minecraft:chest{Items:[{Slot:0b,id:"minecraft:emerald",Count:1b},{Slot:1b,id:"minecraft:book",Count:1b},{Slot:2b,id:"minecraft:bone",Count:1b},{Slot:3b,id:"minecraft:clock",Count:1b},{Slot:4b,id:"minecraft:sunflower",Count:1b}]} run function princess:nazotoki/d
    execute if block 162 57 -5 dispenser{Items:[{Slot:4b,id:"minecraft:emerald",Count:3b}]} run function princess:nazotoki/f
    execute if entity @a[scores={ti=7,death=1..},gamemode=adventure] run function princess:nazotoki/e1


#アスレ補助
    execute if entity @a[scores={as=1}] run scoreboard objectives setdisplay sidebar death1
    execute as @a[scores={ti=7,as=1}] run effect give @a night_vision 60 250 true
    execute as @a[scores={death1=10,as=1}] run setblock 131 39 -10 sea_lantern
    execute as @a[scores={death1=20,as=1}] run setblock 145 43 -14 sea_lantern
    execute as @a[scores={death1=30,as=1}] run fill 147 43 -17 147 43 -15 sea_lantern
    execute as @a[scores={death1=40,as=1}] run fill 134 45 -26 135 45 -26 sea_lantern
    execute as @a[scores={death1=50,as=1}] run setblock 130 45 -26 sea_lantern
    execute as @a[scores={death1=60,as=1}] run fill 128 48 -34 129 48 -34 sea_lantern
    execute as @a[scores={death1=70,as=1}] run fill 131 50 -46 133 50 -46 sea_lantern
    execute as @a[scores={death1=80,as=1}] run fill 143 50 -51 143 50 -53 sea_lantern
    execute as @a[scores={death1=90,as=1}] run setblock 143 41 -71 sea_lantern
    execute as @a[scores={death1=100,as=1}] run setblock 152 39 -71 sea_lantern
    execute as @a[scores={death1=110,as=1}] run function princess:110

#アスレ失敗
    execute as @s[x=127,y=30,z=-72,dx=26,dz=70] at @s run kill @s[x=127,y=30,z=-72,dx=26,dz=70]
    execute as @s[x=155,y=32,z=-71,dx=23,dz=61] at @s run kill @s[x=155,y=32,z=-71,dx=23,dz=61]

#ブロックイズエリア
    execute if entity @a[tag=a,tag=b,tag=c,tag=d,scores={ti=7}] run function princess:blockq/g

#最深部
    execute if entity @p[x=150,y=0,z=-5,dx=2,dy=2,dz=2,gamemode=adventure,scores={ti=8}] run function princess:tik/a
    execute if entity @p[scores={death=1..,ti=9}] run function princess:tik/a-1
    execute at @p[x=146,y=0,z=-37,dx=10,dy=0,dz=10,scores={ti=9},nbt={Inventory:[{id:"minecraft:saddle"}]}] run function princess:tik/a-2
    execute at @a[x=148,y=0,z=-37,dx=2,dy=1,dz=2,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run function princess:tik/b
    execute at @p[x=152,y=0,z=-37,dx=0,dy=0,dz=0] run function princess:tik/b1

#襲撃イベント
    execute if entity @p[scores={ti=10}] run function princess:syuu/a
    execute if entity @p[scores={ti=11,kill=15..}] run function princess:syuu/b
    execute if entity @p[scores={ti=12,kill=15..}] run function princess:syuu/c
    execute if entity @p[scores={ti=13,kill=20..}] run function princess:syuu/d

# 会話解除
    execute if entity @a[scores={talk=1..}] run scoreboard players set @a talk 0





