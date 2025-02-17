#> asset_manager:effect/events/re-given/
#
#
#
# @within function
#   asset_manager:effect/foreach
#   asset_manager:effect/events/re-given/call_super_method

function asset_manager:effect/events/re-given/re-given.m with storage asset:context

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/re-given/call_super_method
