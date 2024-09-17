#> true_crafter_mode:entity/mob/piglin/init/sword
#
# 
#
# @within function true_crafter_mode:entity/mob/piglin/init/

# タグ
    tag @s add TMCM.Piglin.Sword
    tag @s add TMCM.MeleeMode

# ノックバックに強くしてみる
    attribute @s generic.knockback_resistance base set 0.3

# 手持ちに火属性を付与
    enchant @s fire_aspect

