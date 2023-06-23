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
function Produto:insere()
    print('informe o codigo do produto: ')
    local codigo = io.read()
    print('informe o nome do produto: ')
    local nome = io.read()
    print('informe o valor do produto: ')
    local valor = io.read()
    local produto = Produto:new(codigo, nome, valor)
    return produto
end
function Produto:alterar()
    print('informe o novo codigo do produto: ')
    self.codigo = io.read()
    print('informe o novo nome do produto: ')
    self.nome = io.read()
    print('informe o novo valor do produto: ')
    self.valor = io.read()
end
function Produto:display()
    print('codigo: '..self.codigo..'\n')
    print('nome: '..self.nome..'\n')
    print('valor: '..self.valor..'\n')
end

