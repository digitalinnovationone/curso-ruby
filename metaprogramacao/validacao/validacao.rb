module Validacao
  def self.included(base)
    base.extend(ClassMethods)
    base.include(InstanceMethods)
  end

  module ClassMethods
    def validar_por_presenca(*atributos)
      atributos.each do |atributo|
        define_method("#{atributo}_validar!") do
          valor = instance_variable_get("@#{atributo}")
          raise "O atributo #{atributo} não pode ser vazio" if valor.nil? || valor.empty?
        end
      end
    end
  end

  module InstanceMethods
    def validar!
      self.methods.grep(/_validar/).each { |method| self.send(method) }
    end
  end
end