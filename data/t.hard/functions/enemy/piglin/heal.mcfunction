#むしゃむしゃ
tag @s add T.Hard_Piglin_Heal
replaceitem entity @s weapon.mainhand cooked_porkchop
playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 1
effect give @s slowness 2 1 true
#近くにプレイヤーがいるなら飛び退く
scoreboard players set @s ChuzSpeed 10
execute if entity @a[distance=..7] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t.hard:no_collision if block ^ ^ ^-1 #t.hard:no_collision run function t.hard:enemy/common/back_step
#一度だけしか回復しないようにタグ付与
tag @s add T.Hard_NoHeal