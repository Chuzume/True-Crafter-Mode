#> true_crafter_mode:entity/mob/common_moveset/place_block/bridge/start
#
# 橋を置く処理をスタート
#
# @within function true_crafter_mode:entity/mob/common_moveset/place_block/

tag @s add TMCM.Action.Bridge
scoreboard players reset @s TMCM.Action.PlaceStart
