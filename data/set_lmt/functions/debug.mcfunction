#> set_lmt:debug
# @user

tellraw @a "---[set_int]------------------------------------------------------------------"

data merge storage set_lmt.__temp__:set_int {__io__:{data:0}}
data modify storage set_lmt.__temp__:set_int __io__.lmt set from storage set_lmt:lib/lmt init_obj
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value 1
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value 2
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value 3
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value 2147483647
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value -2147483648
function set_lmt:set_int/insert
tellraw @a "insert 0, 1, 2, 3, INT_MAX, INT_MIN"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_int"}]

data modify storage set_lmt.__temp__:set_int __io__.data set value 0
function set_lmt:set_int/insert
data modify storage set_lmt.__temp__:set_int __io__.data set value 1
function set_lmt:set_int/insert
tellraw @a "insert 0, 1"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_int"}]

data modify storage set_lmt.__temp__:set_int __io__.data set value 1
function set_lmt:set_int/delete
tellraw @a "delete 1"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_int"}]

data modify storage set_lmt.__temp__:set_int __io__.data set value 0
function set_lmt:set_int/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_int"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_int"}]
data modify storage set_lmt.__temp__:set_int __io__.data set value 1
function set_lmt:set_int/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_int"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_int"}]


tellraw @a "---[set_2d-vec]---------------------------------------------------------------"

data merge storage set_lmt.__temp__:set_2d-vec {__io__:{data:[0, 0]}}
data modify storage set_lmt.__temp__:set_2d-vec __io__.lmt set from storage set_lmt:lib/lmt init_obj
function set_lmt:set_2d-vec/insert
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [1, 1]
function set_lmt:set_2d-vec/insert
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [2, 2]
function set_lmt:set_2d-vec/insert
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [3, 3]
function set_lmt:set_2d-vec/insert
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [2147483647, 2147483647]
function set_lmt:set_2d-vec/insert
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [-2147483648, -2147483648]
function set_lmt:set_2d-vec/insert
tellraw @a "insert [0, 0], [1, 1], [2, 2], [3, 3], [INT_MAX, INT_MAX], [INT_MIN, INT_MIN]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_2d-vec"}]

data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [0, 0]
function set_lmt:set_2d-vec/insert
tellraw @a "insert [0, 0]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_2d-vec"}]
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [1, 1]
function set_lmt:set_2d-vec/insert
tellraw @a "insert [1, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_2d-vec"}]

data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [1, 1]
function set_lmt:set_2d-vec/delete
tellraw @a "delete [1, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_2d-vec"}]

data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [0, 0]
function set_lmt:set_2d-vec/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_2d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_2d-vec"}]
data modify storage set_lmt.__temp__:set_2d-vec __io__.data set value [1, 1]
function set_lmt:set_2d-vec/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_2d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_2d-vec"}]


tellraw @a "---[set_3d-vec]---------------------------------------------------------------"

data merge storage set_lmt.__temp__:set_3d-vec {__io__:{data:[0, 0, 0]}}
data modify storage set_lmt.__temp__:set_3d-vec __io__.lmt set from storage set_lmt:lib/lmt init_obj
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 1]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 1, 0]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 0, 1]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 1, 1]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [2, 2, 2]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [3, 3, 3]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [2147483647, 2147483647, 2147483647]
function set_lmt:set_3d-vec/insert
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [-2147483648, -2147483648, -2147483648]
function set_lmt:set_3d-vec/insert
tellraw @a "insert [0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 1], [1, 1, 1], [2, 2, 2], [3, 3, 3], [INT_MAX, INT_MAX, INT_MAX], [INT_MIN, INT_MIN, INT_MIN]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_3d-vec"}]

data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
function set_lmt:set_3d-vec/insert
tellraw @a "insert [0, 0, 0]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_3d-vec"}]
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 0, 1]
function set_lmt:set_3d-vec/insert
tellraw @a "insert [1, 0, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_3d-vec"}]

data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 1, 1]
function set_lmt:set_3d-vec/delete
tellraw @a "delete [1, 1, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_3d-vec"}]

data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
function set_lmt:set_3d-vec/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]
data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 1, 1]
function set_lmt:set_3d-vec/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]


tellraw @a "---[set_coordinates]-------------------------------------------------------------"

data merge storage set_lmt.__temp__:set_coordinates {__io__:{data:[0, 0, 0]}}
data modify storage set_lmt.__temp__:set_coordinates __io__.lmt set from storage set_lmt:lib/lmt init_obj
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [0, 0, 1]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [0, 1, 0]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [1, 0, 1]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [1, 1, 1]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [2, 2, 2]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [3, 3, 3]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [2147483647, 320, 2147483647]
function set_lmt:set_coordinates/insert
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [-2147483648, -64, -2147483648]
function set_lmt:set_coordinates/insert
tellraw @a "insert [0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 1], [1, 1, 1], [2, 2, 2], [3, 3, 3], [INT_MAX, 320, INT_MAX], [INT_MIN, -64, INT_MIN]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_coordinates"}]

data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [0, 0, 0]
function set_lmt:set_coordinates/insert
tellraw @a "insert [0, 0, 0]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_coordinates"}]
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [1, 0, 1]
function set_lmt:set_coordinates/insert
tellraw @a "insert [1, 0, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_coordinates"}]

data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [1, 1, 1]
function set_lmt:set_coordinates/delete
tellraw @a "delete [1, 1, 1]"
tellraw @a [{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:set_coordinates"}]

data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [0, 0, 0]
function set_lmt:set_coordinates/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_coordinates"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_coordinates"}]
data modify storage set_lmt.__temp__:set_coordinates __io__.data set value [1, 1, 1]
function set_lmt:set_coordinates/is_element
tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_coordinates"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_coordinates"}]