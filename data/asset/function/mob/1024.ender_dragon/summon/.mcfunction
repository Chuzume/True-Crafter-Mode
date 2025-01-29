#> asset:mob/1024.ender_dragon/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1024/summon

# 元となるEntityを召喚する
    summon ender_dragon ~ ~ ~ {Tags:["MobInit"]}
