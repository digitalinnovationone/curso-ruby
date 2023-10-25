class Exemplo
end

a = Exemplo.new;

# acrescenta método na instância
def a.descreva
    puts "Este é um objeto #{self.class} e este método foi acrescentado dinamicamente"
end

# puts a.methods - Class.methods

a.descreva


b = Exemplo.new;
a.descreva
