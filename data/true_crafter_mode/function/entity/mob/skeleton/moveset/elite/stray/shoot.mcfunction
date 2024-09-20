#> true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/shoot
#
# フロストからもらってきた氷結弾を撃つ
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/

# 最寄りの矢をキル
    kill @n[type=arrow]

# エイム用マーカーをターゲットの位置に設置
    execute as @n[tag=TMCM.Target] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}
    
# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["TMCM.Projectile.FrostBall","Chuz.Init"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:snowball",count:1}}]}
    execute as @n[type=armor_stand,tag=Chuz.Init] at @s run function true_crafter_mode:entity/projectile/frost_ball/init

# リセット
    scoreboard players reset @s TMCM.Tick

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1.5 2

# 射撃間隔縮めるためにデータ書き換え: FallFlyingは勝手に戻るので都合がいい
# ただしクールタイム中はやらない
#    execute unless score @s TMCM.Cooltime matches 0.. run data modify entity @s Motion[1] set value 0.5d

# クールタイムに入ってなければクールタイムのカウントを増やす
#    execute unless score @s TMCM.Cooltime matches 0.. run scoreboard players add @s TMCM.SubAction 1

# 数回ごとに休憩する
#    scoreboard players set @s[scores={TMCM.SubAction=2}] TMCM.Cooltime 100
#    scoreboard players reset @s[scores={TMCM.SubAction=2}] TMCM.SubAction