#> asset_manager:mob/init/
#
# 
#
# @within function
#   asset_manager:mob/summon/init
#   asset_manager:mob/init/
#   asset_manager:mob/init/call_super_method

# Init処理
    function asset_manager:object/init/init.m with storage asset:context

# super.init呼び出し
    execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/init/call_super_method
    data remove storage asset:mob Implement