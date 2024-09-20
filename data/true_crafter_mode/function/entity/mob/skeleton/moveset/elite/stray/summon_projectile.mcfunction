#> true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/summon_projectile
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/

# エイム用マーカーをターゲットの位置に設置
    execute as @n[tag=TMCM.Target] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}
    
# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["TMCM.Projectile.FrostBall","Chuz.Init"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:snowball",count:1}}]}
    execute as @n[type=armor_stand,tag=Chuz.Init] at @s run function true_crafter_mode:entity/projectile/frost_ball/init

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1.5 2

# スコア減らす
    scoreboard players remove @s TMCM.Action.Burst 1

# ディレイ設定
    scoreboard players set @s TMCM.Action.Delay 5