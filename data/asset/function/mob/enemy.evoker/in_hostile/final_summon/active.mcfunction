#> asset:mob/enemy.evoker/in_hostile/final_summon/active
#
# 発動
#
# @within function asset:mob/enemy.evoker/in_hostile/final_summon/tick

# 自分の向きを取得
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Temporary.Rotation set from entity @s Rotation

# 乱数取得
    execute store result score $Random Temporary run random value 0..5

# デバッグ用
    #scoreboard players set $Random Temporary 5

# 乱数に応じて敵が登場
    execute if score $Random Temporary matches 0..1 run function asset:mob/enemy.evoker/in_hostile/final_summon/vindicator/
    execute if score $Random Temporary matches 2..3 run function asset:mob/enemy.evoker/in_hostile/final_summon/pillager/
    execute if score $Random Temporary matches 4 run function asset:mob/enemy.evoker/in_hostile/final_summon/ravager/
    execute if score $Random Temporary matches 5 run function asset:mob/enemy.evoker/in_hostile/final_summon/illusioner/

# リセット
    tag @s remove enemy.evoker.Using.Summon
    scoreboard players reset @s enemy.evoker.Summon
    data remove storage asset:temp Temporary
