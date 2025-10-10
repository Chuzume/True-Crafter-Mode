#> asset:mob/enemy.outer_enderman_chaser/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# ステータス
    attribute @s minecraft:movement_speed base set 0.12
    attribute @s minecraft:step_height base set 1
    attribute @s max_health base set 30
    data modify entity @s Health set value 30.0f
