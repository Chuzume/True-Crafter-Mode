#> true_crafter_mode:entity/mob/common_moveset/weapon_change/ranged
#
# 遠距離モードに切り替え
#
# @within function true_crafter_mode:entity/mob/common_moveset/weapon_change/melee

# 交換処理
    function true_crafter_mode:entity/mob/common_moveset/swap_sheath_item

# VFX
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.RangedMode
    tag @s remove TMCM.MeleeMode