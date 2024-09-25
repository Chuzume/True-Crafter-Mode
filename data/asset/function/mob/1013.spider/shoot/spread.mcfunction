#> asset:mob/1013.spider/shoot/spread
#
# 近距離時
#
# @within function asset:mob/1013.spider/shoot/

# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Motion:[0.0,0.7,0.0],Tags:["TMCM.Projectile.Web"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Motion:[0.5,0.7,0.5],Tags:["TMCM.Projectile.Web"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Motion:[-0.5,0.7,-0.5],Tags:["TMCM.Projectile.Web"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Motion:[0.5,0.7,-0.5],Tags:["TMCM.Projectile.Web"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Motion:[-0.5,0.7,0.5],Tags:["TMCM.Projectile.Web"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}

# リセット
    scoreboard players reset @s 1013.Tick
