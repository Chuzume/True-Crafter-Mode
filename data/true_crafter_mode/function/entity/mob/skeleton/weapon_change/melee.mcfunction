# 近接武器に持ち替え

# 交換処理
    function true_crafter_mode:entity/mob/skeleton/weapon_change/swap_item

# VFX
    playsound minecraft:item.armor.equip_iron hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.Skeleton.Melee
    tag @s remove TMCM.Skeleton.Ranged
