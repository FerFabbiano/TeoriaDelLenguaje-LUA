
Cliente = {}
Cliente.__index = Cliente

function Cliente:new( nombre )

    local cliente = {}
    setmetatable( cliente, Cliente)
    cliente.nombre = nombre
    return cliente

end

function Cliente:crearCuenta( cuenta )
    if cuenta ~= nil then
        self.cuenta = cuenta
    end

end

function Cliente:pagarConCuenta( cliente , monto )

<<<<<<< HEAD
    print(self.nombre, "le esta pagando", monto, "a", cliente.nombre )

=======
>>>>>>> 40c61997eb7ee93a3ab7a91d9494881ae7626baf
    return self.cuenta:transferencia( cliente.cuenta, monto )
end

function Cliente:verSaldo()
    return self.cuenta.saldo
end

function Cliente:darCuenta()
    return self.cuenta
end
