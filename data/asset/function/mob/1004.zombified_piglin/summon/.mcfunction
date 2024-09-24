#> asset:mob/1004.zombified_piglin/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1004/summon

# 元となるEntityを召喚する
    summon zombified_piglin ~ ~ ~ {Tags:["MobInit"]}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true