#> mob_manager:init/alternative_enchanced/
#
# 
#
# @within function core:tick/

# Attributeを変更
    execute if score $Difficulty Global matches 4 store result storage asset:temp MaxHealth double 1 run attribute @s max_health base get 1.25
    execute if score $Difficulty Global matches 5 store result storage asset:temp MaxHealth double 1 run attribute @s max_health base get 1.5
    function mob_manager:init/alternative_multiply/max_health.m with storage asset:temp

# ヘルス取得
    execute if score $Difficulty Global matches 4 store result entity @s Health float 1 run data get entity @s Health 1.25
    execute if score $Difficulty Global matches 5 store result entity @s Health float 1 run data get entity @s Health 1.5

# タグ付与
    tag @s add AlreadyEnhancedMob

# リセット
    data remove storage asset:temp MaxHealth
