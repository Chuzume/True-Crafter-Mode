
# 幅1ブロックの穴
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision unless block ^ ^-1 ^2 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s Chuz_Speed 4
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision unless block ^ ^-1 ^2 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run function true_crafter_mode:enemy/common/jump_gap/jump

# 幅2ブロックの穴
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^2 #true_crafter_mode:no_collision unless block ^ ^-1 ^3 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s Chuz_Speed 6
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^2 #true_crafter_mode:no_collision unless block ^ ^-1 ^3 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run function true_crafter_mode:enemy/common/jump_gap/jump

# 幅3ブロックの穴
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^2 #true_crafter_mode:no_collision if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^3 #true_crafter_mode:no_collision unless block ^ ^-1 ^4 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run scoreboard players set @s Chuz_Speed 9
    execute align xz positioned ~0.5 ~ ~0.5 rotated ~ 0 if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^2 #true_crafter_mode:no_collision if block ^ ^-1 ^1 #true_crafter_mode:no_collision if block ^ ^-1 ^3 #true_crafter_mode:no_collision unless block ^ ^-1 ^4 #true_crafter_mode:no_collision positioned ^ ^-2 ^2 unless entity @a[distance=..2] run function true_crafter_mode:enemy/common/jump_gap/jump