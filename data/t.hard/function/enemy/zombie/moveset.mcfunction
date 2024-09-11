
# 謎パワーで落下無効化
    execute if entity @s[nbt={OnGround:0b}] run function t.hard:enemy/common/fall_resist

# 飛びかかり
    scoreboard players add @s t.hardMoveset1 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s t.hardMoveset1
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s t.hardMoveset1
    scoreboard players set @s[scores={t.hardMoveset1=40}] Chuz_Speed 10
    execute if entity @s[scores={t.hardMoveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    scoreboard players reset @s[scores={t.hardMoveset1=40..}] t.hardMoveset1

# 向き調整テスト
    #execute if entity @s run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=t.hardRotater,limit=1,sort=nearest] Rotation

# オプションで封じられてなければブロック設置
    execute if entity @s[type=!zombified_piglin] if score #t.hard_Gamerule t.hardGamerule2 matches 1 run function t.hard:enemy/common/block_place
    execute if entity @s[type=zombified_piglin] if score #t.hard_Gamerule t.hardGamerule2 matches 1 run function t.hard:enemy/common/block_place_nether

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[tag=ChuzOnGround,tag=ChuzStandstill] run scoreboard players add @s t.hardDig 1

# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule t.hardGamerule1 matches 0 run scoreboard players reset @s t.hardDig

# t.hard_Digが40になったらブロック粉々
    execute if entity @s[scores={t.hardY_Check=0,t.hardDig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
    scoreboard players reset @s[tag=!ChuzStandstill] t.hardDig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={t.hardDig=40,t.hardY_Check=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!t.hardException] unless block ~ ~2 ~ #t.hard:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={t.hardDig=40,t.hardY_Check=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!t.hardException] unless block ~ ~-1 ~ #t.hard:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!t.hardException] run scoreboard players reset @s t.hardY_Check 
    execute unless entity @a[distance=..16,tag=!t.hardException] run scoreboard players reset @s t.hardDig

# 採掘カウント削除
    scoreboard players reset @s[scores={t.hardDig=40..}] t.hardDig

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule t.hardGamerule1 matches 1 run function t.hard:enemy/common/break_door

# 泳ぐ
    execute if entity @a[distance=..30,tag=!t.hardException] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim
