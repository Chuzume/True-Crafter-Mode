#> asset:object/system.ominous_bonfire/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# 変なとこに置いたなら、そこを壊してしまおう
    setblock ~ ~ ~ air destroy

# ビジュアルその1を召喚して乗せる
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/system.ominous_bonfire/init/m with storage asset:temp Args
    data remove storage asset:temp Args
    ride @n[type=item_display,tag=Init,distance=..0.5] mount @s
    execute on passengers run tag @s remove Init

# ビジュアルその2を召喚する
    #summon item_display ~ ~ ~ {teleport_duration:59,Tags:["system.ominous_bonfire.Skull","Init","AutoKillWhenDieVehicle","ProcessCommonTag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:skeleton_skull",count:1}}
    #ride @n[type=item_display,tag=Init,distance=..0.5] mount @s
    #execute on passengers run tag @s remove Init

# 土台を召喚する
    setblock ~ ~ ~ campfire[lit=true]
#    execute if score $Difficulty Global matches 0 run setblock ~ ~ ~ campfire[lit=false]
#    execute if score $Difficulty Global matches 1..2 run setblock ~ ~ ~ campfire[lit=true]
#    execute if score $Difficulty Global matches 3..4 run setblock ~ ~ ~ soul_campfire[lit=true]
