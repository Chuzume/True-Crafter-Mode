#> asset:object/projectile.ender_eye_laser/tick/laser/shoot
#
# 
#
# @within function asset:object/projectile.ender_eye_laser/tick/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1.3
    playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 4 1
    playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 4 1

# レーザー発射
    function asset:object/projectile.ender_eye_laser/tick/laser/main
