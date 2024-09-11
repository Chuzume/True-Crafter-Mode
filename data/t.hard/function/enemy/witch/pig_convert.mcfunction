particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
summon zombified_piglin ~ ~ ~ {DeathLootTable:"minecraft:entities/pig"}
function t.hard:enemy/common/go_to_void