module Atributos
	def self.included(base)

		base.class_eval do
			def xxx
				puts "sssss"
			end
		end

		base.instance_eval do
			def xxx_de_classe
				puts "sssss"
			end
		end

		puts "Foi incluido na classe - #{base}"
	end

	attr_accessor :id, :nome, :documento

	def mostrar_dados
		puts "#{id} - #{nome} - #{documento}"
	end
end

module MetodosDeClasse
	def metodo_total
		puts "Oiiiii ... "
	end
end

class Cliente
	include Atributos
	extend MetodosDeClasse
end

class Fornecedor
	include Atributos
	extend MetodosDeClasse
end

c = Cliente.new
f = Fornecedor.new
# c.id = 1
# c.nome = "Danilo"
# c.documento = "12222"

# c.mostrar_dados
puts "===== instancia cliente ====="
puts c.methods - Class.methods
puts "===== instancia fornecedor ====="
puts f.methods - Class.methods

puts "===== classe cliente ====="
puts Cliente.methods - Class.methods
puts "===== classe fornecedor ====="
puts Fornecedor.methods - Class.methods


# Cliente.metodo_total

