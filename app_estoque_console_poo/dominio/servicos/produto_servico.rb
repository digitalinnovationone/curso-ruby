class ProdutoServico # unit of work
    def initialize(repo, arquivo)
        @repo = repo
        @arquivo = arquivo
    end

    def todos
        dados = @repo.ler(@arquivo)
        produtos = []
        dados.each do |dado|
            produtos << Produto.new(dado)
        end

        produtos
    end

    def adicionar(produto)
        produto_hash = self.transformar_para_hash(produto)
        @repo.adicionar(@arquivo, produto_hash)
    end

    def atualizar(produto)
        dados = self.ler(@arquivo)
        produto_hash = dados.find{|dado| dado["id"] == produto.id}
        produto_hash["nome"] = produto.nome
        produto_hash["descricao"] = produto.descricao
        produto_hash["preco"] = produto.preco
        produto_hash["quantidade"] = produto.quantidade

        @repo.gravar(@arquivo, dados)
    end

    private
    def transformar_para_hash(produto)
        produto.instance_variables.each_with_object({}) do |var, hash|
            hash[var.to_s.delete("@")] = produto.instance_variable_get(var)
        end
    end
end