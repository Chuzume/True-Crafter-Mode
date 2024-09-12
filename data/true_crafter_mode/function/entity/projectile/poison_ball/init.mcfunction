# 飛ばす
    scoreboard players set @s Chuz.Speed 16
    execute facing entity @p[tag=!TrueCrafterMode.Exception] eyes run function true_crafter_mode:entity/motion
    tag @s remove TrueCrafterMode.Init
