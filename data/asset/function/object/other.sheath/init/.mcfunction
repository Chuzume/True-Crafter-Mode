#> asset:object/other.sheath/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2000/init

# データを取得
    execute if data storage asset:context this.Item run data modify entity @s item set from storage asset:context this.Item
    execute if data storage asset:context this.LootTable run function asset:object/other.sheath/init/set_loot_table with storage asset:context this
    data modify entity @s transformation set from storage asset:context this.Transformation
