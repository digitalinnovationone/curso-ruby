module VeiculoMetodos
    def andar
        raise "Erro: método não implementado"
    end
end

class Carro
    attr_accessor :id, :nome, :descricao
    include VeiculoMetodos

    def andar
        puts "o carro #{nome} está andando #{self}"
    end
end

puts Carro.new.andar
