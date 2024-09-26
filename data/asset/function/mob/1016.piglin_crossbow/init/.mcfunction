#> asset:mob/1016.piglin_crossbow/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1016/init

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.max_health base set 20
    effect give @s instant_health 1 100 true

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

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
