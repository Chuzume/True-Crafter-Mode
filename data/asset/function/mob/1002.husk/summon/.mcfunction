#> asset:mob/1002.husk/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1002/summon

# 元となるEntityを召喚する
    summon husk ~ ~ ~

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
