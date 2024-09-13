
# 頭に最初からなんかかぶってるやつは除外
    execute store result score @s Armor_Check run data get entity @s ArmorItems[3].Count

# 日差しで燃えるアンデッドは帽子を被るように
    item replace entity @s[type=zombie,tag=!TrueCrafterMode.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet{display: {color: 43176}} 1
    item replace entity @s[type=zombie_villager,tag=!TrueCrafterMode.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet{display: {color: 6177334}} 1
    item replace entity @s[type=skeleton,tag=!TrueCrafterMode.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet{display: {color: 11250603}} 1
    item replace entity @s[type=stray,tag=!TrueCrafterMode.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet{display: {color: 6387319}} 1
    item replace entity @s[type=drowned,tag=!TrueCrafterMode.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet{display: {color: 7887164}} 1