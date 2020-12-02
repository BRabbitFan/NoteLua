-- 基类Vehicle
function Vehicle(name, capacity)
  local selfTab = {}                -- 实例(私有)
  selfTab.name = ""                 -- 成员属性 : 名称
  selfTab.capacity =  0             -- 成员属性 : 载客量
  local function init()             -- 构造方法(私有) : 闭合函数
    selfTab.name = name or ""
    selfTab.capacity = capacity or 0
  end
  function selfTab:printMsg()       -- 成员方法 : 输出自身信息
    print(self.name .. " max capacity is " ..self.capacity)
  end
  init()                            -- 构造实例
  return selfTab                    -- 返回实例
end
-- 实例化Vehicle
local vehicleA = Vehicle("boat", 10)
vehicleA:printMsg()

-- 子类Car
function Car(name, capacity, wheels)
  local selfTab = Vehicle(name, capacity)  -- 继承基类(构造一个基类实例)
  selfTab.wheels = 0                       -- 成员属性 : 轮子数量
  local function init()                    -- 构造方法(私有) : 闭合函数
    selfTab.wheels = wheels or 0
  end
  function selfTab:printCap()              -- 重写基类成员方法 : 输出自身信息
    print(self.name .. " max capacity is " ..self.capacity .. " , and wheel num is " .. self.wheels)
  end
  init()                                   -- 构造实例
  return selfTab                           -- 返回实例
end
-- 实例化Car
local carA = Car("bus", 30, 4)
carA:printMsg()