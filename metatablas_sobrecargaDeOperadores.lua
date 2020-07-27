function Vec2(x, y) end
function Matrix(a, b) end

local mat_metatable = {
  __add = function(a, b) -- Sobrecarga de operadores
    return Matrix(
      a.v1 + b.v1,
      a.v2 + b.v2
    )
  end,

  __call = function(self) -- Sobrecarga del operador paréntesis
    print("La matriz original es: \n")
    print(" " .. self.v1.x .. " " .. self.v1.y)
    print(" " .. self.v2.x .. " " .. self.v2.y .. " " .. "\n")

    local determinante = self.v1.x * self.v2.y - self.v1.y * self.v2.x
    print("El determinante de la matriz es: " .. determinante)

    print("La matriz traspuesta es: \n")
    print(" " .. self.v1.x .. " " .. self.v2.x)
    print(" " .. self.v1.y .. " " .. self.v2.y .. " " .. "\n")

  end,
}

local vec2_meta = {
  __add = function(a, b) -- Sobrecarga de operadores
    return Vec2(
      a.x + b.x,
      a.y + b.y
    )
  end,

  __sub = function(a, b) -- Sobrecarga de operadores
    return Vec2(
      a.x - b.x,
      a.y - b.y
    )
  end,

  __call = function(self) -- Sobrecarga del operador paréntesis
    print("{" .. self.x .. "," .. self.y .. "}")
  end,
}

function Vec2(x, y)
  local v = {
    x = x or 0,
    y = y or 0,
  }

  setmetatable(v, vec2_meta)

  return v
end

function Matrix(v1, v2)
  local mat = {
    v1 = v1 or 0,
    v2 = v2 or 0,
  }

  setmetatable(mat, mat_metatable)

  return mat
end

local a = Vec2(1, 2)
local b = Vec2(4, 5)
local c = Vec2(2, 3)
local d = Vec2(3, 2)


local m = Matrix(a, b)
local m2 = Matrix(c, d)
local m3 = Matrix(0,0)

m3 = m + m2

m3()
