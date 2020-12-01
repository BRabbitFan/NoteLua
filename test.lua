--[[

将要建立的类的成员属性与成员方法放入同一个table中 , 使用`.`与`:`调用成员 , 即可实现 Object 的功能 .  
(实际上还不能实现 , 需要配合 `Metatable` 元表实现)

#### Lua对象中的  `self`变量 与 `.` 与 `:`
- `.` 操作符 : 通过 `.` 操作符可访问类的成员变量 / 成员函数 .  
- `:` 操作符 : 通过 `:` 操作符可访问类的成员函数 , 同时将自动将 `self`参数 作为第一个参数传入 .  
- `self` 参数 : 如同C++中对象的this指针 , 指向对象自身 .  

]]
local metaTable = {}              -- 构造元表
local tab = {}
setmetatable(tab, metaTable)      -- 设置元表
metaTable.__metatable = "locked"  -- 禁止访问元表 , 设置访问失败提示词
print(getmetatable(tab))          -- 尝试访问元表失败 --> locked
metaTable.__metatable = nil       -- 解锁
print(getmetatable(tab))          -- 再次访问元表成功 --> table:xxxxx