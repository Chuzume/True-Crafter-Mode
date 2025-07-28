#> asset:object/projectile.zealot_bullet/summon/m
#
# 
#
# @within function asset:object/projectile.zealot_bullet/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),teleport_duration:1,Tags:["ObjectInit"],brightness:{sky:15,block:15},billboard:"center",item:{id:"minecraft:ender_pearl",count:1}}
