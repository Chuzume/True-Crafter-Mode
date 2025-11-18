#> asset:mob/enemy.wither_knight/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit"],NoAI:true,Invulnerable:true}
