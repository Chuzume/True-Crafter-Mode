#> asset_manager:effect/events/tick/
#
#
#
# @within function
#   asset_manager:effect/foreach
#   asset_manager:effect/events/tick/call_super_method

function asset_manager:effect/events/tick/tick.m with storage asset:context
execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/tick/call_super_method
