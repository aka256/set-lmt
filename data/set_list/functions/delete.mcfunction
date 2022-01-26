#> set_list:delete
#
# @input storage set_list.__temp__: __io__
#   list : TAG_List
#   data : target data
#
# @public

data modify storage set_list.__temp__: __temp__.cache set value []
execute if data storage set_list.__temp__: __io__.list[-1] run function set_list:delete_rev
execute if data storage set_list.__temp__: __temp__.cache[-1] run function set_list:delete_rec
