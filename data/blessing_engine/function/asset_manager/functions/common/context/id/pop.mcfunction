#> blessing_engine:asset_manager/common/context/id/pop
#
#
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

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]
