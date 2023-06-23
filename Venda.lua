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
function Venda:insere()
    print('informe o numero da venda: ')
    local numero = io.read()
    print('informe a data da venda: ')
    local data = io.read()
    print('informe o nome do cliente da venda: ')
    local nome = io.read()
    -- procura o cliente na tabela atraves do nome
    local cliente = nil
    for _, c in ipairs(clientes) do
        if c.nome == nome then
            cliente = c
        end
    end
    return Venda:new(numero, data, cliente)
end
function Venda:adicionarItem(item)
  table.insert(self.itens, item)
end
function Venda:removerItem(codigo)
  for i, item in ipairs(self.itens) do
    if codigo == item.produto.codigo then
      table.remove(self.itens, i)
    end
  end
end
function Venda:exibir()
  print("Venda número:", self.numero)
  print("Data:", self.data)
  print("Cliente:", self.cliente.nome)
  for _, item in ipairs(self.itens) do
    item:exibirItemVenda()
  end
  print('O total da venda é de :'..self:total())
end
function Venda:total()
  local soma = 0
  for _, item in ipairs(self.itens) do
    soma = soma + item:total()
  end
  return soma
end
