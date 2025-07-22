#> asset:object/2000.sheath/summon/debug
#
# 
#

# データ指定
    data modify storage api: Argument.FieldOverride.Item set value {id:"minecraft:iron_axe",count:1}
    data modify storage api: Argument.FieldOverride.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]}
# 召喚
    function api:object/summon.m {ID:2000}
