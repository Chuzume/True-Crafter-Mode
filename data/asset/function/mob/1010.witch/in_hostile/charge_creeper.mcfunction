#> asset:mob/1010.witch/in_hostile/charge_creeper
#
# 
#
# @within function asset:mob/1010.witch/in_hostile/

# 演出
    particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.3 0.5 0.3 0 25
    particle entity_effect{color:[0.0,0.9,1.0,1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 25
    playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1 2
    
# 対象のデータ置き換え
    data modify entity @s powered set value 1b
