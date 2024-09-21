
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
        execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 run function true_crafter_mode:entity/mob/zombie/leap_attack/
    # 着地時しばらくこっちを見失うので、それを考慮した数値でリセット
        execute if score @s TMCM.Tick matches 60.. run scoreboard players reset @s TMCM.Tick

# オプションで封じられてなければブロック設置
    execute if score #t.hard_Gamerule TMCM.Gamerule.PlaceBlock matches 1 run function true_crafter_mode:entity/mob/common_moveset/place_block/

# ドア破壊、ただしオプションで封じられてる場合を除く
    execute if score #t.hard_Gamerule TMCM.Gamerule.BlockDestroy matches 1 run function true_crafter_mode:enemy/common/break_door

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
