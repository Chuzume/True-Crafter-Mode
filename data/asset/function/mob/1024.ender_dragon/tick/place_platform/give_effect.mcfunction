#> asset:mob/1024.ender_dragon/tick/place_platform/give_effect
#
# 
#
# @within function asset:mob/1024.ender_dragon/tick/

# 上に飛ばされる
    data modify storage api: Argument.ID set value 1
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.Duration set value 20
    function api:mob/effect/give
    function api:mob/effect/reset
