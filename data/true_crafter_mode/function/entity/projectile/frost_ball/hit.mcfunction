#> true_crafter_mode:entity/projectile/frost_ball/hit
#
# ヒット時
#
# @within function true_crafter_mode:entity/projectile/frost_ball/tick

# 魔法属性ダメージ
    damage @s 4 magic

# 鈍足
    effect give @s slowness 10 1

# 消滅
    function true_crafter_mode:entity/projectile/frost_ball/kill