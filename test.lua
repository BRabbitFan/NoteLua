--[[

将要建立的类的成员属性与成员方法放入同一个table中 , 使用`.`与`:`调用成员 , 即可实现 Object 的功能 .  
(实际上还不能实现 , 需要配合 `Metatable` 元表实现)

#### Lua对象中的  `self`变量 与 `.` 与 `:`
- `.` 操作符 : 通过 `.` 操作符可访问类的成员变量 / 成员函数 .  
- `:` 操作符 : 通过 `:` 操作符可访问类的成员函数 , 同时将自动将 `self`参数 作为第一个参数传入 .  
- `self` 参数 : 如同C++中对象的this指针 , 指向对象自身 .  

]]
local function iter(tab, idx)    -- 迭代器定义
  idx = idx + 1
  local val = tab[idx]
  if val then
    return idx, val
  end
end
local function pairs(tab)        -- 包装器定义
  return iter, tab, 0            -- 迭代器函数iter , 恒定状态tab , 控制变量初始值0
end
local tab = {1, 2, 3, 4, 5}
for key, value in pairs(tab) do  -- 使用迭代器  --> 1 1 \n 2 2 \n 3 3 \n 4 4 \n 5 5 \n
  print(key .. " " .. value)
end