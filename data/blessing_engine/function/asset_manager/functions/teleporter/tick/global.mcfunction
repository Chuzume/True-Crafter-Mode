#> blessing_engine:asset_manager/teleporter/tick/global
#
#
#
# @within function core:tick/

execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] run function blessing_engine:asset_manager/teleporter/tick/vfx/teleporter/
