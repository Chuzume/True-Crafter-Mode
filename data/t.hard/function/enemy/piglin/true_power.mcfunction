
# 敵対対象がいるならこのfunctionを使用する。真の力を見せてやる。

# 遠距離タイプはバックステップ
    execute if entity @s[tag=t.hardPiglin_Crossbow,tag=!t.hardPiglin_F.Resist,tag=!t.hardPiglin_Heal] run function t.hard:enemy/piglin/ranged

# 謎パワーで落下無効化
    execute if entity @s[nbt={OnGround:0b}] run function t.hard:enemy/common/fall_resist

# 近くにいる非敵対ピグリンに自身の敵を知らせる
    execute if entity @s[type=piglin] as @e[type=piglin,nbt={IsBaby:0b},predicate=!t.hard:battle_mode,distance=0.1..15] run function t.hard:enemy/piglin/enemy_report

# オプションで封じられておらず、なおかつ近くにウィザースケルトンがいないならブロック設置
    execute if score #t.hard_Gamerule t.hardGamerule2 matches 1 unless entity @e[type=wither_skeleton,distance=..30] run function t.hard:enemy/common/block_place_nether

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!t.hardException] run scoreboard players add @s t.hardDig 1
# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule t.hardGamerule1 matches 0 run scoreboard players reset @s t.hardDig
# t.hard_Digが30になったらブロック粉々
    execute if entity @s[scores={t.hardY_Check=0,t.hardDig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#t.hard:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function t.hard:enemy/common/break_block_forward
    scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] t.hardDig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={t.hardDig=30,t.hardY_Check=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!t.hardException] unless block ~ ~2 ~ #t.hard:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={t.hardDig=30,t.hardY_Check=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!t.hardException] unless block ~ ~-1 ~ #t.hard:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!t.hardException] run scoreboard players reset @s t.hardY_Check 
    execute unless entity @a[distance=..16,tag=!t.hardException] run scoreboard players reset @s t.hardDig

# 採掘カウント削除
    scoreboard players reset @s[scores={t.hardDig=30..}] t.hardDig

# 段差飛び越え
    function t.hard:enemy/common/jump_gap/tick