gamerule showDeathMessages false
#execute as @e[tag=C.Apex_Projectile,sort=nearest,limit=1] at @a if score @s C.Apex_En.ID = @p C.Apex_Pl.ID run tag @p add Chuz.This
#tellraw @a ["",{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] で撃ち抜かれた"}]
#tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に撃たれた"}]

# メッセージ
    execute if entity @s[tag=T.HardDragonShotHit] run tellraw @a ["",{"selector":"@s"},{"text":"はエンダードラゴンの魔法で消し飛ばされた"}]

# 死ぬ処理  
    tag @a remove Chuz.This
    kill @s
    gamerule showDeathMessages true