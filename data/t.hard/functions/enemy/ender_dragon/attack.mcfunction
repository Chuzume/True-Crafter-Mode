
#サバイバルかアドベンチャーのプレイヤー存在するならば
execute if entity @a[tag=!T.Hard_Exception,distance=0..] run scoreboard players add @s T.Hard_Moveset1 1

#3wayショット Dra0
tag @s[scores={T.Hard_Moveset1=40..},nbt={DragonPhase:0}] add T.Hard_Dra0
execute if entity @s[tag=T.Hard_Dra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.Hard_DragonShot,T.Hard_Shot1,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[tag=T.Hard_Dra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.Hard_DragonShot,T.Hard_Shot2,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[tag=T.Hard_Dra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.Hard_DragonShot,T.Hard_Shot3,T.Hard_Shot0],DisabledSlots:4144959}
execute if entity @s[tag=T.Hard_Dra0] at @a run playsound entity.ender_dragon.shoot hostile @p ~ ~ ~ 2 1
scoreboard players reset @s[tag=T.Hard_Dra0] T.Hard_Moveset1
tag @s[tag=T.Hard_Dra0] remove T.Hard_Dra0

#でっかい爆発を起こす火の玉 Dra1
tag @s[scores={T.Hard_Moveset1=40..},nbt={DragonPhase:1}] add T.Hard_Dra1
execute if entity @s[tag=T.Hard_Dra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^ ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.Hard_Dragonfire"]}
execute if entity @s[tag=T.Hard_Dra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^10 ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.Hard_Dragonfire"]}
execute if entity @s[tag=T.Hard_Dra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^-10 ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.Hard_Dragonfire"]}
execute if entity @s[tag=T.Hard_Dra1] unless entity @a[distance=..30] at @a run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0
scoreboard players reset @s[tag=T.Hard_Dra1] T.Hard_Moveset1
tag @s[tag=T.Hard_Dra1] remove T.Hard_Dra1

#どらごんさんだー Dra2 長引いた場合はショットへ戻る
execute unless entity @s[scores={T.Hard_Moveset2=6..}] run tag @s[scores={T.Hard_Moveset1=40..},nbt={DragonPhase:2}] add T.Hard_Dra2
execute if entity @s[scores={T.Hard_Moveset2=6..}] run tag @s[scores={T.Hard_Moveset1=40..},nbt={DragonPhase:2}] add T.Hard_Dra0
execute if entity @s[tag=T.Hard_Dra2] run function t.hard:enemy/ender_dragon/dragon_thunder
scoreboard players add @s[tag=T.Hard_Dra2] T.Hard_Moveset2 1
scoreboard players reset @s[tag=T.Hard_Dra2] T.Hard_Moveset1
tag @s[tag=T.Hard_Dra2] remove T.Hard_Dra2
scoreboard players reset @s[nbt=!{DragonPhase:2}] T.Hard_Moveset2 

#めんたま召喚 Dra3
execute if entity @s[nbt={DragonPhase:3},tag=!T.Hard_Dra3_No] run function t.hard:enemy/ender_dragon/summon_eyes
tag @s[nbt={DragonPhase:3},tag=!T.Hard_Dra3_No] add T.Hard_Dra3_No
tag @s[nbt=!{DragonPhase:3},tag=T.Hard_Dra3_No] remove T.Hard_Dra3_No

#ブレス用意でサンダー Dra6
execute if entity @s[nbt={DragonPhase:6},tag=!T.Hard_Dra6_No] run function t.hard:enemy/ender_dragon/dragon_thunder
tag @s[nbt={DragonPhase:6},tag=!T.Hard_Dra6_No] add T.Hard_Dra6_No
tag @s[nbt=!{DragonPhase:6},tag=T.Hard_Dra6_No] remove T.Hard_Dra6_No

#クリスタルが1個もなければ、ポータルから離れる際にクリスタル再召喚
#execute if entity @s[nbt={DragonPhase:4},tag=!T.Hard_Dra4_No] run function t.hard:enemy/ender_dragon/crystal_respawn
#tag @s[nbt={DragonPhase:4},tag=!T.Hard_Dra4_No] add T.Hard_Dra4_No
#tag @s[nbt=!{DragonPhase:4},tag=T.Hard_Dra4_No] remove T.Hard_Dra4_No
