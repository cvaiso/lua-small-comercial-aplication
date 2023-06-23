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
  return tonumber(self.valor) * tonumber(self.quantidade)
end
-- metodo exibirItemVenda
function ItemVenda:exibirItemVenda()
  print("Item da venda:")
  print("Codigo do produto: " .. self.produto.codigo)
  print("Nome do produto: " .. self.produto.nome)
  print("Valor do produto: " .. self.produto.valor)
  print("Quantidade: " .. self.quantidade)
  print("Total: " .. self:total())
end
