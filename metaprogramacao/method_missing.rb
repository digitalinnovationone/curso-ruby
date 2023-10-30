class Configuracao
  def self.configurar
    config = self.new
    yield(config)
    config
  end

  def method_missing(nome_do_metodo, *args, &block)
    if nome_do_metodo.to_s.end_with?("=")
      instance_variable_set("@#{nome_do_metodo.to_s.chomp("=")}", args.first)
    else
      instance_variable_get("@#{nome_do_metodo}")
    end
  end
end

mysql_config = Configuracao.configurar do |config|
  config.database = "banco_de_dados_metaprogramacao"
  config.user = "root"
  config.password = "123456"
end

puts mysql_config.database
puts mysql_config.user
puts mysql_config.password