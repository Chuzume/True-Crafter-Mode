#> true_crafter_mode:entity/mob/piglin/moveset/drink_potion/start
#
# 耐火のポーションを飲む
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# タグ付与
    tag @s add TMCM.Piglin.FireResist

# アイテムを持つ
    item replace entity @s weapon.offhand with potion

# 演出
    playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1

# 足を止める
    effect give @s slowness 2 1 true

#近くにプレイヤーがいるなら飛び退く
    #scoreboard players set @s Chuz.Speed 10
    #execute if entity @a[distance=..7] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step