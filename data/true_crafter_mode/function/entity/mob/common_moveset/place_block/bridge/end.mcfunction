#> true_crafter_mode:entity/mob/common_moveset/place_block/bridge/end
#
# 
#
# @within function true_crafter_mode:entity/mob/common_moveset/place_block/bridge/tick

# リセット
    tag @s remove TMCM.Action.Bridge
    scoreboard players reset @s TMCM.Action.BridgeEnd
