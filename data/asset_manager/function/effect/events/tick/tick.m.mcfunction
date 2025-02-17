#> asset_manager:effect/events/tick/tick.m
#
# 
#
# @within function asset_manager:effect/events/tick/

$function asset:effect/alias/$(id)/tick
$execute store success storage asset:effect Implement byte 1 run schedule function asset:effect/alias/$(id)/tick 2147483647t
$schedule clear asset:effect/alias/$(id)/tick
