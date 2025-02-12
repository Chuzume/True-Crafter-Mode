#> asset:mob/1025.wither/tick/skill/select/cycle_reset
#
# 
#
# @within function asset:mob/1025.wither/tick/in_hostile

# 演出
    particle trial_spawner_detection_ominous ~ ~2 ~ 0.7 1 0.7 0 35 force @a[distance=..32]
    particle entity_effect{color:[0.000,1.000,1.000,1.00]} ~ ~2 ~ 0.7 1 0.7 0.0 35 force @a[distance=..32]
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 3 2
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 3 0.5
    
# 通常行動停止タグ付与
    tag @s add 1025.InAction

# タグ付与
    tag @s add 1025.Skill.Summon

# スキルリストを再生
    data modify storage asset:context this.Skill.List set value [0,1,2]

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -20
