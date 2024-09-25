#> asset:object/1001.spider_web/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1001/init

# 見た目の設定
    summon item_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Init","AllowProcessingCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:cobweb",count:1}}
    ride @n[type=item_display,tag=Chuz.Init] mount @s
    execute on passengers if entity @n[type=item_display,tag=Chuz.Init] run tag @s remove Chuz.Init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
