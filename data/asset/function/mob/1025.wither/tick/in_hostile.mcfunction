#> asset:mob/1025.wither/tick/in_hostile
#
# 
#
# @within function asset:mob/1025.wither/tick/

# ターゲット特定
    execute on target run tag @s[distance=..64] add TMCM.Target

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# スキル撃ってないときの動作
    execute if entity @s[tag=!1025.InAction] run function asset:mob/1025.wither/tick/base_move

# スキル撃ってみるか
    execute if score @s[tag=!1025.InAction] General.Mob.Tick matches 60 run function asset:mob/1025.wither/tick/skill/select/

# スキル発動
    execute if entity @s[tag=1025.InAction] run function asset:mob/1025.wither/tick/skill/branch

# 壁があったら止まる
    execute on vehicle at @s if function asset:mob/1025.wither/tick/check_collide run rotate @s ~ 0

# めり込んでたら登ってくる
    execute on vehicle at @s unless block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~0.1 ~

# ターゲット解除
    execute on target run tag @s[distance=..64] remove TMCM.Target
