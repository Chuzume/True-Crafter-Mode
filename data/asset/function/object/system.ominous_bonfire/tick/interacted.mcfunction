#> asset:object/system.ominous_bonfire/tick/interacted
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 触ったやつにダイアログを表示
    execute on target run dialog show @s asset:bonfire/main

# サウンド
    playsound minecraft:entity.breeze.land block @a ~ ~ ~ 0.5 0.5
    playsound minecraft:entity.breeze.land block @a ~ ~ ~ 0.5 0.5
