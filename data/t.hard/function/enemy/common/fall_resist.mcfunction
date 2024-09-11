execute store result score @s t.hardFa.Resist run data get entity @s FallDistance
execute if entity @s[scores={t.hardFa.Resist=3}] run data modify entity @s FallDistance set value 0.0