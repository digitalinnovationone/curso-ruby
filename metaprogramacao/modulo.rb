module Atributos
    def self.included(base)
        puts "Foi incluido na classe - #{base}"
    end

    attr_accessor :id, :nome, :documento

    def mostrar_dados
        puts "#{id} - #{nome} - #{documento}"
    end
end

module MetodosDeClasse
    def todos
        puts "Retornaria todos os dados do banco de dados"
    end
end

class PessoaFisica
    include Atributos
    extend MetodosDeClasse
end

class PessoaJuridica
    include Atributos
    extend MetodosDeClasse
end

pf = PessoaFisica.new
pj = PessoaJuridica.new

puts "---------[Fisica]------"
puts pf.methods - Class.methods
puts "---------[Jurifica]------"
puts pj.methods - Class.methods

puts "---------[Fisica metodos de classe]------"
puts PessoaFisica.methods - Class.methods
puts "---------[Jurifica metodos de classe]------"
puts PessoaJuridica.methods - Class.methods

  