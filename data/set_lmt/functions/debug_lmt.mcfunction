#> set_lmt:debug_lmt
# @user

tellraw @a "---[lib/lmt]-------------------------------------------------------------"

data merge storage set_lmt.__temp__:lib/lmt {__io__:{index:0}}
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt set from storage set_lmt:lib/lmt init_obj.32
function set_lmt:lib/lmt/touch
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt.cache append value 0
data modify storage set_lmt.__temp__:lib/lmt __io__.index set value 1
function set_lmt:lib/lmt/touch
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt.cache append value 1
tellraw @a "touch 0 & 1"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt"}


data modify storage set_lmt.__temp__:lib/lmt __io__.index set value 65537
function set_lmt:lib/lmt/touch
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt.cache append value 65537
tellraw @a "touch 65537"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt"}

data modify storage set_lmt.__temp__:lib/lmt __io__.index set value 0
function set_lmt:lib/lmt/touch
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt.cache append value 0
tellraw @a "touch 0"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt"}

data modify storage set_lmt.__temp__:lib/lmt __io__.index set value 65537
function set_lmt:lib/lmt/touch
data modify storage set_lmt.__temp__:lib/lmt __io__.lmt.cache append value 65537
tellraw @a "touch 65537"
tellraw @a {"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt"}