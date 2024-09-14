#> true_crafter_mode:entity/mob/common_moveset/swap_sheath_item
#
# 腰のアイテムと手持ちを交換する
#
# @within function true_crafter_mode:entity/mob/**

# 手持ちをストレージに移す
    data modify storage chuz:storage SheathItem set from entity @s HandItems[0]
    
# 腰のアイテムを装備する
    item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=TMCM.Other.Sheath,tag=This] container.0

# 腰のアイテムをさっきまで持ってたものに変える
    data modify entity @n[type=item_display,tag=TMCM.Other.Sheath,tag=This] item set from storage chuz:storage SheathItem

# リセット
    data remove storage chuz:storage SheathItem