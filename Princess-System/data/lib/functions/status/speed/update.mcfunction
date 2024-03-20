#> lib:status/speed/update
# スピードを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #Speed.Copy
## スピードをリセット
  attribute @s generic.movement_speed base set 0
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00001
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00002
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00003
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00004
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00008
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00012
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00016
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00032
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00048
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00064
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00128
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00192
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00256
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00512
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-00768
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-01024
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-02048
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-03072
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-04096
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-08192
  attribute @s generic.movement_speed modifier remove d73e9ff7-9063-4380-8736-12288
## スピードを更新
  ### スピードを取得
    function data.player:please
    execute store result score #Speed.Copy Temp run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Amount
  ### 4^6
    scoreboard players operation #Speed.Copy Temp *= #2^18 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-12288 "generic.movement_speed" 12.288 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-08192 "generic.movement_speed" 8.192 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-04096 "generic.movement_speed" 4.096 add
  ### 4^5
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-03072 "generic.movement_speed" 3.072 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-02048 "generic.movement_speed" 2.048 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-01024 "generic.movement_speed" 1.024 add
  ### 4^4
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00768 "generic.movement_speed" 0.768 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00512 "generic.movement_speed" 0.512 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00256 "generic.movement_speed" 0.256 add
  ### 4^3
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00192 "generic.movement_speed" 0.192 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00128 "generic.movement_speed" 0.128 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00064 "generic.movement_speed" 0.064 add
  ### 4^2
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00048 "generic.movement_speed" 0.048 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00032 "generic.movement_speed" 0.032 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00016 "generic.movement_speed" 0.016 add
  ### 4^1
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00012 "generic.movement_speed" 0.012 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00008 "generic.movement_speed" 0.008 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00004 "generic.movement_speed" 0.004 add
  ### 4^0
    scoreboard players operation #Speed.Copy Temp *= #4 Const
    execute if score #Speed.Copy Temp matches -1073741824..-1 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00003 "generic.movement_speed" 0.003 add
    execute if score #Speed.Copy Temp matches ..-1073741825 run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00002 "generic.movement_speed" 0.002 add
    execute if score #Speed.Copy Temp matches 1073741824.. run attribute @s generic.movement_speed modifier add d73e9ff7-9063-4380-8736-00001 "generic.movement_speed" 0.001 add
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Speed.Copy
