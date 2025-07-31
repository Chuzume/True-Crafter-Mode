#> asset:mob/enemy.ender_dragon/tick/skill/select/cycle_reset
#
# 
#
# @within function asset:mob/enemy.ender_dragon/tick/in_hostile

# 演出
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.8

# 通常行動停止タグ付与
    tag @s add enemy.ender_dragon.InAction

# タグ付与
    tag @s add enemy.ender_dragon.Skill.Landing

# スキルリストを再生
    data modify storage asset:context this.Skill.List set value [0,1,2]

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -20
