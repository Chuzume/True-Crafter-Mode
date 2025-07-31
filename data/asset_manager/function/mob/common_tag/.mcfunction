#> asset_manager:mob/common_tag/
#
# 汎用タグの処理
#
# @within function
#   asset_manager:mob/tick/
#   core:tick/

execute if entity @s[tag=!AllowRideBannedVehicle,predicate=lib:is_placeable_vehicle] run function asset_manager:mob/common_tag/break_rides
execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle run kill @s
execute if entity @s[tag=AutoKillWhenDiePassenger] unless predicate lib:is_passenger run kill @s
execute if entity @s[tag=AlwaysInvisible] run effect give @s invisibility 999999 0 true
#execute if entity @s[type=skeleton,tag=!Frozen] run function asset_manager:mob/common_tag/check_frozen
#execute if entity @s[type=#lib:drownable,tag=!Drown,predicate=lib:is_in_water/] run function asset_manager:mob/common_tag/check_drowning
