require_relative "entidades/fornecedor"
require_relative "entidades/cliente"
require_relative "servicos/cliente_servico"

cli = Entidades::Cliente.new
cli.id = 1
cli.nome = "João"

cli = Entidades::Fornecedor.new
cli.id = 1
cli.nome = "João"

Servicos::ClienteServico.salvar(cli)