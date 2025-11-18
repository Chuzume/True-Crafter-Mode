#> asset:mob/enemy.wither/tick/phase_transition/summon_minion/vfx
#
# 召喚演出
#
# @within function asset:mob/enemy.wither/tick/phase_transition/summon_minion/

particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.7 0.3 0 10
particle minecraft:large_smoke ~ ~1.5 ~ 0.2 0.7 0.3 0 50
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1.5 0.5
