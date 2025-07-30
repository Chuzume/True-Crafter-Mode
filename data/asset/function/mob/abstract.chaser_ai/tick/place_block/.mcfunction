#> asset:mob/abstract.chaser_ai/tick/place_block/
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/search/tick

# 足を止めている間スコアを加算し、一定に達するとブロック設置。ただし、橋モードのときはやらない
    execute if entity @s[tag=Standstill,tag=!abstract.chaser_ai.Bridge] unless score @s abstract.chaser_ai.Place matches 1.. unless score @s abstract.chaser_ai.PlaceStart matches 20.. run scoreboard players add @s abstract.chaser_ai.PlaceStart 1 

# 条件を満たしていないときはスコアが減る
    execute unless entity @s[tag=Standstill] run scoreboard players remove @s[scores={abstract.chaser_ai.PlaceStart=1..}] abstract.chaser_ai.PlaceStart 1 
    scoreboard players reset @s[scores={abstract.chaser_ai.PlaceStart=..0}] abstract.chaser_ai.PlaceStart

# スコア一定以上でブロックを設置しだす
    execute if score @s abstract.chaser_ai.PlaceStart matches 20.. facing entity @p eyes rotated ~ 0 run function asset:mob/abstract.chaser_ai/tick/place_block/place

# 橋置きモードなら条件無視で橋を置く
    execute if entity @s[tag=abstract.chaser_ai.Bridge,tag=OnGround] facing entity @p eyes rotated ~ 0 run function asset:mob/abstract.chaser_ai/tick/place_block/place_bridge/tick
