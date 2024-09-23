#> true_crafter_mode:entity/mob/skeleton/moveset/subspecies/wither_skeleton/shoot
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/subspecies/wither_skeleton/

# 最寄りの矢にタグ付与
    execute as @n[type=arrow,tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/projectile/elite_arrow/init

# 演出
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1.5 2

# 射撃間隔縮めるためにデータ書き換え: FallFlyingは勝手に戻るので都合がいい
# ただしクールタイム中はやらない
    execute unless score @s TMCM.Cooltime matches 0.. run data modify entity @s FallFlying set value true

# クールタイムに入ってなければクールタイムのカウントを増やす
    execute unless score @s TMCM.Cooltime matches 0.. run scoreboard players add @s TMCM.SubAction 1

# 数回ごとに休憩すると同時に接近してくる
    execute if score @s TMCM.SubAction matches 3 run function true_crafter_mode:entity/mob/skeleton/moveset/subspecies/wither_skeleton/leap
    scoreboard players set @s[scores={TMCM.SubAction=3}] TMCM.Cooltime 100
    scoreboard players reset @s[scores={TMCM.SubAction=3}] TMCM.SubAction