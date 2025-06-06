#> menu:init
# メニューシステムの初期化
# @within function main:init/

#> Scoreboard
# @internal
    scoreboard objectives add Menu dummy
    scoreboard objectives add Trade.With dummy
    scoreboard objectives add Trade.Action trigger
    scoreboard objectives add Trade.DecideTimer dummy

##
    data modify storage menu: Blanks21 set value [{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b}]
