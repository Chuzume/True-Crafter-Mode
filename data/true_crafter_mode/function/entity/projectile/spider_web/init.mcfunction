# 飛ばす
    scoreboard players set @s Chuz.Speed 16
    execute facing entity @p[tag=!T.HardException] eyes rotated ~ ~-10 run function true_crafter_mode:entity/motion
    tag @s remove TrueCrafterMode.Init