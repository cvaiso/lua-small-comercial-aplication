-- Definição da classe Menu
Menu = {}

-- Método construtor da classe Venda
function Menu:new()
  local obj = {}
  setmetatable(obj, { __index = self })
  self.__index = self
  return obj
end
-- Função para exibir o menu principal
function Menu:exibirMenuPrincipal()
    local opcao = ""
    print("Selecione uma opção:")
    print("1. Cliente")
    print("2. Produto")
    print("3. Venda")
    print("0. Sair")
    io.write("Opção: ")
    opcao = io.read()
    return opcao
end
-- Função para exibir o menu do cliente
function Menu:exibirMenuCliente()
  print("\nMenu Cliente:")
  print("1. Adicionar cliente")
  print("2. Remover cliente")
  print("3. Visualizar clientes")
  print("4. Alterar clientes")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read()
  return input
end
-- Função para exibir o menu do produto
function Menu:exibirMenuProduto()
  print("\nMenu Produto:")
  print("1. Adicionar produto")
  print("2. Remover produto")
  print("3. Visualizar produtos")
  print("4. Alterar produtos")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read()
  return input
end
-- Função para exibir o menu da venda
function Menu:exibirMenuVenda()
  print("\nMenu Venda:")
  print("1. Realizar venda")
  print("2. Remover venda")
  print("3. Visualizar venda")
  print("0. Voltar")
  io.write("Opção: ")
  local input = io.read()
  return input
end
