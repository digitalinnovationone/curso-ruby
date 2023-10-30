module Atributos
    attr_accessor :id, :nome, :documento
end

class PessoaFisica
    include Atributos
end

class PessoaJuridica
    include Atributos
end


puts PessoaFisica.new.methods - Class.methods
puts "------------"
puts PessoaJuridica.new.methods - Class.methods