local metaTab = {}                              -- 构造元表
local tab = {k1="v1", k2="v2", k3="v3"}
setmetatable(tab, metaTab)                      -- 设置元表
-- 作为function --
metaTab.__newindex = function(myTab, idx, val)  -- 实现__newindex元方法 , 参数 : 表自身 , 索引 , 值
  print("Cannot assign value to \""..idx..":"..val.."\" (no key name: \""..idx.."\")")
end                                             -- 输出错误提示
tab.k4 = "v4"
-- 作为table --
local errTab = {}
metaTab.__newindex = errTab  --> Cannot assign value to "k4:v4" (no key name: "k4")
tab.k4 = "v4"
print(tab.k4, errTab.k4)     --> nil	v4