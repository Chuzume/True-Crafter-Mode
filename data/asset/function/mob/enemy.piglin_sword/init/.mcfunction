#> asset:mob/enemy.piglin_sword/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s fall_damage_multiplier base set 0
    attribute @s minecraft:max_health base set 24
    effect give @s instant_health 1 100 true

# ノックバックに強くしてみる
    attribute @s knockback_resistance base set 0.3

# 手持ちに火属性を付与
    enchant @s fire_aspect
