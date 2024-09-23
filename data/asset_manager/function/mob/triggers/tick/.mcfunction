#> asset_manager:mob/triggers/tick/
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/tick/call_super_method

#function #asset:mob/tick

#execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/tick/call_super_method

#data remove storage asset:mob Implement

# 取得した数値でマクロ実行
    function asset_manager:mob/triggers/tick/tick.m with storage asset:context

# super.tick呼び出し
    #execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/tick/call_super_method
    execute unless data storage asset:mob {Implement:true} run say まだやることがある…
    data remove storage asset:mob Implement
