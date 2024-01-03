## 手持ちはそのままでいい。
# 武器庫
item replace block -270 66 49 container.4 with shield 1
item replace block -270 66 49 container.13 with shield 1
item replace block -270 66 49 container.22 with shield 1
item replace block -286 66 47 container.9 with iron_helmet 1
item replace block -286 66 47 container.14 with iron_helmet 1
item replace block -286 66 47 container.10 with iron_chestplate 1
item replace block -286 66 47 container.15 with iron_chestplate 1
item replace block -286 66 47 container.11 with iron_leggings 1
item replace block -286 66 47 container.16 with iron_leggings 1
item replace block -286 66 47 container.12 with iron_boots 1
item replace block -286 66 47 container.17 with iron_boots 1
item replace block -286 66 45 container.4 with iron_sword 1
item replace block -286 66 45 container.13 with iron_sword 1
item replace block -286 66 45 container.22 with iron_sword 1
setblock -275 66 39 air
setblock -272 66 39 air
# 衛兵室北側
setblock -289 66 -32 air
setblock -292 66 -32 air
# 地下
setblock -286 59 54 air
setblock -286 59 57 air
item replace block -300 57 32 container.13 with arrow 32
item replace block -288 57 32 container.13 with bow 1
setblock -275 50 37 air
setblock -279 50 39 air
setblock -277 50 33 air
setblock -281 50 35 air
# メイド長の仕事
item replace block -259 74 56 container.0 with bowl 1
# 執事長の仕事
item replace block -301 74 -23 container.4 with amethyst_shard 1
item replace block -288 80 -49 container.13 with slime_ball 1
item replace block -304 80 -45 container.13 with slime_ball 1
item replace block -288 82 -41 container.13 with slime_ball 1
# 玉座の間
item replace block -290 96 9 container.13 with golden_apple 1
item replace block -290 96 3 container.22 with totem_of_undying 1
item replace block -290 96 -2 container.13 with spectral_arrow 1
# 王家の食堂
setblock -271 90 -6 air
setblock -271 90 15 air
# 王女の部屋
setblock -271 90 21 air
item replace block -294 90 15 container.0 from block -290 103 17 container.0
item replace block -288 91 18 container.13 from block -290 103 17 container.13
summon painting -289 91 18 {facing:1b}
#tp
tp @a -290 90 28
scoreboard players set @a ti 0
time set night