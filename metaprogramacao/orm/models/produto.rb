require_relative '../lib/json_orm'

class Produto
  include JsonOrm
  arquivo_json("json/produtos.json")
end