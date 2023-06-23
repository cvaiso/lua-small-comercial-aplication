require("Pessoa")
-- CRIANDO A CLASSE CLIENTE
Cliente = Pessoa:new()

-- Atributos adicionais da classe Cliente
Cliente.rg = ""
Cliente.data_nascimento = ""

-- Método construtor da classe Cliente
function Cliente:new(nome, endereco, rg, data_nascimento)
  local obj = Pessoa:new(nome, endereco)
  setmetatable(obj, { __index = Cliente})
  self.__index = self
  obj.rg = rg
  obj.data_nascimento = data_nascimento
  return obj
end

-- pede ao usuario para inserir os dados do cliente
function Cliente:insere()
  print("Digite o nome do cliente: ")
  local nome = io.read()
  print("Digite o endereço do cliente: ")
  local endereco = io.read()
  print("Digite o RG do cliente: ")
  local rg = io.read()
  print("Digite a data de nascimento do cliente: ")
  local data_nascimento = io.read()
  return Cliente:new(nome, endereco, rg, data_nascimento)
end

function Cliente:display()
  print("Nome: " .. self.nome)
  print("Endereço: " .. self.endereco)
  print("RG: " .. self.rg)
  print("Data de Nascimento: " .. self.data_nascimento)
end
