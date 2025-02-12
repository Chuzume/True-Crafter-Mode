#> asset:mob/1028.wither_minion/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1028/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","Chuz.NonVanillaMob"]}
