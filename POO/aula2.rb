class Pessoa
    def initialize(pessoa_hash = {})
        @nome = pessoa_hash[:nome]
        @idade = pessoa_hash[:idade]
        @sobrenome = pessoa_hash[:sobrenome]
    end

    # def initialize(pessoa_array = [])
    #     @nome = pessoa_array[0]
    #     @idade = pessoa_array[1]
    #     @sobrenome = pessoa_array[2]
    # end

    attr_accessor :nome, :sobrenome, :idade

    def mostra_nome_completo
        # "#{@nome} #{@sobrenome}"
        "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
    end
end


puts Pessoa.new({
    nome: "Marcos",
    sobrenome: "Damacena",
    idade: 20
}).mostra_nome_completo

# puts Pessoa.new([
#     "Marcos",
#     20,
#     "Damacena"
# ]).mostra_nome_completo


# puts Pessoa.new("Marcos", 20).mostra_nome_completo
# puts Pessoa.new("Marcos").mostra_nome_completo

