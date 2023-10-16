# molde para criação de objeto
class Pessoa
    attr_accessor :nome, :sobrenome

    # def nome=(value)
    #     @nome = value
    # end

    # def nome
    #     @nome
    # end

    # def sobrenome=(value)
    #     @sobrenome = value
    # end

    # def sobrenome
    #     @sobrenome
    # end

    def mostra_nome_completo
        "#{@nome} #{@sobrenome}"
    end
end


# criando instancias do objeto
a = Pessoa.new 
a.nome = "Marcos"
a.sobrenome = "Lemon"

puts a.mostra_nome_completo



# b = Pessoa.new
# b.nome = "Pessoa2"

# c = Pessoa.new
# c.nome = "Pessoa3"

# puts a.inspect
# puts b.inspect
# puts c.inspect


# puts a.nome
# puts b.nome
# puts c.nome