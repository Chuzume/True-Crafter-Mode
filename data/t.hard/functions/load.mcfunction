
# 時たま使い回されるスコアボード
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy

    scoreboard objectives add ChuzF.Check_X dummy
    scoreboard objectives add ChuzF.Check_Z dummy
    scoreboard objectives add ChuzF.Check_Y dummy

    scoreboard objectives add ChuzConst dummy
    scoreboard objectives add ChuzGlobal dummy
    scoreboard objectives add ChuzTemporary dummy
    scoreboard objectives add ChuzRandom dummy
    scoreboard objectives add ChuzSpeed dummy
    scoreboard objectives add ChuzCalc dummy
    scoreboard objectives add BulletRemain dummy

# 必要なスコアボード
    scoreboard objectives add Armor_Check dummy
    scoreboard objectives add T.Hard_Moveset1 dummy
    scoreboard objectives add T.Hard_Moveset2 dummy
    scoreboard objectives add T.Hard_Moveset3 dummy
    scoreboard objectives add T.Hard_Torch dummy
    scoreboard objectives add T.Hard_Door dummy
    scoreboard objectives add T.Hard_Door2 dummy
    scoreboard objectives add T.Hard_Door3 dummy
    scoreboard objectives add T.Hard_Y_Check dummy
    scoreboard objectives add T.Hard_Place dummy
    scoreboard objectives add T.Hard_Dig dummy
    scoreboard objectives add T.Hard_Health dummy
    scoreboard objectives add T.Hard_Fa.Resist dummy
    scoreboard objectives add T.Hard_Install dummy
    scoreboard objectives add T.Hard_Diffculty dummy

# Const定義
    scoreboard players set $31743 ChuzConst 31743
    scoreboard players set $65535 ChuzConst 65535
    scoreboard players set $4 ChuzConst 4

# 乱数の種
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ChuzRandom"]}
    execute store result score $Random.Base ChuzGlobal run data get entity @e[type=area_effect_cloud,tag=ChuzRandom,limit=1] UUID[1]
    execute store result score $Random.Curray ChuzGlobal run data get entity @e[type=area_effect_cloud,tag=ChuzRandom,limit=1] UUID[3]
    kill @e[type=area_effect_cloud,tag=ChuzRandom,limit=1]

# フォースロード
    forceload add 0 0 0 0

# ChuzVector0が存在しなければ召喚
    execute unless entity @e[type=area_effect_cloud,tag=ChuzVector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["ChuzVector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

# Gamerule1 モブ破壊オンオフ
    scoreboard objectives add T.Hard_Gamerule1 dummy
    execute unless score #t.hard_Gamerule T.Hard_Gamerule1 = #t.hard_Gamerule T.Hard_Gamerule1 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule1 1

# Gamerule2 ゾンビブロック設置オンオフ
    scoreboard objectives add T.Hard_Gamerule2 dummy
    execute unless score #t.hard_Gamerule T.Hard_Gamerule2 = #t.hard_Gamerule T.Hard_Gamerule2 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule2 1

# Gamerule3 鉄ドアを壊すかどうか
    scoreboard objectives add T.Hard_Gamerule3 dummy
    execute unless score #t.hard_Gamerule T.Hard_Gamerule3 = #t.hard_Gamerule T.Hard_Gamerule3 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule3 0

# Gamerule4 クリーパーの爆発変更
    scoreboard objectives add T.Hard_Gamerule4 dummy
    execute unless score #t.hard_Gamerule T.Hard_Gamerule4 = #t.hard_Gamerule T.Hard_Gamerule4 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule4 1
