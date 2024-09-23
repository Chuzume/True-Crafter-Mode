#> blessing_engine:asset_manager/effect/events/remove/
#
#
#
# @within function
#   blessing_engine:asset_manager/effect/foreach
#   blessing_engine:asset_manager/effect/events/remove/call_super_method

function #asset:effect/remove

execute unless data storage asset:effect {Implement:true} run function blessing_engine:asset_manager/effect/events/remove/call_super_method

data remove storage asset:effect Implement
