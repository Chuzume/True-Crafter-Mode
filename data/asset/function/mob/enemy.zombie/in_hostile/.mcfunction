#> asset:mob/enemy.zombie/in_hostile/
#
# 敵対時のメソッド
#
# @within asset:mob/alias/enemy.in_hostile

# 飛びかかり攻撃
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute unless score @s[tag=!TMCM.Leaping,tag=!Standstill] General.Mob.Tick matches 30.. if entity @n[tag=TMCM.Target,distance=..10] run scoreboard players add @s General.Mob.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s General.Mob.Tick matches 30 run function asset:mob/enemy.zombie/in_hostile/windup
        execute if score @s General.Mob.Tick matches 30.. run scoreboard players add @s General.Mob.Tick 1
    # 前方にブロックがあるならスコアをリセット
        execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s General.Mob.Tick
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s General.Mob.Tick
    # 実行
        execute if entity @s[scores={General.Mob.Tick=40}] rotated ~ 0 run function asset:mob/enemy.zombie/in_hostile/leap
    # 着地時しばらくこっちを見失うので、それを考慮した数値でリセット
        execute if score @s General.Mob.Tick matches 80.. run scoreboard players reset @s General.Mob.Tick
