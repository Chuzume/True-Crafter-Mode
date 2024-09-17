
# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 飛びかかり攻撃
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute unless score @s[tag=!TMCM.Leaping,tag=!ChuzStandstill] TMCM.Tick matches 30.. if entity @n[tag=TMCM.Target,distance=..10] run scoreboard players add @s TMCM.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s TMCM.Tick matches 30 run function true_crafter_mode:entity/mob/zombie/leap_attack/windup
        execute if score @s TMCM.Tick matches 30.. run scoreboard players add @s TMCM.Tick 1
    # 前方にブロックがあるならスコアをリセット
        execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
    # 実行
        execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 unless block ^ ^-1 ^2 #true_crafter_mode:no_collision run function true_crafter_mode:entity/mob/zombie/leap_attack/
    # 着地時しばらくこっちを見失うので、それを考慮した数値でリセット
        execute if score @s TMCM.Tick matches 60.. run scoreboard players reset @s TMCM.Tick

# オプションで封じられてなければブロック設置
    execute if score #t.hard_Gamerule TMCM.Gamerule.PlaceBlock matches 1 run function true_crafter_mode:entity/mob/common_moveset/place_block/

# 静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
    execute if entity @s[tag=ChuzOnGround,tag=ChuzStandstill] run scoreboard players add @s TMCM.Move.Dig 1

# ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 0 run scoreboard players reset @s TMCM.Move.Dig

# t.hard_Digが40になったらブロック粉々
    execute if entity @s[scores={TMCM.PosCheck.Y=0,TMCM.Move.Dig=40},tag=ChuzOnGround,tag=ChuzStandstill] facing entity @e[type=#true_crafter_mode:zombie_enemy,distance=..16,sort=nearest,limit=1] eyes rotated ~ 0 run function true_crafter_mode:enemy/common/break_block_forward
    scoreboard players reset @s[tag=!ChuzStandstill] TMCM.Move.Dig 

# 静止していてれば上下のブロック破壊
    execute if entity @s[scores={TMCM.Move.Dig=40,TMCM.PosCheck.Y=..-1},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!TMCM.Exception] unless block ~ ~2 ~ #true_crafter_mode:no_dig run setblock ~ ~2 ~ air destroy 
    execute if entity @s[scores={TMCM.Move.Dig=40,TMCM.PosCheck.Y=1..},tag=ChuzOnGround,tag=ChuzStandstill] if entity @a[distance=..7,tag=!TMCM.Exception] unless block ~ ~-1 ~ #true_crafter_mode:no_dig run setblock ~ ~-1 ~ air destroy 

# 採掘カウント削除
    scoreboard players reset @s[scores={TMCM.Move.Dig=40..}] TMCM.Move.Dig

# 段差飛び越え
    execute if entity @s[tag=ChuzOnGround] run function true_crafter_mode:enemy/common/jump_gap/tick

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# 泳ぐ
    execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
