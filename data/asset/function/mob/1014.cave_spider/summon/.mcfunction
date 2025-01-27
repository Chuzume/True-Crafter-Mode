#> asset:mob/1014.cave_spider/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1014/summon

# 元となるEntityを召喚する
    summon cave_spider ~ ~ ~

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
