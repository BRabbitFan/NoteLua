local student = {name = ""}     -- 定义类
function student:new(name)      -- 定义构造函数
  self.setName(name)
  return self
end
function student:setName(name)  -- 定义成员函数
  self.name = name
  return self
end
function student:getName()      -- 定义成员函数
  return self.name
end
local std1 = student:new("Lee")  -- "尝试实例化"
local std2 = student:new("Van")  -- "尝试实例化"
print(std1:getName())            --> 输出 Van , 可见还不能实现对类的实例化