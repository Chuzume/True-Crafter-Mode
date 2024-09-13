#> true_crafter_mode:personal_storage/write
#
# 自分のUUIDで作った専用のストレージにデータを書き込む
#
# @within function true_crafter_mode:personal_storage/test

# 自分のUUIDを取得し、ストレージに移す
    data modify storage personal_storage: UUID set from entity @s UUID

# 移したUUIDで専用のストレージ作ってそこに
    function true_crafter_mode:personal_storage/please with storage personal_storage: