
# 時たま使い回されるスコアボード
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy

    scoreboard objectives add ChuzF.Check_X dummy
    scoreboard objectives add ChuzF.Check_Z dummy
    scoreboard objectives add ChuzF.Check_Y dummy

    scoreboard objectives add Chuz_Const dummy
    scoreboard objectives add Chuz_Global dummy
    scoreboard objectives add Chuz_Temporary dummy
    scoreboard objectives add Chuz_Random dummy
    scoreboard objectives add Chuz_Speed dummy
    scoreboard objectives add Chuz_Calc dummy
    scoreboard objectives add BulletRemain dummy

# 必要なスコアボード
    scoreboard objectives add Armor_Check dummy
    scoreboard objectives add TrueCrafterMode.Tick dummy
    scoreboard objectives add t.hardMoveset2 dummy
    scoreboard objectives add t.hardMoveset3 dummy
    scoreboard objectives add t.hardTorch dummy
    scoreboard objectives add t.hardDoor dummy
    scoreboard objectives add t.hardDoor2 dummy
    scoreboard objectives add t.hardDoor3 dummy
    scoreboard objectives add t.hardY_Check dummy
    scoreboard objectives add t.hardPlace dummy
    scoreboard objectives add t.hardDig dummy
    scoreboard objectives add t.hardHealth dummy
    scoreboard objectives add t.hardFa.Resist dummy
    scoreboard objectives add t.hardInstall dummy
    scoreboard objectives add t.hardDiffculty dummy
    scoreboard objectives add t.hardRecursion dummy
    scoreboard objectives add t.hardRange dummy
    scoreboard objectives add t.hardSpeed dummy

# Const定義
    scoreboard players set $31743 Chuz_Const 31743
    scoreboard players set $65535 Chuz_Const 65535
    scoreboard players set $1 Chuz_Const 1
    scoreboard players set $2 Chuz_Const 2
    scoreboard players set $3 Chuz_Const 3
    scoreboard players set $4 Chuz_Const 4
    scoreboard players set $5 Chuz_Const 5
    scoreboard players set $6 Chuz_Const 6
    scoreboard players set $7 Chuz_Const 7
    scoreboard players set $8 Chuz_Const 8
    scoreboard players set $9 Chuz_Const 9
    scoreboard players set $10 Chuz_Const 10

# 乱数の種
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Chuz_Random"]}
    execute store result score $Random.Base Chuz_Global run data get entity @e[type=area_effect_cloud,tag=Chuz_Random,limit=1] UUID[1]
    execute store result score $Random.Curray Chuz_Global run data get entity @e[type=area_effect_cloud,tag=Chuz_Random,limit=1] UUID[3]
    kill @e[type=area_effect_cloud,tag=Chuz_Random,limit=1]

# フォースロード
    forceload add 0 0 0 0

# ChuzVector0が存在しなければ召喚
    execute unless entity @e[type=area_effect_cloud,tag=ChuzVector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["ChuzVector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

# Gamerule1 モブ破壊オンオフ
    scoreboard objectives add T.HardGamerule1 dummy
    execute unless score #t.hard_Gamerule T.HardGamerule1 = #t.hard_Gamerule T.HardGamerule1 run scoreboard players set #t.hard_Gamerule T.HardGamerule1 1

# Gamerule2 ゾンビブロック設置オンオフ
    scoreboard objectives add T.HardGamerule2 dummy
    execute unless score #t.hard_Gamerule T.HardGamerule2 = #t.hard_Gamerule T.HardGamerule2 run scoreboard players set #t.hard_Gamerule T.HardGamerule2 1

# Gamerule3 鉄ドアを壊すかどうか
    scoreboard objectives add T.HardGamerule3 dummy
    execute unless score #t.hard_Gamerule T.HardGamerule3 = #t.hard_Gamerule T.HardGamerule3 run scoreboard players set #t.hard_Gamerule T.HardGamerule3 0

# Gamerule4 クリーパーの爆発変更
    scoreboard objectives add T.HardGamerule4 dummy
    execute unless score #t.hard_Gamerule T.HardGamerule4 = #t.hard_Gamerule T.HardGamerule4 run scoreboard players set #t.hard_Gamerule T.HardGamerule4 1

#declare tag ChuzVector0
#declare tag Chuz_Random
#declare tag ChuzOnGround
#declare tag ChuzHurtEntity
#declare tag ChuzHurtEntity9s
#declare tag ChuzStandstill
#declare tag T.HardAlreadyInit
#declare tag T.HardPoisonBall
#declare tag T.HardPoisonBallInit
#declare tag T.HardException
#declare tag T.HardIgnited
#declare tag T.HardStealthMove
#declare tag 
