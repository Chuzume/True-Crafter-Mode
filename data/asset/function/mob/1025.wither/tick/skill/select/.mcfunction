#> asset:mob/1025.wither/tick/skill/select/
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

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -20

# 属性をランダムに選択
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/1025.wither/tick/skill/select/roll.m with storage asset:context this.Skill
