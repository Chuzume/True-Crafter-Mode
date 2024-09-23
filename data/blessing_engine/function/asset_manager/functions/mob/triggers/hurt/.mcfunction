#> blessing_engine:asset_manager/mob/triggers/hurt/
#
#
#
# @within function
#   blessing_engine:asset_manager/mob/triggers/
#   blessing_engine:asset_manager/mob/triggers/hurt/call_super_method

function #asset:mob/hurt

execute unless data storage asset:mob {Implement:true} run function blessing_engine:asset_manager/mob/triggers/hurt/call_super_method

data remove storage asset:mob Implement
