#> asset:mob/enemy.bogged/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon bogged ~ ~ ~

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
