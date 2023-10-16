require 'terminal-table'

def listar_produtos
    limpar_tela

    mensagem_amarelo("====== Lista de produtos ========", false, false)

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
        # repo = ProdutoServico.new(JsonRepositorio, "db/produtos.json")
        repo = ProdutoServico.new(CsvRepositorio, "db/produtos.csv")
        repo.todos.each do |produto|
            t.add_row [produto.id, produto.nome, produto.descricao, produto.preco, produto.quantidade]
        end
    end
      
    puts table

    mensagem_amarelo("Digite enter para continuar ...", false, false)
    gets
    limpar_tela
end