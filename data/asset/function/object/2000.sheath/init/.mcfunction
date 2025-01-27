#> asset:object/2000.sheath/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2000/init

# データを取得
    data modify entity @s item set from storage asset:context this.Item
    data modify entity @s transformation set from storage asset:context this.Transformation
