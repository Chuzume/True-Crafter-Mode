#> true_crafter_mode:entity/projectile/frost_ball/hit/damage
#
# 敵に対するダメージ
#
# @within function true_crafter_mode:entity/projectile/frost_ball/hit/check

# 魔法属性ダメージ
    damage @s 4 minecraft:indirect_magic by @n[tag=This]

# 鈍足
    effect give @s slowness 10 1