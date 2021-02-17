#実行者が持っている"ChuzSpeed"の値によってスピード増減
#0 0 0を基準にして+0.1の位置にVector0をtp
execute in minecraft:overworld positioned 0.0 0.0 0.0 run tp @e[type=area_effect_cloud,tag=ChuzVector0,limit=1] ^ ^ ^-0.1
#chuz:storageのVectorにVector0のPosを保存 ( chuz:storage {Vector:[X,Y,Z]} )
data modify storage chuz:storage Vector set from entity @e[tag=ChuzVector0,limit=1] Pos
#XYZにchuz:storageのVectorから100倍して取得
execute store result score #X ChuzCalc run data get storage chuz:storage Vector[0] 10000
execute store result score #Y ChuzCalc run data get storage chuz:storage Vector[1] 10000
execute store result score #Z ChuzCalc run data get storage chuz:storage Vector[2] 10000
# それぞれにChuzSpeed掛ける
scoreboard players operation #X ChuzCalc *= @s ChuzSpeed
scoreboard players operation #Y ChuzCalc *= @s ChuzSpeed
scoreboard players operation #Z ChuzCalc *= @s ChuzSpeed
#chuz:storageのVectorにそれぞれを戻す
execute store result storage chuz:storage Vector[0] double -0.0001 run scoreboard players get #X ChuzCalc
execute store result storage chuz:storage Vector[1] double -0.0001 run scoreboard players get #Y ChuzCalc
execute store result storage chuz:storage Vector[2] double -0.0001 run scoreboard players get #Z ChuzCalc
#対象のMにchuz:storageのVectorをそのままセット
data modify entity @s Motion set from storage chuz:storage Vector
#リセット
data remove storage chuz:storage Vector
scoreboard players reset #X ChuzCalc
scoreboard players reset #Y ChuzCalc
scoreboard players reset #Z ChuzCalc