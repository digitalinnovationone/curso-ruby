class Pessoa
    def initialize(pessoa_hash = {})
        @nome = pessoa_hash[:nome]
        @idade = pessoa_hash[:idade]
        @sobrenome = pessoa_hash[:sobrenome]
    end

    attr_accessor :nome, :sobrenome, :idade
    
    private

    def mostra_nome_completo_private
        "#{self.nome} #{self.sobrenome} com a idade de: #{self.idade} anos"
    end

    public

    def mostra_nome_completo
        self.mostra_nome_completo_private
    end

    def outro
        self.mostra_nome_completo
    end

    def para_sobrescrever(*nome)
        "com o dado da classe base"
    end

    protected

    def mostra_nome_completo_protegido
        "acessando metodo protegido"
    end
end

class Joao < Pessoa
    def initialize(nome, sobrenome, idade)
        @nome = nome
        @sobrenome = sobrenome
        @idade = idade
    end

    def o_que_a_pessoa_faz
        # x = self.mostra_nome_completo_private
        # x = Joao.new(@nome, @sobrenome, @idade).mostra_nome_completo_private
        # x = self.mostra_nome_completo_protegido
        # x = Joao.new(@nome, @sobrenome, @idade).mostra_nome_completo_protegido
        "A pessoa #{self.nome} anda! x: #{x}"
    end

    def para_sobrescrever(*nome)
        "#{super} - Mudei o comportamento com nome - #{nome.inspect}"
    end
end

require 'byebug'

# debugger

# p = Joao.new({
#     nome: "Marcos",
#     sobrenome: "Damacena",
#     idade: 20
# })
p = Joao.new("Marcos","Damacena",20)
puts p.para_sobrescrever("Wagner", "Bruno", "Lena")
# puts p.nome
# puts p.mostra_nome_completo
# puts p.outro
# puts p.o_que_a_pessoa_faz
# puts p.mostra_nome_completo_protegido
# #puts p.mostra_nome_completo_private
