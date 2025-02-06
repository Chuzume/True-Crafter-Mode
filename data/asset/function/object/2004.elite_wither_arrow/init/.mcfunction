#> asset:object/2004.elite_wither_arrow/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2004/init

# データ設定
    data modify entity @s Fire set value 0s
    data modify entity @s item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:wither",amplifier:1,duration:200}]}}}

# Super
    function asset:object/super.init
