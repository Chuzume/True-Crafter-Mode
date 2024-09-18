#> true_crafter_mode:entity/mob/evoker/final_summon/start
#
# 召喚スタート
#
# @within function true_crafter_mode:entity/mob/evoker/moveset

# 付近のヴェックスが息絶える
    execute as @e[type=vex,distance=..10,limit=8] run kill @s 

# 構えを取る
    data modify entity @s SpellTicks set value 60
    effect give @s slowness 5 10 true

# 演出
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 2

# タグ付与
    tag @s add TMCM.Evoker.Summoning
    tag @s add TMCM.Evoker.SummonUsed