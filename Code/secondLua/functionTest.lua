-- 定义函数
function func(n)
  return n
end
function printNumber(a, b, c)
  print(a + b + c())
end
-- 使用函数赋值变量
func2 = func
-- 使用函数传参
printNumber(func(5), func2(5), 
  function ()
    return 5
  end
)