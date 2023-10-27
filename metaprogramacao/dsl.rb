class Configuracao
  def self.configurar
    config = self.new
    yield(config)
    config
  end
end

mysql_config = Configuracao.configurar do |config|
  def config.database
    "banco_de_dados_metaprogramacao"
  end

  def config.user
    "root"
  end

  def config.password
    "123456"
  end
end


puts mysql_config.database
puts mysql_config.user
puts mysql_config.password