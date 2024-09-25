#> asset:mob/1013.spider/shoot/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1013/shoot

# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["TMCM.Projectile.Web","Chuz.Init"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    execute as @n[type=armor_stand,tag=Chuz.Init] at @s run function true_crafter_mode:entity/projectile/spider_web/init
    effect give @s slowness 1 9 true

# リセット
    scoreboard players reset @s 1013.Tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
