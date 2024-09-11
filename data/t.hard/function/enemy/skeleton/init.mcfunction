execute as @s[type=#t.hard:no_sun_undead] run function t.hard:enemy/common/undead_hat
execute if entity @s[type=skeleton] run function t.hard:enemy/skeleton/skeleton_change
execute if entity @s[type=stray] run function t.hard:enemy/skeleton/stray_change

# ウィザスケ
    execute as @e[type=wither_skeleton] run data merge entity @s {Health:30s,Attributes:[{Name:"generic.max_health",Base:30}]}
    item replace entity @s[type=wither_skeleton] weapon.mainhand with minecraft:bow

# その他設定
    data merge entity @s {CanPickUpLoot:1b}
    tag @s add T.HardAlreadyInit
    tag @s add T.HardSke_Ranged