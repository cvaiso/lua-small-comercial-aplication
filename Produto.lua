-- Definição da classe Produto
Produto = {
  codigo = "",
  nome = "",
  valor = 0
}

-- Método construtor da classe Produto
function Produto:new(codigo, nome, valor)
  local obj = {}
  setmetatable(obj, self)
  self.__index = self
  obj.codigo = codigo
  obj.nome = nome
  obj.valor = valor
  return obj
end

function Produto:display()
    print('codigo: '..self.codigo..'\n')
    print('nome: '..self.nome..'\n')
    print('valor: '..self.valor..'\n')
end

