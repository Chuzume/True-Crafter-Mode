#> asset:object/2006.dragon_platform/tick/place/place.m
#
# 足場を置く
#
# @within function asset:object/2006.dragon_platform/tick/place/

$execute if data storage asset:temp Platform{Rotation:1} run place template asset:end_platform/$(Type) ~-2 ~-2 ~-2 none
$execute if data storage asset:temp Platform{Rotation:2} run place template asset:end_platform/$(Type) ~2 ~-2 ~-2 clockwise_90
$execute if data storage asset:temp Platform{Rotation:3} run place template asset:end_platform/$(Type) ~-2 ~-2 ~2 counterclockwise_90
$execute if data storage asset:temp Platform{Rotation:4} run place template asset:end_platform/$(Type) ~2 ~-2 ~2 180
