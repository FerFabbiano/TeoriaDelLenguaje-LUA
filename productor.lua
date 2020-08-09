local newProductor
local start = 0
local finish = 12

function productor()
     local i = 0
     while i < 10 do
          i = i + 1
          print("produce", i, coroutine.status( newProductor ))
          coroutine.yield(i)
          
     end
end

function consumer()
     while start < finish do
          local status, i = receive()
          if coroutine.status(newProductor) ~= 'dead' and i%2 == 0 then
            print("consume", i, status, coroutine.status(newProductor))
          end
          start = start + 1
     end
end

function receive()
     return coroutine.resume(newProductor)
end

newProductor = coroutine.create(productor)
consumer()
print(coroutine.resume(newProductor))