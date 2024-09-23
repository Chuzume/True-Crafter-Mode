#> asset_manager:mob/call_method/
#
# 
#
# @within function 
#   asset:mob/call.m
#   asset_manager:mob/call_method/call_super_method

# メソッドの実行
    function asset_manager:mob/call_method/run_method.m with storage asset:context

# super.summon呼び出し
    execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/call_method/call_super_method
    data remove storage asset:mob Implement
