# 飛ばす
    scoreboard players set @s Chuz.Speed 10
    execute facing entity @p[tag=!TMCM.Exception] eyes rotated ~ ~-10 run function true_crafter_mode:entity/motion
    tag @s remove Chuz.Init