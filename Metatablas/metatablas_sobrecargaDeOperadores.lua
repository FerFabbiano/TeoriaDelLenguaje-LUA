---- LUA METATABLAS ----
-- Usuario Fortnite: Ferfa99

function Vector(x, y) end
function Matriz(v1, v2) end

local vec_metatable = {
  __add = function (v1, v2)
    return Vector(
      v1.x + v2.x,
      v1.y + v2.y
    )
  end,

  __call = function (self)
    print("(" .. self.x .. " " .. self.y .. ")")
  end
}

function Vector(x, y)
  local vec = {
    x = x or 0,
    y = y or 0
  }

  setmetatable(vec, vec_metatable)

  return vec
end

local v1 = Vector(2, 4)
local v2 = Vector(3, 5)
local v3 = Vector(0, 0)

v3 = v1 + v2
v3()

local mat_metatable = {
  __add = function (m1, m2)
    return Matriz(
      m1.v1 + m2.v1,
      m1.v2 + m2.v2
    )
  end,

  __call = function (self)
    print("La matriz original es: \n")
    print(" " .. self.v1.x .. " " .. self.v1.y)
    print(" " .. self.v2.x .. " " .. self.v2.y)

    local determinante = self.v1.x * self.v2.y - self.v1.y * self.v2.x
    print("El determinante de la matriz es: " .. determinante)
  end
}

function Matriz(v1, v2)
  local mat = {
    v1 = v1 or 0,
    v2 = v2 or 0
  }
  setmetatable(mat, mat_metatable)
  return mat
end

local m1 = Matriz(v1, v2)
local m2 = Matriz(v2, v3)

m2 = m2 + m1

m2()
