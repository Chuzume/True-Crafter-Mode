# 実行者が持っている"Chuz.Speed"の値によってスピード増減
# 0 0 0を基準にして+0.1の位置にVector0をtp
    execute in overworld positioned 0.0 0.0 0.0 run tp @e[type=marker,tag=Chuz.Vector0,limit=1] ^ ^ ^-0.1

# chuz:storageのVectorにVector0のPosを保存 ( chuz:storage {Vector:[X,Y,Z]} )
    data modify storage chuz:storage Vector set from entity @e[type=marker,tag=Chuz.Vector0,limit=1] Pos

# XYZにchuz:storageのVectorから100倍して取得
    execute store result score $X Chuz.Calc run data get storage chuz:storage Vector[0] 10000
    execute store result score $Y Chuz.Calc run data get storage chuz:storage Vector[1] 10000
    execute store result score $Z Chuz.Calc run data get storage chuz:storage Vector[2] 10000

# それぞれにChuz.Speed掛ける
    scoreboard players operation $X Chuz.Calc *= @s Chuz.Speed
    scoreboard players operation $Y Chuz.Calc *= @s Chuz.Speed
    scoreboard players operation $Z Chuz.Calc *= @s Chuz.Speed

# chuz:storageのVectorにそれぞれを戻す
    execute store result storage chuz:storage Vector[0] double -0.0001 run scoreboard players get $X Chuz.Calc
    execute store result storage chuz:storage Vector[1] double -0.0001 run scoreboard players get $Y Chuz.Calc
    execute store result storage chuz:storage Vector[2] double -0.0001 run scoreboard players get $Z Chuz.Calc

# 対象のMにchuz:storageのVectorをそのままセット
    data modify entity @s Motion set from storage chuz:storage Vector

# リセット
    data remove storage chuz:storage Vector
    scoreboard players reset $X Chuz.Calc
    scoreboard players reset $Y Chuz.Calc
    scoreboard players reset $Z Chuz.Calc