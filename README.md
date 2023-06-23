# Sistema de Gerenciamento Comercial
Este é um sistema de gerenciamento comercial desenvolvido em Lua. Ele permite a inclusão, alteração, remoção e visualização de dados de clientes, produtos e vendas. A interface em linha de comando foi implementada utilizando uma simulação de paradigma orientado a objetos em lua.

## Requisitos
Lua

## Executando o Sistema
Certifique-se de ter o Lua instalado em sua máquina.
Clone este repositório ou faça o download dos arquivos.
Abra um terminal e navegue até o diretório raiz do projeto.
Execute o seguinte comando para iniciar o sistema:
```
lua main.lua
```
Siga as instruções exibidas no menu para interagir com o sistema.

## Funcionalidades
- O sistema oferece as seguintes funcionalidades:
- Inclusão, alteração, remoção e visualização de clientes.
- Inclusão, alteração, remoção e visualização de produtos.
- Inclusão, remoção e visualização de vendas.
- Cálculo do valor total de uma venda.

## Estrutura do Projeto
- **main.lua**: Arquivo principal do sistema, responsável por inicializar o menu e controlar o fluxo de execução.
- **Pessoa.lua**: Classe abstrata que representa uma pessoa, contendo os atributos e métodos relacionados.
- **Cliente.lua**: Classe que representa um cliente, contendo os atributos e métodos relacionados.
- **Produto.lua**: Classe que representa um produto, contendo os atributos e métodos relacionados.
- **Totalizavel.lua**: Classe abstrata que define o método total para o cálculo do valor total.
- **ItemVenda.lua**: Classe que representa um item de venda, contendo os atributos e métodos relacionados.
- **Venda.lua**: Classe que representa uma venda, contendo os atributos e métodos relacionados.
- **Menu.lua**: Classe responsável pela exibição e interação com os menus do sistema.

## Observações
- A persistência de dados não foi implementada. Os dados são mantidos apenas durante a execução do programa.
- O tratamento de exeções não foi implementado, portanto as entradas do usuário devem estar corretas, caso contrário o programa será interrompido. Não utilize um Cliente ou Produto não cadastrado no sistema em uma venda.
