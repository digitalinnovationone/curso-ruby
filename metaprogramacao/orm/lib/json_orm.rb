require 'json'
require 'byebug'

module JsonOrm
  def self.included(base)
    base.extend(AtributosMetodosClasse)
    base.include(AtributosMetodosInstancia)
  end

  module AtributosMetodosClasse
    def todos
      dados = ler_dados_json
      objs = []
      dados.each do |dado|
        obj = self.new
        dado.keys.each do |key|
          obj.send("#{key}=", dado[key])
        end
        objs << obj
      end

      objs
    end

    protected

    def arquivo_json(path_arquivo)
      @path_arquivo = path_arquivo
      define_atributos
    end
    
    private

    def ler_dados_json
      if File.exist?(@path_arquivo)
        arquivo_json = File.read(@path_arquivo)
        return JSON.parse(arquivo_json)
      end

      []
    end
    
    def define_atributos
      dados = ler_dados_json
      atributos = dados.first.keys

      atributos.each do |atributo|
        define_method("#{atributo}=") do |value|
          instance_variable_set("@#{atributo}", value)
        end

        define_method("#{atributo}") do
          instance_variable_get("@#{atributo}")
        end
      end
    end
  end

  module AtributosMetodosInstancia
    def validar_nome
      raise "Nome é obrigatório" if self.nome == nil || self.nome == ""
    end
  end
end