
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

    return self.cuenta:transferencia( cliente.cuenta, monto )
end

function Cliente:verSaldo()
    return self.cuenta.saldo
end

function Cliente:darCuenta()
    return self.cuenta
end
