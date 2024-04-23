#> player:score/leave_game
# ゲームから退出したら
# @within function main:tick/player

## スピードを更新
  function lib:status/speed/update
## スコアをリセット
  scoreboard players reset @s LeaveGame
