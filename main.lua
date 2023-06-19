-- Importe as classes necessárias
require("Cliente")
require("Produto")
require("Totalizavel")
require("ItemVenda")
require("Venda")
require("Menu")

local clientes = {}
-- Função para adicionar um cliente ao array
function adicionarCliente(cliente)
  table.insert(clientes, cliente)
end
function removerCliente(nome)
  for i, cliente in ipairs(clientes) do
    if cliente.nome == nome then
      table.remove(clientes, i)
      break
    end
  end
end
-- Função para exibir os clientes do array
function exibirClientes()
  print("Lista de clientes:")
  for i, cliente in ipairs(clientes) do
    cliente:display()
  end
end
local produtos = {}
-- funcao para adicionar produtos ao array
function adicionarProduto(produto)
  table.insert(produtos, produto)
end
function removerProduto(codigo)
  for _, produto in ipairs(produtos) do
    if produto.codigo == codigo then
      table.remove(produtos, codigo)
      break
    end
  end
end
-- Função para exibir os produtos do array
function exibirProdutos()
  print("Lista de produtos:")
  for i, produto in ipairs(produtos) do
    produto:display()
  end
end
local vendas = {}
-- funcao para adicionar vendas ao array
function adicionarVenda(venda)
  table.insert(vendas, venda)
end
function removerVenda(numero)
  for _, venda in ipairs(vendas) do
    if venda.numero == numero then
      table.remove(vendas, numero)
      break
    end
  end
end
-- Função para exibir os vendas do array
function exibirVendas()
  print("Lista de Vendas:")
  for _, venda in ipairs(vendas) do
    venda:display()
  end
end
function main()

-- Definição da tabela de clientes
produto1 = Produto:new("001", "Placa mãe","329.98")
produto1 = Produto:new("002", "Processador","720.00")
venda1 = Venda:new("v001", "segunda1","cliente1")
adicionarVenda(venda1)

itemvenda1 = ItemVenda:new(produto1, 2)
-- Qual o erro na linha abaixo?
venda1:adicionarItem(itemvenda1)
venda1:exibirVendas()
end

-- Execute a função principal
main()
