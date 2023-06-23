-- Importe as classes necessárias
require("Cliente")
require("Produto")
require("Totalizavel")
require("ItemVenda")
require("Venda")
require("Menu")

clientes = {}
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
produtos = {}
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
vendas = {}
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
    menu = Menu:new()
    opcao = '1'

    -- main menu loop that allows entering other menus
    while opcao ~= '0' do
        opcao = menu:exibirMenuPrincipal()
        if opcao == '1' then
            opcao_menu_cliente = '1'
            while opcao_menu_cliente ~= '0'  do
            opcao_menu_cliente = menu:exibirMenuCliente()
            print(opcao_menu_cliente)
            print("CHEGOU AQUI")
                if opcao_menu_cliente == '1' then
                    local client = Cliente:insere()
                    adicionarCliente(client)
                elseif opcao_menu_cliente == '2' then
                    print('Digite o nome do Cliente que quer remover: ')
                    local name = io.read()
                    removerCliente(name)
                elseif opcao_menu_cliente == '3' then
                    exibirClientes()
                else
                    break
                end
            end
        end
        if opcao == '2' then
        menu.exibirMenuProduto()
        end
        if opcao == '3' then
            menu.exibirMenuVenda()
        end
        if opcao == '0' then
            break
        end
    end
end
-- Execute a função principal
main()
