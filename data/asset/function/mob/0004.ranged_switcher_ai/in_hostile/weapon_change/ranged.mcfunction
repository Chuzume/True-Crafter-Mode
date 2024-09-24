#> asset:mob/0004.ranged_switcher_ai/in_hostile/weapon_change/ranged
#
# 
#
# @within function asset:mob/0004.ranged_switcher_ai/in_hostile/

# 交換処理
    function asset:mob/0004.ranged_switcher_ai/in_hostile/weapon_change/swap_holder

# VFX
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.RangedMode
    tag @s remove TMCM.MeleeMode
