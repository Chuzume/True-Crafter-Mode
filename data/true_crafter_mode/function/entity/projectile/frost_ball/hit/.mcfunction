#> true_crafter_mode:entity/projectile/frost_ball/hit/
#
# ヒット時
#
# @within function true_crafter_mode:entity/projectile/frost_ball/tick

# 発射されて数Tickは持ち主に当たらない
    execute unless score @s TMCM.Tick matches 3.. if entity @n[tag=This,dx=0] run return fail

# ダメージ
    execute as @e[type=!armor_stand,team=!null,dx=0] run function true_crafter_mode:entity/projectile/frost_ball/hit/damage

# キル
    function true_crafter_mode:entity/projectile/frost_ball/kill