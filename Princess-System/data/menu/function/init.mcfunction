#> menu:init
# メニューシステムの初期化
# @within function main:init/

#> Scoreboard
# @internal
    scoreboard objectives add menu dummy
    scoreboard objectives add tradeWith dummy
    scoreboard objectives add rradeAction trigger
    scoreboard objectives add tradeDecideTimer dummy

##
    data modify storage menu: Blanks21 set value [{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b}]
