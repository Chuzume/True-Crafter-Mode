#> asset:mob/1015.piglin_sword/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1015/init

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.max_health base set 20
    effect give @s instant_health 1 100 true

# ノックバックに強くしてみる
    attribute @s generic.knockback_resistance base set 0.3

# 手持ちに火属性を付与
    enchant @s fire_aspect

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
