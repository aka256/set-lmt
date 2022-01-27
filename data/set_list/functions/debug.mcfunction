#> set_list:debug
# @user

tellraw @a "---[insert 0 & 1]---------------------------------------------"

data modify storage set_list.__temp__: __io__.list set value []
data modify storage set_list.__temp__: __io__.data set value 0
function set_list:insert
data modify storage set_list.__temp__: __io__.data set value 1
function set_list:insert

tellraw @a ["list: ",{"nbt":"__io__.list", "storage": "set_list.__temp__:"}]

tellraw @a "---[is_element: 0]---------------------------------------------"

data modify storage set_list.__temp__: __io__.data set value 0
function set_list:is_element

tellraw @a ["is_element 0: ",{"nbt":"__io__.is_element", "storage": "set_list.__temp__:"}]

tellraw @a "---[is_element: 2]---------------------------------------------"

data modify storage set_list.__temp__: __io__.data set value 2
function set_list:is_element

tellraw @a ["is_element 2: ",{"nbt":"__io__.is_element", "storage": "set_list.__temp__:"}]

tellraw @a "---[delete 1]---------------------------------------------"

data modify storage set_list.__temp__: __io__.data set value 1
function set_list:delete

tellraw @a ["list: ",{"nbt":"__io__.list", "storage": "set_list.__temp__:"}]