#> set_list:delete_rev
# @within set_list:delete*

data modify storage set_list.__temp__: __temp__.cache append from storage set_list.__temp__: __io__.list[-1]
data remove storage set_list.__temp__: __io__.list[-1]
execute if data storage set_list.__temp__: __io__.list[-1] run function set_list:delete_rev
