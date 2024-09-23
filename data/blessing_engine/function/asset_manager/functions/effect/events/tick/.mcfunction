#> blessing_engine:asset_manager/effect/events/tick/
#
#
#
# @within function
#   blessing_engine:asset_manager/effect/foreach
#   blessing_engine:asset_manager/effect/events/tick/call_super_method

function #asset:effect/tick

execute unless data storage asset:effect {Implement:true} run function blessing_engine:asset_manager/effect/events/tick/call_super_method

data remove storage asset:effect Implement
