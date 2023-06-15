-- Definição da classe abstrata Totalizável
Totalizavel = {}

-- Método abstrato total (deve ser implementado nas subclasses)
function Totalizavel:total()
  error("Método 'total' deve ser implementado nas subclasses")
end
