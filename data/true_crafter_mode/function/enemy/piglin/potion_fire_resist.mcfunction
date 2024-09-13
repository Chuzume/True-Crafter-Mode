tag @s add TMCM.Piglin.F.Resist
item replace entity @s weapon.mainhand with potion{Potion: "minecraft:fire_resistance"} 1
playsound minecraft:entity.generic.drink hostile @a ~ ~ ~ 1 1
effect give @s slowness 2 1 true
#近くにプレイヤーがいるなら飛び退く
scoreboard players set @s Chuz.Speed 10
execute if entity @a[distance=..7] facing entity @e[type=#true_crafter_mode:piglin_enemy,limit=1,sort=nearest] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step