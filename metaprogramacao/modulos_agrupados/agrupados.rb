module Utils
    LOCAL_BANCO_DE_DADOS = "/tmp/dump.sqlite"

    def self.conectar
        puts "Estou conectando ao banco #{LOCAL_BANCO_DE_DADOS}"
    end
end


# puts Utils::LOCAL_BANCO_DE_DADOS
Utils.conectar