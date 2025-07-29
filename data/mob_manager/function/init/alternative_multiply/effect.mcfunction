#> mob_manager:init/alternative_multiply/effect
#
# 
#
# @within function mob_manager:init/alternative_multiply/

# エフェクト付与確率を抽選
    execute store result score $Effect Temporary run random value 1..10
    execute if score $Difficulty Global matches 4 if score $Effect Temporary matches 4.. run return fail
    execute if score $Difficulty Global matches 5 if score $Effect Temporary matches 7.. run return fail

# エフェクトを選ぶ
    execute store result score $Effect Temporary run random value 0..7
    execute if score $Effect Temporary matches 0 run effect give @s fire_resistance infinite 0
    execute if score $Effect Temporary matches 1 run effect give @s infested infinite 0
    execute if score $Effect Temporary matches 2 run effect give @s minecraft:oozing infinite 0
    execute if score $Effect Temporary matches 3 run effect give @s speed infinite 0
    execute if score $Effect Temporary matches 4 run effect give @s resistance infinite 0
    execute if score $Effect Temporary matches 5 run effect give @s wind_charged infinite 0
    execute if score $Effect Temporary matches 6 run effect give @s strength infinite 0
    execute if score $Effect Temporary matches 7 run effect give @s weaving infinite 0

# リセット
    scoreboard players reset $Effect Temporary
