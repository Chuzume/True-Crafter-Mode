
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/creeper/init

# 攻撃行動（真クラ仕様）
    execute unless score #t.hard_Gamerule T.HardGamerule4 matches 2 if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/creeper/moveset

# 攻撃行動（バニラ寄り）
    execute if score #t.hard_Gamerule T.HardGamerule4 matches 2 if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/creeper/moveset_vanilla

# プレイヤーが微妙な距離にいるなら透明化
    execute if entity @s[tag=!ChuzHurtEntity,tag=!T.HardIgnited] if entity @a[distance=4..16,tag=!T.HardException] run function t.hard:enemy/creeper/stealth

# 近くにいれば解除
    execute if entity @s[tag=T.HardStealthMove] if entity @a[distance=..4,tag=!T.HardException] run function t.hard:enemy/creeper/stealth_off