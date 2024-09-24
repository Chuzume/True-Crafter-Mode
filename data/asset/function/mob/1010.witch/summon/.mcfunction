#> asset:mob/1010.witch/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1010/summon

# 元となるEntityを召喚する
    summon witch ~ ~ ~ {Tags:["MobInit"]}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true