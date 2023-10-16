class Veiculo # classe abstrata
    attr_accessor :id, :nome, :descricao

    def andar
        raise "Erro: método não implementado"
    end
end

class Carro < Veiculo
    def initialize(nome)
        @nome = nome
    end

    def andar
        "O carro #{@nome} está andando"
    end
end

puts Carro.new("Sportage").andar
