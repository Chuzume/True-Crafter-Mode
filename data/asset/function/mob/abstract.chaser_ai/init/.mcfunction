#> asset:mob/abstract.chaser_ai/init/
#
# 
#
# @within asset_manager:mob/triggers/init/init.m

# チェイサーAI持ちは、その動作の都合、どうしても落下ダメージで自滅しがちだから…
    attribute @s fall_damage_multiplier base set 0
