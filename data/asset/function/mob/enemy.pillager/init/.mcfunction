#> asset:mob/enemy.pillager/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# ステータス強化
    attribute @s minecraft:knockback_resistance base set 0.3
    attribute @s minecraft:step_height base set 1
    attribute @s max_health base set 30
    effect give @s instant_health 1 100 true

# Super
    function asset:mob/super.init
