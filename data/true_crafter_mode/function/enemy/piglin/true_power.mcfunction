
# 敵対対象がいるならこのfunctionを使用する。真の力を見せてやる。

# 遠距離タイプはバックステップ
    execute if entity @s[tag=T.HardPiglin_Crossbow,tag=!T.HardPiglin_F.Resist,tag=!T.HardPiglin_Heal] run function true_crafter_mode:enemy/piglin/ranged

# 謎パワーで落下無効化
    execute if entity @s[nbt={OnGround:0b}] run function true_crafter_mode:enemy/common/fall_resist

# 近くにいる非敵対ピグリンに自身の敵を知らせる
    execute if entity @s[type=piglin] as @e[type=piglin,nbt={IsBaby:0b},predicate=!true_crafter_mode:battle_mode,distance=0.1..15] run function true_crafter_mode:enemy/piglin/enemy_report

# オプションで封じられておらず、なおかつ近くにウィザースケルトンがいないならブロック設置
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.PlaceBlock matches 1 unless entity @e[type=wither_skeleton,distance=..30] run function true_crafter_mode:enemy/common/block_place_nether

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!T.HardException] run scoreboard players add @s TrueCrafterMode.Move.Dig 1
# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TrueCrafterMode.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s TrueCrafterMode.Move.Dig
# t.hard_Digが30になったらブロック粉々
    execute if entity @s[scores={TrueCrafterMode.PosCheck.Y=0,TrueCrafterMode.Move.Dig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#true_crafter_mode:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function true_crafter_mode:enemy/common/break_block_forward
    scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] TrueCrafterMode.Move.Dig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={TrueCrafterMode.Move.Dig=30,TrueCrafterMode.PosCheck.Y=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!T.HardException] unless block ~ ~2 ~ #true_crafter_mode:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={TrueCrafterMode.Move.Dig=30,TrueCrafterMode.PosCheck.Y=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!T.HardException] unless block ~ ~-1 ~ #true_crafter_mode:no_dig run setblock ~ ~-1 ~ air destroy 

# 付近にプレイヤーがいなければY座標を消去
    execute unless entity @a[distance=..16,tag=!T.HardException] run scoreboard players reset @s TrueCrafterMode.PosCheck.Y 
    execute unless entity @a[distance=..16,tag=!T.HardException] run scoreboard players reset @s TrueCrafterMode.Move.Dig

# 採掘カウント削除
    scoreboard players reset @s[scores={TrueCrafterMode.Move.Dig=30..}] TrueCrafterMode.Move.Dig

# 段差飛び越え
    function true_crafter_mode:enemy/common/jump_gap/tick