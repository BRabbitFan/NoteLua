local co = coroutine.create(         -- 创建协程
  function(i)  
    print(i)
  end
)
coroutine.resume(co, 1)              -- 运行协程           --> 1
print(coroutine.status(co))          -- 查看状态           --> dead
print("----------")
co = coroutine.wrap(                 -- 创建协程
  function(i)
    print(i)
  end
)
co(1)                                -- 运行协程           --> 1
print("----------")
co = coroutine.create(
  function()
    for i = 1, 10, 1 do
      print(i)
      if i == 3 then
        print(coroutine.status(co))  -- 查看状态           --> running
        print(coroutine.running())   -- 查看正在运行的协程  --> thread:xxx false
      end
      coroutine.yield()              -- 挂起协程
    end
  end
)
coroutine.resume(co)                 -- 运行协程           --> 1
coroutine.resume(co)                 -- 运行协程           --> 2
coroutine.resume(co)                 -- 运行协程           --> 3
print(coroutine.status(co))          -- 查看状态           --> suspended
print(coroutine.running())           -- 查看正在运行的协程  --> thread:xxx true