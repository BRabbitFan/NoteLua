local metaTab = {}                        -- 构造元表
local tab = {1, 2, 3, 4, 5}
setmetatable(tab, metaTab)                -- 设置元表
-- 作为function --
metaTab.__index = function(myTable, key)  -- 实现__index元方法 , 第一个参数为表自身 , 第二个参数为不存在的那个索引
  return "no key name : " .. key          -- 提示没有这个key
end
print(tab.myKey)                          -- 尝试调用不存在的索引 --> no key name : myKey
-- 作为table --
metaTab.__index = {myKey="myValue"}       -- 设置 __index 元方法表
print(tab.myKey)                          -- 尝试调用不存在的索引 , 但该索引存在元方法表中 --> myValue
print(tab.mykey)                          -- 尝试调用不存在的索引 , 该索引不存在元方法表中 --> nil