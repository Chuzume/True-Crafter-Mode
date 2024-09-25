#> asset:object/1002.poison_ball/hit_entity/damage
#
# ダメージ処理
#
# @within function asset:object/1002.poison_ball/hit_entity/

effect give @s minecraft:poison 7 0
effect give @s minecraft:slowness 2 2
playsound minecraft:entity.slime.hurt_small neutral @a ~ ~ ~ 1 1.2
