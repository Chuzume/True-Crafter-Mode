tag @s add T.HardPiglin_F.Resist
item replace entity @s weapon.mainhand with potion{Potion: "minecraft:fire_resistance"} 1
playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
effect give @s slowness 2 1 true
#近くにプレイヤーがいるなら飛び退く
scoreboard players set @s Chuz_Speed 10
execute if entity @a[distance=..7] facing entity @e[type=#t.hard:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step