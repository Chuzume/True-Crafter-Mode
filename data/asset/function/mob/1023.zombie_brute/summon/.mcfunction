#> asset:mob/1023.zombie_brute/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1023/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","Chuz.NonVanillaMob"]}
