#> blessing_engine:asset_manager/spawner/subtract_hp/vfx/line
#
#
#
# @within function
#   blessing_engine:asset_manager/spawner/subtract_hp/subtract
#   blessing_engine:asset_manager/spawner/subtract_hp/vfx/line

particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless entity @s[distance=..1] positioned ^ ^ ^0.4 run function blessing_engine:asset_manager/spawner/subtract_hp/vfx/line
