#> set_list:is_element
#
# @input storage set_list.__temp__: __io__
#   list : TAG_List
#   data : target data
# @output storage set_list.__temp__: __io__
#   success : bool
#
# @public

data modify storage set_list.__temp__: __temp__.cache set from storage set_list.__temp__: __io__.list
execute store result score $t0 set_list.temp run data modify storage set_list.__temp__: __temp__.cache[] set from storage set_list.__temp__: __io__.data
execute store result score $t1 set_list.temp if data storage set_list.__temp__: __temp__.cache[]
execute store success storage set_list.__temp__: __io__.success byte 1.0 unless score $t0 set_list.temp = $t1 set_list.temp
