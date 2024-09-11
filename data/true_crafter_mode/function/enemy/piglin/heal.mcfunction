#むしゃむしゃ
tag @s add T.HardPiglin_Heal
item replace entity @s weapon.mainhand with cooked_porkchop
playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
effect give @s slowness 2 1 true
#近くにプレイヤーがいるなら飛び退く
scoreboard players set @s Chuz_Speed 10
execute if entity @a[distance=..7] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_step
#一度だけしか回復しないようにタグ付与
tag @s add T.HardNoHeal