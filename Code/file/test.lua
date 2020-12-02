local file                       -- 句柄

file = io.open("test.txt", "w")  -- 打开文件 (写模式)
file:write("text test")          -- 写入数据
file:close()                     -- 关闭文件

file = io.open("test.txt", "r")  -- 打开文件 (读模式)
file:seek("set", 5)              -- 跳转位置 (开头处5字节后)
io.stdout:write(file:read("L"))  -- 读取一行 , 输出  --> test