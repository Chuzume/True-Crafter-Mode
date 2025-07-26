#> asset:mob/enemy.ender_dragon/tick/skill/landing/
#
# 着地する
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/branch

# ポータルを目指すために突進開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/enemy.ender_dragon/tick/skill/landing/start

# DragonPhaseが6になったらTick加算を再開
    tag @s[nbt={DragonPhase:6}] remove enemy.ender_dragon.TickLock

# 着地中の処理
    execute if score @s General.Mob.Tick matches 2..100 run function asset:mob/enemy.ender_dragon/tick/skill/landing/landed/tick

# 飛び立つ
    execute if score @s General.Mob.Tick matches 160 run data modify entity @s DragonPhase set value 4

# デバッグ用、この処理をループ
#    execute if score @s General.Mob.Tick matches 180.. run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 160 run tag @s remove enemy.ender_dragon.CycleReset
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/enemy.ender_dragon/tick/reset
