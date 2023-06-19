require('Totalizavel')
require('Produto')
require('ItemVenda')

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
-- Método para adicionar itens a venda
function Venda:adicionarItem(item)
  table.insert(self.itens, item)
end
-- Método para remover itens da venda
function Venda:removerItem(item)
  for i, it in ipairs(self.itens) do
    if it == item then
      table.remove(self.itens, i)
    end
  end
end
-- Método para exibir a venda
function Venda:exibirVendas()
  print("Venda número:", self.numero)
  print("Data:", self.data)
  print("Cliente:", self.cliente)
  for _, item in ipairs(self.itens) do
    item:exibirItemVenda()
  end
end
-- Implementação do método total para Venda
function Venda:total()
  local soma = 0
  for _, item in ipairs(self.itens) do
    soma = soma + item:total()
  end
  return soma
end
