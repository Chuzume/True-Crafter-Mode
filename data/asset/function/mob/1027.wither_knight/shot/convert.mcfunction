#> asset:mob/1027.wither_knight/shot/convert
#
# 
#
# @within function asset:mob/1027.wither_knight/shot/

# 出現した矢を今召喚したものとしてRegisterを行う準備
    tag @s add ObjectInit
    data modify storage asset:context init_to_natural_object set value true
# 弾速の指定
    data modify storage api: Argument.FieldOverride.Speed set value 1.5
# 召喚
    execute facing entity @n[tag=TMCM.Target,distance=..32] eyes run function api:object/summon.m {ID:2004}
