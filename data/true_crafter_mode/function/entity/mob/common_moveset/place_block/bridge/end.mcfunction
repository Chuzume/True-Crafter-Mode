#> true_crafter_mode:entity/mob/common_moveset/place_block/bridge/end
#
# 
#
# @within function true_crafter_mode:entity/mob/common_moveset/place_block/bridge/tick

# 
    say 届いたな、多分

# リセット
    tag @s remove TMCM.Action.Bridge
    scoreboard players reset @s TMCM.Action.BridgeEnd
