particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
particle explosion ~ ~1 ~ 0 0 0 0 0
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute facing entity @p[distance=..5] eyes rotated ~ 0 if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/back_warp
execute facing entity @p[distance=..5] eyes rotated ~ 0 unless block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:enemy/common/foward_warp
execute if entity @a[distance=5..16] rotated ~ 0 run function true_crafter_mode:enemy/common/foward_warp