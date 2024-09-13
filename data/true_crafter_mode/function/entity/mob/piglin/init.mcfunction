#> true_crafter_mode:entity/mob/piglin/init
#
# Init処理
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# 能力強化など
    data merge entity @s {Health:20f,IsImmuneToZombification:1b,Attributes:[{Name:"generic.max_health",Base:20}]}

# 剣持ちなら近接タグ、クロスボウなら遠距離タグ
    tag @s[nbt={HandItems:[{id:"minecraft:golden_sword",Count:1b}]}] add TMCM.Piglin.Sword
    tag @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add TMCM.Piglin.Crossbow
    tag @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b}]}] add TMCM.Piglin.Crossbow.Ranged

# 初期化終了
    tag @s add TMCM.AlreadyInit