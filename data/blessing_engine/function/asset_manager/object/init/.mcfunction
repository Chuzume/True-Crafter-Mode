#> blessing_engine:asset_manager/object/init/
#
#
#
# @within function
#   blessing_engine:asset_manager/object/summon/init
#   blessing_engine:asset_manager/object/init/
#   blessing_engine:asset_manager/object/init/call_super_method

# Init処理
    function blessing_engine:asset_manager/object/init/init.m with storage asset:context

# super.init呼び出し
    execute unless data storage asset:object {Implement:true} run function blessing_engine:asset_manager/object/init/call_super_method
    data remove storage asset:object Implement
