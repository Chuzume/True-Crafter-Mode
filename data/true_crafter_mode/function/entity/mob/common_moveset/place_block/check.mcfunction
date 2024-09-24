#> true_crafter_mode:entity/mob/common_moveset/place_block/check
#
# 足を止めた場合はブロックを置いてくる
#
# @within function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/place_block

# 足を止めている間スコアを加算し、一定に達するとブロック設置。ただし、橋モードのときはやらない
    execute if entity @s[tag=Standstill,tag=!TMCM.Action.Bridge] unless score @s TMCM.Action.Dig matches 1.. unless score @s TMCM.Action.PlaceStart matches 40.. run scoreboard players add @s TMCM.Action.PlaceStart 1 

# 条件を満たしていないときはスコアが減る
    execute unless entity @s[tag=Standstill] run scoreboard players remove @s[scores={TMCM.Action.PlaceStart=1..}] TMCM.Action.PlaceStart 1 
    scoreboard players reset @s[scores={TMCM.Action.PlaceStart=..0}] TMCM.Action.PlaceStart

# スコア一定以上でブロックを設置しだす
    execute if score @s TMCM.Action.PlaceStart matches 40.. facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/common_moveset/place_block/

# 橋置きモードなら条件無視で橋を置く
    execute if entity @s[tag=TMCM.Action.Bridge,tag=ChuzOnGround] facing entity @p eyes rotated ~ 0 run function true_crafter_mode:entity/mob/common_moveset/place_block/bridge/tick
