#> set_list:insert
#
# @input storage set_list.__temp__: __io__
#   list : TAG_List
#   data : target data
# @output storage set_list.__temp__: __io__
#   success : bool
#
# @public

function set_list:is_element

execute if data storage set_list.__temp__: {__io__: {is_element: false}} run data modify storage set_list.__temp__: __io__.list append from storage set_list.__temp__: __io__.data
