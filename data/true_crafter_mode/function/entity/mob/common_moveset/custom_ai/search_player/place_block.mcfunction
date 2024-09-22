#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/place_block
#
# 
#
# @within function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick_owner

# 足を止めている間スコアを加算し、一定に達するとブロック設置
    execute if entity @s[tag=ChuzStandstill] unless score @s TMCM.Action.Dig matches 1.. unless score @s TMCM.Action.PlaceStart matches 20.. run scoreboard players add @s TMCM.Action.PlaceStart 1 

# 条件を満たしていないときはスコアが減る
    execute unless entity @s[tag=ChuzStandstill] run scoreboard players remove @s[scores={TMCM.Action.PlaceStart=1..}] TMCM.Action.PlaceStart 1 
    scoreboard players reset @s[scores={TMCM.Action.PlaceStart=..0}] TMCM.Action.PlaceStart

# スコア一定以上でブロックを設置しだす
    execute if score @s TMCM.Action.PlaceStart matches 20.. facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/common_moveset/place_block/