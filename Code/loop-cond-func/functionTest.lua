-- 定义局部方法 printNum(num) 其打印传入的参数
function printNum(num1, num2)
  return num1, num2;
end
print(printNum(10, 100))
-- 定义局部方法 average(...) 其返回一组数的平均值
function average(num, ...)
  local result = 0
  local arg = {...}
  for k, v in pairs(arg) do
    result = result + v
  end
  return result / select("#", ...)
end
print(average(1,2,3,4,5))