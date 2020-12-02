print("Person--------------------")
-- 定义Person基类
Person = {
  -- 成员属性
  name = "" ,  -- 名字
  age = 0,     -- 年龄
  num = 0      -- 人数 (实例与子类实例的总数)
}
-- 构造方法
function Person:new(name, age)
  local newPerson = {}            -- 实例
  setmetatable(newPerson, self);  -- 设置实例的元表(基类)为Person类自身
  self.__index = self;            -- 设置当访问实例中不存在的属性时 , 来Person类找
  newPerson.name = name or ""     -- 为成员属性赋值
  newPerson.age = age or 0
  self.num = self.num + 1         -- 静态变量人数累加
  return newPerson                -- 返回构造好的实例
end
-- 成员方法
function Person:speak()
  print(self.name .. " " .. self.age .. ". TotalNum:" .. self.num)
end

-- 实例化Person类
local personA = Person:new("Lee", 20)
local personB = Person:new("Van", 30)
personA:speak()
personB:speak()

print("Student-------------------")
-- 定义Student子类继承Person基类
Student = {
  -- 子类成员属性
  major = ""
}
-- 设置继承关系
setmetatable(Student, Person)
-- Student构造方法
function Student:new(name, age, major)
  local newStudent = Person:new(name, age)  -- 实例(调用基类构造方法)
  setmetatable(newStudent, self);  -- 设置实例的元表(基类)为Person类自身
  self.__index = self;             -- 设置当访问实例中不存在的属性时 , 来Person类找
  newStudent.major = major or ""
  return newStudent
end
-- Student子类特有成员方法
function Student:myMajor()
  print(self.name .. " major is " .. self.major .. ". TotalNum:" .. self.num)
end
-- Student子类重写基类Person的成员方法
function Student:speak()
  io.stdout:write(self.name .. " " .. self.age .. " student ; ")
end

-- 实例化Student类
local studentA = Student:new("Mike", 18, "Math")
local studentB = Student:new("Lucy", 19, "Music")
studentA:speak()
studentA:myMajor()
studentB:speak()
studentB:myMajor()