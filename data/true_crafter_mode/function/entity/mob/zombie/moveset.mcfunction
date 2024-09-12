# Tick加算
    scoreboard players add @s TrueCrafterMode.Tick 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TrueCrafterMode.Tick
    scoreboard players set @s[scores={TrueCrafterMode.Tick=40}] Chuz.Speed 10
    execute if entity @s[scores={TrueCrafterMode.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/leap_attack
    scoreboard players reset @s[scores={TrueCrafterMode.Tick=40..}] TrueCrafterMode.Tick

# オプションで封じられてなければブロック設置
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.PlaceBlock matches 1 run function true_crafter_mode:entity/mob/common_moveset/place_block/

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[tag=ChuzOnGround,tag=ChuzStandstill] run scoreboard players add @s TrueCrafterMode.Move.Dig 1

# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s TrueCrafterMode.Move.Dig

# t.hard_Digが40になったらブロック粉々
    execute if entity @s[scores={TrueCrafterMode.PosCheck.Y=0,TrueCrafterMode.Move.Dig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#true_crafter_mode:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function true_crafter_mode:enemy/common/break_block_forward
    scoreboard players reset @s[tag=!ChuzStandstill] TrueCrafterMode.Move.Dig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={TrueCrafterMode.Move.Dig=40,TrueCrafterMode.PosCheck.Y=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!TrueCrafterMode.Exception] unless block ~ ~2 ~ #true_crafter_mode:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={TrueCrafterMode.Move.Dig=40,TrueCrafterMode.PosCheck.Y=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!TrueCrafterMode.Exception] unless block ~ ~-1 ~ #true_crafter_mode:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!TrueCrafterMode.Exception] run scoreboard players reset @s TrueCrafterMode.PosCheck.Y 
    execute unless entity @a[distance=..16,tag=!TrueCrafterMode.Exception] run scoreboard players reset @s TrueCrafterMode.Move.Dig

# 採掘カウント削除
    scoreboard players reset @s[scores={TrueCrafterMode.Move.Dig=40..}] TrueCrafterMode.Move.Dig

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 泳ぐ
    execute if entity @a[distance=..30,tag=!TrueCrafterMode.Exception] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim
