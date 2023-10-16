require 'terminal-table'

def retirar_estoque
    limpar_tela

    mensagem_amarelo("====== Escolha um dos produtos abaixo ========", false, false)

    table = Terminal::Table.new do |t|
        t.headings = ['ID', 'Nome', 'Quantidade']
        # repo = ProdutoServico.new(JsonRepositorio, "db/produtos.json")
        repo = ProdutoServico.new(CsvRepositorio, "db/produtos.csv")
        repo.todos.each do |produto|
            t.add_row [produto.id, produto.nome, produto.quantidade]
        end
    end
      
    puts table

    mensagem_azul("Digite o ID do produto:", false, false)
    id = gets.to_i
    
    # produto = ProdutoServico.new(JsonRepositorio, "db/produtos.json").todos.find{|p| p.id == id}
    produto = ProdutoServico.new(CsvRepositorio, "db/produtos.csv").todos.find{|p| p.id == id}
    unless produto 
        limpar_tela
        mensagem_vermelho("Produto do ID (#{id}) não encontrado na lista", false, false)
        mensagem_amarelo("Deseja digitar o numero novamente? (s/n)", false, false)
        opcao = gets.chomp.downcase
        limpar_tela

        if opcao == "s" || opcao == "sim"
            retirar_estoque
        end

        return
    end


    limpar_tela
    mensagem_azul("Digite a quantidade que deseja retirar do estoque do produto: #{amarelo(produto.nome)}", false, false)
    mensagem_verde("Quantidade atual: #{amarelo(produto.quantidade)}", false, false)
    quantidade_retirada = gets.to_i
    produto.quantidade = produto.quantidade - quantidade_retirada

    # ProdutoServico.new(JsonRepositorio, "db/produtos.json").atualizar(produto)
    ProdutoServico.new(CsvRepositorio, "db/produtos.csv").atualizar(produto)

    mensagem_verde("Retirada realizada com sucesso!", true, true, 3)
    listar_produtos
end