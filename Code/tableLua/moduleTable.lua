-- 自定义模块 module
module = {}                   -- 创建表   
module.constant = "MODULE"    -- 定义常量
local function privateFunc()  -- 定义私有函数
  print("I AM " .. module.constant)
end
function module.publicFunc()  -- 定义公有函数
  privateFunc()
end
return module                 -- 返回表