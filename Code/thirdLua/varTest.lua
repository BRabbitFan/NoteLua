a = 3             -- 全局变量
local b = 4       -- 局部变量
function fooFunc()
  c = 5           -- 全局变量
  local d = 6     -- 局部变量
end
fooFunc()
print(a, b, c, d) --> 3 4 5 nil