#> asset:effect/0001.dragon_fight_buff/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/alias/1/end

playsound minecraft:entity.breeze.idle_air neutral @a ~ ~ ~ 1 0.5
attribute @s fall_damage_multiplier base reset
effect clear @s jump_boost
