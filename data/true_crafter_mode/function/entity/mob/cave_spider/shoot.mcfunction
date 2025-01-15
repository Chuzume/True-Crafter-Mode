
# 演出
    playsound minecraft:entity.spider.death master @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.llama.spit hostile @a ~ ~ ~ 1.5 2

# エイム用マーカーをターゲットの位置に設置
    execute at @n[tag=TMCM.Target] run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["TMCM.Projectile.PoisonBall","Chuz.Init"],attributes:[{id:"minecraft:scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]},item:{id:"minecraft:slime_ball",count:1}}]}
    execute as @n[type=armor_stand,tag=Chuz.Init] at @s run function true_crafter_mode:entity/projectile/poison_ball/init
    effect give @s slowness 1 9 true

# リセット
    scoreboard players reset @s TMCM.Tick
