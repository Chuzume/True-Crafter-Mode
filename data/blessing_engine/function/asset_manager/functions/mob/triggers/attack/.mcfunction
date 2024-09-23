#> blessing_engine:asset_manager/mob/triggers/attack/
#
#
#
# @within function
#   blessing_engine:asset_manager/mob/triggers/
#   blessing_engine:asset_manager/mob/triggers/attack/call_super_method

function #asset:mob/attack

execute unless data storage asset:mob {Implement:true} run function blessing_engine:asset_manager/mob/triggers/attack/call_super_method

data remove storage asset:mob Implement
