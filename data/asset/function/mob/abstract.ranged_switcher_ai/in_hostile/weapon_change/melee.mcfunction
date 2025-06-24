#> asset:mob/ranged_switcher_ai/in_hostile/weapon_change/melee
#
# 
#
# @within function asset:mob/ranged_switcher_ai/in_hostile/

# 交換処理
    function asset:mob/ranged_switcher_ai/in_hostile/weapon_change/swap_holder

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.MeleeMode
    tag @s remove TMCM.RangedMode
