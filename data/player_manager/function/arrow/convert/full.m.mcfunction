#> player_manager:arrow/convert/full.m
#
# 完全に別オブジェクトとして放つ。
#
# @within function player_manager:arrow/convert/

# オブジェクトを召喚
    data modify storage api: Argument.FieldOverride.IsConvertFromArrow set value true
    $execute on origin rotated as @s run function api:object/summon.m {ID:$(ObjectID)}
    
# 消滅
    kill @s
