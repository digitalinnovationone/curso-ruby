require_relative '../lib/json_orm'

class Fornecedor
  include JsonOrm
  arquivo_json("json/fornecedores.json")
end