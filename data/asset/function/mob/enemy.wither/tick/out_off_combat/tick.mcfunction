#> asset:mob/enemy.wither/tick/out_off_combat/tick
#
# 
#
# @within function asset:mob/enemy.wither/tick/

# スコア加算
    scoreboard players add @s enemy.wither.OutOfCombat 1

# 一定値以上で消える
    execute if score @s enemy.wither.OutOfCombat matches 300 run function asset:mob/enemy.wither/tick/out_off_combat/vanish
