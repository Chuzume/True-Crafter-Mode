#> asset:mob/enemy.ender_dragon/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon ender_dragon ~ ~ ~ {Tags:["MobInit"]}
