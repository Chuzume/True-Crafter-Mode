#> true_crafter_mode:entity/mob/enderman/init
#
# スポーン時に実行される処理
#
# @within function true_crafter_mode:entity/mob/enderman/tick

# 足に氷渡りを無理やり装着
    data merge entity @s {ArmorItems:[{id:"minecraft:ice",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:frost_walker":1}}}},{},{},{}],ArmorDropChances:[0.000F,0.085F,0.085F,0.085F]}

# Init終了
    tag @s add TMCM.AlreadyInit
