#> asset:object/0002.abstract_gravity_projectile/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2/summon

# 元となるEntityを召喚する
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["ObjectInit"],attributes:[{id:"minecraft:scale",base:0.0625}]}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
