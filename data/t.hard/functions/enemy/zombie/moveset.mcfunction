
# 謎パワーで落下無効化
    execute if entity @s[nbt={OnGround:0b}] run function t.hard:enemy/common/fall_resist

# 前をチェックして飛びかかり
    execute positioned ^ ^ ^-0.5 facing entity @e[type=#t.hard:zombie_enemy,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T.Hard_Moveset1 1

# 前方にブロックがあればスコアリセット
    execute rotated ~ 0 unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset1
    execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t.hard:no_collision run scoreboard players reset @s T.Hard_Moveset1
    scoreboard players set @s[scores={T.Hard_Moveset1=40}] ChuzSpeed 10
    execute if entity @s[scores={T.Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t.hard:no_collision run function t.hard:enemy/common/leap_attack
    scoreboard players reset @s[scores={T.Hard_Moveset1=40..}] T.Hard_Moveset1

# 向き調整テスト
    #execute if entity @s run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=T.Hard_Rotater,limit=1,sort=nearest] Rotation

# オプションで封じられてなければブロック設置
    execute if entity @s[type=!zombified_piglin] if score #t.hard_Gamerule T.Hard_Gamerule2 matches 1 run function t.hard:enemy/common/enemy_block_place
    execute if entity @s[type=zombified_piglin] if score #t.hard_Gamerule T.Hard_Gamerule2 matches 1 run function t.hard:enemy/common/enemy_block_place_nether

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!T.Hard_Exception] run scoreboard players add @s T.Hard_Dig 1

# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 0 run scoreboard players reset @s T.Hard_Dig

# t.hard_Digが40になったらブロック粉々
    execute if entity @s[scores={T.Hard_Y_Check=0,T.Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
    scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] T.Hard_Dig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={T.Hard_Dig=40,T.Hard_Y_Check=..-1},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T.Hard_Exception] unless block ~ ~2 ~ #t.hard:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={T.Hard_Dig=40,T.Hard_Y_Check=1..},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T.Hard_Exception] unless block ~ ~-1 ~ #t.hard:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!T.Hard_Exception] run scoreboard players reset @s T.Hard_Y_Check 
    execute unless entity @a[distance=..16,tag=!T.Hard_Exception] run scoreboard players reset @s T.Hard_Dig

# 採掘カウント削除
    scoreboard players reset @s[scores={T.Hard_Dig=40..}] T.Hard_Dig

# 段差飛び越え
    function t.hard:enemy/common/jump_gap

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule T.Hard_Gamerule1 matches 1 run function t.hard:enemy/common/break_door

# 泳ぐ
    execute if entity @a[distance=..30,tag=!T.Hard_Exception] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t.hard:liquid run function t.hard:enemy/common/swim
