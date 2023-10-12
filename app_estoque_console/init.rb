require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastrar_produto"
require_relative "core/listar_produtos"
require_relative "core/retirar_estoque"

produtos = [
    {
        id: 1,
        nome: "Maça",
        descricao: "Maça da turma da mônica",
        preco: 2.5,
        quantidade: 20
    },
    {
        id: 2,
        nome: "Banana",
        descricao: "Nanica",
        preco: "1.5",
        quantidade: 30
    }
]
iniciar_menu(produtos)