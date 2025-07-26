#> asset:object/enemy_part.ender_zealot_eye/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# 位置調整
    summon interaction ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],width:0.1,height:-0.5}
    ride @s mount @n[type=interaction,tag=Init,distance=..0.5]
 
# 召喚者に乗る
    ride @n[type=interaction,tag=Init,distance=..0.5] mount @n[type=slime,tag=Mob.enemy.ender_zealot,tag=this,distance=..1]
    
# 終了
    execute on vehicle run tag @s remove Init
