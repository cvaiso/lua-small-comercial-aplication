require('Totalizavel')
-- Definição da classe ItemVenda, que herda de Totalizável
ItemVenda = {
  produto = nil,
  valor = 0,
  quantidade = 0
}

-- Método construtor da classe ItemVenda
function ItemVenda:new(produto, quantidade)
  local obj = {}
  setmetatable(obj,{ __index = self} )
  self.__index = self
  obj.produto = produto
  obj.valor = produto.valor
  obj.quantidade = quantidade
  return obj
end

-- Implementação do método total para ItemVenda
function ItemVenda:total()
  return self.valor * self.quantidade
end
