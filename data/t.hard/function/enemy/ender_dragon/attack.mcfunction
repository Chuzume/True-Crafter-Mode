
#サバイバルかアドベンチャーのプレイヤー存在するならば
execute if entity @a[tag=!t.hardException,distance=0..] run scoreboard players add @s t.hardMoveset1 1

#3wayショット Dra0
tag @s[scores={t.hardMoveset1=40..},nbt={DragonPhase:0}] add t.hardDra0
execute if entity @s[tag=t.hardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[t.hardDragonShot,t.hardShot1,t.hardShot0],DisabledSlots:4144959}
execute if entity @s[tag=t.hardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[t.hardDragonShot,t.hardShot2,t.hardShot0],DisabledSlots:4144959}
execute if entity @s[tag=t.hardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[t.hardDragonShot,t.hardShot3,t.hardShot0],DisabledSlots:4144959}
execute if entity @s[tag=t.hardDra0] at @a run playsound entity.ender_dragon.shoot hostile @p ~ ~ ~ 2 1
scoreboard players reset @s[tag=t.hardDra0] t.hardMoveset1
tag @s[tag=t.hardDra0] remove t.hardDra0

#でっかい爆発を起こす火の玉 Dra1
tag @s[scores={t.hardMoveset1=40..},nbt={DragonPhase:1}] add t.hardDra1
execute if entity @s[tag=t.hardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^ ^ ^-3 {ExplosionPower:2,Motion:[0.0,-0.007,0.0],Tags:["t.hardDragonfire"]}
execute if entity @s[tag=t.hardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^10 ^ ^-3 {ExplosionPower:2,Motion:[0.0,-0.007,0.0],Tags:["t.hardDragonfire"]}
execute if entity @s[tag=t.hardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^-10 ^ ^-3 {ExplosionPower:2,Motion:[0.0,-0.007,0.0],Tags:["t.hardDragonfire"]}
execute if entity @s[tag=t.hardDra1] unless entity @a[distance=..30] at @a run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0
scoreboard players reset @s[tag=t.hardDra1] t.hardMoveset1
tag @s[tag=t.hardDra1] remove t.hardDra1

#どらごんさんだー Dra2 長引いた場合はショットへ戻る
execute unless entity @s[scores={t.hardMoveset2=6..}] run tag @s[scores={t.hardMoveset1=40..},nbt={DragonPhase:2}] add t.hardDra2
execute if entity @s[scores={t.hardMoveset2=6..}] run tag @s[scores={t.hardMoveset1=40..},nbt={DragonPhase:2}] add t.hardDra0
execute if entity @s[tag=t.hardDra2] run function t.hard:enemy/ender_dragon/dragon_thunder
scoreboard players add @s[tag=t.hardDra2] t.hardMoveset2 1
scoreboard players reset @s[tag=t.hardDra2] t.hardMoveset1
tag @s[tag=t.hardDra2] remove t.hardDra2
scoreboard players reset @s[nbt=!{DragonPhase:2}] t.hardMoveset2 

#めんたま召喚 Dra3
execute if entity @s[nbt={DragonPhase:3},tag=!t.hardDra3_No] run function t.hard:enemy/ender_dragon/summon_eyes
tag @s[nbt={DragonPhase:3},tag=!t.hardDra3_No] add t.hardDra3_No
tag @s[nbt=!{DragonPhase:3},tag=t.hardDra3_No] remove t.hardDra3_No

#ブレス用意でサンダー Dra6
execute if entity @s[nbt={DragonPhase:6},tag=!t.hardDra6_No] run function t.hard:enemy/ender_dragon/dragon_thunder
tag @s[nbt={DragonPhase:6},tag=!t.hardDra6_No] add t.hardDra6_No
tag @s[nbt=!{DragonPhase:6},tag=t.hardDra6_No] remove t.hardDra6_No

#クリスタルが1個もなければ、ポータルから離れる際にクリスタル再召喚
#execute if entity @s[nbt={DragonPhase:4},tag=!t.hardDra4_No] run function t.hard:enemy/ender_dragon/crystal_respawn
#tag @s[nbt={DragonPhase:4},tag=!t.hardDra4_No] add t.hardDra4_No
#tag @s[nbt=!{DragonPhase:4},tag=t.hardDra4_No] remove t.hardDra4_No
