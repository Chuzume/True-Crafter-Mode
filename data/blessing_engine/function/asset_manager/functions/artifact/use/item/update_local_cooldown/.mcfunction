#> blessing_engine:asset_manager/artifact/use/item/update_local_cooldown/
#
#
#
# @within function blessing_engine:asset_manager/artifact/use/item/update

function oh_my_dat:please
execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run data modify storage asset:artifact SpecificTargetSlot set from storage asset:artifact TargetItems[-1].Slot
execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function blessing_engine:asset_manager/artifact/use/item/update_local_cooldown/hotbar
execute unless data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function blessing_engine:asset_manager/artifact/use/item/update_local_cooldown/non-hotbar