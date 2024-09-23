#> blessing_engine:asset_manager/common/context/this/pop
#
# 保持していたthisを戻す
#
# @within function
#   api:mob/summon
#   api:mob/core/summon
#   asset:*/extends
#   asset:*/super.*
#   api:artifact/*/from_id
#   api:entity/mob/effect/core/give
#   blessing_engine:asset_manager/mob/triggers/death/manual
#   blessing_engine:asset_manager/effect/events/*/call_super_method
#   blessing_engine:asset_manager/mob/triggers/*/call_super_method
#   blessing_engine:asset_manager/artifact/give
#   api:spawner/subtract_hp
#   blessing_engine:asset_manager/object/summon/
#   api:object/core/summon
#   blessing_engine:asset_manager/object/*/call_super_method
#   asset:object/call.m

# thisを掃除
    data remove storage asset:context this
# thisを戻す
    data modify storage asset:context this set from storage asset:context ThisStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context ThisStashStack[-1]
