class Carro
    attr_accessor :id, :nome, :descricao

    def andar
        puts "o carro #{nome} está andando"
    end

    def nome_preenchido?
        self.nome != '' && self.nome != nil
    end

    # def nome_maiusculo
    #     return self.nome.upcase if self.nome_preenchido?
    #     nil
    # end

    def nome_maiusculo!
        self.nome = self.nome.upcase if self.nome_preenchido?
        self.nome
    end
end

a = Carro.new
a.nome = "Sportage"
a.nome_maiusculo!
puts a.nome

# puts a.nome_preenchido?

# a.andar

