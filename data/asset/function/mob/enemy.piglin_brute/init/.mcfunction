#> asset:mob/enemy.piglin_brute/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# ステータス
    effect give @s fire_resistance infinite 0 false
    data modify entity @s IsImmuneToZombification set value true
    attribute @s fall_damage_multiplier base set 0
    attribute @s knockback_resistance base set 0.3

# Super
    function asset:mob/super.init
