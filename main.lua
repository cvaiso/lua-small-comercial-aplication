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
function encontraCliente(nome)
    for _, cliente in ipairs(clientes) do
        if cliente.nome == nome then
            return cliente
        end
    end
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
  for _, cliente in ipairs(clientes) do
    cliente:display()
  end
end
produtos = {}
-- funcao para adicionar produtos ao array
function adicionarProduto(produto)
  table.insert(produtos, produto)
end
function encontraProduto(codigo)
    for _, produto in ipairs(produtos) do
        if produto.codigo == codigo then
            return produto
        end
    end
end
function removerProduto(codigo)
  for i, produto in ipairs(produtos) do
    if produto.codigo == codigo then
        print('esse eh o codigo'..codigo..'esse eh o produto.codigo'..produto.codigo)
      table.remove(produtos, i)
      break
    end
  end
end
-- Função para exibir os produtos do array
function exibirProdutos()
  print("Lista de produtos:")
  for _, produto in ipairs(produtos) do
    produto:display()
  end
end
vendas = {}
-- funcao para adicionar vendas ao array
function adicionarVenda(venda)
  table.insert(vendas, venda)
end
function removerVenda(numero)
  for i, venda in ipairs(vendas) do
    if venda.numero == numero then
      table.remove(vendas, i)
      break
    end
  end
end
-- Função para exibir os vendas do array
function exibirVendas()
  print("Lista de Vendas:")
  for _, venda in ipairs(vendas) do
    venda:exibir()
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
                if opcao_menu_cliente == '1' then
                    local client = Cliente:insere()
                    adicionarCliente(client)
                elseif opcao_menu_cliente == '2' then
                    print('Digite o nome do Cliente que quer remover: ')
                    local name = io.read()
                    removerCliente(name)
                elseif opcao_menu_cliente == '3' then
                    exibirClientes()
                elseif opcao_menu_cliente == '4' then
                    exibirClientes()
                    print('Digite o nome do cliente que deseja alterar: ')
                    local name = io.read()
                    local cliente = encontraCliente(name)
                    cliente:alterar()
                else
                    opcao_menu_cliente = '0'
                    break
                end
            end
        end
        if opcao == '2' then
            opcao_menu_produto = '1'
            while opcao_menu_produto ~= '0'  do
            opcao_menu_produto = menu:exibirMenuProduto()
            print(opcao_menu_produto)
                if opcao_menu_produto == '1' then
                    local produto = Produto:insere()
                    adicionarProduto(produto)
                elseif opcao_menu_produto == '2' then
                    print('Digite o codigo do Produto que quer remover: ')
                    local codigo = io.read()
                    removerProduto(codigo)
                elseif opcao_menu_produto == '3' then
                    exibirProdutos()
                elseif opcao_menu_produto == '4' then
                    exibirProdutos()
                    print('Digite o codigo do produto que deseja alterar: ')
                    local codigo = io.read()
                    local prod = encontraProduto(codigo)
                    prod:alterar()
                else
                    opcao_menu_produto = '0'
                    break
                end
            end
        end
        if opcao == '3' then
            opcao_menu_venda = '1'
            while opcao_menu_venda ~= '0'  do
            opcao_menu_venda = menu:exibirMenuVenda()
            if opcao_menu_venda == '1' then
                local venda = Venda:insere()
                -- temos que realizar uma venda
                -- criando a venda solicitando numero, data e cliente 
                local entrada = '1'
                local numero_de_passadas = 0
                while entrada ~= '0' do
                    if numero_de_passadas == 0 then
                        numero_de_passadas = numero_de_passadas + 1
                    else
                        venda:exibir()
                        print('Digite 1 para adicionar item a venda: \n')
                        print('Digite 2 para remover item da venda: \n')
                        print('Digite 0 para finalizar venda: \n')
                        print('Opção: ')
                        entrada = io.read()
                    end
                    if entrada == '1' then
                        exibirProdutos()
                        print('Digite o id o codigo do produto que deseja adicionar a venda: ')
                        local codigo = io.read()
                        prod = encontraProduto(codigo)
                        print('Digite a quantidade do produto que deseja adicionar a venda: ')
                        quant = io.read()
                        item = ItemVenda:new(prod, quant)
                        venda:adicionarItem(item)
                    end
                    if entrada == '2' then
                        print('Digite o codigo do produto que deseja remover da venda: ')
                        local codigo = io.read()
                        venda:removerItem(codigo)
                    end
                    if entrada == '0' then
                        venda:exibir()
                        adicionarVenda(venda)
                    end
            end
            elseif opcao_menu_venda == '2' then
                exibirVendas()
                print('Digite o codigo da venda que gostaria de remover')
                local codigo = io.read()
                removerVenda(codigo)
            elseif opcao_menu_venda == '3' then
                exibirVendas()
            else
                opcao_menu_produto = '0'
                break
            end
        end
        end
        if opcao == '0' then
            break
        end
    end
end

main()
