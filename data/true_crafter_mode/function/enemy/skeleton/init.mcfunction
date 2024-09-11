execute as @s[type=#true_crafter_mode:no_sun_undead] run function true_crafter_mode:enemy/common/undead_hat
execute if entity @s[type=skeleton] run function true_crafter_mode:enemy/skeleton/skeleton_change
execute if entity @s[type=stray] run function true_crafter_mode:enemy/skeleton/stray_change

# ウィザスケ
    execute as @e[type=wither_skeleton] run data merge entity @s {Health:30s,Attributes:[{Name:"generic.max_health",Base:30}]}
    item replace entity @s[type=wither_skeleton] weapon.mainhand with minecraft:bow

# その他設定
    data merge entity @s {CanPickUpLoot:1b}
    tag @s add T.HardAlreadyInit
    tag @s add T.HardSke_Ranged