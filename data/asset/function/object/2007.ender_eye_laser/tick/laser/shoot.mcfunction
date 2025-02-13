#> asset:object/2007.ender_eye_laser/tick/laser/shoot
#
# 
#
# @within function asset:object/2007.ender_eye_laser/tick/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 2 1

# レーザー発射
    function asset:object/2007.ender_eye_laser/tick/laser/main
