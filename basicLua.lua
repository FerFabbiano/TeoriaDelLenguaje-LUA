
--tabla
tabla = {}


--Con claves definidas
Lib = {
  foo = function (x,y) return x + y end,
  goo = function (x,y) return x - y end
}

--Con claves sin definir
tab = {math.sin(0), math.sin(1), math.sin(2), math.sin(3),
       math.sin(4), math.sin(5), math.sin(6), math.sin(7)
}

Lib.woo = function (x,y) return 10 end

print( Lib.woo() )

for k,v in pairs(tab) do
    print( k , v )
end

print( tab[1] )


--array

tabla = {}

for i = 1,10 do
    tabla[i] = 0
end

tabla[0] = 12

print ( tabla[0] )


--types
print(type("Hello world"))  --> string
print(type(10.4*3))         --> number
print(type(print))          --> funcion
print(type(type))           --> funcion
print(type(true))           --> booleano
print(type(nil))            --> nil
print(type(type(X)))        --> No importa que valor pongas a X siempre va a ser una string
-- Type devuelve string
