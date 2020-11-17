-- 定义方法max(a,b)返回两数中较大者
function max(a, b)
  if a > b then
    return a
  elseif a < b then
    return b
  else
    return b
  end
end
-- 调用函数max(a,b),传入50,100. 并将结果输出.
print(max(50, 100))