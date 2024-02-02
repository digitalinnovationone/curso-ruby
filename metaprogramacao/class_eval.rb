# class Pessoa
# end

# Pessoa.class_eval do
#     [:falar, :gritar].each do |acao|
#         define_method acao do
#             if acao.to_s == "gritar"
#                 puts "Olá, mundo!".upcase
#             else
#                 puts "Olá, mundo!"
#             end
#         end
#     end
# end
  
# pessoa = Pessoa.new
# pessoa.falar  # Saída: Olá, mundo!
# pessoa.gritar  # Saída: Olá, mundo!
  

# class Calculadora
#   define_method :somar do |a, b|
#     a + b
#   end

# #   def somar(a, b)
# #     a + b
# #   end
# end

# calc = Calculadora.new
# puts calc.somar(5, 3)  # Saída: 8


# class Produto
#   atributos = [:nome, :preco, :cpf]

#   atributos.each do |atributo|
#     define_method("#{atributo}") do
#       instance_variable_get("@#{atributo}")
#     end

#     define_method("#{atributo}=") do |valor|
#       instance_variable_set("@#{atributo}", valor)
#     end
#   end
# end

# produto = Produto.new

# puts produto.methods - Class.methods

# produto.nome = "Caneta"
# produto.preco = 1.50
# puts produto.nome  # Saída: Caneta
# puts produto.preco # Saída: 1.5

# class Cliente
#   def initialize(array_de_hash)
#     array_de_hash.each do |hash|
# 			hash.keys.each do |key|
# 				self.class.define_method("#{key}") do
# 					self.instance_variable_get("@#{key}")
# 				end

# 				self.class.define_method("#{key}=") do |valor|
# 					self.instance_variable_set("@#{key}", valor)
# 				end
# 			end
# 			break
#     end
#   end
# end

# # Lista de hashes com propriedades de clientes
# array_de_hash = [
#   { nome: "João", telefone: "1234-5678", cpf: "111.222.333-44" },
#   { nome: "João", telefone: "1234-5678", cpf: "111.222.333-44" },
#   { nome: "João", telefone: "1234-5678", cpf: "111.222.333-44" },
#   { nome: "João", telefone: "1234-5678", cpf: "111.222.333-44" }
# ]

# # Criando um objeto da classe Cliente com métodos dinâmicos baseados nas chaves dos hashes
# cliente = Cliente.new(array_de_hash)

# cliente.nome = "ssss"
# puts cliente.nome

# puts cliente.methods - Class.methods


# Definindo códigos de cores ANSI
# cores = {
#   vermelho: "\e[31m",
#   verde: "\e[32m",
#   azul: "\e[34m",
#   amarelo: "\e[33m",
#   reset: "\e[0m" # Código para resetar a cor para o padrão do console
# }

# # Função para colorir texto
# def colorir(texto, cor)
#   "#{cor}#{texto}\e[0m"
# end

# # Exemplo de uso
# puts colorir("Este texto será vermelho.", cores[:vermelho])
# puts colorir("Este texto será verde.", cores[:verde])
# puts colorir("Este texto será azul.", cores[:azul])
# puts colorir("Este texto será amarelo.", cores[:amarelo])


String.class_eval do
	cores = {
		vermelho: "\e[31m",
		verde: "\e[32m",
		azul: "\e[34m",
		amarelo: "\e[33m",
		branco: "\e[0m" # Código para resetar a cor para o padrão do console
	}


	cores.each do |key, cor|
		define_method("imprime_em_#{key}") do
			puts "#{cor}#{self}\e[0m"
		end
	end
end

class Cliente
	attr_accessor :nome, :telefone
end

c = Cliente.new
c.nome = "Danilo";

c.nome.imprime_em_azul

# "Texto para imprimir".imprime_em_vermelho
# "Texto para imprimir".imprime_em_verde
# "Texto para imprimir".imprime_em_azul
# "Texto para imprimir".imprime_em_amarelo
# "Texto para imprimir".imprime_em_branco