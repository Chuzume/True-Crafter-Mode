#> true_crafter_mode:entity/mob/piglin/moveset/init/
#
# 
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
        execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow"}]}] run function true_crafter_mode:entity/mob/piglin/moveset/init/crossbow

# 初期化終了
    tag @s add TMCM.AlreadyInit