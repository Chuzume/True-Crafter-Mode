#> blessing_engine:asset_manager/island/dispel/cancelled
#
#
#
# @within function
#   blessing_engine:asset_manager/island/tick/
#   blessing_engine:asset_manager/island/dispel/
#   blessing_engine:asset_manager/island/dispel/boss/

execute if score @s DispelTime matches 20.. as @p[predicate=lib:is_sneaking,distance=..2] at @s run playsound block.glass.break block @s ~ ~ ~ 1 2.0
scoreboard players reset @s DispelTime
