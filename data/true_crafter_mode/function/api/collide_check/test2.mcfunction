#> true_crafter_mode:api/collide_check/test2
#
# 
#
# @within function true_crafter_mode:api/collide_check/test

  
# 召喚
    summon armor_stand ~2 ~ ~ {Silent:1b,Small:1b,Invisible:0b,Tags:["TMCM.Projectile.FrostBall","Chuz.Init"],attributes:[{id:"minecraft:generic.scale",base:1}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:snowball",count:1}}]}
    execute as @e[tag=TMCM.Projectile.FrostBall] rotated as @p run function true_crafter_mode:api/collide_check/test