
Cuenta = {}

function Cuenta:new( saldo )
    local cuenta = {}

    setmetatable(cuenta , self)
    self.__index = self

    cuenta.saldo = saldo
    return cuenta

end

-- try(function()
-- Try block
--
-- end, function(e)
-- Except block. E.g.:
-- Use e for conditional catch
-- Re-raise with error(e)
-- end)
--

function Cuenta:transferencia(cuenta, cantidad)
    local correcto = false
    if (cantidad < 0) then
        error("Cantidad negativa")
    elseif (self.saldo >= cantidad) then

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


function Cuenta:tipoDeCuenta ()
    print( " Cuenta " )
end

CuentaEspecial = Cuenta:new()

function CuentaEspecial:tipoDeCuenta ()
    print( " Cuenta especial " )
end
