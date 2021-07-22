
# 実行者が持っている"Chuz_Speed"の値によってスピード増減
# 0 0 0を基準にして+0.1の位置にVector0をtp
    execute in minecraft:overworld positioned 0.0 0.0 0.0 run tp @e[type=area_effect_cloud,tag=ChuzVector0,limit=1] ^ ^ ^-0.1

# chuz:storageのVectorにVector0のPosを保存 ( chuz:storage {Vector:[X,Y,Z]} )
    data modify storage chuz:storage Vector set from entity @e[tag=ChuzVector0,limit=1] Pos

# XYZにchuz:storageのVectorから100倍して取得
    execute store result score #X Chuz_Calc run data get storage chuz:storage Vector[0] 10000
    execute store result score #Z Chuz_Calc run data get storage chuz:storage Vector[2] 10000

# それぞれにChuz_Speed掛ける
    scoreboard players operation #X Chuz_Calc *= @s Chuz_Speed
    scoreboard players operation #Z Chuz_Calc *= @s Chuz_Speed

# chuz:storageのVectorにそれぞれを戻す
    execute store result storage chuz:storage Vector[0] double -0.0001 run scoreboard players get #X Chuz_Calc
    execute store result storage chuz:storage Vector[2] double -0.0001 run scoreboard players get #Z Chuz_Calc

# 対象のMにchuz:storageのVectorをそのままセット
    data modify entity @s Motion[0] set from storage chuz:storage Vector[0]
    data modify entity @s Motion[2] set from storage chuz:storage Vector[2]

# リセット
    data remove storage chuz:storage Vector
    scoreboard players reset #X Chuz_Calc
    scoreboard players reset #Z Chuz_Calc