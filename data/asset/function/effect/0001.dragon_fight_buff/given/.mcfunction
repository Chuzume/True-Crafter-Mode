#> asset:effect/0001.dragon_fight_buff/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/alias/1/given

playsound minecraft:entity.breeze.idle_ground neutral @a ~ ~ ~ 1 2
attribute @s fall_damage_multiplier base set 0
