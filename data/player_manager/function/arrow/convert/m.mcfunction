#> player_manager:arrow/convert/m
#
# 
#
# @within function player_manager:arrow/convert/as_arrow

# 出現した矢を今召喚したものとしてRegisterを行う準備
    tag @s add ObjectInit
    data modify storage asset:context init_to_natural_object set value true
# 弾速の指定
    #data modify storage api: Argument.FieldOverride.Speed set value 1.5
# 召喚
    $function api:object/summon.m {ID:$(ObjectID)}
