-- Definição da classe Pessoa
Pessoa = {
  nome = "",
  endereco = ""
}
-- Método construtor da classe Pessoa
function Pessoa:new(nome, endereco)
  local obj = {}
  setmetatable(obj, self)
  self.__index = self
  obj.nome = nome
  obj.endereco = endereco
  return obj
end

