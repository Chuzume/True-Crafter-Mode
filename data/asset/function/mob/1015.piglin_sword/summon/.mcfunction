#> asset:mob/1015.piglin_sword/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1015/summon

# 元となるEntityを召喚する
    summon piglin ~ ~ ~ {Tags:["MobInit"]}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true