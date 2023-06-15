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

function Cliente:display()
  print("Nome: " .. self.nome)
  print("Endereço: " .. self.endereco)
  print("RG: " .. self.rg)
  print("Data de Nascimento: " .. self.data_nascimento)
end
