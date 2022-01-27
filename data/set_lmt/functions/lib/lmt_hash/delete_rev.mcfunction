#> set_lmt:lib/lmt_hash/delete_rev
# @within set_lmt:lib/lmt_hash/delete*

data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.cache append from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt.cache[-1]
data remove storage set_lmt.__temp__:lib/lmt_hash __io__.lmt.cache[-1]

execute if data storage set_lmt.__temp__:lib/lmt_hash __io__.lmt.cache[-1] run function set_lmt:lib/lmt_hash/delete_rev
