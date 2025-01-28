#> asset:mob/1019.evoker/in_hostile/final_summon/active
#
# 発動
#
# @within function asset:mob/1019.evoker/in_hostile/final_summon/tick

# 自分の向きを取得
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    data modify storage chuz:storage Temporary.Rotation set from entity @s Rotation

# 疑似乱数取得
    execute store result score $Random Chuz.Temporary run function true_crafter_mode:random

# 乱数取得
    execute store result score $Random Chuz.Temporary run random value 0..5

# 乱数に応じて敵が登場
    execute if score $Random Chuz.Temporary matches 0..1 run function asset:mob/1019.evoker/in_hostile/final_summon/vindicator/
    execute if score $Random Chuz.Temporary matches 2..3 run function asset:mob/1019.evoker/in_hostile/final_summon/pillager/
    execute if score $Random Chuz.Temporary matches 4 run function asset:mob/1019.evoker/in_hostile/final_summon/ravager/
    execute if score $Random Chuz.Temporary matches 5 run function asset:mob/1019.evoker/in_hostile/final_summon/illusioner/

# リセット
    tag @s remove 1019.Using.Summon
    scoreboard players reset @s 1019.Tick.Summon
    data remove storage chuz:storage Temporary
