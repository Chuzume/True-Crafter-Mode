#> asset:object/2010.dragon_light_pillar/tick/damage.m
#
# ダメージと打ち上げ
#
# @within function asset:object/2010.dragon_light_pillar/tick/thunder

$damage @s 10 minecraft:mob_projectile by @n[scores={MobUUID=$(OwnerID)}]
summon area_effect_cloud ~ ~ ~ {Radius:0.1f,Duration:6,Age:4,potion_contents:{custom_effects:[{id:"minecraft:levitation",amplifier:30,duration:5}]}}
