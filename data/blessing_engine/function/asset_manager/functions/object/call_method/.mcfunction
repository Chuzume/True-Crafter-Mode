#> blessing_engine:asset_manager/object/call_method/
#
#
#
# @within function
#   asset:object/call.m
#   blessing_engine:asset_manager/object/call_method/call_super_method

# メソッドの実行
    function blessing_engine:asset_manager/object/call_method/run_method.m with storage asset:context

# super.summon呼び出し
    execute unless data storage asset:object {Implement:true} run function blessing_engine:asset_manager/object/call_method/call_super_method
    data remove storage asset:object Implement
