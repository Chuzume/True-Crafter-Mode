#> asset:mob/1024.ender_dragon/tick/skill/select/
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/in_hostile

# 演出
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 20 1.5
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 20 1.7
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 20 0.5
    
# 通常行動停止タグ付与
    tag @s add 1024.InAction

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -20

# デバッグ用、常にリストを満タンにする
#    data modify storage asset:context this.Skill.List set value [0,1,2]
    say 1
# 技をランダムに選択
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/1024.ender_dragon/tick/skill/select/roll.m with storage asset:context this.Skill
