#> true_crafter_mode:entity/mob/piglin/init/crossbow
#
# クロスボウ型はちょっと処理が多いので
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/init/

# タグ
    tag @s add TMCM.Piglin.Crossbow
    tag @s add TMCM.RangedMode

# 手持ちにフレイムを付与
    item modify entity @s weapon.mainhand {function:set_enchantments,enchantments:{"minecraft:flame":1}}
    
# 腰のアイテム
    # 鞘を召喚
        summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}}
    # 鞘を装着
        ride @n[type=item_display,tag=Chuz.Init] mount @s
    # 鞘にアイテムを入れる
        item replace entity @n[type=item_display,tag=Chuz.Init] container.0 with golden_axe
    # 鞘のInit完了
        tag @n[type=item_display,tag=Chuz.Init] remove Chuz.Init
