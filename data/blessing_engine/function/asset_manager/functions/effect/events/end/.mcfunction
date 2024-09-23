#> blessing_engine:asset_manager/effect/events/end/
#
#
#
# @within function
#   blessing_engine:asset_manager/effect/foreach
#   blessing_engine:asset_manager/effect/events/end/call_super_method

function #asset:effect/end

execute unless data storage asset:effect {Implement:true} run function blessing_engine:asset_manager/effect/events/end/call_super_method

data remove storage asset:effect Implement
