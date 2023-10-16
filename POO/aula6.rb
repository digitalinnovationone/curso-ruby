class Carro
    attr_accessor :id, :nome, :descricao

    def andar
        puts "o carro #{nome} está andando #{self}"
    end

    def self.andar
        puts "o carro está andando #{self}"
    end
end

a = Carro.new
a.nome = "Sportage"
puts a.andar

puts Carro.andar