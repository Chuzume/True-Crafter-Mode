execute store result score @s T.Hard_Fa.Resist run data get entity @s FallDistance
execute if entity @s[scores={T.Hard_Fa.Resist=3}] run data modify entity @s FallDistance set value 0.0