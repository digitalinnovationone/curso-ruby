class Cliente
end

# injetar metodos de instancia
Cliente.class_eval do
  def nome
    @nome
  end
  def nome=(value)
    @nome = value
  end

  attr_accessor :cpf

  def greet
    "Hello, #{self}!"
  end

  def outro
    "outro - #{self}!"
  end
end
  
puts Cliente.new.outro
puts Cliente.new.greet

cli = Cliente.new
cli.nome = "Aluno"
puts cli.nome

cli.cpf = "233233223"
puts cli.cpf
  
  