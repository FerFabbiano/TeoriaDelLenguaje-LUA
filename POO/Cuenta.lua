

Cuenta = {}
Cuenta.__index = Cuenta

function Cuenta:new( saldo )

    local cuenta = {}
    setmetatable( cuenta, Cuenta )
    cuenta.saldo = saldo
    return cuenta

end

function Cuenta:transferencia(cuenta, cantidad)
    local correcto = false

    if (self.saldo >= cantidad) then

        self:reintegro(cantidad)
        correcto = cuenta:deposito( cuenta, cantidad )

    end

    return correcto
end



function Cuenta:deposito(cuenta, cantidad)
    local ingresoCorrecto = false

    if (cantidad > 0) then
        self.saldo = self.saldo + cantidad
        ingresoCorrecto = true
    end

    return ingresoCorrecto
end



function Cuenta:reintegro( cantidad )
    local reintegroCorrecto = false

    if (self.saldo >= cantidad) then
        self.saldo = self.saldo - cantidad
        reintegroCorrecto = true
    end

    return reintegroCorrecto
end
