#> asset:object/1002.poison_ball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1002/init

# 見た目の設定
    summon item_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Init","AllowProcessingCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:slime_ball",count:1}}

# Super
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
