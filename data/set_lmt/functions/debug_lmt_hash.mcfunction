#> set_lmt:debug_lmt_hash
# @user

tellraw @a "---[lib/lmt_hash]-------------------------------------------------------------"

data merge storage set_lmt.__temp__:lib/lmt_hash {__io__:{data:0, hash_func_val:0}}
data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt set from storage set_lmt:lib/lmt init_obj.32
function set_lmt:lib/lmt_hash/insert
data modify storage set_lmt.__temp__:lib/lmt_hash __io__.data set value 1
data modify storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val set value 1
function set_lmt:lib/lmt_hash/insert
tellraw @a "insert 0 & 1"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt_hash"}

data modify storage set_lmt.__temp__:lib/lmt_hash __io__.data set value 65537
data modify storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val set value 65537
function set_lmt:lib/lmt_hash/insert
tellraw @a "insert 65537"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt_hash"}

data modify storage set_lmt.__temp__:lib/lmt_hash __io__.data set value 65537
data modify storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val set value 65537
function set_lmt:lib/lmt_hash/insert
tellraw @a "insert 65537"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt_hash"}
