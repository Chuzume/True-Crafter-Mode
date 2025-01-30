#> asset:mob/1025.wither/tick/skill/select/
#
# 
#
# @within function asset:mob/1025.wither/tick/in_hostile

# 通常行動停止タグ付与
    tag @s add 1025.InAction

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -10

tellraw @p {"nbt":"this","storage":"asset:context"}

# 属性をランダムに選択
    # ストレージの要素数を取得
        execute store result storage asset:context this.Skill.Count int 1 run data get storage asset:context this.Skill.List
    # 取得した要素数を使ってランダムに技を選ぶ
        function asset:mob/1025.wither/tick/skill/select/roll.m with storage asset:context this.Skill
