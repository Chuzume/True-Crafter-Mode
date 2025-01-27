#> asset:mob/1012.enderman/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1012/summon

# 元となるEntityを召喚する
    summon enderman ~ ~ ~

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
