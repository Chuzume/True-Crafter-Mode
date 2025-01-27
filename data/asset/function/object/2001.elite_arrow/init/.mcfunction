#> asset:object/2001.elite_arrow/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2001/init

# 弾速を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    function lib:motion/

# 矢のデータを変更
    data modify entity @s NoGravity set value true
    data modify entity @s crit set value true
