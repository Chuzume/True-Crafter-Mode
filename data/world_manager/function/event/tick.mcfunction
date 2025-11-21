#> world_manager:event/tick
#
# 世界で起きるTick処理
#
# @within function core:tick/

# 難易度周り
    execute as @a[scores={Trigger.Difficulty=-1..5}] run function world_manager:event/difficulty/
