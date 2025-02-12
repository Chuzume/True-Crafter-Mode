#> asset:object/2006.dragon_platform/tick/place/
#
# 置く足場とその向きを決定する
#
# @within function asset:object/2006.dragon_platform/tick/

# どのタイプの足場を置くかを決定するデータ
    execute store result storage asset:temp Platform.Type int 1 run random value 1..5

# 向き決定のために使うデータ
    execute store result storage asset:temp Platform.Rotation int 1 run random value 1..4

# 演出
    playsound minecraft:block.respawn_anchor.set_spawn neutral @a ~ ~ ~ 2 2
    particle dust{color:[0.8,0.2,1.0],scale:2.0} ~ ~ ~ 1.5 1.5 1.5 0 50 force @a[distance=..32]

# 設置
    function asset:object/2006.dragon_platform/tick/place/place.m with storage asset:temp Platform

# リセット
    data remove storage asset:temp Platform.Rotation
