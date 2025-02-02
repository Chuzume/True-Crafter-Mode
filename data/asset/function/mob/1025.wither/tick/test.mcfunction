#> asset:mob/1025.wither/tick/test
#
# 
#
# @within function asset:mob/1025.wither/tick/

tellraw @p {"nbt":"this.Skill.List","storage":"asset:context"}

# 要素を番号で指定して削除
    data remove storage asset:context this.Skill.List[0]

tellraw @p {"nbt":"this.Skill.List","storage":"asset:context"}
