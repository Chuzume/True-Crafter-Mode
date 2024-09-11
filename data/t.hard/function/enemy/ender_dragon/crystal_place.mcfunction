execute if entity @s[nbt={OnGround:1b}] run particle explosion ~ ~7.5 ~ 0 0 0 0 1
execute if entity @s[nbt={OnGround:1b}] run particle end_rod ~ ~7.5 ~ 0 0 0 0.1 10
execute if entity @s[nbt={OnGround:1b}] run summon end_crystal ~ ~7 ~ {ShowBottom:0b,Tags:["t.hardCrystal"]}
execute if entity @s[nbt={OnGround:1b}] run kill @s