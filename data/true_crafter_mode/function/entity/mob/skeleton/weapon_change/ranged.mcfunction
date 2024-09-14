# 遠距離武器に持ち替え

# 交換処理
    function true_crafter_mode:entity/mob/common_moveset/swap_sheath_item

# VFX
    playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1.5 1

# タグを調整
    tag @s add TMCM.Skeleton.Ranged
    tag @s remove TMCM.Skeleton.Melee
