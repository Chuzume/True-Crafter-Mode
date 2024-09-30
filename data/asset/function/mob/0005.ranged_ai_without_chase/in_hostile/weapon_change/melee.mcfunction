#> asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/melee
#
# 
#
# @within function asset:mob/0005.ranged_ai_without_chase/in_hostile/

# 交換処理
    function asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/swap_holder

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.MeleeMode
    tag @s remove TMCM.RangedMode
