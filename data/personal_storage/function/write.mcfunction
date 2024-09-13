#> personal_storage:write
#
# 自分のUUIDで作った専用のストレージにデータを書き込む
#
# @within function personal_storage:test

# 自分にスコアIDがないならIDを付与
    execute unless score @s PersonalStorage.ID matches -2147483648..2147483647 run function personal_storage:score_id

# 自分のIDを取得し、ストレージに移す
    execute store result storage personal_storage: ID int 1 run scoreboard players get @s PersonalStorage.ID

# 移したUUIDで専用のストレージ作ってそこに保存
    function personal_storage:please with storage personal_storage:

# リセット
    data remove storage personal_storage: Temporary