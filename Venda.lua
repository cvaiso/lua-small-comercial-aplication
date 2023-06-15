require('Totalizavel')

-- Definição da classe Venda, que herda de Totalizavel
Venda = {
  numero = "",
  data = "",
  cliente = nil,
  itens = {}
}

-- Método construtor da classe Venda
function Venda:new(numero, data, cliente)
  local obj = {}
  setmetatable(obj, { __index = self })
  self.__index = self
  obj.numero = numero
  obj.data = data
  obj.cliente = cliente
  obj.itens = {}
  return obj
end

-- Implementação do método total para Venda
function Venda:total()
  local soma = 0
  for _, item in ipairs(self.itens) do
    soma = soma + item:total()
  end
  return soma
end
