#> asset:object/2007.ender_eye_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2007/init

# 出現演出
    particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 3 1.5
