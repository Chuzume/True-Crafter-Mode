#> blessing_engine:asset_manager/mob/triggers/death/call
#
#
#
# @within function
#   blessing_engine:asset_manager/mob/triggers/death/
#   blessing_engine:asset_manager/mob/triggers/death/call_super_method

function #asset:mob/death

execute unless data storage asset:mob {Implement:true} run function blessing_engine:asset_manager/mob/triggers/death/call_super_method

data remove storage asset:mob Implement
