
#サバイバルかアドベンチャーのプレイヤー存在するならば
execute if entity @a[tag=!TMCM.Exception,distance=0..] run scoreboard players add @s TMCM.Tick 1

#3wayショット Dra0
tag @s[scores={TMCM.Tick=40..},nbt={DragonPhase:0}] add T.HardDra0
execute if entity @s[tag=T.HardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.HardDragonShot,T.HardShot1,T.HardShot0],DisabledSlots:4144959}
execute if entity @s[tag=T.HardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.HardDragonShot,T.HardShot2,T.HardShot0],DisabledSlots:4144959}
execute if entity @s[tag=T.HardDra0] run summon armor_stand ^ ^ ^-5 {Marker:1b,Invisible:1b,Tags:[T.HardDragonShot,T.HardShot3,T.HardShot0],DisabledSlots:4144959}
execute if entity @s[tag=T.HardDra0] at @a run playsound entity.ender_dragon.shoot hostile @p ~ ~ ~ 2 1
scoreboard players reset @s[tag=T.HardDra0] TMCM.Tick
tag @s[tag=T.HardDra0] remove T.HardDra0

#でっかい爆発を起こす火の玉 Dra1
tag @s[scores={TMCM.Tick=40..},nbt={DragonPhase:1}] add T.HardDra1
execute if entity @s[tag=T.HardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^ ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.HardDragonfire"]}
execute if entity @s[tag=T.HardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^10 ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.HardDragonfire"]}
execute if entity @s[tag=T.HardDra1] positioned ~ ~-5 ~ unless entity @a[distance=..30] run summon minecraft:fireball ^-10 ^ ^-3 {ExplosionPower:2,direction:[0.0,0.0,0.0],power:[0.0,-0.007,0.0],Tags:["T.HardDragonfire"]}
execute if entity @s[tag=T.HardDra1] unless entity @a[distance=..30] at @a run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0
scoreboard players reset @s[tag=T.HardDra1] TMCM.Tick
tag @s[tag=T.HardDra1] remove T.HardDra1

#どらごんさんだー Dra2 長引いた場合はショットへ戻る
execute unless entity @s[scores={TMCM.SubAction=6..}] run tag @s[scores={TMCM.Tick=40..},nbt={DragonPhase:2}] add T.HardDra2
execute if entity @s[scores={TMCM.SubAction=6..}] run tag @s[scores={TMCM.Tick=40..},nbt={DragonPhase:2}] add T.HardDra0
execute if entity @s[tag=T.HardDra2] run function true_crafter_mode:enemy/ender_dragon/dragon_thunder
scoreboard players add @s[tag=T.HardDra2] TMCM.SubAction 1
scoreboard players reset @s[tag=T.HardDra2] TMCM.Tick
tag @s[tag=T.HardDra2] remove T.HardDra2
scoreboard players reset @s[nbt=!{DragonPhase:2}] TMCM.SubAction 

#めんたま召喚 Dra3
execute if entity @s[nbt={DragonPhase:3},tag=!T.HardDra3_No] run function true_crafter_mode:enemy/ender_dragon/summon_eyes
tag @s[nbt={DragonPhase:3},tag=!T.HardDra3_No] add T.HardDra3_No
tag @s[nbt=!{DragonPhase:3},tag=T.HardDra3_No] remove T.HardDra3_No

#ブレス用意でサンダー Dra6
execute if entity @s[nbt={DragonPhase:6},tag=!T.HardDra6_No] run function true_crafter_mode:enemy/ender_dragon/dragon_thunder
tag @s[nbt={DragonPhase:6},tag=!T.HardDra6_No] add T.HardDra6_No
tag @s[nbt=!{DragonPhase:6},tag=T.HardDra6_No] remove T.HardDra6_No

#クリスタルが1個もなければ、ポータルから離れる際にクリスタル再召喚
#execute if entity @s[nbt={DragonPhase:4},tag=!T.HardDra4_No] run function true_crafter_mode:enemy/ender_dragon/crystal_respawn
#tag @s[nbt={DragonPhase:4},tag=!T.HardDra4_No] add T.HardDra4_No
#tag @s[nbt=!{DragonPhase:4},tag=T.HardDra4_No] remove T.HardDra4_No
