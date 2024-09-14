#> true_crafter_mode:entity/mob/piglin/init
#
# Init処理
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# 能力強化など
    data modify entity @s IsImmuneToZombification set value true
    attribute @s minecraft:generic.max_health base set 20
    effect give @s instant_health 1 100 true

# タグ付与
    # 近接型
        tag @s[nbt={HandItems:[{id:"minecraft:golden_sword"}]}] add TMCM.Piglin.Sword
    # 遠距離型
        tag @s[nbt={HandItems:[{id:"minecraft:crossbow"}]}] add TMCM.Piglin.Crossbow
        tag @s[nbt={HandItems:[{id:"minecraft:crossbow"}]}] add TMCM.Piglin.Crossbow.Ranged

# 腰にアイテム装着する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:stone_axe",count:1}}
    ride @n[type=item_display,tag=Chuz.Init] mount @s


# 初期化終了
    tag @s add TMCM.AlreadyInit