----------------------------------------定义变量----------------------------------------
-- 定义变量 num 值为 100
num = 100
-- 定义局部变量 lnum 值为200
local lnum = 200
----------------------------------------定义方法----------------------------------------
-- 定义方法 printNum(num) 其打印传入的参数
function printNum(num)
  print(num);
end
-- 调用方法printNum(num) , 传入上述局部变量 lnum
printNum(lnum)
----------------------------------------条件语句----------------------------------------
-- 定义方法max(a,b)返回两数中较大者
function max(a, b)
  if a > b then
    return a
  else
    return b
  end
end
-- 调用函数max(a,b),传入50,100. 并将结果输出.
print(max(50, 100))
----------------------------------------循环语句----------------------------------------
--定义方法count(a,b)返回两数间所有数值的累加和
function count(a, b)
  count = 0
  for var=a, b do
    count = count + var
  end
  return count
end
--调用函数count(a,b),计算1到100的累加和并输出
print(count(1,100))