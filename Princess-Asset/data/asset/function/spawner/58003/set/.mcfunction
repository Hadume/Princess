#> asset:spawner/58003/set/
#
# @within function asset:spawner/set/main

## 何がスポーンするか : [{ID: int(asset:mob)}] @ N
    data modify storage asset:spawner Data set value [{ID: 53003}]

## 何体スポーンするか : int
    data modify storage asset:spawner Count set value {Min: 1,Max: 5}

## スポーンまでの時間 : int
    data modify storage asset:spawner Delay set value {Min: 3600,Max: 3600}

## 範囲 : float
    data modify storage asset:spawner Range set value 4.0f

## 周囲のMOBの最大数 : int
    data modify storage asset:spawner MaxNearbyEntities set value 16

## 稼働範囲 : float
    data modify storage asset:spawner RequiredPlayerRange set value 8.0f
