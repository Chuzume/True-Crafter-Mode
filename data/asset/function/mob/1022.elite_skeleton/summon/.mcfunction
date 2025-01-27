#> asset:mob/1022.elite_skeleton/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1022/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit","Chuz.NonVanillaMob"]}
