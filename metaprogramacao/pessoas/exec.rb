require_relative "comuns/pessoa"
require_relative "comuns/pessoa_fisica"
require_relative "comuns/pessoa_juridica"

class Cliente
    include Comuns::Pessoa
    include Comuns::PessoaFisica
end

puts Cliente.new.methods - Class.methods

puts "----------------"

class Fornecedor
    include Comuns::Pessoa
    include Comuns::PessoaJuridica
end

puts Fornecedor.new.methods - Class.methods