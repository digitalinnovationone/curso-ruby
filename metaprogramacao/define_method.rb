require 'byebug'

class Cliente
  attr_accessor :nome, :cpf

  # LISTA_DE_METODOS = [:metodo1, :metodo2]

  # def initialize
  #   LISTA_DE_METODOS.each do |metodo|
  #     self.class.define_method(metodo) do
  #       puts "Hello from #{metodo}!"
  #     end
  #   end
  # end
end


Cliente.class_eval do
  [:metodo1, :metodo2].each do |metodo|
    self.define_method(metodo) do
      puts "Hello from #{metodo}!"
    end
  end

  self.define_method(:adicionar) do |x, y|
    x + y
  end

  [
    {"red": "\e[31m"}, 
    {"green": "\e[32m"}, 
    {"blue": "\e[34m"}
  ].each do |color|
    key = color.keys[0]
    cor = color[key]
    define_method("print_in_#{key}") do |texto_do_parametro|
      puts "#{cor}#{texto_do_parametro}\e[0m"
    end
  end
end

cli = Cliente.new
# cli.nome = "Aluno"
# puts cli.nome

# cli.cpf = "233233223"
# puts cli.cpf

puts cli.methods - Class.methods
  
cli.metodo1
cli.metodo2

puts cli.adicionar(10, 5)

cli.print_in_red("Estou escrevendo em vermelho")
cli.print_in_blue("Estou escrevendo em azul")
cli.print_in_green("Estou escrevendo em verde")