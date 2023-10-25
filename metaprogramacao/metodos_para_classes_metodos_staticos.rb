class MyClass
    def self.metodo_de_classe
      puts "Eu sou um método de classe"
    end
end
  
MyClass.metodo_de_classe  # => Eu sou um método de classe
  
def MyClass.metodo_dinamico
    puts "Estou em um método dinamico"
end

MyClass.metodo_dinamico

class MyClass
    def self.metodo_dinamico2
      puts "Eu sou um método de classe2w"
    end
end

MyClass.metodo_dinamico2


class MyClass
    class << self
      def outro_metodo_de_classe1
        puts "Eu sou outro método de classe1"
      end

      def outro_metodo_de_classe2
        puts "Eu sou outro método de classe2"
      end
    end
end

puts "------------------"
puts MyClass.methods - Class.methods