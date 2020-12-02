-- 全局函数 - 克隆表 : 返回参数表的副本
CloneTab = function(tab)
  local newTab = {}              -- 新表
  for key, val in pairs(tab) do  -- 将信标构造为参数表的副本表
    newTab[key] = val
  end
  return newTab                  -- 返回副本表
end

-- Shape基类
Shape = {}                  -- 声明基类
Shape.area = 0              -- 基类成员属性
function Shape:new(area)    -- Shape构造方法 : 克隆自己并返回
  local newShape = CloneTab(self)
  newShape.area = area or 0
  return newShape
end
function Shape:printArea()  -- Shape成员方法 : 输出面积
  print(self.area)
end
-- 实例化 Shape
local shapeA = Shape:new(10)
shapeA:printArea()

-- 子类 Square : 继承 Shape
Square = CloneTab(Shape)     -- 设置继承关系并声明子类
Square.side = 0              -- 子类Square成员属性
function Square:new(side)    -- 子类Square构造方法 : 克隆自己并返回
  local newSquare = CloneTab(Square)
  newSquare.side = side or 0
  newSquare.area = (side^2) or 0
  return newSquare
end
function Square:printArea()  -- 子类Square重写基类Shape方法 : 输出面积
  print(self.side .. " ^ 2 = " .. self.area)
end
function Square:countArea()  -- 子类Square特有成员方法 : 计算面积
  self.area = self.side ^ 2
end
-- 实例化子类 Square
local square = Square:new(2)
square:printArea()