# 飛ばす
    scoreboard players set @s Chuz_Speed 8
    execute facing entity @p[tag=!T.HardException] eyes run function true_crafter_mode:move_xz
    data modify entity @s Motion[1] set value 0.4
    tag @s add T.Hard_Net
    tag @s remove T.Hard_NetInit