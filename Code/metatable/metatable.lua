local metaTable = {}              -- 构造元表
local tab = {}
setmetatable(tab, metaTable)      -- 设置元表
metaTable.__metatable = "locked"  -- 禁止访问元表 , 设置访问失败提示词
print(getmetatable(tab))          -- 尝试访问元表失败 --> locked
metaTable.__metatable = nil       -- 解锁
print(getmetatable(tab))          -- 再次访问元表成功 --> table:xxxxx