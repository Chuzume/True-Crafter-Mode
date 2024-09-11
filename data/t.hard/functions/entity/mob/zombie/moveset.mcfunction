# Tick加算
    scoreboard players add @s TrueCrafterMode.Tick 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
    scoreboard players set @s[scores={TrueCrafterMode.Tick=40}] Chuz_Speed 10
    execute if entity @s[scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick

# オプションで封じられてなければブロック設置
    execute if score #t.hard_Gamerule t.hardGamerule2 matches 1 run function t.hard:entity/mob/common_moveset/place_block/

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[tag=ChuzOnGround,tag=ChuzStandstill] run scoreboard players add @s T.HardDig 1

# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule T.HardGamerule1 matches 0 run scoreboard players reset @s T.HardDig

# t.hard_Digが40になったらブロック粉々
    execute if entity @s[scores={T.HardY_Check=0,T.HardDig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
    scoreboard players reset @s[tag=!ChuzStandstill] T.HardDig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={T.HardDig=40,T.HardY_Check=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!T.HardException] unless block ~ ~2 ~ #t.hard:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={T.HardDig=40,T.HardY_Check=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!T.HardException] unless block ~ ~-1 ~ #t.hard:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!T.HardException] run scoreboard players reset @s T.HardY_Check 
    execute unless entity @a[distance=..16,tag=!T.HardException] run scoreboard players reset @s T.HardDig

# 採掘カウント削除
    scoreboard players reset @s[scores={T.HardDig=40..}] T.HardDig

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function t.hard:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule T.HardGamerule1 matches 1 run function t.hard:enemy/common/break_door

# 泳ぐ
    execute if entity @a[distance=..30,tag=!T.HardException] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim
