#> asset:mob/1005.skeleton/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1005/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit"]}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true