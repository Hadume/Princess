#> asset:spawner/-58001/set/
#
# @within function asset:spawner/set/main

## 何がスポーンするか : [{ID: int(asset:mob)}] @ N
    data modify storage asset:spawner Data set value [{ID: 53004}]

## 何体スポーンするか : int
    data modify storage asset:spawner Count set value {Min: 1,Max: 5}

## スポーンまでの時間 : int
    data modify storage asset:spawner Delay set value {Min: 300,Max: 400}

## 範囲 : float
    data modify storage asset:spawner Range set value 4.0f

## 周囲のMOBの最大数 : int
    data modify storage asset:spawner MaxNearbyEntities set value 6

## 稼働範囲 : float
    data modify storage asset:spawner RequiredPlayerRange set value 8.0f
