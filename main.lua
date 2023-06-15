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

function main()
-- Definição da tabela de clientes
cliente1 = Cliente:new("Maria", "Rua A","rg123","1997")
cliente2 = Cliente:new("João", "Rua B","rg123","1997")
cliente3 = Cliente:new("Ana", "Rua C","rg123","1997")
adicionarCliente(cliente1)
adicionarCliente(cliente2)
adicionarCliente(cliente3)
exibirClientes()
removerCliente("Maria")
exibirClientes()
end
-- Execute a função principal
main()
