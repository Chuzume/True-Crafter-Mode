execute store result score @s T.HardFa.Resist run data get entity @s FallDistance
execute if entity @s[scores={T.HardFa.Resist=3}] run data modify entity @s FallDistance set value 0.0