-- Definição da classe Venda, que herda de Totalizavel
-- Método construtor da classe Venda
function Menu:new()
  local obj = {}
  setmetatable(obj, { __index = self })
  self.__index = self
  return obj
end
-- Função para exibir o menu principal
function exibirMenuPrincipal()
    local opcao = ""
    while opcao ~= "0" do
    print("Selecione uma opção:")
    print("1. Cliente")
    print("2. Produto")
    print("3. Venda")
    print("0. Sair")
    io.write("Opção: ")
    opcao = io.read()

    if opcao == "1" then
      exibirMenuCliente()
    elseif opcao == "2" then
      exibirMenuProduto()
    elseif opcao == "3" then
      exibirMenuVenda()
    elseif opcao == "0" then
      print("Encerrando o programa...")
    else
      print("Opção inválida!")
    end
    end
end
-- Função para exibir o menu do cliente
function exibirMenuCliente()
  print("\nMenu Cliente:")
  print("1. Adicionar cliente")
  print("2. Remover cliente")
  print("3. Visualizar clientes")
  print("4. Editar cliente")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read
  return input
end

-- Função para exibir o menu do produto
function exibirMenuProduto()
  print("\nMenu Produto:")
  print("1. Adicionar produto")
  print("2. Remover produto")
  print("3. Visualizar produtos")
  print("4. Editar produto")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read
  return input
end

-- Função para exibir o menu da venda
function exibirMenuVenda()
  print("\nMenu Venda:")
  print("1. Realizar venda")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read
  return input
end
