#> blessing_engine:asset_manager/artifact/triggers/use_item/check_item_drop
#
#
#
# @within function blessing_engine:asset_manager/artifact/triggers/use_item/

# タグがついてるならオフハンドです(maybe)
    execute if entity @s[tag=StrictCheckMainhand] run data modify storage asset:artifact Argument.AutoSlot set value 'offhand'

# リセット
    tag @s remove StrictCheckMainhand
