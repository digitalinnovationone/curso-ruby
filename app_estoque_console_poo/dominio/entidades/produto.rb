class Produto # classe Anêmica
    def initialize(produto_hash)
        self.id = produto_hash["id"]
        self.nome = produto_hash["nome"]
        self.descricao = produto_hash["descricao"]
        self.preco = produto_hash["preco"]
        self.quantidade = produto_hash["quantidade"]
    end
    
    attr_accessor :id, :nome, :descricao, :preco, :quantidade
end