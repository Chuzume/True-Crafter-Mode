#> asset:mob/enemy.zombie_brute/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.in_hostile

# 飛びかかり攻撃
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute if entity @s[tag=!TMCM.Leaping] unless score @s General.Mob.Tick matches 30.. if entity @n[tag=TMCM.Target,distance=..16] run scoreboard players add @s General.Mob.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s General.Mob.Tick matches 30 run function asset:mob/enemy.zombie_brute/in_hostile/windup
        execute if score @s General.Mob.Tick matches 30.. run scoreboard players add @s General.Mob.Tick 1
    # 前方にブロックがあるならスコアをリセット
        execute rotated ~ 0 unless block ^ ^ ^1 #lib:no_collision run scoreboard players reset @s General.Mob.Tick
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #lib:no_collision run scoreboard players reset @s General.Mob.Tick
    # 実行
        execute if entity @s[scores={General.Mob.Tick=40}] rotated ~ 0 run function asset:mob/enemy.zombie_brute/in_hostile/leap

# 突進攻撃
    # 予備動作
        execute if score @s General.Mob.Tick matches 70 run function asset:mob/enemy.zombie_brute/in_hostile/windup
    # 開始
        execute if score @s General.Mob.Tick matches 80 run function asset:mob/enemy.zombie_brute/in_hostile/strong_walk/start
    # 効果中
        execute if score @s General.Mob.Tick matches 80..160 run function asset:mob/enemy.zombie_brute/in_hostile/strong_walk/tick
    # 終了
        execute if score @s General.Mob.Tick matches 160 run function asset:mob/enemy.zombie_brute/in_hostile/strong_walk/reset

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check
