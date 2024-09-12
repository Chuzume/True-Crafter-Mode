# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["TrueCrafterMode.Projectile.Web","Chuz.Init"],attributes:[{id:"minecraft:generic.scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:cobweb",count:1}}]}
    execute as @n[type=armor_stand,tag=Chuz.Init] at @s run function true_crafter_mode:entity/projectile/spider_web/init
    effect give @s slowness 1 9 true

# リセット
    scoreboard players reset @s TrueCrafterMode.Tick