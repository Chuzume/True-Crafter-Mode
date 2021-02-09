#必要なスコアボード
    scoreboard objectives add Motion_Speed dummy
    scoreboard objectives add Motion_Power dummy
    scoreboard objectives add Armor_Check dummy
    scoreboard objectives add BulletRemain dummy
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

#Gamerule1　モブ破壊オンオフ
scoreboard objectives add T.Hard_Gamerule1 dummy
execute unless score #t.hard_Gamerule T.Hard_Gamerule1 = #t.hard_Gamerule T.Hard_Gamerule1 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule1 1
#Gamerule2　ゾンビブロック設置オンオフ
scoreboard objectives add T.Hard_Gamerule2 dummy
execute unless score #t.hard_Gamerule T.Hard_Gamerule2 = #t.hard_Gamerule T.Hard_Gamerule2 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule2 1
#Gamerule3　鉄ドアを壊すかどうか
scoreboard objectives add T.Hard_Gamerule3 dummy
execute unless score #t.hard_Gamerule T.Hard_Gamerule3 = #t.hard_Gamerule T.Hard_Gamerule3 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule3 0
#Gamerule4 クリーパーの爆発変更
scoreboard objectives add T.Hard_Gamerule4 dummy
execute unless score #t.hard_Gamerule T.Hard_Gamerule4 = #t.hard_Gamerule T.Hard_Gamerule4 run scoreboard players set #t.hard_Gamerule T.Hard_Gamerule4 1

# 定義
#declare objective Motion_Speed
#declare objective Armor_Check 
#declare objective BulletRemain 
#declare objective T.Hard_Moveset1 
#declare objective T.Hard_Moveset2 
#declare objective T.Hard_Moveset3 
#declare objective T.Hard_Torch 
#declare objective T.Hard_Door 
#declare objective T.Hard_Door2 
#declare objective T.Hard_Door3 
#declare objective T.Hard_Y_Check 
#declare objective T.Hard_Place 
#declare objective T.Hard_Dig 
#declare objective T.Hard_Health 
#declare objective T.Hard_Fa.Resist 
#declare objective T.Hard_Install 
#declare objective T.Hard_Diffculty 