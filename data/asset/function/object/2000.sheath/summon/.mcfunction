#> asset:object/2000.sheath/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2000/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,Tags:["ObjectInit"]}
