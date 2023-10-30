require_relative "../orm/dio"

module Models
    class Fornecedor  
        @@nome_tabela = "fornecedores"
        include ORM::DIO
    end
end