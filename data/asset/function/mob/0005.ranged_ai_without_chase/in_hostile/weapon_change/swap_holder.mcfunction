#> asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/swap_holder
#
# アイテムホルダーのアイテムと交換する
#
# @within function asset:mob/0005.ranged_ai_without_chase/in_hostile/weapon_change/melee


# 自分の鞘にタグを付与
    execute on passengers if entity @s[type=item_display,tag=TMCM.Other.Sheath] run tag @s add MySheath

# 手持ちをストレージに移す
    data modify storage chuz:storage SheathItem set from entity @s HandItems[0]
    
# 腰のアイテムを装備する
    item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=TMCM.Other.Sheath,tag=MySheath] container.0

# 腰のアイテムをさっきまで持ってたものに変える
    data modify entity @n[type=item_display,tag=TMCM.Other.Sheath,tag=MySheath] item set from storage chuz:storage SheathItem

# リセット
    data remove storage chuz:storage SheathItem

# 鞘からタグを外す
    tag @n[type=item_display,tag=TMCM.Sheath,tag=MySheath] remove MySheath
