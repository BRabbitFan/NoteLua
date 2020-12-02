local newProductor
MaxNum = 10

Productor = function()
  local num = 0
  while num < MaxNum do
    num = num + 1
    print("send : " .. num)
    Send(num)
  end
end

Consumer = function()
  local num = 0
  while num < MaxNum do
    print("recv : " .. num)
    num = Recv()
  end
end

Send = function(x)
  coroutine.yield(x)
end

Recv = function()
  local status, value = coroutine.resume(newProductor)
  return value, status
end

newProductor = coroutine.create(Productor)
Consumer()