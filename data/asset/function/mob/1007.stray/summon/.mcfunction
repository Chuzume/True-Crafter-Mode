#> asset:mob/1007.stray/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1007/summon

# 元となるEntityを召喚する
    summon stray ~ ~ ~ {Tags:["MobInit"]}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true