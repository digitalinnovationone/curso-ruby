require_relative "validacao"

class Cliente
    include Validacao

    attr_accessor :nome, :email
    validar_por_presenca :nome, :email
end

cli = Cliente.new
puts cli.methods - Class.methods
puts "----------"
puts Cliente.methods - Class.methods

cli.nome = "Danilo"
cli.email = "danilo@teste.com"
cli.validar!
