#> true_crafter_mode:entity/mob/common_moveset/weapon_change/
#
# 近接モードへ変更
#
# @within function true_crafter_mode:entity/mob/**

# 交換処理
    function true_crafter_mode:entity/mob/common_moveset/swap_sheath_item

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.MeleeMode
    tag @s remove TMCM.RangedMode
