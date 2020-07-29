require 'Cliente'
require 'Cuenta'


cliente1 = Cliente:new("Pedro")

cliente2 = Cliente:new("Juan")

cliente1:crearCuenta( Cuenta:new( 1000 ) )

cliente2:crearCuenta( CuentaEspecial:new( 1000 ) )

cliente1:pagarConCuenta( cliente2, 200 )

print("Saldo del cliente 1 :" , cliente1:verSaldo())

print("Saldo del cliente 2 :" , cliente2:verSaldo())

cliente1.cuenta:tipoDeCuenta()

cliente2.cuenta:tipoDeCuenta()
