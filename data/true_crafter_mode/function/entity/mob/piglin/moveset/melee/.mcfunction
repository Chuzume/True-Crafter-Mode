#> true_crafter_mode:entity/mob/piglin/moveset/melee/
#
# 近接持ちの固有動作
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/

# 突進攻撃
    # 付近にプレイヤーがいたらスコア加算
        execute unless score @s[tag=!Standstill] TMCM.Tick matches 30.. if entity @a[distance=..10] run scoreboard players add @s TMCM.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s TMCM.Tick matches 30 run function true_crafter_mode:entity/mob/piglin/moveset/melee/windup
        execute if score @s TMCM.Tick matches 30.. run scoreboard players add @s TMCM.Tick 1
    # 前方にブロックがあるならスコアをリセット
        execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
    # 実行
        execute if score @s TMCM.Tick matches 40 run function true_crafter_mode:entity/mob/common_moveset/leap_attack/
        execute if score @s TMCM.Tick matches 80.. run scoreboard players reset @s TMCM.Tick
