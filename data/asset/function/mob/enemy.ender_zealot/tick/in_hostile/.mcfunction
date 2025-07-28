#> asset:mob/enemy.ender_zealot/tick/in_hostile/
#
# 近くに人がいるときの行動
#
# @within function asset:mob/enemy.ender_zealot/tick/

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# 予備動作
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/enemy.ender_zealot/tick/in_hostile/skill/windup

# 一定以上で攻撃してくる
    execute if score @s General.Mob.Tick matches 60..100 run function asset:mob/enemy.ender_zealot/tick/in_hostile/skill/shot/

# リセット
    execute if score @s General.Mob.Tick matches 140.. run function asset:mob/enemy.wither/tick/reset/
